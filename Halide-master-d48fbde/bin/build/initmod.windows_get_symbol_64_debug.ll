; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_get_symbol.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_get_symbol.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-windows-msvc19.11.0"

@"?custom_get_symbol@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA" = weak dso_local local_unnamed_addr global i8* (i8*)* @halide_default_get_symbol, align 8, !dbg !0
@"?custom_load_library@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA" = weak dso_local local_unnamed_addr global i8* (i8*)* @halide_default_load_library, align 8, !dbg !15
@"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APEAXPEAXPEBD@ZEA" = weak dso_local local_unnamed_addr global i8* (i8*, i8*)* @halide_default_get_library_symbol, align 8, !dbg !18

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_get_symbol(i8* %0) #0 !dbg !39 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !41, metadata !DIExpression()), !dbg !42
  %2 = tail call i8* @GetProcAddress(i8* null, i8* %0) #4, !dbg !43
  ret i8* %2, !dbg !43
}

declare dso_local i8* @GetProcAddress(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_load_library(i8* %0) #0 !dbg !44 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !46, metadata !DIExpression()), !dbg !55
  %2 = tail call i32 @SetErrorMode(i32 32769) #4, !dbg !56
  call void @llvm.dbg.value(metadata i32 %2, metadata !47, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i8* null, metadata !49, metadata !DIExpression()), !dbg !55
  %3 = tail call i32 @MultiByteToWideChar(i32 65001, i64 0, i8* %0, i32 -1, i16* null, i32 0) #4, !dbg !57
  call void @llvm.dbg.value(metadata i32 %3, metadata !50, metadata !DIExpression()), !dbg !55
  %4 = icmp sgt i32 %3, 0, !dbg !58
  br i1 %4, label %5, label %16, !dbg !58

5:                                                ; preds = %1
  %6 = zext i32 %3 to i64, !dbg !59
  %7 = shl nuw nsw i64 %6, 1, !dbg !59
  %8 = tail call i8* @malloc(i64 %7) #4, !dbg !59
  %9 = bitcast i8* %8 to i16*, !dbg !59
  call void @llvm.dbg.value(metadata i16* %9, metadata !52, metadata !DIExpression()), !dbg !60
  %10 = tail call i32 @MultiByteToWideChar(i32 65001, i64 0, i8* %0, i32 -1, i16* %9, i32 %3) #4, !dbg !61
  call void @llvm.dbg.value(metadata i32 %10, metadata !50, metadata !DIExpression()), !dbg !55
  %11 = icmp sgt i32 %10, 0, !dbg !62
  br i1 %11, label %12, label %14, !dbg !62

12:                                               ; preds = %5
  %13 = tail call i8* @LoadLibraryW(i16* %9) #4, !dbg !63
  call void @llvm.dbg.value(metadata i8* %13, metadata !49, metadata !DIExpression()), !dbg !55
  br label %14, !dbg !66

14:                                               ; preds = %12, %5
  %15 = phi i8* [ %13, %12 ], [ null, %5 ], !dbg !55
  call void @llvm.dbg.value(metadata i8* %15, metadata !49, metadata !DIExpression()), !dbg !55
  tail call void @free(i8* %8) #4, !dbg !67
  br label %16, !dbg !68

16:                                               ; preds = %14, %1
  %17 = phi i8* [ %15, %14 ], [ null, %1 ], !dbg !55
  call void @llvm.dbg.value(metadata i8* %17, metadata !49, metadata !DIExpression()), !dbg !55
  %18 = tail call i32 @SetErrorMode(i32 %2) #4, !dbg !69
  ret i8* %17, !dbg !70
}

declare dso_local i32 @SetErrorMode(i32) local_unnamed_addr #1

declare dso_local i32 @MultiByteToWideChar(i32, i64, i8*, i32, i16*, i32) local_unnamed_addr #1

declare dso_local i8* @malloc(i64) local_unnamed_addr #1

