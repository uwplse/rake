; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/prefetch.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/prefetch.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i32 @_halide_prefetch(i8* %0) local_unnamed_addr #0 !dbg !13 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !21, metadata !DIExpression()), !dbg !22
  tail call void @llvm.prefetch.p0i8(i8* %0, i32 1, i32 3, i32 1), !dbg !23
  ret i32 0, !dbg !24
}

; Function Attrs: inaccessiblemem_or_argmemonly nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { alwaysinline nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inaccessiblemem_or_argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, imports: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/prefetch.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
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
!13 = distinct !DISubprogram(name: "_halide_prefetch", scope: !14, file: !14, line: 8, type: !15, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!14 = !DIFile(filename: "src/runtime/prefetch.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!20 = !{!21}
!21 = !DILocalVariable(name: "ptr", arg: 1, scope: !13, file: !14, line: 8, type: !18)
!22 = !DILocation(line: 0, scope: !13)
!23 = !DILocation(line: 9, column: 5, scope: !13)
!24 = !DILocation(line: 10, column: 5, scope: !13)
