; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_clock.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_clock.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.timeval = type { i64, i64 }

@_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE = weak dso_local local_unnamed_addr global i8 0, align 1, !dbg !0
@_ZN6Halide7Runtime8Internal22halide_reference_clockE = weak dso_local global %struct.timeval zeroinitializer, align 8, !dbg !7

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_start_clock(i8* %0) local_unnamed_addr #0 !dbg !27 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !33, metadata !DIExpression()), !dbg !34
  %2 = load i8, i8* @_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE, align 1, !dbg !35, !tbaa !37, !range !41
  %3 = icmp eq i8 %2, 0, !dbg !35
  br i1 %3, label %4, label %6, !dbg !42

4:                                                ; preds = %1
  %5 = tail call i32 @gettimeofday(%struct.timeval* nonnull @_ZN6Halide7Runtime8Internal22halide_reference_clockE, i8* null) #4, !dbg !43
  store i8 1, i8* @_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE, align 1, !dbg !45, !tbaa !37
  br label %6, !dbg !46

6:                                                ; preds = %4, %1
  ret i32 0, !dbg !47
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !48 dso_local i32 @gettimeofday(%struct.timeval*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @halide_current_time_ns(i8* %0) local_unnamed_addr #0 !dbg !52 {
  %2 = alloca %struct.timeval, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !56, metadata !DIExpression()), !dbg !60
  %3 = bitcast %struct.timeval* %2 to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #5, !dbg !61
  call void @llvm.dbg.declare(metadata %struct.timeval* %2, metadata !57, metadata !DIExpression()), !dbg !62
  %4 = call i32 @gettimeofday(%struct.timeval* nonnull %2, i8* null) #4, !dbg !63
  %5 = bitcast %struct.timeval* %2 to <2 x i64>*, !dbg !64
  %6 = load <2 x i64>, <2 x i64>* %5, align 8, !dbg !64, !tbaa !65
  %7 = load <2 x i64>, <2 x i64>* bitcast (%struct.timeval* @_ZN6Halide7Runtime8Internal22halide_reference_clockE to <2 x i64>*), align 8, !dbg !67, !tbaa !65
  %8 = sub <2 x i64> %6, %7, !dbg !68
  %9 = extractelement <2 x i64> %8, i32 0, !dbg !69
  %10 = mul nsw i64 %9, 1000000, !dbg !69
  call void @llvm.dbg.value(metadata i64 %10, metadata !58, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i64 undef, metadata !59, metadata !DIExpression()), !dbg !60
  %11 = extractelement <2 x i64> %8, i32 1, !dbg !70
  %12 = add nsw i64 %11, %10, !dbg !70
  %13 = mul nsw i64 %12, 1000, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #5, !dbg !72
  ret i64 %13, !dbg !73
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_sleep_ms(i8* %0, i32 %1) local_unnamed_addr #0 !dbg !74 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !78, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i32 %1, metadata !79, metadata !DIExpression()), !dbg !80
  %3 = mul nsw i32 %1, 1000, !dbg !81
  %4 = tail call i32 @usleep(i32 %3) #4, !dbg !82
  ret void, !dbg !83
}

declare !dbg !84 dso_local i32 @usleep(i32) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!16}
!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halide_reference_clock_inited", linkageName: "_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE", scope: !2, file: !5, line: 21, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/posix_clock.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "halide_reference_clock", linkageName: "_ZN6Halide7Runtime8Internal22halide_reference_clockE", scope: !2, file: !5, line: 22, type: !9, isLocal: false, isDefinition: true)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !5, line: 7, size: 128, flags: DIFlagTypePassByValue, elements: !10, identifier: "_ZTS7timeval")
!10 = !{!11, !15}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !9, file: !5, line: 8, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !13, line: 9, baseType: !14)
!13 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!14 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !9, file: !5, line: 8, baseType: !12, size: 64, offset: 64)
!16 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !17, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !19, globals: !20, imports: !21, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_clock.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!18 = !{}
!19 = !{!12}
!20 = !{!0, !7}
!21 = !{!22}
!22 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !16, entity: !2, file: !13, line: 225)
!23 = !{i32 7, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!27 = distinct !DISubprogram(name: "halide_start_clock", scope: !5, file: !5, line: 31, type: !28, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !32)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !31}
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !{!33}
!33 = !DILocalVariable(name: "user_context", arg: 1, scope: !27, file: !5, line: 31, type: !31)
!34 = !DILocation(line: 0, scope: !27)
!35 = !DILocation(line: 33, column: 10, scope: !36)
!36 = distinct !DILexicalBlock(scope: !27, file: !5, line: 33, column: 9)
!37 = !{!38, !38, i64 0}
!38 = !{!"bool", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{i8 0, i8 2}
!42 = !DILocation(line: 33, column: 9, scope: !27)
!43 = !DILocation(line: 34, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !36, file: !5, line: 33, column: 41)
!45 = !DILocation(line: 35, column: 39, scope: !44)
!46 = !DILocation(line: 36, column: 5, scope: !44)
!47 = !DILocation(line: 37, column: 5, scope: !27)
!48 = !DISubprogram(name: "gettimeofday", scope: !5, file: !5, line: 29, type: !49, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !18)
!49 = !DISubroutineType(types: !50)
!50 = !{!30, !51, !31}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!52 = distinct !DISubprogram(name: "halide_current_time_ns", scope: !5, file: !5, line: 43, type: !53, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{!12, !31}
!55 = !{!56, !57, !58, !59}
!56 = !DILocalVariable(name: "user_context", arg: 1, scope: !52, file: !5, line: 43, type: !31)
!57 = !DILocalVariable(name: "now", scope: !52, file: !5, line: 44, type: !9)
!58 = !DILocalVariable(name: "d", scope: !52, file: !5, line: 46, type: !12)
!59 = !DILocalVariable(name: "ud", scope: !52, file: !5, line: 47, type: !12)
!60 = !DILocation(line: 0, scope: !52)
!61 = !DILocation(line: 44, column: 5, scope: !52)
!62 = !DILocation(line: 44, column: 13, scope: !52)
!63 = !DILocation(line: 45, column: 5, scope: !52)
!64 = !DILocation(line: 46, column: 29, scope: !52)
!65 = !{!66, !66, i64 0}
!66 = !{!"long long", !39, i64 0}
!67 = !DILocation(line: 46, column: 61, scope: !52)
!68 = !DILocation(line: 46, column: 36, scope: !52)
!69 = !DILocation(line: 46, column: 69, scope: !52)
!70 = !DILocation(line: 48, column: 15, scope: !52)
!71 = !DILocation(line: 48, column: 21, scope: !52)
!72 = !DILocation(line: 49, column: 1, scope: !52)
!73 = !DILocation(line: 48, column: 5, scope: !52)
!74 = distinct !DISubprogram(name: "halide_sleep_ms", scope: !5, file: !5, line: 52, type: !75, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !77)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !31, !30}
!77 = !{!78, !79}
!78 = !DILocalVariable(name: "user_context", arg: 1, scope: !74, file: !5, line: 52, type: !31)
!79 = !DILocalVariable(name: "ms", arg: 2, scope: !74, file: !5, line: 52, type: !30)
!80 = !DILocation(line: 0, scope: !74)
!81 = !DILocation(line: 53, column: 15, scope: !74)
!82 = !DILocation(line: 53, column: 5, scope: !74)
!83 = !DILocation(line: 54, column: 1, scope: !74)
!84 = !DISubprogram(name: "usleep", scope: !5, file: !5, line: 51, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !18)
!85 = !DISubroutineType(types: !86)
!86 = !{!30, !30}
