; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/riscv_cpu_features.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/riscv_cpu_features.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::CpuFeatures" = type { [2 x i64], [2 x i64] }

; Function Attrs: nounwind willreturn
define weak dso_local void @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv(%"struct.Halide::Runtime::Internal::CpuFeatures"* noalias sret(%"struct.Halide::Runtime::Internal::CpuFeatures") align 8 %0) local_unnamed_addr #0 !dbg !42 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !45, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i32 0, metadata !48, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i64 0, metadata !48, metadata !DIExpression()), !dbg !54
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 0, i64 0, !dbg !55
  store i64 0, i64* %2, align 8, !dbg !58, !tbaa !59
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 1, i64 0, !dbg !63
  store i64 0, i64* %3, align 8, !dbg !64, !tbaa !59
  call void @llvm.dbg.value(metadata i64 1, metadata !48, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i64 1, metadata !48, metadata !DIExpression()), !dbg !54
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 0, i64 1, !dbg !55
  store i64 0, i64* %4, align 8, !dbg !58, !tbaa !59
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 1, i64 1, !dbg !63
  store i64 0, i64* %5, align 8, !dbg !64, !tbaa !59
  call void @llvm.dbg.value(metadata i64 2, metadata !48, metadata !DIExpression()), !dbg !54
  ret void, !dbg !65
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, imports: !36, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/riscv_cpu_features.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{}
!3 = !{!4}
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CpuFeatures", scope: !6, file: !5, line: 14, size: 256, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !9, identifier: "_ZTSN6Halide7Runtime8Internal11CpuFeaturesE")
!5 = !DIFile(filename: "src/runtime/cpu_features.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DINamespace(name: "Internal", scope: !7)
!7 = !DINamespace(name: "Runtime", scope: !8)
!8 = !DINamespace(name: "Halide", scope: null)
!9 = !{!10, !13, !20, !21, !25, !26, !32, !33}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "kWordCount", scope: !4, file: !5, line: 15, baseType: !11, flags: DIFlagStaticMember, extraData: i32 2)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "known", scope: !4, file: !5, line: 43, baseType: !14, size: 128)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !18)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !16, line: 10, baseType: !17)
!16 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!17 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !{!19}
!19 = !DISubrange(count: 2)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !4, file: !5, line: 44, baseType: !14, size: 128, offset: 128)
!21 = !DISubprogram(name: "set_known", linkageName: "_ZN6Halide7Runtime8Internal11CpuFeatures9set_knownEi", scope: !4, file: !5, line: 17, type: !22, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !12}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!25 = !DISubprogram(name: "set_available", linkageName: "_ZN6Halide7Runtime8Internal11CpuFeatures13set_availableEi", scope: !4, file: !5, line: 21, type: !22, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!26 = !DISubprogram(name: "test_known", linkageName: "_ZNK6Halide7Runtime8Internal11CpuFeatures10test_knownEi", scope: !4, file: !5, line: 25, type: !27, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !30, !12}
!29 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!32 = !DISubprogram(name: "test_available", linkageName: "_ZNK6Halide7Runtime8Internal11CpuFeatures14test_availableEi", scope: !4, file: !5, line: 29, type: !27, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!33 = !DISubprogram(name: "CpuFeatures", scope: !4, file: !5, line: 34, type: !34, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !24}
!36 = !{!37}
!37 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !6, file: !16, line: 225)
!38 = !{i32 7, !"Dwarf Version", i32 4}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!42 = distinct !DISubprogram(name: "halide_get_cpu_features", linkageName: "_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv", scope: !6, file: !43, line: 8, type: !44, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!43 = !DIFile(filename: "src/runtime/riscv_cpu_features.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!44 = !DISubroutineType(types: !3)
!45 = !DILocalVariable(name: "this", arg: 1, scope: !46, type: !51, flags: DIFlagArtificial | DIFlagObjectPointer)
!46 = distinct !DISubprogram(name: "CpuFeatures", linkageName: "_ZN6Halide7Runtime8Internal11CpuFeaturesC2Ev", scope: !4, file: !5, line: 34, type: !34, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !33, retainedNodes: !47)
!47 = !{!45, !48}
!48 = !DILocalVariable(name: "i", scope: !49, file: !5, line: 37, type: !12)
!49 = distinct !DILexicalBlock(scope: !50, file: !5, line: 37, column: 9)
!50 = distinct !DILexicalBlock(scope: !46, file: !5, line: 34, column: 19)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!52 = !DILocation(line: 0, scope: !46, inlinedAt: !53)
!53 = distinct !DILocation(line: 10, column: 12, scope: !42)
!54 = !DILocation(line: 0, scope: !49, inlinedAt: !53)
!55 = !DILocation(line: 38, column: 13, scope: !56, inlinedAt: !53)
!56 = distinct !DILexicalBlock(scope: !57, file: !5, line: 37, column: 46)
!57 = distinct !DILexicalBlock(scope: !49, file: !5, line: 37, column: 9)
!58 = !DILocation(line: 38, column: 22, scope: !56, inlinedAt: !53)
!59 = !{!60, !60, i64 0}
!60 = !{!"long long", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C++ TBAA"}
!63 = !DILocation(line: 39, column: 13, scope: !56, inlinedAt: !53)
!64 = !DILocation(line: 39, column: 26, scope: !56, inlinedAt: !53)
!65 = !DILocation(line: 10, column: 5, scope: !42)
