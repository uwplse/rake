; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_yield.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_yield.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-windows-msvc19.11.0"

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_thread_yield() local_unnamed_addr #0 !dbg !13 {
  %1 = tail call i32 @Sleep(i32 0) #2, !dbg !17
  ret void, !dbg !18
}

declare dso_local i32 @Sleep(i32) local_unnamed_addr #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, imports: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_yield.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "bdec7ced9f83ce6320e80af3904a06b1")
!2 = !{}
!3 = !{!4}
!4 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !5, file: !8, line: 225)
!5 = !DINamespace(name: "Internal", scope: !6)
!6 = !DINamespace(name: "Runtime", scope: !7)
!7 = !DINamespace(name: "Halide", scope: null)
!8 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "0c7b3d8a4f3a5581b3edea53998e0f01")
!9 = !{i32 2, !"CodeView", i32 1}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!13 = distinct !DISubprogram(name: "halide_thread_yield", scope: !14, file: !14, line: 11, type: !15, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!14 = !DIFile(filename: "src/runtime/windows_yield.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "bdec7ced9f83ce6320e80af3904a06b1")
!15 = !DISubroutineType(types: !16)
!16 = !{null}
!17 = !DILocation(line: 12, scope: !13)
!18 = !DILocation(line: 13, scope: !13)
