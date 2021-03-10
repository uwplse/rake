; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_clock.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_clock.cpp"
target datalayout = "e-m:x-p:32:32-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i386-unknown-windows-msvc19.11.0"

@halide_reference_clock_inited = weak dso_local local_unnamed_addr global i8 0, align 1, !dbg !0
@halide_reference_clock = weak dso_local global i64 0, align 8, !dbg !10
@halide_clock_frequency = weak dso_local global i64 1, align 8, !dbg !13

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_start_clock(i8* %0) local_unnamed_addr #0 !dbg !26 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !32, metadata !DIExpression()), !dbg !33
  %2 = load i8, i8* @halide_reference_clock_inited, align 1, !dbg !34, !tbaa !35, !range !39
  %3 = icmp eq i8 %2, 0, !dbg !34
  br i1 %3, label %4, label %7, !dbg !34

4:                                                ; preds = %1
  %5 = tail call x86_stdcallcc zeroext i1 @"\01_QueryPerformanceCounter@4"(i64* nonnull @halide_reference_clock) #4, !dbg !40
  %6 = tail call x86_stdcallcc zeroext i1 @"\01_QueryPerformanceFrequency@4"(i64* nonnull @halide_clock_frequency) #4, !dbg !43
  store i8 1, i8* @halide_reference_clock_inited, align 1, !dbg !44, !tbaa !35
  br label %7, !dbg !45

7:                                                ; preds = %4, %1
  ret i32 0, !dbg !46
}

declare dso_local x86_stdcallcc zeroext i1 @"\01_QueryPerformanceCounter@4"(i64*) local_unnamed_addr #1

declare dso_local x86_stdcallcc zeroext i1 @"\01_QueryPerformanceFrequency@4"(i64*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @halide_current_time_ns(i8* %0) local_unnamed_addr #0 !dbg !47 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !51, metadata !DIExpression()), !dbg !55
  %3 = bitcast i64* %2 to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !56
  call void @llvm.dbg.value(metadata i64* %2, metadata !52, metadata !DIExpression(DW_OP_deref)), !dbg !55
  %4 = call x86_stdcallcc zeroext i1 @"\01_QueryPerformanceCounter@4"(i64* nonnull %2) #4, !dbg !57
  %5 = load i64, i64* @halide_reference_clock, align 8, !dbg !58, !tbaa !59
  %6 = load i64, i64* %2, align 8, !dbg !58, !tbaa !59
  call void @llvm.dbg.value(metadata i64 %6, metadata !52, metadata !DIExpression()), !dbg !55
  %7 = sub nsw i64 %6, %5, !dbg !58
  call void @llvm.dbg.value(metadata i64 %7, metadata !52, metadata !DIExpression()), !dbg !55
  %8 = load i64, i64* @halide_clock_frequency, align 8, !dbg !61, !tbaa !59
  %9 = sitofp i64 %8 to double, !dbg !61
  %10 = fdiv double 1.000000e+09, %9, !dbg !61
  call void @llvm.dbg.value(metadata double %10, metadata !53, metadata !DIExpression()), !dbg !55
  %11 = sitofp i64 %7 to double, !dbg !62
  %12 = fmul double %10, %11, !dbg !62
  %13 = fptosi double %12 to i64, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !63
  ret i64 %13, !dbg !62
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_sleep_ms(i8* %0, i32 %1) local_unnamed_addr #0 !dbg !64 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !68, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i8* %0, metadata !69, metadata !DIExpression()), !dbg !70
  tail call x86_stdcallcc void @"\01_Sleep@4"(i32 %1) #4, !dbg !71
  ret void, !dbg !72
}

declare dso_local x86_stdcallcc void @"\01_Sleep@4"(i32) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halide_reference_clock_inited", scope: !2, file: !12, line: 15, type: !20, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !3, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, imports: !15, nameTableKind: None)
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
!21 = !{i32 1, !"NumRegisterParameters", i32 0}
!22 = !{i32 2, !"CodeView", i32 1}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!26 = distinct !DISubprogram(name: "halide_start_clock", scope: !12, file: !12, line: 19, type: !27, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !30}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!31 = !{!32}
!32 = !DILocalVariable(name: "user_context", arg: 1, scope: !26, file: !12, line: 19, type: !30)
!33 = !DILocation(line: 0, scope: !26)
!34 = !DILocation(line: 21, scope: !26)
!35 = !{!36, !36, i64 0}
!36 = !{!"bool", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{i8 0, i8 2}
!40 = !DILocation(line: 22, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !12, line: 21)
!42 = distinct !DILexicalBlock(scope: !26, file: !12, line: 21)
!43 = !DILocation(line: 23, scope: !41)
!44 = !DILocation(line: 24, scope: !41)
!45 = !DILocation(line: 25, scope: !41)
!46 = !DILocation(line: 26, scope: !26)
!47 = distinct !DISubprogram(name: "halide_current_time_ns", scope: !12, file: !12, line: 29, type: !48, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{!6, !30}
!50 = !{!51, !52, !53}
!51 = !DILocalVariable(name: "user_context", arg: 1, scope: !47, file: !12, line: 29, type: !30)
!52 = !DILocalVariable(name: "clock", scope: !47, file: !12, line: 30, type: !6)
!53 = !DILocalVariable(name: "ns_per_tick", scope: !47, file: !12, line: 33, type: !54)
!54 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!55 = !DILocation(line: 0, scope: !47)
!56 = !DILocation(line: 30, scope: !47)
!57 = !DILocation(line: 31, scope: !47)
!58 = !DILocation(line: 32, scope: !47)
!59 = !{!60, !60, i64 0}
!60 = !{!"long long", !37, i64 0}
!61 = !DILocation(line: 33, scope: !47)
!62 = !DILocation(line: 34, scope: !47)
!63 = !DILocation(line: 35, scope: !47)
!64 = distinct !DISubprogram(name: "halide_sleep_ms", scope: !12, file: !12, line: 37, type: !65, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !30, !29}
!67 = !{!68, !69}
!68 = !DILocalVariable(name: "ms", arg: 2, scope: !64, file: !12, line: 37, type: !29)
!69 = !DILocalVariable(name: "user_context", arg: 1, scope: !64, file: !12, line: 37, type: !30)
!70 = !DILocation(line: 0, scope: !64)
!71 = !DILocation(line: 38, scope: !64)
!72 = !DILocation(line: 39, scope: !64)
