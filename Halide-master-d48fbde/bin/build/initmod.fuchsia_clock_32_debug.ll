; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fuchsia_clock.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fuchsia_clock.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@halide_reference_clock_inited = weak dso_local local_unnamed_addr global i8 0, align 1, !dbg !0
@halide_reference_clock = weak dso_local local_unnamed_addr global i64 0, align 8, !dbg !6

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_start_clock(i8* %0) local_unnamed_addr #0 !dbg !23 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !29, metadata !DIExpression()), !dbg !30
  %2 = load i8, i8* @halide_reference_clock_inited, align 1, !dbg !31, !tbaa !33, !range !37
  %3 = icmp eq i8 %2, 0, !dbg !31
  br i1 %3, label %4, label %6, !dbg !38

4:                                                ; preds = %1
  %5 = tail call i64 @zx_clock_get_monotonic() #3, !dbg !39
  store i64 %5, i64* @halide_reference_clock, align 8, !dbg !41, !tbaa !42
  store i8 1, i8* @halide_reference_clock_inited, align 1, !dbg !44, !tbaa !33
  br label %6, !dbg !45

6:                                                ; preds = %4, %1
  ret i32 0, !dbg !46
}

declare !dbg !47 dso_local i64 @zx_clock_get_monotonic() local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @halide_current_time_ns(i8* %0) local_unnamed_addr #0 !dbg !50 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !54, metadata !DIExpression()), !dbg !55
  %2 = tail call i64 @zx_clock_get_monotonic() #3, !dbg !56
  %3 = load i64, i64* @halide_reference_clock, align 8, !dbg !57, !tbaa !42
  %4 = sub nsw i64 %2, %3, !dbg !58
  ret i64 %4, !dbg !59
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_sleep_ms(i8* %0, i32 %1) local_unnamed_addr #0 !dbg !60 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !64, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i32 %1, metadata !65, metadata !DIExpression()), !dbg !66
  %3 = mul nsw i32 %1, 1000, !dbg !67
  %4 = sext i32 %3 to i64, !dbg !68
  %5 = tail call i64 @zx_deadline_after(i64 %4) #3, !dbg !69
  %6 = tail call i32 @zx_nanosleep(i64 %5) #3, !dbg !70
  ret void, !dbg !71
}

declare !dbg !72 dso_local i32 @zx_nanosleep(i64) local_unnamed_addr #1

declare !dbg !75 dso_local i64 @zx_deadline_after(i64) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halide_reference_clock_inited", scope: !2, file: !8, line: 14, type: !18, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !3, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, imports: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fuchsia_clock.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "halide_reference_clock", scope: !2, file: !8, line: 15, type: !9, isLocal: false, isDefinition: true)
!8 = !DIFile(filename: "src/runtime/fuchsia_clock.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "zx_time_t", file: !8, line: 6, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !11, line: 9, baseType: !12)
!11 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!12 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !15, file: !11, line: 225)
!15 = !DINamespace(name: "Internal", scope: !16)
!16 = !DINamespace(name: "Runtime", scope: !17)
!17 = !DINamespace(name: "Halide", scope: null)
!18 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!23 = distinct !DISubprogram(name: "halide_start_clock", scope: !8, file: !8, line: 17, type: !24, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !28)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !27}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!28 = !{!29}
!29 = !DILocalVariable(name: "user_context", arg: 1, scope: !23, file: !8, line: 17, type: !27)
!30 = !DILocation(line: 0, scope: !23)
!31 = !DILocation(line: 19, column: 10, scope: !32)
!32 = distinct !DILexicalBlock(scope: !23, file: !8, line: 19, column: 9)
!33 = !{!34, !34, i64 0}
!34 = !{!"bool", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C++ TBAA"}
!37 = !{i8 0, i8 2}
!38 = !DILocation(line: 19, column: 9, scope: !23)
!39 = !DILocation(line: 20, column: 34, scope: !40)
!40 = distinct !DILexicalBlock(scope: !32, file: !8, line: 19, column: 41)
!41 = !DILocation(line: 20, column: 32, scope: !40)
!42 = !{!43, !43, i64 0}
!43 = !{!"long long", !35, i64 0}
!44 = !DILocation(line: 21, column: 39, scope: !40)
!45 = !DILocation(line: 22, column: 5, scope: !40)
!46 = !DILocation(line: 23, column: 5, scope: !23)
!47 = !DISubprogram(name: "zx_clock_get_monotonic", scope: !8, file: !8, line: 9, type: !48, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!48 = !DISubroutineType(types: !49)
!49 = !{!12}
!50 = distinct !DISubprogram(name: "halide_current_time_ns", scope: !8, file: !8, line: 26, type: !51, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !53)
!51 = !DISubroutineType(types: !52)
!52 = !{!10, !27}
!53 = !{!54}
!54 = !DILocalVariable(name: "user_context", arg: 1, scope: !50, file: !8, line: 26, type: !27)
!55 = !DILocation(line: 0, scope: !50)
!56 = !DILocation(line: 27, column: 12, scope: !50)
!57 = !DILocation(line: 27, column: 39, scope: !50)
!58 = !DILocation(line: 27, column: 37, scope: !50)
!59 = !DILocation(line: 27, column: 5, scope: !50)
!60 = distinct !DISubprogram(name: "halide_sleep_ms", scope: !8, file: !8, line: 30, type: !61, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !63)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !27, !26}
!63 = !{!64, !65}
!64 = !DILocalVariable(name: "user_context", arg: 1, scope: !60, file: !8, line: 30, type: !27)
!65 = !DILocalVariable(name: "ms", arg: 2, scope: !60, file: !8, line: 30, type: !26)
!66 = !DILocation(line: 0, scope: !60)
!67 = !DILocation(line: 31, column: 39, scope: !60)
!68 = !DILocation(line: 31, column: 36, scope: !60)
!69 = !DILocation(line: 31, column: 18, scope: !60)
!70 = !DILocation(line: 31, column: 5, scope: !60)
!71 = !DILocation(line: 32, column: 1, scope: !60)
!72 = !DISubprogram(name: "zx_nanosleep", scope: !8, file: !8, line: 12, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!73 = !DISubroutineType(types: !74)
!74 = !{!26, !12}
!75 = !DISubprogram(name: "zx_deadline_after", scope: !8, file: !8, line: 11, type: !76, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!76 = !DISubroutineType(types: !77)
!77 = !{!12, !12}
