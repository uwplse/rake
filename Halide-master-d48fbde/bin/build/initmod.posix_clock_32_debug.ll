; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_clock.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_clock.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.timeval = type { i32, i32 }

@_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE = weak dso_local local_unnamed_addr global i8 0, align 1, !dbg !0
@_ZN6Halide7Runtime8Internal22halide_reference_clockE = weak dso_local global %struct.timeval zeroinitializer, align 4, !dbg !7

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_start_clock(i8* %0) local_unnamed_addr #0 !dbg !29 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !34, metadata !DIExpression()), !dbg !35
  %2 = load i8, i8* @_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE, align 1, !dbg !36, !tbaa !38, !range !42
  %3 = icmp eq i8 %2, 0, !dbg !36
  br i1 %3, label %4, label %6, !dbg !43

4:                                                ; preds = %1
  %5 = tail call i32 @gettimeofday(%struct.timeval* nonnull @_ZN6Halide7Runtime8Internal22halide_reference_clockE, i8* null) #4, !dbg !44
  store i8 1, i8* @_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE, align 1, !dbg !46, !tbaa !38
  br label %6, !dbg !47

6:                                                ; preds = %4, %1
  ret i32 0, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !49 dso_local i32 @gettimeofday(%struct.timeval*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @halide_current_time_ns(i8* %0) local_unnamed_addr #0 !dbg !53 {
  %2 = alloca %struct.timeval, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !57, metadata !DIExpression()), !dbg !61
  %3 = bitcast %struct.timeval* %2 to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !62
  call void @llvm.dbg.declare(metadata %struct.timeval* %2, metadata !58, metadata !DIExpression()), !dbg !63
  %4 = call i32 @gettimeofday(%struct.timeval* nonnull %2, i8* null) #4, !dbg !64
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0, !dbg !65
  %6 = load i32, i32* %5, align 4, !dbg !65, !tbaa !66
  %7 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @_ZN6Halide7Runtime8Internal22halide_reference_clockE, i32 0, i32 0), align 4, !dbg !69, !tbaa !66
  %8 = sub nsw i32 %6, %7, !dbg !70
  %9 = sext i32 %8 to i64, !dbg !71
  %10 = mul nsw i64 %9, 1000000, !dbg !72
  call void @llvm.dbg.value(metadata i64 %10, metadata !59, metadata !DIExpression()), !dbg !61
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1, !dbg !73
  %12 = load i32, i32* %11, align 4, !dbg !73, !tbaa !74
  %13 = sext i32 %12 to i64, !dbg !75
  %14 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @_ZN6Halide7Runtime8Internal22halide_reference_clockE, i32 0, i32 1), align 4, !dbg !76, !tbaa !74
  %15 = sext i32 %14 to i64, !dbg !77
  %16 = sub nsw i64 %13, %15, !dbg !78
  call void @llvm.dbg.value(metadata i64 %16, metadata !60, metadata !DIExpression()), !dbg !61
  %17 = add nsw i64 %16, %10, !dbg !79
  %18 = mul nsw i64 %17, 1000, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !81
  ret i64 %18, !dbg !82
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_sleep_ms(i8* %0, i32 %1) local_unnamed_addr #0 !dbg !83 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !87, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i32 %1, metadata !88, metadata !DIExpression()), !dbg !89
  %3 = mul nsw i32 %1, 1000, !dbg !90
  %4 = tail call i32 @usleep(i32 %3) #4, !dbg !91
  ret void, !dbg !92
}

