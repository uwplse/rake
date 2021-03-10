; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_io.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_io.cpp"
target datalayout = "e-m:x-p:32:32-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i386-unknown-windows-msvc19.11.0"

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_default_print(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !14 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !23, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i8* %0, metadata !24, metadata !DIExpression()), !dbg !25
  %3 = tail call i32 @strlen(i8* %1) #3, !dbg !26
  %4 = tail call i32 @write(i32 1, i8* %1, i32 %3) #3, !dbg !26
  ret void, !dbg !27
}

declare dso_local i32 @write(i32, i8*, i32) local_unnamed_addr #1

declare dso_local i32 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, imports: !3, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_io.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "8fb0c592ee6765100b71df9082c9102c")
!2 = !{}
!3 = !{!4}
!4 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !5, file: !8, line: 225)
!5 = !DINamespace(name: "Internal", scope: !6)
!6 = !DINamespace(name: "Runtime", scope: !7)
!7 = !DINamespace(name: "Halide", scope: null)
!8 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "0c7b3d8a4f3a5581b3edea53998e0f01")
!9 = !{i32 1, !"NumRegisterParameters", i32 0}
!10 = !{i32 2, !"CodeView", i32 1}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!14 = distinct !DISubprogram(name: "halide_default_print", scope: !15, file: !15, line: 5, type: !16, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !22)
!15 = !DIFile(filename: "src/runtime/windows_io.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "8fb0c592ee6765100b71df9082c9102c")
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !19}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{!23, !24}
!23 = !DILocalVariable(name: "str", arg: 2, scope: !14, file: !15, line: 5, type: !19)
!24 = !DILocalVariable(name: "user_context", arg: 1, scope: !14, file: !15, line: 5, type: !18)
!25 = !DILocation(line: 0, scope: !14)
!26 = !DILocation(line: 6, scope: !14)
!27 = !DILocation(line: 7, scope: !14)
