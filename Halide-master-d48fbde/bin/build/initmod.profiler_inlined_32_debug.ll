; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler_inlined.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler_inlined.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.halide_profiler_state = type { %struct.halide_mutex, i32, i32, i32, i32, %struct.halide_profiler_pipeline_stats*, void (i32*, i32*)*, %struct.halide_thread* }
%struct.halide_mutex = type { [1 x i32] }
%struct.halide_profiler_pipeline_stats = type { i64, i64, i64, i64, i64, i64, i8*, %struct.halide_profiler_func_stats*, i8*, i32, i32, i32, i32, i32 }
%struct.halide_profiler_func_stats = type { i64, i64, i64, i64, i64, i64, i64, i8*, i32 }
%struct.halide_thread = type opaque

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i32 @halide_profiler_set_current_func(%struct.halide_profiler_state* %0, i32 %1, i32 %2) local_unnamed_addr #0 !dbg !13 {
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %0, metadata !48, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i32 %1, metadata !49, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i32 %2, metadata !50, metadata !DIExpression()), !dbg !54
  %4 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i32 0, i32 3, !dbg !55
  call void @llvm.dbg.value(metadata i32* %4, metadata !51, metadata !DIExpression()), !dbg !54
  tail call void asm sideeffect "", ""() #2, !dbg !56, !srcloc !57
  %5 = add nsw i32 %2, %1, !dbg !58
  store volatile i32 %5, i32* %4, align 4, !dbg !59, !tbaa !60
  tail call void asm sideeffect "", ""() #2, !dbg !64, !srcloc !65
  ret i32 0, !dbg !66
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i32 @halide_profiler_incr_active_threads(%struct.halide_profiler_state* %0) local_unnamed_addr #0 !dbg !67 {
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %0, metadata !71, metadata !DIExpression()), !dbg !74
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i32 0, i32 4, !dbg !75
  call void @llvm.dbg.value(metadata i32* %2, metadata !72, metadata !DIExpression()), !dbg !74
  tail call void asm sideeffect "", ""() #2, !dbg !76, !srcloc !77
  %3 = atomicrmw add i32* %2, i32 1 seq_cst, !dbg !78
  call void @llvm.dbg.value(metadata i32 %3, metadata !73, metadata !DIExpression()), !dbg !74
  tail call void asm sideeffect "", ""() #2, !dbg !79, !srcloc !80
  ret i32 %3, !dbg !81
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i32 @halide_profiler_decr_active_threads(%struct.halide_profiler_state* %0) local_unnamed_addr #0 !dbg !82 {
  call void @llvm.dbg.value(metadata %struct.halide_profiler_state* %0, metadata !84, metadata !DIExpression()), !dbg !87
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i32 0, i32 4, !dbg !88
  call void @llvm.dbg.value(metadata i32* %2, metadata !85, metadata !DIExpression()), !dbg !87
  tail call void asm sideeffect "", ""() #2, !dbg !89, !srcloc !90
  %3 = atomicrmw sub i32* %2, i32 1 seq_cst, !dbg !91
  call void @llvm.dbg.value(metadata i32 %3, metadata !86, metadata !DIExpression()), !dbg !87
  tail call void asm sideeffect "", ""() #2, !dbg !92, !srcloc !93
  ret i32 %3, !dbg !94
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, imports: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler_inlined.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
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
!13 = distinct !DISubprogram(name: "halide_profiler_set_current_func", scope: !14, file: !14, line: 5, type: !15, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !47)
!14 = !DIFile(filename: "src/runtime/profiler_inlined.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18, !17, !17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_profiler_state", file: !20, line: 1766, size: 256, flags: DIFlagTypePassByValue, elements: !21, identifier: "_ZTS21halide_profiler_state")
!20 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!21 = !{!22, !32, !33, !34, !35, !36, !39, !44}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !19, file: !20, line: 1770, baseType: !23, size: 32)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !20, line: 120, size: 32, flags: DIFlagTypePassByValue, elements: !24, identifier: "_ZTS12halide_mutex")
!24 = !{!25}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !23, file: !20, line: 121, baseType: !26, size: 32)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !30)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !8, line: 68, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 12, baseType: !29)
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !{!31}
!31 = !DISubrange(count: 1)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_time", scope: !19, file: !20, line: 1774, baseType: !17, size: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "first_free_id", scope: !19, file: !20, line: 1777, baseType: !17, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "current_func", scope: !19, file: !20, line: 1781, baseType: !17, size: 32, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "active_threads", scope: !19, file: !20, line: 1784, baseType: !17, size: 32, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "pipelines", scope: !19, file: !20, line: 1787, baseType: !37, size: 32, offset: 160)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_profiler_pipeline_stats", file: !20, line: 1721, size: 640, flags: DIFlagFwdDecl, identifier: "_ZTS30halide_profiler_pipeline_stats")
!39 = !DIDerivedType(tag: DW_TAG_member, name: "get_remote_profiler_state", scope: !19, file: !20, line: 1792, baseType: !40, size: 32, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_thread", scope: !19, file: !20, line: 1795, baseType: !45, size: 32, offset: 224)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 32)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_thread", file: !20, line: 312, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS13halide_thread")
!47 = !{!48, !49, !50, !51}
!48 = !DILocalVariable(name: "state", arg: 1, scope: !13, file: !14, line: 5, type: !18)
!49 = !DILocalVariable(name: "tok", arg: 2, scope: !13, file: !14, line: 5, type: !17)
!50 = !DILocalVariable(name: "t", arg: 3, scope: !13, file: !14, line: 5, type: !17)
!51 = !DILocalVariable(name: "ptr", scope: !13, file: !14, line: 8, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!54 = !DILocation(line: 0, scope: !13)
!55 = !DILocation(line: 8, column: 34, scope: !13)
!56 = !DILocation(line: 10, column: 5, scope: !13)
!57 = !{i32 345}
!58 = !DILocation(line: 11, column: 16, scope: !13)
!59 = !DILocation(line: 11, column: 10, scope: !13)
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C++ TBAA"}
!64 = !DILocation(line: 12, column: 5, scope: !13)
!65 = !{i32 391}
!66 = !DILocation(line: 14, column: 5, scope: !13)
!67 = distinct !DISubprogram(name: "halide_profiler_incr_active_threads", scope: !14, file: !14, line: 17, type: !68, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !70)
!68 = !DISubroutineType(types: !69)
!69 = !{!17, !18}
!70 = !{!71, !72, !73}
!71 = !DILocalVariable(name: "state", arg: 1, scope: !67, file: !14, line: 17, type: !18)
!72 = !DILocalVariable(name: "ptr", scope: !67, file: !14, line: 18, type: !52)
!73 = !DILocalVariable(name: "ret", scope: !67, file: !14, line: 21, type: !17)
!74 = !DILocation(line: 0, scope: !67)
!75 = !DILocation(line: 18, column: 34, scope: !67)
!76 = !DILocation(line: 20, column: 5, scope: !67)
!77 = !{i32 615}
!78 = !DILocation(line: 21, column: 15, scope: !67)
!79 = !DILocation(line: 22, column: 5, scope: !67)
!80 = !{i32 685}
!81 = !DILocation(line: 24, column: 5, scope: !67)
!82 = distinct !DISubprogram(name: "halide_profiler_decr_active_threads", scope: !14, file: !14, line: 27, type: !68, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !83)
!83 = !{!84, !85, !86}
!84 = !DILocalVariable(name: "state", arg: 1, scope: !82, file: !14, line: 27, type: !18)
!85 = !DILocalVariable(name: "ptr", scope: !82, file: !14, line: 28, type: !52)
!86 = !DILocalVariable(name: "ret", scope: !82, file: !14, line: 31, type: !17)
!87 = !DILocation(line: 0, scope: !82)
!88 = !DILocation(line: 28, column: 34, scope: !82)
!89 = !DILocation(line: 30, column: 5, scope: !82)
!90 = !{i32 911}
!91 = !DILocation(line: 31, column: 15, scope: !82)
!92 = !DILocation(line: 32, column: 5, scope: !82)
!93 = !{i32 981}
!94 = !DILocation(line: 34, column: 5, scope: !82)
