; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_get_symbol.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_get_symbol.cpp"
target datalayout = "e-m:x-p:32:32-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i386-unknown-windows-msvc19.11.0"

@"?custom_get_symbol@Internal@Runtime@Halide@@3P6APAXPBD@ZA" = weak dso_local local_unnamed_addr global i8* (i8*)* @halide_default_get_symbol, align 4, !dbg !0
@"?custom_load_library@Internal@Runtime@Halide@@3P6APAXPBD@ZA" = weak dso_local local_unnamed_addr global i8* (i8*)* @halide_default_load_library, align 4, !dbg !15
@"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APAXPAXPBD@ZA" = weak dso_local local_unnamed_addr global i8* (i8*, i8*)* @halide_default_get_library_symbol, align 4, !dbg !18

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_get_symbol(i8* %0) #0 !dbg !40 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !42, metadata !DIExpression()), !dbg !43
  %2 = tail call x86_stdcallcc i8* @"\01_GetProcAddress@8"(i8* null, i8* %0) #4, !dbg !44
  ret i8* %2, !dbg !44
}

declare dso_local x86_stdcallcc i8* @"\01_GetProcAddress@8"(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_load_library(i8* %0) #0 !dbg !45 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !47, metadata !DIExpression()), !dbg !56
  %2 = tail call x86_stdcallcc i32 @"\01_SetErrorMode@4"(i32 32769) #4, !dbg !57
  call void @llvm.dbg.value(metadata i32 %2, metadata !48, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i8* null, metadata !50, metadata !DIExpression()), !dbg !56
  %3 = tail call x86_stdcallcc i32 @"\01_MultiByteToWideChar@24"(i32 65001, i32 0, i8* %0, i32 -1, i16* null, i32 0) #4, !dbg !58
  call void @llvm.dbg.value(metadata i32 %3, metadata !51, metadata !DIExpression()), !dbg !56
  %4 = icmp sgt i32 %3, 0, !dbg !59
  br i1 %4, label %5, label %15, !dbg !59

5:                                                ; preds = %1
  %6 = shl nuw i32 %3, 1, !dbg !60
  %7 = tail call i8* @malloc(i32 %6) #4, !dbg !60
  %8 = bitcast i8* %7 to i16*, !dbg !60
  call void @llvm.dbg.value(metadata i16* %8, metadata !53, metadata !DIExpression()), !dbg !61
  %9 = tail call x86_stdcallcc i32 @"\01_MultiByteToWideChar@24"(i32 65001, i32 0, i8* %0, i32 -1, i16* %8, i32 %3) #4, !dbg !62
  call void @llvm.dbg.value(metadata i32 %9, metadata !51, metadata !DIExpression()), !dbg !56
  %10 = icmp sgt i32 %9, 0, !dbg !63
  br i1 %10, label %11, label %13, !dbg !63

11:                                               ; preds = %5
  %12 = tail call x86_stdcallcc i8* @"\01_LoadLibraryW@4"(i16* %8) #4, !dbg !64
  call void @llvm.dbg.value(metadata i8* %12, metadata !50, metadata !DIExpression()), !dbg !56
  br label %13, !dbg !67

13:                                               ; preds = %11, %5
  %14 = phi i8* [ %12, %11 ], [ null, %5 ], !dbg !56
  call void @llvm.dbg.value(metadata i8* %14, metadata !50, metadata !DIExpression()), !dbg !56
  tail call void @free(i8* %7) #4, !dbg !68
  br label %15, !dbg !69

15:                                               ; preds = %13, %1
  %16 = phi i8* [ %14, %13 ], [ null, %1 ], !dbg !56
  call void @llvm.dbg.value(metadata i8* %16, metadata !50, metadata !DIExpression()), !dbg !56
  %17 = tail call x86_stdcallcc i32 @"\01_SetErrorMode@4"(i32 %2) #4, !dbg !70
  ret i8* %16, !dbg !71
}

