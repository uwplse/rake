; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/allocation_cache.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/allocation_cache.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.halide_mutex = type { [1 x i32] }
%struct.halide_device_allocation_pool = type { i32 (i8*)*, %struct.halide_device_allocation_pool* }
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }

@_ZN6Halide7Runtime8Internal36halide_reuse_device_allocations_flagE = weak dso_local local_unnamed_addr global i8 1, align 1, !dbg !0
@_ZN6Halide7Runtime8Internal21allocation_pools_lockE = weak dso_local global %struct.halide_mutex zeroinitializer, align 4, !dbg !7
@_ZN6Halide7Runtime8Internal23device_allocation_poolsE = weak dso_local local_unnamed_addr global %struct.halide_device_allocation_pool* null, align 4, !dbg !20

; Function Attrs: nounwind
define weak dso_local i32 @halide_reuse_device_allocations(i8* %0, i1 zeroext %1) local_unnamed_addr #0 !dbg !42 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !46, metadata !DIExpression()), !dbg !69
  %3 = zext i1 %1 to i8
  call void @llvm.dbg.value(metadata i8 %3, metadata !47, metadata !DIExpression()), !dbg !69
  store i8 %3, i8* @_ZN6Halide7Runtime8Internal36halide_reuse_device_allocations_flagE, align 1, !dbg !70, !tbaa !71
  call void @llvm.dbg.value(metadata i32 0, metadata !48, metadata !DIExpression()), !dbg !69
  br i1 %1, label %20, label %4, !dbg !75

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !76, metadata !DIExpression()) #4, !dbg !81
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal21allocation_pools_lockE, metadata !79, metadata !DIExpression()) #4, !dbg !81
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal21allocation_pools_lockE, metadata !49, metadata !DIExpression()), !dbg !83
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal21allocation_pools_lockE) #5, !dbg !84
  call void @llvm.dbg.value(metadata %struct.halide_device_allocation_pool* undef, metadata !64, metadata !DIExpression()), !dbg !86
  %5 = load %struct.halide_device_allocation_pool*, %struct.halide_device_allocation_pool** @_ZN6Halide7Runtime8Internal23device_allocation_poolsE, align 4, !dbg !86, !tbaa !87
  call void @llvm.dbg.value(metadata i32 0, metadata !48, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata %struct.halide_device_allocation_pool* %5, metadata !64, metadata !DIExpression()), !dbg !86
  %6 = icmp eq %struct.halide_device_allocation_pool* %5, null, !dbg !89
  br i1 %6, label %7, label %9, !dbg !90

7:                                                ; preds = %9, %4
  %8 = phi i32 [ 0, %4 ], [ %16, %9 ], !dbg !69
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !91, metadata !DIExpression()) #4, !dbg !94
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal21allocation_pools_lockE) #5, !dbg !96
  br label %20, !dbg !98

9:                                                ; preds = %4, %9
  %10 = phi %struct.halide_device_allocation_pool* [ %18, %9 ], [ %5, %4 ]
  %11 = phi i32 [ %16, %9 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !48, metadata !DIExpression()), !dbg !69
  %12 = getelementptr inbounds %struct.halide_device_allocation_pool, %struct.halide_device_allocation_pool* %10, i32 0, i32 0, !dbg !99
  %13 = load i32 (i8*)*, i32 (i8*)** %12, align 4, !dbg !99, !tbaa !100
  %14 = tail call i32 %13(i8* %0) #5, !dbg !102
  call void @llvm.dbg.value(metadata i32 %14, metadata !66, metadata !DIExpression()), !dbg !103
  %15 = icmp eq i32 %14, 0, !dbg !104
  %16 = select i1 %15, i32 %11, i32 %14, !dbg !106
  call void @llvm.dbg.value(metadata i32 %16, metadata !48, metadata !DIExpression()), !dbg !69
  %17 = getelementptr inbounds %struct.halide_device_allocation_pool, %struct.halide_device_allocation_pool* %10, i32 0, i32 1, !dbg !107
  call void @llvm.dbg.value(metadata %struct.halide_device_allocation_pool* undef, metadata !64, metadata !DIExpression()), !dbg !86
  %18 = load %struct.halide_device_allocation_pool*, %struct.halide_device_allocation_pool** %17, align 4, !dbg !86, !tbaa !87
  call void @llvm.dbg.value(metadata %struct.halide_device_allocation_pool* %18, metadata !64, metadata !DIExpression()), !dbg !86
  %19 = icmp eq %struct.halide_device_allocation_pool* %18, null, !dbg !89
  br i1 %19, label %7, label %9, !dbg !90, !llvm.loop !108

