; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/destructors.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/destructors.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

$call_destructor = comdat any

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, void (i8*, i8*)*, i8**, i1)* @call_destructor to i8*)], section "llvm.metadata"

; Function Attrs: alwaysinline nounwind mustprogress
define linkonce_odr dso_local void @call_destructor(i8* %0, void (i8*, i8*)* %1, i8** %2, i1 zeroext %3) #0 comdat !dbg !13 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !24, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %1, metadata !25, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8** %2, metadata !26, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i1 %3, metadata !27, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !29
  %5 = load i8*, i8** %2, align 8, !dbg !30, !tbaa !31
  call void @llvm.dbg.value(metadata i8* %5, metadata !28, metadata !DIExpression()), !dbg !29
  store i8* null, i8** %2, align 8, !dbg !35, !tbaa !31
  %6 = icmp ne i8* %5, null, !dbg !36
  %7 = and i1 %6, %3, !dbg !38
  br i1 %7, label %8, label %9, !dbg !38

8:                                                ; preds = %4
  tail call void %1(i8* %0, i8* nonnull %5) #2, !dbg !39
  br label %9, !dbg !41

9:                                                ; preds = %4, %8
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, imports: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/destructors.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{}
!3 = !{!4}
!4 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !5, file: !8, line: 225)
!5 = !DINamespace(name: "Internal", scope: !6)
!6 = !DINamespace(name: "Runtime", scope: !7)
!7 = !DINamespace(name: "Halide", scope: null)
!8 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!13 = distinct !DISubprogram(name: "call_destructor", scope: !14, file: !14, line: 6, type: !15, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!14 = !DIFile(filename: "src/runtime/destructors.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !18, !21, !22}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !17, !17}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!22 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!23 = !{!24, !25, !26, !27, !28}
!24 = !DILocalVariable(name: "user_context", arg: 1, scope: !13, file: !14, line: 6, type: !17)
!25 = !DILocalVariable(name: "fn", arg: 2, scope: !13, file: !14, line: 6, type: !18)
!26 = !DILocalVariable(name: "object", arg: 3, scope: !13, file: !14, line: 6, type: !21)
!27 = !DILocalVariable(name: "should_call", arg: 4, scope: !13, file: !14, line: 6, type: !22)
!28 = !DILocalVariable(name: "o", scope: !13, file: !14, line: 7, type: !17)
!29 = !DILocation(line: 0, scope: !13)
!30 = !DILocation(line: 7, column: 15, scope: !13)
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C++ TBAA"}
!35 = !DILocation(line: 8, column: 13, scope: !13)
!36 = !DILocation(line: 10, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !13, file: !14, line: 10, column: 9)
!38 = !DILocation(line: 10, column: 11, scope: !37)
!39 = !DILocation(line: 11, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !37, file: !14, line: 10, column: 27)
!41 = !DILocation(line: 12, column: 5, scope: !40)
!42 = !DILocation(line: 13, column: 1, scope: !13)