declare dso_local x86_stdcallcc i32 @"\01_SetErrorMode@4"(i32) local_unnamed_addr #1

declare dso_local x86_stdcallcc i32 @"\01_MultiByteToWideChar@24"(i32, i32, i8*, i32, i16*, i32) local_unnamed_addr #1

declare dso_local i8* @malloc(i32) local_unnamed_addr #1

declare dso_local x86_stdcallcc i8* @"\01_LoadLibraryW@4"(i16*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_get_library_symbol(i8* %0, i8* %1) #0 !dbg !72 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !74, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i8* %0, metadata !75, metadata !DIExpression()), !dbg !76
  %3 = tail call x86_stdcallcc i8* @"\01_GetProcAddress@8"(i8* %0, i8* %1) #4, !dbg !77
  ret i8* %3, !dbg !77
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*)* @halide_set_custom_get_symbol(i8* (i8*)* %0) local_unnamed_addr #2 !dbg !78 {
  call void @llvm.dbg.value(metadata i8* (i8*)* %0, metadata !82, metadata !DIExpression()), !dbg !84
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_get_symbol@Internal@Runtime@Halide@@3P6APAXPBD@ZA", align 4, !dbg !85, !tbaa !86
  call void @llvm.dbg.value(metadata i8* (i8*)* %2, metadata !83, metadata !DIExpression()), !dbg !84
  store i8* (i8*)* %0, i8* (i8*)** @"?custom_get_symbol@Internal@Runtime@Halide@@3P6APAXPBD@ZA", align 4, !dbg !90, !tbaa !86
  ret i8* (i8*)* %2, !dbg !91
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*)* @halide_set_custom_load_library(i8* (i8*)* %0) local_unnamed_addr #2 !dbg !92 {
  call void @llvm.dbg.value(metadata i8* (i8*)* %0, metadata !96, metadata !DIExpression()), !dbg !98
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_load_library@Internal@Runtime@Halide@@3P6APAXPBD@ZA", align 4, !dbg !99, !tbaa !86
  call void @llvm.dbg.value(metadata i8* (i8*)* %2, metadata !97, metadata !DIExpression()), !dbg !98
  store i8* (i8*)* %0, i8* (i8*)** @"?custom_load_library@Internal@Runtime@Halide@@3P6APAXPBD@ZA", align 4, !dbg !100, !tbaa !86
  ret i8* (i8*)* %2, !dbg !101
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*, i8*)* @halide_set_custom_get_library_symbol(i8* (i8*, i8*)* %0) local_unnamed_addr #2 !dbg !102 {
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* %0, metadata !106, metadata !DIExpression()), !dbg !108
  %2 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APAXPAXPBD@ZA", align 4, !dbg !109, !tbaa !86
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* %2, metadata !107, metadata !DIExpression()), !dbg !108
  store i8* (i8*, i8*)* %0, i8* (i8*, i8*)** @"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APAXPAXPBD@ZA", align 4, !dbg !110, !tbaa !86
  ret i8* (i8*, i8*)* %2, !dbg !111
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_get_symbol(i8* %0) local_unnamed_addr #0 !dbg !112 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !114, metadata !DIExpression()), !dbg !115
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_get_symbol@Internal@Runtime@Halide@@3P6APAXPBD@ZA", align 4, !dbg !116, !tbaa !86
  %3 = tail call i8* %2(i8* %0) #4, !dbg !116
  ret i8* %3, !dbg !116
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_load_library(i8* %0) local_unnamed_addr #0 !dbg !117 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !119, metadata !DIExpression()), !dbg !120
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_load_library@Internal@Runtime@Halide@@3P6APAXPBD@ZA", align 4, !dbg !121, !tbaa !86
  %3 = tail call i8* %2(i8* %0) #4, !dbg !121
  ret i8* %3, !dbg !121
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_get_library_symbol(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !122 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !124, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i8* %0, metadata !125, metadata !DIExpression()), !dbg !126
  %3 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APAXPAXPBD@ZA", align 4, !dbg !127, !tbaa !86
  %4 = tail call i8* %3(i8* %0, i8* %1) #4, !dbg !127
  ret i8* %4, !dbg !127
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "custom_get_symbol", linkageName: "?custom_get_symbol@Internal@Runtime@Halide@@3P6APAXPBD@ZA", scope: !2, file: !5, line: 58, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/windows_get_symbol.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "083ec409055a28a4f054cafff14fcc38")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_get_symbol_t", file: !7, line: 381, baseType: !8)
!7 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "b7ab0d29491f0813a909553a9435c0e2")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "custom_load_library", linkageName: "?custom_load_library@Internal@Runtime@Halide@@3P6APAXPBD@ZA", scope: !2, file: !5, line: 59, type: !17, isLocal: false, isDefinition: true)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_load_library_t", file: !7, line: 382, baseType: !8)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "custom_get_library_symbol", linkageName: "?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APAXPAXPBD@ZA", scope: !2, file: !5, line: 60, type: !20, isLocal: false, isDefinition: true)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_get_library_symbol_t", file: !7, line: 383, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!22 = !DISubroutineType(types: !23)
!23 = !{!11, !11, !12}
!24 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !25, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !26, retainedTypes: !27, globals: !31, imports: !32, nameTableKind: None)
!25 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_get_symbol.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "083ec409055a28a4f054cafff14fcc38")
!26 = !{}
!27 = !{!28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "WCHAR", file: !5, line: 11, baseType: !30)
!30 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!31 = !{!0, !15, !18}
!32 = !{!33}
!33 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !24, entity: !2, file: !34, line: 225)
!34 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "0c7b3d8a4f3a5581b3edea53998e0f01")
!35 = !{i32 1, !"NumRegisterParameters", i32 0}
!36 = !{i32 2, !"CodeView", i32 1}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!40 = distinct !DISubprogram(name: "halide_default_get_symbol", scope: !5, file: !5, line: 27, type: !9, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !41)
!41 = !{!42}
!42 = !DILocalVariable(name: "name", arg: 1, scope: !40, file: !5, line: 27, type: !12)
!43 = !DILocation(line: 0, scope: !40)
!44 = !DILocation(line: 28, scope: !40)
!45 = distinct !DISubprogram(name: "halide_default_load_library", scope: !5, file: !5, line: 31, type: !9, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !46)
!46 = !{!47, !48, !50, !51, !53}
!47 = !DILocalVariable(name: "name", arg: 1, scope: !45, file: !5, line: 31, type: !12)
!48 = !DILocalVariable(name: "old_mode", scope: !45, file: !5, line: 33, type: !49)
!49 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!50 = !DILocalVariable(name: "lib", scope: !45, file: !5, line: 34, type: !11)
!51 = !DILocalVariable(name: "wide_len", scope: !45, file: !5, line: 35, type: !52)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DILocalVariable(name: "wide_lib", scope: !54, file: !5, line: 37, type: !28)
!54 = distinct !DILexicalBlock(scope: !55, file: !5, line: 36)
!55 = distinct !DILexicalBlock(scope: !45, file: !5, line: 36)
!56 = !DILocation(line: 0, scope: !45)
!57 = !DILocation(line: 33, scope: !45)
!58 = !DILocation(line: 35, scope: !45)
!59 = !DILocation(line: 36, scope: !45)
!60 = !DILocation(line: 37, scope: !54)
!61 = !DILocation(line: 0, scope: !54)
!62 = !DILocation(line: 38, scope: !54)
!63 = !DILocation(line: 39, scope: !54)
!64 = !DILocation(line: 40, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !5, line: 39)
!66 = distinct !DILexicalBlock(scope: !54, file: !5, line: 39)
!67 = !DILocation(line: 41, scope: !65)
!68 = !DILocation(line: 42, scope: !54)
!69 = !DILocation(line: 43, scope: !54)
!70 = !DILocation(line: 44, scope: !45)
!71 = !DILocation(line: 45, scope: !45)
!72 = distinct !DISubprogram(name: "halide_default_get_library_symbol", scope: !5, file: !5, line: 48, type: !22, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !73)
!73 = !{!74, !75}
!74 = !DILocalVariable(name: "name", arg: 2, scope: !72, file: !5, line: 48, type: !12)
!75 = !DILocalVariable(name: "lib", arg: 1, scope: !72, file: !5, line: 48, type: !11)
!76 = !DILocation(line: 0, scope: !72)
!77 = !DILocation(line: 49, scope: !72)
!78 = distinct !DISubprogram(name: "halide_set_custom_get_symbol", scope: !5, file: !5, line: 68, type: !79, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{!6, !6}
!81 = !{!82, !83}
!82 = !DILocalVariable(name: "f", arg: 1, scope: !78, file: !5, line: 68, type: !6)
!83 = !DILocalVariable(name: "result", scope: !78, file: !5, line: 69, type: !6)
!84 = !DILocation(line: 0, scope: !78)
!85 = !DILocation(line: 69, scope: !78)
!86 = !{!87, !87, i64 0}
!87 = !{!"any pointer", !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C++ TBAA"}
!90 = !DILocation(line: 70, scope: !78)
!91 = !DILocation(line: 71, scope: !78)
!92 = distinct !DISubprogram(name: "halide_set_custom_load_library", scope: !5, file: !5, line: 74, type: !93, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{!17, !17}
!95 = !{!96, !97}
!96 = !DILocalVariable(name: "f", arg: 1, scope: !92, file: !5, line: 74, type: !17)
!97 = !DILocalVariable(name: "result", scope: !92, file: !5, line: 75, type: !17)
!98 = !DILocation(line: 0, scope: !92)
!99 = !DILocation(line: 75, scope: !92)
!100 = !DILocation(line: 76, scope: !92)
!101 = !DILocation(line: 77, scope: !92)
!102 = distinct !DISubprogram(name: "halide_set_custom_get_library_symbol", scope: !5, file: !5, line: 80, type: !103, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !105)
!103 = !DISubroutineType(types: !104)
!104 = !{!20, !20}
!105 = !{!106, !107}
!106 = !DILocalVariable(name: "f", arg: 1, scope: !102, file: !5, line: 80, type: !20)
!107 = !DILocalVariable(name: "result", scope: !102, file: !5, line: 81, type: !20)
!108 = !DILocation(line: 0, scope: !102)
!109 = !DILocation(line: 81, scope: !102)
!110 = !DILocation(line: 82, scope: !102)
!111 = !DILocation(line: 83, scope: !102)
!112 = distinct !DISubprogram(name: "halide_get_symbol", scope: !5, file: !5, line: 86, type: !9, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !113)
!113 = !{!114}
!114 = !DILocalVariable(name: "name", arg: 1, scope: !112, file: !5, line: 86, type: !12)
!115 = !DILocation(line: 0, scope: !112)
!116 = !DILocation(line: 87, scope: !112)
!117 = distinct !DISubprogram(name: "halide_load_library", scope: !5, file: !5, line: 90, type: !9, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !118)
!118 = !{!119}
!119 = !DILocalVariable(name: "name", arg: 1, scope: !117, file: !5, line: 90, type: !12)
!120 = !DILocation(line: 0, scope: !117)
!121 = !DILocation(line: 91, scope: !117)
!122 = distinct !DISubprogram(name: "halide_get_library_symbol", scope: !5, file: !5, line: 94, type: !22, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !123)
!123 = !{!124, !125}
!124 = !DILocalVariable(name: "name", arg: 2, scope: !122, file: !5, line: 94, type: !12)
!125 = !DILocalVariable(name: "lib", arg: 1, scope: !122, file: !5, line: 94, type: !11)
!126 = !DILocation(line: 0, scope: !122)
!127 = !DILocation(line: 95, scope: !122)