20:                                               ; preds = %7, %2
  %21 = phi i32 [ 0, %2 ], [ %8, %7 ], !dbg !111
  call void @llvm.dbg.value(metadata i32 %21, metadata !48, metadata !DIExpression()), !dbg !69
  ret i32 %21, !dbg !112
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @halide_can_reuse_device_allocations(i8* %0) local_unnamed_addr #1 !dbg !113 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !117, metadata !DIExpression()), !dbg !118
  %2 = load i8, i8* @_ZN6Halide7Runtime8Internal36halide_reuse_device_allocations_flagE, align 1, !dbg !119, !tbaa !71, !range !120
  %3 = icmp ne i8 %2, 0, !dbg !119
  ret i1 %3, !dbg !121
}

; Function Attrs: nounwind
define weak dso_local void @halide_register_device_allocation_pool(%struct.halide_device_allocation_pool* %0) local_unnamed_addr #0 !dbg !122 {
  call void @llvm.dbg.value(metadata %struct.halide_device_allocation_pool* %0, metadata !126, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !76, metadata !DIExpression()) #4, !dbg !129
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal21allocation_pools_lockE, metadata !79, metadata !DIExpression()) #4, !dbg !129
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal21allocation_pools_lockE, metadata !127, metadata !DIExpression()), !dbg !128
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal21allocation_pools_lockE) #5, !dbg !131
  %2 = load %struct.halide_device_allocation_pool*, %struct.halide_device_allocation_pool** @_ZN6Halide7Runtime8Internal23device_allocation_poolsE, align 4, !dbg !132, !tbaa !87
  %3 = getelementptr inbounds %struct.halide_device_allocation_pool, %struct.halide_device_allocation_pool* %0, i32 0, i32 1, !dbg !133
  store %struct.halide_device_allocation_pool* %2, %struct.halide_device_allocation_pool** %3, align 4, !dbg !134, !tbaa !135
  store %struct.halide_device_allocation_pool* %0, %struct.halide_device_allocation_pool** @_ZN6Halide7Runtime8Internal23device_allocation_poolsE, align 4, !dbg !136, !tbaa !87
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !91, metadata !DIExpression()) #4, !dbg !137
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal21allocation_pools_lockE) #5, !dbg !139
  ret void, !dbg !140
}

declare !dbg !141 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

