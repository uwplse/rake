; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_hvx_vtcm.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_hvx_vtcm.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_vtcm_malloc(i8* %0, i32 %1) local_unnamed_addr #0 !dbg !16 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !22, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32 %1, metadata !23, metadata !DIExpression()), !dbg !24
  %3 = tail call i8* @HAP_request_VTCM(i32 %1, i32 1) #3, !dbg !25
  ret i8* %3, !dbg !26
}

declare !dbg !27 dso_local i8* @HAP_request_VTCM(i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_vtcm_free(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !32 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !36, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata i8* %1, metadata !37, metadata !DIExpression()), !dbg !38
  %3 = tail call i32 @HAP_release_VTCM(i8* %1) #3, !dbg !39
  ret void, !dbg !40
}

declare !dbg !41 dso_local i32 @HAP_release_VTCM(i8*) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, imports: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_hvx_vtcm.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{}
!3 = !{!4, !9}
!4 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !5, file: !8, line: 225)
!5 = !DINamespace(name: "Internal", scope: !6)
!6 = !DINamespace(name: "Runtime", scope: !7)
!7 = !DINamespace(name: "Halide", scope: null)
!8 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!9 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !10, file: !11, line: 6)
!10 = !DINamespace(name: "Qurt", scope: !5)
!11 = !DIFile(filename: "src/runtime/qurt_hvx_vtcm.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!16 = distinct !DISubprogram(name: "halide_vtcm_malloc", scope: !11, file: !11, line: 10, type: !17, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !19, !20}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{!22, !23}
!22 = !DILocalVariable(name: "user_context", arg: 1, scope: !16, file: !11, line: 10, type: !19)
!23 = !DILocalVariable(name: "size", arg: 2, scope: !16, file: !11, line: 10, type: !20)
!24 = !DILocation(line: 0, scope: !16)
!25 = !DILocation(line: 11, column: 12, scope: !16)
!26 = !DILocation(line: 11, column: 5, scope: !16)
!27 = !DISubprogram(name: "HAP_request_VTCM", scope: !28, file: !28, line: 3, type: !29, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!28 = !DIFile(filename: "src/runtime/mini_qurt_vtcm.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!29 = !DISubroutineType(types: !30)
!30 = !{!19, !31, !31}
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = distinct !DISubprogram(name: "halide_vtcm_free", scope: !11, file: !11, line: 14, type: !33, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !19, !19}
!35 = !{!36, !37}
!36 = !DILocalVariable(name: "user_context", arg: 1, scope: !32, file: !11, line: 14, type: !19)
!37 = !DILocalVariable(name: "addr", arg: 2, scope: !32, file: !11, line: 14, type: !19)
!38 = !DILocation(line: 0, scope: !32)
!39 = !DILocation(line: 15, column: 5, scope: !32)
!40 = !DILocation(line: 16, column: 1, scope: !32)
!41 = !DISubprogram(name: "HAP_release_VTCM", scope: !28, file: !28, line: 4, type: !42, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{!20, !19}
