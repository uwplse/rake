; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_device_selection.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_device_selection.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::ScopedSpinLock" = type { i8* }

@_ZN6Halide7Runtime8Internal17halide_gpu_deviceE = weak dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE = weak dso_local global i8 0, align 1, !dbg !7
@_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE = weak dso_local local_unnamed_addr global i8 0, align 1, !dbg !25
@.str = private unnamed_addr constant [14 x i8] c"HL_GPU_DEVICE\00", align 1

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_gpu_device(i32 %0) local_unnamed_addr #0 !dbg !39 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !43, metadata !DIExpression()), !dbg !44
  store i32 %0, i32* @_ZN6Halide7Runtime8Internal17halide_gpu_deviceE, align 4, !dbg !45, !tbaa !46
  store i8 1, i8* @_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE, align 1, !dbg !50, !tbaa !51
  ret void, !dbg !53
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_get_gpu_device(i8* %0) local_unnamed_addr #1 !dbg !54 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !59, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedSpinLock"* undef, metadata !67, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i8* @_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE, metadata !70, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i8* @_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE, metadata !60, metadata !DIExpression()), !dbg !66
  br label %2, !dbg !74

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE, i8 1 acquire, !dbg !76
  %4 = icmp eq i8 %3, 0, !dbg !76
  br i1 %4, label %5, label %2, !dbg !74, !llvm.loop !77

5:                                                ; preds = %2
  %6 = load i8, i8* @_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE, align 1, !dbg !80, !tbaa !51, !range !81
  %7 = icmp eq i8 %6, 0, !dbg !80
  br i1 %7, label %10, label %8, !dbg !82

8:                                                ; preds = %5
  %9 = load i32, i32* @_ZN6Halide7Runtime8Internal17halide_gpu_deviceE, align 4, !dbg !83, !tbaa !46
  br label %17, !dbg !82

10:                                               ; preds = %5
  %11 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #4, !dbg !84
  call void @llvm.dbg.value(metadata i8* %11, metadata !61, metadata !DIExpression()), !dbg !85
  %12 = icmp eq i8* %11, null, !dbg !86
  br i1 %12, label %15, label %13, !dbg !88

13:                                               ; preds = %10
  %14 = tail call i32 @atoi(i8* nonnull %11) #4, !dbg !89
  br label %15, !dbg !91

15:                                               ; preds = %10, %13
  %16 = phi i32 [ %14, %13 ], [ -1, %10 ], !dbg !92
  store i32 %16, i32* @_ZN6Halide7Runtime8Internal17halide_gpu_deviceE, align 4, !dbg !92, !tbaa !46
  store i8 1, i8* @_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE, align 1, !dbg !93, !tbaa !51
  br label %17, !dbg !94

17:                                               ; preds = %8, %15
  %18 = phi i32 [ %9, %8 ], [ %16, %15 ], !dbg !83
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedSpinLock"* undef, metadata !95, metadata !DIExpression()), !dbg !98
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE release, align 1, !dbg !100
  ret i32 %18, !dbg !102
}

declare !dbg !103 dso_local i8* @getenv(i8*) local_unnamed_addr #2

