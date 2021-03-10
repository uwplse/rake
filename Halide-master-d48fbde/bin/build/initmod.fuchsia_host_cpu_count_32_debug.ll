; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fuchsia_host_cpu_count.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fuchsia_host_cpu_count.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_host_cpu_count() local_unnamed_addr #0 !dbg !15 {
  %1 = tail call i32 @zx_system_get_num_cpus() #2, !dbg !18
  ret i32 %1, !dbg !19
}

declare !dbg !20 dso_local i32 @zx_system_get_num_cpus() local_unnamed_addr #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, imports: !5, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fuchsia_host_cpu_count.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{!6}
!6 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !7, file: !10, line: 225)
!7 = !DINamespace(name: "Internal", scope: !8)
!8 = !DINamespace(name: "Runtime", scope: !9)
!9 = !DINamespace(name: "Halide", scope: null)
!10 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!15 = distinct !DISubprogram(name: "halide_host_cpu_count", scope: !16, file: !16, line: 7, type: !17, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!16 = !DIFile(filename: "src/runtime/fuchsia_host_cpu_count.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!17 = !DISubroutineType(types: !3)
!18 = !DILocation(line: 8, column: 17, scope: !15)
!19 = !DILocation(line: 8, column: 5, scope: !15)
!20 = !DISubprogram(name: "zx_system_get_num_cpus", scope: !16, file: !16, line: 5, type: !21, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
