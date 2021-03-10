; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fake_get_symbol.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fake_get_symbol.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@.str = private unnamed_addr constant [60 x i8] c"halide_default_get_symbol not implemented on this platform.\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"halide_default_load_library not implemented on this platform.\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"halide_default_get_library_symbol not implemented on this platform.\00", align 1
@_ZN6Halide7Runtime8Internal17custom_get_symbolE = weak dso_local local_unnamed_addr global i8* (i8*)* @halide_default_get_symbol, align 4, !dbg !0
@_ZN6Halide7Runtime8Internal19custom_load_libraryE = weak dso_local local_unnamed_addr global i8* (i8*)* @halide_default_load_library, align 4, !dbg !15
@_ZN6Halide7Runtime8Internal25custom_get_library_symbolE = weak dso_local local_unnamed_addr global i8* (i8*, i8*)* @halide_default_get_library_symbol, align 4, !dbg !18

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_get_symbol(i8* %0) #0 !dbg !35 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !37, metadata !DIExpression()), !dbg !38
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i32 0, i32 0)) #4, !dbg !39
  ret i8* null, !dbg !40
}

declare !dbg !41 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_load_library(i8* %0) #0 !dbg !44 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !46, metadata !DIExpression()), !dbg !47
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i32 0, i32 0)) #4, !dbg !48
  ret i8* null, !dbg !49
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_get_library_symbol(i8* %0, i8* %1) #0 !dbg !50 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !52, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i8* %1, metadata !53, metadata !DIExpression()), !dbg !54
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i32 0, i32 0)) #4, !dbg !55
  ret i8* null, !dbg !56
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*)* @halide_set_custom_get_symbol(i8* (i8*)* %0) local_unnamed_addr #2 !dbg !57 {
  call void @llvm.dbg.value(metadata i8* (i8*)* %0, metadata !61, metadata !DIExpression()), !dbg !63
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal17custom_get_symbolE, align 4, !dbg !64, !tbaa !65
  call void @llvm.dbg.value(metadata i8* (i8*)* %2, metadata !62, metadata !DIExpression()), !dbg !63
  store i8* (i8*)* %0, i8* (i8*)** @_ZN6Halide7Runtime8Internal17custom_get_symbolE, align 4, !dbg !69, !tbaa !65
  ret i8* (i8*)* %2, !dbg !70
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*)* @halide_set_custom_load_library(i8* (i8*)* %0) local_unnamed_addr #2 !dbg !71 {
  call void @llvm.dbg.value(metadata i8* (i8*)* %0, metadata !75, metadata !DIExpression()), !dbg !77
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal19custom_load_libraryE, align 4, !dbg !78, !tbaa !65
  call void @llvm.dbg.value(metadata i8* (i8*)* %2, metadata !76, metadata !DIExpression()), !dbg !77
  store i8* (i8*)* %0, i8* (i8*)** @_ZN6Halide7Runtime8Internal19custom_load_libraryE, align 4, !dbg !79, !tbaa !65
  ret i8* (i8*)* %2, !dbg !80
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*, i8*)* @halide_set_custom_get_library_symbol(i8* (i8*, i8*)* %0) local_unnamed_addr #2 !dbg !81 {
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* %0, metadata !85, metadata !DIExpression()), !dbg !87
  %2 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @_ZN6Halide7Runtime8Internal25custom_get_library_symbolE, align 4, !dbg !88, !tbaa !65
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* %2, metadata !86, metadata !DIExpression()), !dbg !87
  store i8* (i8*, i8*)* %0, i8* (i8*, i8*)** @_ZN6Halide7Runtime8Internal25custom_get_library_symbolE, align 4, !dbg !89, !tbaa !65
  ret i8* (i8*, i8*)* %2, !dbg !90
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_get_symbol(i8* %0) local_unnamed_addr #0 !dbg !91 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !93, metadata !DIExpression()), !dbg !94
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal17custom_get_symbolE, align 4, !dbg !95, !tbaa !65
  %3 = tail call i8* %2(i8* %0) #4, !dbg !95
  ret i8* %3, !dbg !96
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_load_library(i8* %0) local_unnamed_addr #0 !dbg !97 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !99, metadata !DIExpression()), !dbg !100
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal19custom_load_libraryE, align 4, !dbg !101, !tbaa !65
  %3 = tail call i8* %2(i8* %0) #4, !dbg !101
  ret i8* %3, !dbg !102
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_get_library_symbol(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !103 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !105, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i8* %1, metadata !106, metadata !DIExpression()), !dbg !107
  %3 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @_ZN6Halide7Runtime8Internal25custom_get_library_symbolE, align 4, !dbg !108, !tbaa !65
  %4 = tail call i8* %3(i8* %0, i8* %1) #4, !dbg !108
  ret i8* %4, !dbg !109
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "custom_get_symbol", linkageName: "_ZN6Halide7Runtime8Internal17custom_get_symbolE", scope: !2, file: !5, line: 26, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/fake_get_symbol.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
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
!16 = distinct !DIGlobalVariable(name: "custom_load_library", linkageName: "_ZN6Halide7Runtime8Internal19custom_load_libraryE", scope: !2, file: !5, line: 27, type: !17, isLocal: false, isDefinition: true)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_load_library_t", file: !7, line: 382, baseType: !8)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "custom_get_library_symbol", linkageName: "_ZN6Halide7Runtime8Internal25custom_get_library_symbolE", scope: !2, file: !5, line: 28, type: !20, isLocal: false, isDefinition: true)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_get_library_symbol_t", file: !7, line: 383, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!22 = !DISubroutineType(types: !23)
!23 = !{!11, !11, !12}
!24 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !25, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !26, globals: !27, imports: !28, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fake_get_symbol.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!26 = !{}
!27 = !{!0, !15, !18}
!28 = !{!29}
!29 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !24, entity: !2, file: !30, line: 225)
!30 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!31 = !{i32 7, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!35 = distinct !DISubprogram(name: "halide_default_get_symbol", scope: !5, file: !5, line: 5, type: !9, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !36)
!36 = !{!37}
!37 = !DILocalVariable(name: "name", arg: 1, scope: !35, file: !5, line: 5, type: !12)
!38 = !DILocation(line: 0, scope: !35)
!39 = !DILocation(line: 6, column: 5, scope: !35)
!40 = !DILocation(line: 7, column: 5, scope: !35)
!41 = !DISubprogram(name: "halide_error", scope: !7, file: !7, line: 111, type: !42, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !26)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !11, !12}
!44 = distinct !DISubprogram(name: "halide_default_load_library", scope: !5, file: !5, line: 10, type: !9, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !45)
!45 = !{!46}
!46 = !DILocalVariable(name: "name", arg: 1, scope: !44, file: !5, line: 10, type: !12)
!47 = !DILocation(line: 0, scope: !44)
!48 = !DILocation(line: 11, column: 5, scope: !44)
!49 = !DILocation(line: 12, column: 5, scope: !44)
!50 = distinct !DISubprogram(name: "halide_default_get_library_symbol", scope: !5, file: !5, line: 15, type: !22, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !51)
!51 = !{!52, !53}
!52 = !DILocalVariable(name: "lib", arg: 1, scope: !50, file: !5, line: 15, type: !11)
!53 = !DILocalVariable(name: "name", arg: 2, scope: !50, file: !5, line: 15, type: !12)
!54 = !DILocation(line: 0, scope: !50)
!55 = !DILocation(line: 16, column: 5, scope: !50)
!56 = !DILocation(line: 17, column: 5, scope: !50)
!57 = distinct !DISubprogram(name: "halide_set_custom_get_symbol", scope: !5, file: !5, line: 36, type: !58, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{!6, !6}
!60 = !{!61, !62}
!61 = !DILocalVariable(name: "f", arg: 1, scope: !57, file: !5, line: 36, type: !6)
!62 = !DILocalVariable(name: "result", scope: !57, file: !5, line: 37, type: !6)
!63 = !DILocation(line: 0, scope: !57)
!64 = !DILocation(line: 37, column: 34, scope: !57)
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C++ TBAA"}
!69 = !DILocation(line: 38, column: 23, scope: !57)
!70 = !DILocation(line: 39, column: 5, scope: !57)
!71 = distinct !DISubprogram(name: "halide_set_custom_load_library", scope: !5, file: !5, line: 42, type: !72, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{!17, !17}
!74 = !{!75, !76}
!75 = !DILocalVariable(name: "f", arg: 1, scope: !71, file: !5, line: 42, type: !17)
!76 = !DILocalVariable(name: "result", scope: !71, file: !5, line: 43, type: !17)
!77 = !DILocation(line: 0, scope: !71)
!78 = !DILocation(line: 43, column: 36, scope: !71)
!79 = !DILocation(line: 44, column: 25, scope: !71)
!80 = !DILocation(line: 45, column: 5, scope: !71)
!81 = distinct !DISubprogram(name: "halide_set_custom_get_library_symbol", scope: !5, file: !5, line: 48, type: !82, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{!20, !20}
!84 = !{!85, !86}
!85 = !DILocalVariable(name: "f", arg: 1, scope: !81, file: !5, line: 48, type: !20)
!86 = !DILocalVariable(name: "result", scope: !81, file: !5, line: 49, type: !20)
!87 = !DILocation(line: 0, scope: !81)
!88 = !DILocation(line: 49, column: 42, scope: !81)
!89 = !DILocation(line: 50, column: 31, scope: !81)
!90 = !DILocation(line: 51, column: 5, scope: !81)
!91 = distinct !DISubprogram(name: "halide_get_symbol", scope: !5, file: !5, line: 54, type: !9, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !92)
!92 = !{!93}
!93 = !DILocalVariable(name: "name", arg: 1, scope: !91, file: !5, line: 54, type: !12)
!94 = !DILocation(line: 0, scope: !91)
!95 = !DILocation(line: 55, column: 12, scope: !91)
!96 = !DILocation(line: 55, column: 5, scope: !91)
!97 = distinct !DISubprogram(name: "halide_load_library", scope: !5, file: !5, line: 58, type: !9, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !98)
!98 = !{!99}
!99 = !DILocalVariable(name: "name", arg: 1, scope: !97, file: !5, line: 58, type: !12)
!100 = !DILocation(line: 0, scope: !97)
!101 = !DILocation(line: 59, column: 12, scope: !97)
!102 = !DILocation(line: 59, column: 5, scope: !97)
!103 = distinct !DISubprogram(name: "halide_get_library_symbol", scope: !5, file: !5, line: 62, type: !22, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !104)
!104 = !{!105, !106}
!105 = !DILocalVariable(name: "lib", arg: 1, scope: !103, file: !5, line: 62, type: !11)
!106 = !DILocalVariable(name: "name", arg: 2, scope: !103, file: !5, line: 62, type: !12)
!107 = !DILocation(line: 0, scope: !103)
!108 = !DILocation(line: 63, column: 12, scope: !103)
!109 = !DILocation(line: 63, column: 5, scope: !103)
