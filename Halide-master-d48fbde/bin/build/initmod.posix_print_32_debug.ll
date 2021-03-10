; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_print.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_print.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@_ZN6Halide7Runtime8Internal12custom_printE = weak dso_local local_unnamed_addr global void (i8*, i8*)* @halide_default_print, align 4, !dbg !0

declare dso_local void @halide_default_print(i8*, i8*) #0

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_print(i8* %0, i8* %1) local_unnamed_addr #1 !dbg !26 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !28, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i8* %1, metadata !29, metadata !DIExpression()), !dbg !30
  %3 = load void (i8*, i8*)*, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal12custom_printE, align 4, !dbg !31, !tbaa !32
  tail call void %3(i8* %0, i8* %1) #4, !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void (i8*, i8*)* @halide_set_custom_print(void (i8*, i8*)* %0) local_unnamed_addr #2 !dbg !38 {
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %0, metadata !42, metadata !DIExpression()), !dbg !44
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal12custom_printE, align 4, !dbg !45, !tbaa !32
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %2, metadata !43, metadata !DIExpression()), !dbg !44
  store void (i8*, i8*)* %0, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal12custom_printE, align 4, !dbg !46, !tbaa !32
  ret void (i8*, i8*)* %2, !dbg !47
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!22, !23, !24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "custom_print", linkageName: "_ZN6Halide7Runtime8Internal12custom_printE", scope: !2, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/posix_print.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_print_t", file: !7, line: 99, baseType: !8)
!7 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !12}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !16, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !17, globals: !18, imports: !19, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_print.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!17 = !{}
!18 = !{!0}
!19 = !{!20}
!20 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !15, entity: !2, file: !21, line: 225)
!21 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!22 = !{i32 7, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!26 = distinct !DISubprogram(name: "halide_print", scope: !5, file: !5, line: 17, type: !9, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !27)
!27 = !{!28, !29}
!28 = !DILocalVariable(name: "user_context", arg: 1, scope: !26, file: !5, line: 17, type: !11)
!29 = !DILocalVariable(name: "msg", arg: 2, scope: !26, file: !5, line: 17, type: !12)
!30 = !DILocation(line: 0, scope: !26)
!31 = !DILocation(line: 18, column: 7, scope: !26)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C++ TBAA"}
!36 = !DILocation(line: 18, column: 5, scope: !26)
!37 = !DILocation(line: 19, column: 1, scope: !26)
!38 = distinct !DISubprogram(name: "halide_set_custom_print", scope: !5, file: !5, line: 21, type: !39, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{!6, !6}
!41 = !{!42, !43}
!42 = !DILocalVariable(name: "print", arg: 1, scope: !38, file: !5, line: 21, type: !6)
!43 = !DILocalVariable(name: "result", scope: !38, file: !5, line: 22, type: !6)
!44 = !DILocation(line: 0, scope: !38)
!45 = !DILocation(line: 22, column: 29, scope: !38)
!46 = !DILocation(line: 23, column: 18, scope: !38)
!47 = !DILocation(line: 24, column: 5, scope: !38)
