; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/ssp.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/ssp.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

@__stack_chk_guard = weak dso_local local_unnamed_addr global i8* inttoptr (i64 3735928559 to i8*), align 8, !dbg !0
@.str = private unnamed_addr constant [49 x i8] c"Memory error: stack smashing protector changed!\0A\00", align 1

; Function Attrs: nounwind mustprogress
define weak dso_local void @__stack_chk_fail() local_unnamed_addr #0 !dbg !19 {
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0)) #2, !dbg !22
  tail call void @abort() #2, !dbg !23
  ret void, !dbg !24
}

declare !dbg !25 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #1

declare !dbg !32 dso_local void @abort() local_unnamed_addr #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__stack_chk_guard", scope: !2, file: !12, line: 11, type: !13, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !3, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, imports: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/ssp.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!4 = !{}
!5 = !{!0}
!6 = !{!7}
!7 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !8, file: !11, line: 225)
!8 = !DINamespace(name: "Internal", scope: !9)
!9 = !DINamespace(name: "Runtime", scope: !10)
!10 = !DINamespace(name: "Halide", scope: null)
!11 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!12 = !DIFile(filename: "src/runtime/ssp.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!19 = distinct !DISubprogram(name: "__stack_chk_fail", scope: !12, file: !12, line: 13, type: !20, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !DILocation(line: 14, column: 5, scope: !19)
!23 = !DILocation(line: 15, column: 5, scope: !19)
!24 = !DILocation(line: 16, column: 1, scope: !19)
!25 = !DISubprogram(name: "halide_error", scope: !26, file: !26, line: 111, type: !27, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!26 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !30}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!32 = !DISubprogram(name: "abort", scope: !11, file: !11, line: 108, type: !20, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
