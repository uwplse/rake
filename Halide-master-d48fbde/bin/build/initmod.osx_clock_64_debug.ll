; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/osx_clock.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/osx_clock.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.mach_timebase_info = type { i32, i32 }

@_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE = weak dso_local local_unnamed_addr global i8 0, align 1, !dbg !0
@_ZN6Halide7Runtime8Internal22halide_reference_clockE = weak dso_local local_unnamed_addr global i64 0, align 8, !dbg !7
@_ZN6Halide7Runtime8Internal20halide_timebase_infoE = weak dso_local global %struct.mach_timebase_info zeroinitializer, align 4, !dbg !12

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_start_clock(i8* %0) local_unnamed_addr #0 !dbg !31 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !37, metadata !DIExpression()), !dbg !38
  %2 = load i8, i8* @_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE, align 1, !dbg !39, !tbaa !41, !range !45
  %3 = icmp eq i8 %2, 0, !dbg !39
  br i1 %3, label %4, label %7, !dbg !46

4:                                                ; preds = %1
  %5 = tail call i32 @mach_timebase_info(%struct.mach_timebase_info* nonnull @_ZN6Halide7Runtime8Internal20halide_timebase_infoE) #3, !dbg !47
  %6 = tail call i64 @mach_absolute_time() #3, !dbg !49
  store i64 %6, i64* @_ZN6Halide7Runtime8Internal22halide_reference_clockE, align 8, !dbg !50, !tbaa !51
  store i8 1, i8* @_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE, align 1, !dbg !53, !tbaa !41
  br label %7, !dbg !54

7:                                                ; preds = %4, %1
  ret i32 0, !dbg !55
}

declare !dbg !56 dso_local i32 @mach_timebase_info(%struct.mach_timebase_info*) local_unnamed_addr #1

declare !dbg !60 dso_local i64 @mach_absolute_time() local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @halide_current_time_ns(i8* %0) local_unnamed_addr #0 !dbg !63 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !69, metadata !DIExpression()), !dbg !71
  %2 = tail call i64 @mach_absolute_time() #3, !dbg !72
  call void @llvm.dbg.value(metadata i64 %2, metadata !70, metadata !DIExpression()), !dbg !71
  %3 = load i64, i64* @_ZN6Halide7Runtime8Internal22halide_reference_clockE, align 8, !dbg !73, !tbaa !51
  %4 = sub i64 %2, %3, !dbg !74
  %5 = load i32, i32* getelementptr inbounds (%struct.mach_timebase_info, %struct.mach_timebase_info* @_ZN6Halide7Runtime8Internal20halide_timebase_infoE, i64 0, i32 0), align 4, !dbg !75, !tbaa !76
  %6 = zext i32 %5 to i64, !dbg !79
  %7 = mul i64 %4, %6, !dbg !80
  %8 = load i32, i32* getelementptr inbounds (%struct.mach_timebase_info, %struct.mach_timebase_info* @_ZN6Halide7Runtime8Internal20halide_timebase_infoE, i64 0, i32 1), align 4, !dbg !81, !tbaa !82
  %9 = zext i32 %8 to i64, !dbg !83
  %10 = udiv i64 %7, %9, !dbg !84
  ret i64 %10, !dbg !85
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_sleep_ms(i8* %0, i32 %1) local_unnamed_addr #0 !dbg !86 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !90, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 %1, metadata !91, metadata !DIExpression()), !dbg !92
  %3 = mul nsw i32 %1, 1000, !dbg !93
  %4 = tail call i32 @usleep(i32 %3) #3, !dbg !94
  ret void, !dbg !95
}

