; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/osx_get_symbol.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/osx_get_symbol.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@_ZN6Halide7Runtime8Internal17custom_get_symbolE = weak dso_local local_unnamed_addr global i8* (i8*)* @halide_default_get_symbol, align 4, !dbg !0
@_ZN6Halide7Runtime8Internal19custom_load_libraryE = weak dso_local local_unnamed_addr global i8* (i8*)* @halide_default_load_library, align 4, !dbg !15
@_ZN6Halide7Runtime8Internal25custom_get_library_symbolE = weak dso_local local_unnamed_addr global i8* (i8*, i8*)* @halide_default_get_library_symbol, align 4, !dbg !18

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_get_symbol(i8* %0) #0 !dbg !36 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !38, metadata !DIExpression()), !dbg !39
  %2 = tail call i8* @dlsym(i8* nonnull inttoptr (i32 -2 to i8*), i8* %0) #4, !dbg !40
  ret i8* %2, !dbg !41
}

declare !dbg !42 dso_local i8* @dlsym(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_load_library(i8* %0) #0 !dbg !43 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !45, metadata !DIExpression()), !dbg !46
  %2 = tail call i8* @dlopen(i8* %0, i32 5) #4, !dbg !47
  ret i8* %2, !dbg !48
}

declare !dbg !49 dso_local i8* @dlopen(i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_get_library_symbol(i8* %0, i8* %1) #0 !dbg !53 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !55, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i8* %1, metadata !56, metadata !DIExpression()), !dbg !57
  %3 = icmp eq i8* %0, null, !dbg !58
  %4 = select i1 %3, i8* inttoptr (i32 -2 to i8*), i8* %0, !dbg !60
  call void @llvm.dbg.value(metadata i8* %4, metadata !55, metadata !DIExpression()), !dbg !57
  %5 = tail call i8* @dlsym(i8* %4, i8* %1) #4, !dbg !61
  ret i8* %5, !dbg !62
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*)* @halide_set_custom_get_symbol(i8* (i8*)* %0) local_unnamed_addr #2 !dbg !63 {
  call void @llvm.dbg.value(metadata i8* (i8*)* %0, metadata !67, metadata !DIExpression()), !dbg !69
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal17custom_get_symbolE, align 4, !dbg !70, !tbaa !71
  call void @llvm.dbg.value(metadata i8* (i8*)* %2, metadata !68, metadata !DIExpression()), !dbg !69
  store i8* (i8*)* %0, i8* (i8*)** @_ZN6Halide7Runtime8Internal17custom_get_symbolE, align 4, !dbg !75, !tbaa !71
  ret i8* (i8*)* %2, !dbg !76
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*)* @halide_set_custom_load_library(i8* (i8*)* %0) local_unnamed_addr #2 !dbg !77 {
  call void @llvm.dbg.value(metadata i8* (i8*)* %0, metadata !81, metadata !DIExpression()), !dbg !83
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal19custom_load_libraryE, align 4, !dbg !84, !tbaa !71
  call void @llvm.dbg.value(metadata i8* (i8*)* %2, metadata !82, metadata !DIExpression()), !dbg !83
  store i8* (i8*)* %0, i8* (i8*)** @_ZN6Halide7Runtime8Internal19custom_load_libraryE, align 4, !dbg !85, !tbaa !71
  ret i8* (i8*)* %2, !dbg !86
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*, i8*)* @halide_set_custom_get_library_symbol(i8* (i8*, i8*)* %0) local_unnamed_addr #2 !dbg !87 {
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* %0, metadata !91, metadata !DIExpression()), !dbg !93
  %2 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @_ZN6Halide7Runtime8Internal25custom_get_library_symbolE, align 4, !dbg !94, !tbaa !71
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* %2, metadata !92, metadata !DIExpression()), !dbg !93
  store i8* (i8*, i8*)* %0, i8* (i8*, i8*)** @_ZN6Halide7Runtime8Internal25custom_get_library_symbolE, align 4, !dbg !95, !tbaa !71
  ret i8* (i8*, i8*)* %2, !dbg !96
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_get_symbol(i8* %0) local_unnamed_addr #0 !dbg !97 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !99, metadata !DIExpression()), !dbg !100
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal17custom_get_symbolE, align 4, !dbg !101, !tbaa !71
  %3 = tail call i8* %2(i8* %0) #4, !dbg !101
  ret i8* %3, !dbg !102
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_load_library(i8* %0) local_unnamed_addr #0 !dbg !103 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !105, metadata !DIExpression()), !dbg !106
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal19custom_load_libraryE, align 4, !dbg !107, !tbaa !71
  %3 = tail call i8* %2(i8* %0) #4, !dbg !107
  ret i8* %3, !dbg !108
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_get_library_symbol(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !109 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !111, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %1, metadata !112, metadata !DIExpression()), !dbg !113
  %3 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @_ZN6Halide7Runtime8Internal25custom_get_library_symbolE, align 4, !dbg !114, !tbaa !71
  %4 = tail call i8* %3(i8* %0, i8* %1) #4, !dbg !114
  ret i8* %4, !dbg !115
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!32, !33, !34}
!llvm.ident = !{!35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "custom_get_symbol", linkageName: "_ZN6Halide7Runtime8Internal17custom_get_symbolE", scope: !2, file: !5, line: 36, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/osx_get_symbol.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_get_symbol_t", file: !7, line: 381, baseType: !8)
!7 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "custom_load_library", linkageName: "_ZN6Halide7Runtime8Internal19custom_load_libraryE", scope: !2, file: !5, line: 37, type: !17, isLocal: false, isDefinition: true)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_load_library_t", file: !7, line: 382, baseType: !8)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "custom_get_library_symbol", linkageName: "_ZN6Halide7Runtime8Internal25custom_get_library_symbolE", scope: !2, file: !5, line: 38, type: !20, isLocal: false, isDefinition: true)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_get_library_symbol_t", file: !7, line: 383, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!22 = !DISubroutineType(types: !23)
!23 = !{!11, !11, !12}
!24 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !25, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !26, retainedTypes: !27, globals: !28, imports: !29, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/osx_get_symbol.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!26 = !{}
!27 = !{!11}
!28 = !{!0, !15, !18}
!29 = !{!30}
!30 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !24, entity: !2, file: !31, line: 225)
!31 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!32 = !{i32 7, !"Dwarf Version", i32 4}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!36 = distinct !DISubprogram(name: "halide_default_get_symbol", scope: !5, file: !5, line: 13, type: !9, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !37)
!37 = !{!38}
!38 = !DILocalVariable(name: "name", arg: 1, scope: !36, file: !5, line: 13, type: !12)
!39 = !DILocation(line: 0, scope: !36)
!40 = !DILocation(line: 14, column: 12, scope: !36)
!41 = !DILocation(line: 14, column: 5, scope: !36)
!42 = !DISubprogram(name: "dlsym", scope: !5, file: !5, line: 6, type: !22, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !26)
!43 = distinct !DISubprogram(name: "halide_default_load_library", scope: !5, file: !5, line: 17, type: !9, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !44)
!44 = !{!45}
!45 = !DILocalVariable(name: "name", arg: 1, scope: !43, file: !5, line: 17, type: !12)
!46 = !DILocation(line: 0, scope: !43)
!47 = !DILocation(line: 18, column: 12, scope: !43)
!48 = !DILocation(line: 18, column: 5, scope: !43)
!49 = !DISubprogram(name: "dlopen", scope: !5, file: !5, line: 5, type: !50, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !26)
!50 = !DISubroutineType(types: !51)
!51 = !{!11, !12, !52}
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = distinct !DISubprogram(name: "halide_default_get_library_symbol", scope: !5, file: !5, line: 21, type: !22, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !54)
!54 = !{!55, !56}
!55 = !DILocalVariable(name: "lib", arg: 1, scope: !53, file: !5, line: 21, type: !11)
!56 = !DILocalVariable(name: "name", arg: 2, scope: !53, file: !5, line: 21, type: !12)
!57 = !DILocation(line: 0, scope: !53)
!58 = !DILocation(line: 24, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !53, file: !5, line: 24, column: 9)
!60 = !DILocation(line: 24, column: 9, scope: !53)
!61 = !DILocation(line: 27, column: 12, scope: !53)
!62 = !DILocation(line: 27, column: 5, scope: !53)
!63 = distinct !DISubprogram(name: "halide_set_custom_get_symbol", scope: !5, file: !5, line: 46, type: !64, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{!6, !6}
!66 = !{!67, !68}
!67 = !DILocalVariable(name: "f", arg: 1, scope: !63, file: !5, line: 46, type: !6)
!68 = !DILocalVariable(name: "result", scope: !63, file: !5, line: 47, type: !6)
!69 = !DILocation(line: 0, scope: !63)
!70 = !DILocation(line: 47, column: 34, scope: !63)
!71 = !{!72, !72, i64 0}
!72 = !{!"any pointer", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C++ TBAA"}
!75 = !DILocation(line: 48, column: 23, scope: !63)
!76 = !DILocation(line: 49, column: 5, scope: !63)
!77 = distinct !DISubprogram(name: "halide_set_custom_load_library", scope: !5, file: !5, line: 52, type: !78, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !80)
!78 = !DISubroutineType(types: !79)
!79 = !{!17, !17}
!80 = !{!81, !82}
!81 = !DILocalVariable(name: "f", arg: 1, scope: !77, file: !5, line: 52, type: !17)
!82 = !DILocalVariable(name: "result", scope: !77, file: !5, line: 53, type: !17)
!83 = !DILocation(line: 0, scope: !77)
!84 = !DILocation(line: 53, column: 36, scope: !77)
!85 = !DILocation(line: 54, column: 25, scope: !77)
!86 = !DILocation(line: 55, column: 5, scope: !77)
!87 = distinct !DISubprogram(name: "halide_set_custom_get_library_symbol", scope: !5, file: !5, line: 58, type: !88, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !90)
!88 = !DISubroutineType(types: !89)
!89 = !{!20, !20}
!90 = !{!91, !92}
!91 = !DILocalVariable(name: "f", arg: 1, scope: !87, file: !5, line: 58, type: !20)
!92 = !DILocalVariable(name: "result", scope: !87, file: !5, line: 59, type: !20)
!93 = !DILocation(line: 0, scope: !87)
!94 = !DILocation(line: 59, column: 42, scope: !87)
!95 = !DILocation(line: 60, column: 31, scope: !87)
!96 = !DILocation(line: 61, column: 5, scope: !87)
!97 = distinct !DISubprogram(name: "halide_get_symbol", scope: !5, file: !5, line: 64, type: !9, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !98)
!98 = !{!99}
!99 = !DILocalVariable(name: "name", arg: 1, scope: !97, file: !5, line: 64, type: !12)
!100 = !DILocation(line: 0, scope: !97)
!101 = !DILocation(line: 65, column: 12, scope: !97)
!102 = !DILocation(line: 65, column: 5, scope: !97)
!103 = distinct !DISubprogram(name: "halide_load_library", scope: !5, file: !5, line: 68, type: !9, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !104)
!104 = !{!105}
!105 = !DILocalVariable(name: "name", arg: 1, scope: !103, file: !5, line: 68, type: !12)
!106 = !DILocation(line: 0, scope: !103)
!107 = !DILocation(line: 69, column: 12, scope: !103)
!108 = !DILocation(line: 69, column: 5, scope: !103)
!109 = distinct !DISubprogram(name: "halide_get_library_symbol", scope: !5, file: !5, line: 72, type: !22, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !110)
!110 = !{!111, !112}
!111 = !DILocalVariable(name: "lib", arg: 1, scope: !109, file: !5, line: 72, type: !11)
!112 = !DILocalVariable(name: "name", arg: 2, scope: !109, file: !5, line: 72, type: !12)
!113 = !DILocation(line: 0, scope: !109)
!114 = !DILocation(line: 73, column: 12, scope: !109)
!115 = !DILocation(line: 73, column: 5, scope: !109)