declare !dbg !93 dso_local i32 @usleep(i32) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!16}
!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halide_reference_clock_inited", linkageName: "_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE", scope: !2, file: !5, line: 21, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/posix_clock.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "halide_reference_clock", linkageName: "_ZN6Halide7Runtime8Internal22halide_reference_clockE", scope: !2, file: !5, line: 22, type: !9, isLocal: false, isDefinition: true)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !5, line: 11, size: 64, flags: DIFlagTypePassByValue, elements: !10, identifier: "_ZTS7timeval")
!10 = !{!11, !15}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !9, file: !5, line: 12, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !13, line: 11, baseType: !14)
!13 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !9, file: !5, line: 12, baseType: !12, size: 32, offset: 32)
!16 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !17, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !19, globals: !22, imports: !23, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_clock.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!18 = !{}
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !13, line: 9, baseType: !21)
!21 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!22 = !{!0, !7}
!23 = !{!24}
!24 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !16, entity: !2, file: !13, line: 225)
!25 = !{i32 7, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!29 = distinct !DISubprogram(name: "halide_start_clock", scope: !5, file: !5, line: 31, type: !30, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{!14, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!33 = !{!34}
!34 = !DILocalVariable(name: "user_context", arg: 1, scope: !29, file: !5, line: 31, type: !32)
!35 = !DILocation(line: 0, scope: !29)
!36 = !DILocation(line: 33, column: 10, scope: !37)
!37 = distinct !DILexicalBlock(scope: !29, file: !5, line: 33, column: 9)
!38 = !{!39, !39, i64 0}
!39 = !{!"bool", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{i8 0, i8 2}
!43 = !DILocation(line: 33, column: 9, scope: !29)
!44 = !DILocation(line: 34, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !37, file: !5, line: 33, column: 41)
!46 = !DILocation(line: 35, column: 39, scope: !45)
!47 = !DILocation(line: 36, column: 5, scope: !45)
!48 = !DILocation(line: 37, column: 5, scope: !29)
!49 = !DISubprogram(name: "gettimeofday", scope: !5, file: !5, line: 29, type: !50, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !18)
!50 = !DISubroutineType(types: !51)
!51 = !{!14, !52, !32}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!53 = distinct !DISubprogram(name: "halide_current_time_ns", scope: !5, file: !5, line: 43, type: !54, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{!20, !32}
!56 = !{!57, !58, !59, !60}
!57 = !DILocalVariable(name: "user_context", arg: 1, scope: !53, file: !5, line: 43, type: !32)
!58 = !DILocalVariable(name: "now", scope: !53, file: !5, line: 44, type: !9)
!59 = !DILocalVariable(name: "d", scope: !53, file: !5, line: 46, type: !20)
!60 = !DILocalVariable(name: "ud", scope: !53, file: !5, line: 47, type: !20)
!61 = !DILocation(line: 0, scope: !53)
!62 = !DILocation(line: 44, column: 5, scope: !53)
!63 = !DILocation(line: 44, column: 13, scope: !53)
!64 = !DILocation(line: 45, column: 5, scope: !53)
!65 = !DILocation(line: 46, column: 29, scope: !53)
!66 = !{!67, !68, i64 0}
!67 = !{!"_ZTS7timeval", !68, i64 0, !68, i64 4}
!68 = !{!"int", !40, i64 0}
!69 = !DILocation(line: 46, column: 61, scope: !53)
!70 = !DILocation(line: 46, column: 36, scope: !53)
!71 = !DILocation(line: 46, column: 25, scope: !53)
!72 = !DILocation(line: 46, column: 69, scope: !53)
!73 = !DILocation(line: 47, column: 30, scope: !53)
!74 = !{!67, !68, i64 4}
!75 = !DILocation(line: 47, column: 26, scope: !53)
!76 = !DILocation(line: 47, column: 72, scope: !53)
!77 = !DILocation(line: 47, column: 49, scope: !53)
!78 = !DILocation(line: 47, column: 39, scope: !53)
!79 = !DILocation(line: 48, column: 15, scope: !53)
!80 = !DILocation(line: 48, column: 21, scope: !53)
!81 = !DILocation(line: 49, column: 1, scope: !53)
!82 = !DILocation(line: 48, column: 5, scope: !53)
!83 = distinct !DISubprogram(name: "halide_sleep_ms", scope: !5, file: !5, line: 52, type: !84, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !32, !14}
!86 = !{!87, !88}
!87 = !DILocalVariable(name: "user_context", arg: 1, scope: !83, file: !5, line: 52, type: !32)
!88 = !DILocalVariable(name: "ms", arg: 2, scope: !83, file: !5, line: 52, type: !14)
!89 = !DILocation(line: 0, scope: !83)
!90 = !DILocation(line: 53, column: 15, scope: !83)
!91 = !DILocation(line: 53, column: 5, scope: !83)
!92 = !DILocation(line: 54, column: 1, scope: !83)
!93 = !DISubprogram(name: "usleep", scope: !5, file: !5, line: 51, type: !94, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !18)
!94 = !DISubroutineType(types: !95)
!95 = !{!14, !14}