declare !dbg !144 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!32}
!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halide_reuse_device_allocations_flag", linkageName: "_ZN6Halide7Runtime8Internal36halide_reuse_device_allocations_flagE", scope: !2, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/allocation_cache.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "allocation_pools_lock", linkageName: "_ZN6Halide7Runtime8Internal21allocation_pools_lockE", scope: !2, file: !5, line: 11, type: !9, isLocal: false, isDefinition: true)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !10, line: 120, size: 32, flags: DIFlagTypePassByValue, elements: !11, identifier: "_ZTS12halide_mutex")
!10 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !9, file: !10, line: 121, baseType: !13, size: 32)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32, elements: !18)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !15, line: 68, baseType: !16)
!15 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !15, line: 12, baseType: !17)
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19}
!19 = !DISubrange(count: 1)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "device_allocation_pools", linkageName: "_ZN6Halide7Runtime8Internal23device_allocation_poolsE", scope: !2, file: !5, line: 12, type: !22, isLocal: false, isDefinition: true)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_allocation_pool", file: !10, line: 1887, size: 64, flags: DIFlagTypePassByValue, elements: !24, identifier: "_ZTS29halide_device_allocation_pool")
!24 = !{!25, !31}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "release_unused", scope: !23, file: !10, line: 1888, baseType: !26, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 32)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !30}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !23, file: !10, line: 1889, baseType: !22, size: 32, offset: 32)
!32 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !33, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, globals: !35, imports: !36, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/allocation_cache.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!34 = !{}
!35 = !{!0, !7, !20}
!36 = !{!37}
!37 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !32, entity: !2, file: !15, line: 225)
!38 = !{i32 7, !"Dwarf Version", i32 4}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!42 = distinct !DISubprogram(name: "halide_reuse_device_allocations", scope: !5, file: !5, line: 20, type: !43, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !45)
!43 = !DISubroutineType(types: !44)
!44 = !{!29, !30, !6}
!45 = !{!46, !47, !48, !49, !64, !66}
!46 = !DILocalVariable(name: "user_context", arg: 1, scope: !42, file: !5, line: 20, type: !30)
!47 = !DILocalVariable(name: "flag", arg: 2, scope: !42, file: !5, line: 20, type: !6)
!48 = !DILocalVariable(name: "err", scope: !42, file: !5, line: 23, type: !29)
!49 = !DILocalVariable(name: "lock", scope: !50, file: !5, line: 25, type: !52)
!50 = distinct !DILexicalBlock(scope: !51, file: !5, line: 24, column: 16)
!51 = distinct !DILexicalBlock(scope: !42, file: !5, line: 24, column: 9)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !2, file: !53, line: 11, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !54, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!53 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!54 = !{!55, !57, !61}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !52, file: !53, line: 12, baseType: !56, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!57 = !DISubprogram(name: "ScopedMutexLock", scope: !52, file: !53, line: 14, type: !58, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60, !56}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!61 = !DISubprogram(name: "~ScopedMutexLock", scope: !52, file: !53, line: 19, type: !62, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !60}
!64 = !DILocalVariable(name: "p", scope: !65, file: !5, line: 26, type: !22)
!65 = distinct !DILexicalBlock(scope: !50, file: !5, line: 26, column: 9)
!66 = !DILocalVariable(name: "ret", scope: !67, file: !5, line: 27, type: !29)
!67 = distinct !DILexicalBlock(scope: !68, file: !5, line: 26, column: 101)
!68 = distinct !DILexicalBlock(scope: !65, file: !5, line: 26, column: 9)
!69 = !DILocation(line: 0, scope: !42)
!70 = !DILocation(line: 21, column: 42, scope: !42)
!71 = !{!72, !72, i64 0}
!72 = !{!"bool", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C++ TBAA"}
!75 = !DILocation(line: 24, column: 9, scope: !42)
!76 = !DILocalVariable(name: "this", arg: 1, scope: !77, type: !80, flags: DIFlagArtificial | DIFlagObjectPointer)
!77 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !52, file: !53, line: 14, type: !58, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, declaration: !57, retainedNodes: !78)
!78 = !{!76, !79}
!79 = !DILocalVariable(name: "mutex", arg: 2, scope: !77, file: !53, line: 14, type: !56)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 32)
!81 = !DILocation(line: 0, scope: !77, inlinedAt: !82)
!82 = distinct !DILocation(line: 25, column: 25, scope: !50)
!83 = !DILocation(line: 0, scope: !50)
!84 = !DILocation(line: 16, column: 9, scope: !85, inlinedAt: !82)
!85 = distinct !DILexicalBlock(scope: !77, file: !53, line: 15, column: 24)
!86 = !DILocation(line: 0, scope: !65)
!87 = !{!88, !88, i64 0}
!88 = !{!"any pointer", !73, i64 0}
!89 = !DILocation(line: 26, column: 76, scope: !68)
!90 = !DILocation(line: 26, column: 9, scope: !65)
!91 = !DILocalVariable(name: "this", arg: 1, scope: !92, type: !80, flags: DIFlagArtificial | DIFlagObjectPointer)
!92 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !52, file: !53, line: 19, type: !62, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, declaration: !61, retainedNodes: !93)
!93 = !{!91}
!94 = !DILocation(line: 0, scope: !92, inlinedAt: !95)
!95 = distinct !DILocation(line: 32, column: 5, scope: !51)
!96 = !DILocation(line: 20, column: 9, scope: !97, inlinedAt: !95)
!97 = distinct !DILexicalBlock(scope: !92, file: !53, line: 19, column: 38)
!98 = !DILocation(line: 32, column: 5, scope: !50)
!99 = !DILocation(line: 27, column: 26, scope: !67)
!100 = !{!101, !88, i64 0}
!101 = !{!"_ZTS29halide_device_allocation_pool", !88, i64 0, !88, i64 4}
!102 = !DILocation(line: 27, column: 23, scope: !67)
!103 = !DILocation(line: 0, scope: !67)
!104 = !DILocation(line: 28, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !67, file: !5, line: 28, column: 17)
!106 = !DILocation(line: 28, column: 17, scope: !67)
!107 = !DILocation(line: 26, column: 95, scope: !68)
!108 = distinct !{!108, !90, !109, !110}
!109 = !DILocation(line: 31, column: 9, scope: !65)
!110 = !{!"llvm.loop.mustprogress"}
!111 = !DILocation(line: 23, column: 9, scope: !42)
!112 = !DILocation(line: 33, column: 5, scope: !42)
!113 = distinct !DISubprogram(name: "halide_can_reuse_device_allocations", scope: !5, file: !5, line: 41, type: !114, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{!6, !30}
!116 = !{!117}
!117 = !DILocalVariable(name: "user_context", arg: 1, scope: !113, file: !5, line: 41, type: !30)
!118 = !DILocation(line: 0, scope: !113)
!119 = !DILocation(line: 42, column: 12, scope: !113)
!120 = !{i8 0, i8 2}
!121 = !DILocation(line: 42, column: 5, scope: !113)
!122 = distinct !DISubprogram(name: "halide_register_device_allocation_pool", scope: !5, file: !5, line: 45, type: !123, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !22}
!125 = !{!126, !127}
!126 = !DILocalVariable(name: "pool", arg: 1, scope: !122, file: !5, line: 45, type: !22)
!127 = !DILocalVariable(name: "lock", scope: !122, file: !5, line: 46, type: !52)
!128 = !DILocation(line: 0, scope: !122)
!129 = !DILocation(line: 0, scope: !77, inlinedAt: !130)
!130 = distinct !DILocation(line: 46, column: 21, scope: !122)
!131 = !DILocation(line: 16, column: 9, scope: !85, inlinedAt: !130)
!132 = !DILocation(line: 47, column: 18, scope: !122)
!133 = !DILocation(line: 47, column: 11, scope: !122)
!134 = !DILocation(line: 47, column: 16, scope: !122)
!135 = !{!101, !88, i64 4}
!136 = !DILocation(line: 48, column: 29, scope: !122)
!137 = !DILocation(line: 0, scope: !92, inlinedAt: !138)
!138 = distinct !DILocation(line: 49, column: 1, scope: !122)
!139 = !DILocation(line: 20, column: 9, scope: !97, inlinedAt: !138)
!140 = !DILocation(line: 49, column: 1, scope: !122)
!141 = !DISubprogram(name: "halide_mutex_lock", scope: !10, file: !10, line: 133, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !56}
!144 = !DISubprogram(name: "halide_mutex_unlock", scope: !10, file: !10, line: 134, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !34)
