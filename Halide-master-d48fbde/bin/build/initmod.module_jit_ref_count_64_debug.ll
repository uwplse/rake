; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/module_jit_ref_count.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/module_jit_ref_count.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

@halide_jit_module_argument = weak dso_local local_unnamed_addr global i8* null, align 8, !dbg !0
@halide_jit_module_adjust_ref_count = weak dso_local local_unnamed_addr global void (i8*, i32)* null, align 8, !dbg !6

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_use_jit_module() local_unnamed_addr #0 !dbg !25 {
  %1 = load void (i8*, i32)*, void (i8*, i32)** @halide_jit_module_adjust_ref_count, align 8, !dbg !28, !tbaa !30
  %2 = icmp eq void (i8*, i32)* %1, null, !dbg !34
  br i1 %2, label %5, label %3, !dbg !35

3:                                                ; preds = %0
  %4 = load i8*, i8** @halide_jit_module_argument, align 8, !dbg !36, !tbaa !30
  tail call void %1(i8* %4, i32 1) #1, !dbg !38
  br label %5

5:                                                ; preds = %0, %3
  ret void, !dbg !39
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_release_jit_module() local_unnamed_addr #0 !dbg !40 {
  %1 = load void (i8*, i32)*, void (i8*, i32)** @halide_jit_module_adjust_ref_count, align 8, !dbg !41, !tbaa !30
  %2 = icmp eq void (i8*, i32)* %1, null, !dbg !43
  br i1 %2, label %5, label %3, !dbg !44

3:                                                ; preds = %0
  %4 = load i8*, i8** @halide_jit_module_argument, align 8, !dbg !45, !tbaa !30
  tail call void %1(i8* %4, i32 -1) #1, !dbg !47
  br label %5

5:                                                ; preds = %0, %3
  ret void, !dbg !48
}

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halide_jit_module_argument", scope: !2, file: !8, line: 21, type: !12, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !3, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, imports: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/module_jit_ref_count.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "halide_jit_module_adjust_ref_count", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true)
!8 = !DIFile(filename: "src/runtime/module_jit_ref_count.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !13}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !14, line: 11, baseType: !15)
!14 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17}
!17 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !18, file: !14, line: 225)
!18 = !DINamespace(name: "Internal", scope: !19)
!19 = !DINamespace(name: "Runtime", scope: !20)
!20 = !DINamespace(name: "Halide", scope: null)
!21 = !{i32 7, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!25 = distinct !DISubprogram(name: "halide_use_jit_module", scope: !8, file: !8, line: 24, type: !26, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!26 = !DISubroutineType(types: !27)
!27 = !{null}
!28 = !DILocation(line: 25, column: 9, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !8, line: 25, column: 9)
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C++ TBAA"}
!34 = !DILocation(line: 25, column: 44, scope: !29)
!35 = !DILocation(line: 25, column: 9, scope: !25)
!36 = !DILocation(line: 28, column: 47, scope: !37)
!37 = distinct !DILexicalBlock(scope: !29, file: !8, line: 27, column: 12)
!38 = !DILocation(line: 28, column: 9, scope: !37)
!39 = !DILocation(line: 30, column: 1, scope: !25)
!40 = distinct !DISubprogram(name: "halide_release_jit_module", scope: !8, file: !8, line: 32, type: !26, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!41 = !DILocation(line: 33, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !40, file: !8, line: 33, column: 9)
!43 = !DILocation(line: 33, column: 44, scope: !42)
!44 = !DILocation(line: 33, column: 9, scope: !40)
!45 = !DILocation(line: 36, column: 47, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !8, line: 35, column: 12)
!47 = !DILocation(line: 36, column: 9, scope: !46)
!48 = !DILocation(line: 38, column: 1, scope: !40)