declare !dbg !107 dso_local i32 @atoi(i8*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!28}
!llvm.module.flags = !{!35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halide_gpu_device", linkageName: "_ZN6Halide7Runtime8Internal17halide_gpu_deviceE", scope: !2, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/gpu_device_selection.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "halide_gpu_device_lock", linkageName: "_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE", scope: !2, file: !5, line: 10, type: !9, isLocal: false, isDefinition: true)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "AtomicFlag", scope: !11, file: !10, line: 11, baseType: !24)
!10 = !DIFile(filename: "src/runtime/scoped_spin_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedSpinLock", scope: !2, file: !10, line: 9, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !12, identifier: "_ZTSN6Halide7Runtime8Internal14ScopedSpinLockE")
!12 = !{!13, !17, !21}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !11, file: !10, line: 13, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !9)
!17 = !DISubprogram(name: "ScopedSpinLock", scope: !11, file: !10, line: 15, type: !18, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !15}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!21 = !DISubprogram(name: "~ScopedSpinLock", scope: !11, file: !10, line: 22, type: !22, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !20}
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "halide_gpu_device_initialized", linkageName: "_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE", scope: !2, file: !5, line: 11, type: !27, isLocal: false, isDefinition: true)
!27 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!28 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !29, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, globals: !31, imports: !32, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/gpu_device_selection.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!30 = !{}
!31 = !{!0, !7, !25}
!32 = !{!33}
!33 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !28, entity: !2, file: !34, line: 225)
!34 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!35 = !{i32 7, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 4}
!38 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!39 = distinct !DISubprogram(name: "halide_set_gpu_device", scope: !5, file: !5, line: 22, type: !40, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !6}
!42 = !{!43}
!43 = !DILocalVariable(name: "d", arg: 1, scope: !39, file: !5, line: 22, type: !6)
!44 = !DILocation(line: 0, scope: !39)
!45 = !DILocation(line: 23, column: 23, scope: !39)
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !DILocation(line: 24, column: 35, scope: !39)
!51 = !{!52, !52, i64 0}
!52 = !{!"bool", !48, i64 0}
!53 = !DILocation(line: 25, column: 1, scope: !39)
!54 = distinct !DISubprogram(name: "halide_get_gpu_device", scope: !5, file: !5, line: 26, type: !55, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !58)
!55 = !DISubroutineType(types: !56)
!56 = !{!6, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !{!59, !60, !61}
!59 = !DILocalVariable(name: "user_context", arg: 1, scope: !54, file: !5, line: 26, type: !57)
!60 = !DILocalVariable(name: "lock", scope: !54, file: !5, line: 27, type: !11)
!61 = !DILocalVariable(name: "var", scope: !62, file: !5, line: 29, type: !64)
!62 = distinct !DILexicalBlock(scope: !63, file: !5, line: 28, column: 41)
!63 = distinct !DILexicalBlock(scope: !54, file: !5, line: 28, column: 9)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!66 = !DILocation(line: 0, scope: !54)
!67 = !DILocalVariable(name: "this", arg: 1, scope: !68, type: !71, flags: DIFlagArtificial | DIFlagObjectPointer)
!68 = distinct !DISubprogram(name: "ScopedSpinLock", linkageName: "_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVc", scope: !11, file: !10, line: 15, type: !18, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !17, retainedNodes: !69)
!69 = !{!67, !70}
!70 = !DILocalVariable(name: "flag", arg: 2, scope: !68, file: !10, line: 15, type: !15)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!72 = !DILocation(line: 0, scope: !68, inlinedAt: !73)
!73 = distinct !DILocation(line: 27, column: 20, scope: !54)
!74 = !DILocation(line: 17, column: 9, scope: !75, inlinedAt: !73)
!75 = distinct !DILexicalBlock(scope: !68, file: !10, line: 16, column: 22)
!76 = !DILocation(line: 17, column: 16, scope: !75, inlinedAt: !73)
!77 = distinct !{!77, !74, !78, !79}
!78 = !DILocation(line: 19, column: 9, scope: !75, inlinedAt: !73)
!79 = !{!"llvm.loop.mustprogress"}
!80 = !DILocation(line: 28, column: 10, scope: !63)
!81 = !{i8 0, i8 2}
!82 = !DILocation(line: 28, column: 9, scope: !54)
!83 = !DILocation(line: 37, column: 12, scope: !54)
!84 = !DILocation(line: 29, column: 27, scope: !62)
!85 = !DILocation(line: 0, scope: !62)
!86 = !DILocation(line: 30, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !62, file: !5, line: 30, column: 13)
!88 = !DILocation(line: 30, column: 13, scope: !62)
!89 = !DILocation(line: 31, column: 33, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !5, line: 30, column: 18)
!91 = !DILocation(line: 32, column: 9, scope: !90)
!92 = !DILocation(line: 0, scope: !87)
!93 = !DILocation(line: 35, column: 39, scope: !62)
!94 = !DILocation(line: 36, column: 5, scope: !62)
!95 = !DILocalVariable(name: "this", arg: 1, scope: !96, type: !71, flags: DIFlagArtificial | DIFlagObjectPointer)
!96 = distinct !DISubprogram(name: "~ScopedSpinLock", linkageName: "_ZN6Halide7Runtime8Internal14ScopedSpinLockD2Ev", scope: !11, file: !10, line: 22, type: !22, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !21, retainedNodes: !97)
!97 = !{!95}
!98 = !DILocation(line: 0, scope: !96, inlinedAt: !99)
!99 = distinct !DILocation(line: 38, column: 1, scope: !54)
!100 = !DILocation(line: 23, column: 9, scope: !101, inlinedAt: !99)
!101 = distinct !DILexicalBlock(scope: !96, file: !10, line: 22, column: 37)
!102 = !DILocation(line: 38, column: 1, scope: !54)
!103 = !DISubprogram(name: "getenv", scope: !5, file: !5, line: 18, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !64}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!107 = !DISubprogram(name: "atoi", scope: !5, file: !5, line: 17, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!108 = !DISubroutineType(types: !109)
!109 = !{!6, !64}