declare !dbg !96 dso_local i32 @usleep(i32) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!21}
!llvm.module.flags = !{!27, !28, !29}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halide_reference_clock_inited", linkageName: "_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE", scope: !2, file: !5, line: 16, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/osx_clock.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "halide_reference_clock", linkageName: "_ZN6Halide7Runtime8Internal22halide_reference_clockE", scope: !2, file: !5, line: 17, type: !9, isLocal: false, isDefinition: true)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !10, line: 10, baseType: !11)
!10 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!11 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "halide_timebase_info", linkageName: "_ZN6Halide7Runtime8Internal20halide_timebase_infoE", scope: !2, file: !5, line: 18, type: !14, isLocal: false, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "mach_timebase_info_data_t", file: !5, line: 9, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mach_timebase_info", file: !5, line: 3, size: 64, flags: DIFlagTypePassByValue, elements: !16, identifier: "_ZTS18mach_timebase_info")
!16 = !{!17, !20}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "numer", scope: !15, file: !5, line: 4, baseType: !18, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !10, line: 12, baseType: !19)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "denom", scope: !15, file: !5, line: 5, baseType: !18, size: 32, offset: 32)
!21 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !22, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, globals: !24, imports: !25, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/osx_clock.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!23 = !{}
!24 = !{!0, !7, !12}
!25 = !{!26}
!26 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !21, entity: !2, file: !10, line: 225)
!27 = !{i32 7, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!31 = distinct !DISubprogram(name: "halide_start_clock", scope: !5, file: !5, line: 28, type: !32, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !36)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !35}
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !{!37}
!37 = !DILocalVariable(name: "user_context", arg: 1, scope: !31, file: !5, line: 28, type: !35)
!38 = !DILocation(line: 0, scope: !31)
!39 = !DILocation(line: 30, column: 10, scope: !40)
!40 = distinct !DILexicalBlock(scope: !31, file: !5, line: 30, column: 9)
!41 = !{!42, !42, i64 0}
!42 = !{!"bool", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{i8 0, i8 2}
!46 = !DILocation(line: 30, column: 9, scope: !31)
!47 = !DILocation(line: 31, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !40, file: !5, line: 30, column: 41)
!49 = !DILocation(line: 32, column: 34, scope: !48)
!50 = !DILocation(line: 32, column: 32, scope: !48)
!51 = !{!52, !52, i64 0}
!52 = !{!"long long", !43, i64 0}
!53 = !DILocation(line: 33, column: 39, scope: !48)
!54 = !DILocation(line: 34, column: 5, scope: !48)
!55 = !DILocation(line: 36, column: 5, scope: !31)
!56 = !DISubprogram(name: "mach_timebase_info", scope: !5, file: !5, line: 26, type: !57, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!57 = !DISubroutineType(types: !58)
!58 = !{!34, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!60 = !DISubprogram(name: "mach_absolute_time", scope: !5, file: !5, line: 25, type: !61, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!61 = !DISubroutineType(types: !62)
!62 = !{!11}
!63 = distinct !DISubprogram(name: "halide_current_time_ns", scope: !5, file: !5, line: 39, type: !64, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !68)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !35}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !10, line: 9, baseType: !67)
!67 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!68 = !{!69, !70}
!69 = !DILocalVariable(name: "user_context", arg: 1, scope: !63, file: !5, line: 39, type: !35)
!70 = !DILocalVariable(name: "now", scope: !63, file: !5, line: 40, type: !9)
!71 = !DILocation(line: 0, scope: !63)
!72 = !DILocation(line: 40, column: 20, scope: !63)
!73 = !DILocation(line: 41, column: 19, scope: !63)
!74 = !DILocation(line: 41, column: 17, scope: !63)
!75 = !DILocation(line: 41, column: 66, scope: !63)
!76 = !{!77, !78, i64 0}
!77 = !{!"_ZTS18mach_timebase_info", !78, i64 0, !78, i64 4}
!78 = !{!"int", !43, i64 0}
!79 = !DILocation(line: 41, column: 45, scope: !63)
!80 = !DILocation(line: 41, column: 43, scope: !63)
!81 = !DILocation(line: 41, column: 95, scope: !63)
!82 = !{!77, !78, i64 4}
!83 = !DILocation(line: 41, column: 74, scope: !63)
!84 = !DILocation(line: 41, column: 72, scope: !63)
!85 = !DILocation(line: 41, column: 5, scope: !63)
!86 = distinct !DISubprogram(name: "halide_sleep_ms", scope: !5, file: !5, line: 45, type: !87, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !89)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !35, !34}
!89 = !{!90, !91}
!90 = !DILocalVariable(name: "user_context", arg: 1, scope: !86, file: !5, line: 45, type: !35)
!91 = !DILocalVariable(name: "ms", arg: 2, scope: !86, file: !5, line: 45, type: !34)
!92 = !DILocation(line: 0, scope: !86)
!93 = !DILocation(line: 46, column: 15, scope: !86)
!94 = !DILocation(line: 46, column: 5, scope: !86)
!95 = !DILocation(line: 47, column: 1, scope: !86)
!96 = !DISubprogram(name: "usleep", scope: !5, file: !5, line: 44, type: !97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!97 = !DISubroutineType(types: !98)
!98 = !{!34, !34}
