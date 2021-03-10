; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/android_io.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/android_io.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@.str = private unnamed_addr constant [7 x i8] c"halide\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_default_print(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !13 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !22, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i8* %1, metadata !23, metadata !DIExpression()), !dbg !24
  %3 = tail call i32 (i32, i8*, i8*, ...) @__android_log_print(i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %1) #3, !dbg !25
  ret void, !dbg !26
}

declare dso_local i32 @__android_log_print(i32, i8*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, imports: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/android_io.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
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
!13 = distinct !DISubprogram(name: "halide_default_print", scope: !14, file: !14, line: 9, type: !15, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!14 = !DIFile(filename: "src/runtime/android_io.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !18}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !{!22, !23}
!22 = !DILocalVariable(name: "user_context", arg: 1, scope: !13, file: !14, line: 9, type: !17)
!23 = !DILocalVariable(name: "str", arg: 2, scope: !13, file: !14, line: 9, type: !18)
!24 = !DILocation(line: 0, scope: !13)
!25 = !DILocation(line: 10, column: 5, scope: !13)
!26 = !DILocation(line: 11, column: 1, scope: !13)
