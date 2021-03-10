; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_init_fini.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_init_fini.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@__DTOR_LIST__ = external dso_local local_unnamed_addr global i32, align 4
@__CTOR_END__ = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local void @run_dtors() local_unnamed_addr #0 section ".fini.halide" !dbg !6 {
  call void @llvm.dbg.value(metadata i32* @__DTOR_LIST__, metadata !10, metadata !DIExpression()), !dbg !34
  %1 = load i32, i32* @__DTOR_LIST__, align 4, !dbg !35, !tbaa !36
  call void @llvm.dbg.value(metadata i32 %1, metadata !16, metadata !DIExpression()), !dbg !40
  %2 = icmp eq i32 %1, 0, !dbg !41
  br i1 %2, label %10, label %3, !dbg !43

3:                                                ; preds = %0, %3
  %4 = phi i32 [ %8, %3 ], [ %1, %0 ]
  %5 = phi i32* [ %7, %3 ], [ @__DTOR_LIST__, %0 ]
  call void @llvm.dbg.value(metadata i32* %5, metadata !10, metadata !DIExpression()), !dbg !34
  %6 = inttoptr i32 %4 to void ()*, !dbg !44
  call void @llvm.dbg.value(metadata void ()* %6, metadata !16, metadata !DIExpression()), !dbg !40
  tail call void %6() #2, !dbg !45
  %7 = getelementptr inbounds i32, i32* %5, i32 1, !dbg !47
  call void @llvm.dbg.value(metadata i32* %7, metadata !10, metadata !DIExpression()), !dbg !34
  %8 = load i32, i32* %7, align 4, !dbg !35, !tbaa !36
  call void @llvm.dbg.value(metadata i32 %8, metadata !16, metadata !DIExpression()), !dbg !40
  %9 = icmp eq i32 %8, 0, !dbg !41
  br i1 %9, label %10, label %3, !dbg !43

10:                                               ; preds = %3, %0
  call void @llvm.dbg.value(metadata i32* %7, metadata !10, metadata !DIExpression()), !dbg !34
  ret void, !dbg !48
}

; Function Attrs: nounwind
define dso_local void @run_ctors() local_unnamed_addr #0 section ".init.halide" !dbg !20 {
  call void @llvm.dbg.value(metadata i32* @__CTOR_END__, metadata !22, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.value(metadata i32* getelementptr (i32, i32* @__CTOR_END__, i32 -1), metadata !22, metadata !DIExpression()), !dbg !49
  %1 = load i32, i32* getelementptr (i32, i32* @__CTOR_END__, i32 -1), align 4, !dbg !50, !tbaa !36
  call void @llvm.dbg.value(metadata i32 %1, metadata !23, metadata !DIExpression()), !dbg !51
  %2 = icmp eq i32 %1, 0, !dbg !52
  br i1 %2, label %10, label %3, !dbg !54

3:                                                ; preds = %0, %3
  %4 = phi i32 [ %8, %3 ], [ %1, %0 ]
  %5 = phi i32* [ %7, %3 ], [ getelementptr (i32, i32* @__CTOR_END__, i32 -1), %0 ]
  %6 = inttoptr i32 %4 to void ()*, !dbg !55
  call void @llvm.dbg.value(metadata void ()* %6, metadata !23, metadata !DIExpression()), !dbg !51
  tail call void %6() #2, !dbg !56
  call void @llvm.dbg.value(metadata i32* %5, metadata !22, metadata !DIExpression()), !dbg !49
  %7 = getelementptr inbounds i32, i32* %5, i32 -1, !dbg !58
  call void @llvm.dbg.value(metadata i32* %7, metadata !22, metadata !DIExpression()), !dbg !49
  %8 = load i32, i32* %7, align 4, !dbg !50, !tbaa !36
  call void @llvm.dbg.value(metadata i32 %8, metadata !23, metadata !DIExpression()), !dbg !51
  %9 = icmp eq i32 %8, 0, !dbg !52
  br i1 %9, label %10, label %3, !dbg !54

10:                                               ; preds = %3, %0
  ret void, !dbg !59
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!30, !31, !32}
!llvm.ident = !{!33}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, imports: !25, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_init_fini.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{}
!3 = !{!4, !19}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "dtor_func", scope: !6, file: !5, line: 13, baseType: !18)
!5 = !DIFile(filename: "src/runtime/qurt_init_fini.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = distinct !DISubprogram(name: "run_dtors", scope: !5, file: !5, line: 12, type: !7, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !{!10, !16}
!10 = !DILocalVariable(name: "dtor_p", scope: !6, file: !5, line: 14, type: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !5, line: 6, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 12, baseType: !15)
!14 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DILocalVariable(name: "dtor", scope: !17, file: !5, line: 16, type: !4)
!17 = distinct !DILexicalBlock(scope: !6, file: !5, line: 15, column: 18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "ctor_func", scope: !20, file: !5, line: 26, baseType: !18)
!20 = distinct !DISubprogram(name: "run_ctors", scope: !5, file: !5, line: 25, type: !7, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!21 = !{!22, !23}
!22 = !DILocalVariable(name: "ctor_p", scope: !20, file: !5, line: 27, type: !11)
!23 = !DILocalVariable(name: "ctor", scope: !24, file: !5, line: 29, type: !19)
!24 = distinct !DILexicalBlock(scope: !20, file: !5, line: 28, column: 18)
!25 = !{!26}
!26 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !27, file: !14, line: 225)
!27 = !DINamespace(name: "Internal", scope: !28)
!28 = !DINamespace(name: "Runtime", scope: !29)
!29 = !DINamespace(name: "Halide", scope: null)
!30 = !{i32 7, !"Dwarf Version", i32 4}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!34 = !DILocation(line: 0, scope: !6)
!35 = !DILocation(line: 16, column: 37, scope: !17)
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !DILocation(line: 0, scope: !17)
!41 = !DILocation(line: 17, column: 14, scope: !42)
!42 = distinct !DILexicalBlock(scope: !17, file: !5, line: 17, column: 13)
!43 = !DILocation(line: 17, column: 13, scope: !17)
!44 = !DILocation(line: 16, column: 26, scope: !17)
!45 = !DILocation(line: 20, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !5, line: 19, column: 16)
!47 = !DILocation(line: 22, column: 15, scope: !17)
!48 = !DILocation(line: 24, column: 1, scope: !6)
!49 = !DILocation(line: 0, scope: !20)
!50 = !DILocation(line: 29, column: 38, scope: !24)
!51 = !DILocation(line: 0, scope: !24)
!52 = !DILocation(line: 30, column: 14, scope: !53)
!53 = distinct !DILexicalBlock(scope: !24, file: !5, line: 30, column: 13)
!54 = !DILocation(line: 30, column: 13, scope: !24)
!55 = !DILocation(line: 29, column: 26, scope: !24)
!56 = !DILocation(line: 33, column: 13, scope: !57)
!57 = distinct !DILexicalBlock(scope: !53, file: !5, line: 32, column: 16)
!58 = !DILocation(line: 29, column: 41, scope: !24)
!59 = !DILocation(line: 36, column: 1, scope: !20)