declare dso_local i8* @LoadLibraryW(i16*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_get_library_symbol(i8* %0, i8* %1) #0 !dbg !71 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !73, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i8* %0, metadata !74, metadata !DIExpression()), !dbg !75
  %3 = tail call i8* @GetProcAddress(i8* %0, i8* %1) #4, !dbg !76
  ret i8* %3, !dbg !76
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*)* @halide_set_custom_get_symbol(i8* (i8*)* %0) local_unnamed_addr #2 !dbg !77 {
  call void @llvm.dbg.value(metadata i8* (i8*)* %0, metadata !81, metadata !DIExpression()), !dbg !83
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_get_symbol@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA", align 8, !dbg !84, !tbaa !85
  call void @llvm.dbg.value(metadata i8* (i8*)* %2, metadata !82, metadata !DIExpression()), !dbg !83
  store i8* (i8*)* %0, i8* (i8*)** @"?custom_get_symbol@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA", align 8, !dbg !89, !tbaa !85
  ret i8* (i8*)* %2, !dbg !90
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*)* @halide_set_custom_load_library(i8* (i8*)* %0) local_unnamed_addr #2 !dbg !91 {
  call void @llvm.dbg.value(metadata i8* (i8*)* %0, metadata !95, metadata !DIExpression()), !dbg !97
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_load_library@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA", align 8, !dbg !98, !tbaa !85
  call void @llvm.dbg.value(metadata i8* (i8*)* %2, metadata !96, metadata !DIExpression()), !dbg !97
  store i8* (i8*)* %0, i8* (i8*)** @"?custom_load_library@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA", align 8, !dbg !99, !tbaa !85
  ret i8* (i8*)* %2, !dbg !100
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*, i8*)* @halide_set_custom_get_library_symbol(i8* (i8*, i8*)* %0) local_unnamed_addr #2 !dbg !101 {
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* %0, metadata !105, metadata !DIExpression()), !dbg !107
  %2 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APEAXPEAXPEBD@ZEA", align 8, !dbg !108, !tbaa !85
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* %2, metadata !106, metadata !DIExpression()), !dbg !107
  store i8* (i8*, i8*)* %0, i8* (i8*, i8*)** @"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APEAXPEAXPEBD@ZEA", align 8, !dbg !109, !tbaa !85
  ret i8* (i8*, i8*)* %2, !dbg !110
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_get_symbol(i8* %0) local_unnamed_addr #0 !dbg !111 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !113, metadata !DIExpression()), !dbg !114
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_get_symbol@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA", align 8, !dbg !115, !tbaa !85
  %3 = tail call i8* %2(i8* %0) #4, !dbg !115
  ret i8* %3, !dbg !115
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_load_library(i8* %0) local_unnamed_addr #0 !dbg !116 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !118, metadata !DIExpression()), !dbg !119
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_load_library@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA", align 8, !dbg !120, !tbaa !85
  %3 = tail call i8* %2(i8* %0) #4, !dbg !120
  ret i8* %3, !dbg !120
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_get_library_symbol(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !121 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !123, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i8* %0, metadata !124, metadata !DIExpression()), !dbg !125
  %3 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APEAXPEAXPEBD@ZEA", align 8, !dbg !126, !tbaa !85
  %4 = tail call i8* %3(i8* %0, i8* %1) #4, !dbg !126
  ret i8* %4, !dbg !126
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "custom_get_symbol", linkageName: "?custom_get_symbol@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA", scope: !2, file: !5, line: 58, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/windows_get_symbol.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "083ec409055a28a4f054cafff14fcc38")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_get_symbol_t", file: !7, line: 381, baseType: !8)
!7 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "b7ab0d29491f0813a909553a9435c0e2")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "custom_load_library", linkageName: "?custom_load_library@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA", scope: !2, file: !5, line: 59, type: !17, isLocal: false, isDefinition: true)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_load_library_t", file: !7, line: 382, baseType: !8)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "custom_get_library_symbol", linkageName: "?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APEAXPEAXPEBD@ZEA", scope: !2, file: !5, line: 60, type: !20, isLocal: false, isDefinition: true)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_get_library_symbol_t", file: !7, line: 383, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{!11, !11, !12}
!24 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !25, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !26, retainedTypes: !27, globals: !31, imports: !32, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_get_symbol.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "083ec409055a28a4f054cafff14fcc38")
!26 = !{}
!27 = !{!28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "WCHAR", file: !5, line: 11, baseType: !30)
!30 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!31 = !{!0, !15, !18}
!32 = !{!33}
!33 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !24, entity: !2, file: !34, line: 225)
!34 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "0c7b3d8a4f3a5581b3edea53998e0f01")
!35 = !{i32 2, !"CodeView", i32 1}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 4}
!38 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!39 = distinct !DISubprogram(name: "halide_default_get_symbol", scope: !5, file: !5, line: 27, type: !9, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !40)
!40 = !{!41}
!41 = !DILocalVariable(name: "name", arg: 1, scope: !39, file: !5, line: 27, type: !12)
!42 = !DILocation(line: 0, scope: !39)
!43 = !DILocation(line: 28, scope: !39)
!44 = distinct !DISubprogram(name: "halide_default_load_library", scope: !5, file: !5, line: 31, type: !9, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !45)
!45 = !{!46, !47, !49, !50, !52}
!46 = !DILocalVariable(name: "name", arg: 1, scope: !44, file: !5, line: 31, type: !12)
!47 = !DILocalVariable(name: "old_mode", scope: !44, file: !5, line: 33, type: !48)
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !DILocalVariable(name: "lib", scope: !44, file: !5, line: 34, type: !11)
!50 = !DILocalVariable(name: "wide_len", scope: !44, file: !5, line: 35, type: !51)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DILocalVariable(name: "wide_lib", scope: !53, file: !5, line: 37, type: !28)
!53 = distinct !DILexicalBlock(scope: !54, file: !5, line: 36)
!54 = distinct !DILexicalBlock(scope: !44, file: !5, line: 36)
!55 = !DILocation(line: 0, scope: !44)
!56 = !DILocation(line: 33, scope: !44)
!57 = !DILocation(line: 35, scope: !44)
!58 = !DILocation(line: 36, scope: !44)
!59 = !DILocation(line: 37, scope: !53)
!60 = !DILocation(line: 0, scope: !53)
!61 = !DILocation(line: 38, scope: !53)
!62 = !DILocation(line: 39, scope: !53)
!63 = !DILocation(line: 40, scope: !64)
!64 = distinct !DILexicalBlock(scope: !65, file: !5, line: 39)
!65 = distinct !DILexicalBlock(scope: !53, file: !5, line: 39)
!66 = !DILocation(line: 41, scope: !64)
!67 = !DILocation(line: 42, scope: !53)
!68 = !DILocation(line: 43, scope: !53)
!69 = !DILocation(line: 44, scope: !44)
!70 = !DILocation(line: 45, scope: !44)
!71 = distinct !DISubprogram(name: "halide_default_get_library_symbol", scope: !5, file: !5, line: 48, type: !22, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !72)
!72 = !{!73, !74}
!73 = !DILocalVariable(name: "name", arg: 2, scope: !71, file: !5, line: 48, type: !12)
!74 = !DILocalVariable(name: "lib", arg: 1, scope: !71, file: !5, line: 48, type: !11)
!75 = !DILocation(line: 0, scope: !71)
!76 = !DILocation(line: 49, scope: !71)
!77 = distinct !DISubprogram(name: "halide_set_custom_get_symbol", scope: !5, file: !5, line: 68, type: !78, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !80)
!78 = !DISubroutineType(types: !79)
!79 = !{!6, !6}
!80 = !{!81, !82}
!81 = !DILocalVariable(name: "f", arg: 1, scope: !77, file: !5, line: 68, type: !6)
!82 = !DILocalVariable(name: "result", scope: !77, file: !5, line: 69, type: !6)
!83 = !DILocation(line: 0, scope: !77)
!84 = !DILocation(line: 69, scope: !77)
!85 = !{!86, !86, i64 0}
!86 = !{!"any pointer", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C++ TBAA"}
!89 = !DILocation(line: 70, scope: !77)
!90 = !DILocation(line: 71, scope: !77)
!91 = distinct !DISubprogram(name: "halide_set_custom_load_library", scope: !5, file: !5, line: 74, type: !92, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !94)
!92 = !DISubroutineType(types: !93)
!93 = !{!17, !17}
!94 = !{!95, !96}
!95 = !DILocalVariable(name: "f", arg: 1, scope: !91, file: !5, line: 74, type: !17)
!96 = !DILocalVariable(name: "result", scope: !91, file: !5, line: 75, type: !17)
!97 = !DILocation(line: 0, scope: !91)
!98 = !DILocation(line: 75, scope: !91)
!99 = !DILocation(line: 76, scope: !91)
!100 = !DILocation(line: 77, scope: !91)
!101 = distinct !DISubprogram(name: "halide_set_custom_get_library_symbol", scope: !5, file: !5, line: 80, type: !102, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !104)
!102 = !DISubroutineType(types: !103)
!103 = !{!20, !20}
!104 = !{!105, !106}
!105 = !DILocalVariable(name: "f", arg: 1, scope: !101, file: !5, line: 80, type: !20)
!106 = !DILocalVariable(name: "result", scope: !101, file: !5, line: 81, type: !20)
!107 = !DILocation(line: 0, scope: !101)
!108 = !DILocation(line: 81, scope: !101)
!109 = !DILocation(line: 82, scope: !101)
!110 = !DILocation(line: 83, scope: !101)
!111 = distinct !DISubprogram(name: "halide_get_symbol", scope: !5, file: !5, line: 86, type: !9, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !112)
!112 = !{!113}
!113 = !DILocalVariable(name: "name", arg: 1, scope: !111, file: !5, line: 86, type: !12)
!114 = !DILocation(line: 0, scope: !111)
!115 = !DILocation(line: 87, scope: !111)
!116 = distinct !DISubprogram(name: "halide_load_library", scope: !5, file: !5, line: 90, type: !9, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !117)
!117 = !{!118}
!118 = !DILocalVariable(name: "name", arg: 1, scope: !116, file: !5, line: 90, type: !12)
!119 = !DILocation(line: 0, scope: !116)
!120 = !DILocation(line: 91, scope: !116)
!121 = distinct !DISubprogram(name: "halide_get_library_symbol", scope: !5, file: !5, line: 94, type: !22, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !122)
!122 = !{!123, !124}
!123 = !DILocalVariable(name: "name", arg: 2, scope: !121, file: !5, line: 94, type: !12)
!124 = !DILocalVariable(name: "lib", arg: 1, scope: !121, file: !5, line: 94, type: !11)
!125 = !DILocation(line: 0, scope: !121)
!126 = !DILocation(line: 95, scope: !121)
