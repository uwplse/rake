; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_clock.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_clock.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-windows-msvc19.11.0"

@halide_reference_clock_inited = weak dso_local local_unnamed_addr global i8 0, align 1, !dbg !0
@halide_reference_clock = weak dso_local global i64 0, align 8, !dbg !10
@halide_clock_frequency = weak dso_local global i64 1, align 8, !dbg !13

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_start_clock(i8* %0) local_unnamed_addr #0 !dbg !25 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !31, metadata !DIExpression()), !dbg !32
  %2 = load i8, i8* @halide_reference_clock_inited, align 1, !dbg !33, !tbaa !34, !range !38
  %3 = icmp eq i8 %2, 0, !dbg !33
  br i1 %3, label %4, label %7, !dbg !33

4:                                                ; preds = %1
  %5 = tail call zeroext i1 @QueryPerformanceCounter(i64* nonnull @halide_reference_clock) #4, !dbg !39
  %6 = tail call zeroext i1 @QueryPerformanceFrequency(i64* nonnull @halide_clock_frequency) #4, !dbg !42
  store i8 1, i8* @halide_reference_clock_inited, align 1, !dbg !43, !tbaa !34
  br label %7, !dbg !44

7:                                                ; preds = %4, %1
  ret i32 0, !dbg !45
}

declare dso_local zeroext i1 @QueryPerformanceCounter(i64*) local_unnamed_addr #1

declare dso_local zeroext i1 @QueryPerformanceFrequency(i64*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @halide_current_time_ns(i8* %0) local_unnamed_addr #0 !dbg !46 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !50, metadata !DIExpression()), !dbg !54
  %3 = bitcast i64* %2 to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !55
  call void @llvm.dbg.value(metadata i64* %2, metadata !51, metadata !DIExpression(DW_OP_deref)), !dbg !54
  %4 = call zeroext i1 @QueryPerformanceCounter(i64* nonnull %2) #4, !dbg !56
  %5 = load i64, i64* @halide_reference_clock, align 8, !dbg !57, !tbaa !58
  %6 = load i64, i64* %2, align 8, !dbg !57, !tbaa !58
  call void @llvm.dbg.value(metadata i64 %6, metadata !51, metadata !DIExpression()), !dbg !54
  %7 = sub nsw i64 %6, %5, !dbg !57
  call void @llvm.dbg.value(metadata i64 %7, metadata !51, metadata !DIExpression()), !dbg !54
  %8 = load i64, i64* @halide_clock_frequency, align 8, !dbg !60, !tbaa !58
  %9 = sitofp i64 %8 to double, !dbg !60
  %10 = fdiv double 1.000000e+09, %9, !dbg !60
  call void @llvm.dbg.value(metadata double %10, metadata !52, metadata !DIExpression()), !dbg !54
  %11 = sitofp i64 %7 to double, !dbg !61
  %12 = fmul double %10, %11, !dbg !61
  %13 = fptosi double %12 to i64, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !62
  ret i64 %13, !dbg !61
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_sleep_ms(i8* %0, i32 %1) local_unnamed_addr #0 !dbg !63 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !67, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i8* %0, metadata !68, metadata !DIExpression()), !dbg !69
  tail call void @Sleep(i32 %1) #4, !dbg !70
  ret void, !dbg !71
}

declare dso_local void @Sleep(i32) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halide_reference_clock_inited", scope: !2, file: !12, line: 15, type: !20, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !3, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, imports: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_clock.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "130c8c16443b2489e62aa2bfad02603e")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 9, baseType: !8)
!7 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "0c7b3d8a4f3a5581b3edea53998e0f01")
!8 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!9 = !{!0, !10, !13}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "halide_reference_clock", scope: !2, file: !12, line: 16, type: !6, isLocal: false, isDefinition: true)
!12 = !DIFile(filename: "src/runtime/windows_clock.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "130c8c16443b2489e62aa2bfad02603e")
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "halide_clock_frequency", scope: !2, file: !12, line: 17, type: !6, isLocal: false, isDefinition: true)
!15 = !{!16}
!16 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !17, file: !7, line: 225)
!17 = !DINamespace(name: "Internal", scope: !18)
!18 = !DINamespace(name: "Runtime", scope: !19)
!19 = !DINamespace(name: "Halide", scope: null)
!20 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!21 = !{i32 2, !"CodeView", i32 1}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!25 = distinct !DISubprogram(name: "halide_start_clock", scope: !12, file: !12, line: 19, type: !26, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !30)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !29}
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !{!31}
!31 = !DILocalVariable(name: "user_context", arg: 1, scope: !25, file: !12, line: 19, type: !29)
!32 = !DILocation(line: 0, scope: !25)
!33 = !DILocation(line: 21, scope: !25)
!34 = !{!35, !35, i64 0}
!35 = !{!"bool", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{i8 0, i8 2}
!39 = !DILocation(line: 22, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !12, line: 21)
!41 = distinct !DILexicalBlock(scope: !25, file: !12, line: 21)
!42 = !DILocation(line: 23, scope: !40)
!43 = !DILocation(line: 24, scope: !40)
!44 = !DILocation(line: 25, scope: !40)
!45 = !DILocation(line: 26, scope: !25)
!46 = distinct !DISubprogram(name: "halide_current_time_ns", scope: !12, file: !12, line: 29, type: !47, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !49)
!47 = !DISubroutineType(types: !48)
!48 = !{!6, !29}
!49 = !{!50, !51, !52}
!50 = !DILocalVariable(name: "user_context", arg: 1, scope: !46, file: !12, line: 29, type: !29)
!51 = !DILocalVariable(name: "clock", scope: !46, file: !12, line: 30, type: !6)
!52 = !DILocalVariable(name: "ns_per_tick", scope: !46, file: !12, line: 33, type: !53)
!53 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!54 = !DILocation(line: 0, scope: !46)
!55 = !DILocation(line: 30, scope: !46)
!56 = !DILocation(line: 31, scope: !46)
!57 = !DILocation(line: 32, scope: !46)
!58 = !{!59, !59, i64 0}
!59 = !{!"long long", !36, i64 0}
!60 = !DILocation(line: 33, scope: !46)
!61 = !DILocation(line: 34, scope: !46)
!62 = !DILocation(line: 35, scope: !46)
!63 = distinct !DISubprogram(name: "halide_sleep_ms", scope: !12, file: !12, line: 37, type: !64, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !29, !28}
!66 = !{!67, !68}
!67 = !DILocalVariable(name: "ms", arg: 2, scope: !63, file: !12, line: 37, type: !28)
!68 = !DILocalVariable(name: "user_context", arg: 1, scope: !63, file: !12, line: 37, type: !29)
!69 = !DILocation(line: 0, scope: !63)
!70 = !DILocation(line: 38, scope: !63)
!71 = !DILocation(line: 39, scope: !63)
