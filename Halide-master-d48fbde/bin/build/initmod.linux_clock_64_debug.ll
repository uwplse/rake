; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/linux_clock.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/linux_clock.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.timespec = type { i64, i64 }

@halide_reference_clock_inited = weak dso_local local_unnamed_addr global i8 0, align 1, !dbg !0
@halide_reference_clock = weak dso_local global %struct.timespec zeroinitializer, align 8, !dbg !10

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_start_clock(i8* %0) local_unnamed_addr #0 !dbg !28 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !34, metadata !DIExpression()), !dbg !35
  %2 = load i8, i8* @halide_reference_clock_inited, align 1, !dbg !36, !tbaa !38, !range !42
  %3 = icmp eq i8 %2, 0, !dbg !36
  br i1 %3, label %4, label %6, !dbg !43

4:                                                ; preds = %1
  %5 = tail call i32 (i32, ...) @syscall(i32 228, i32 0, %struct.timespec* nonnull @halide_reference_clock) #4, !dbg !44
  store i8 1, i8* @halide_reference_clock_inited, align 1, !dbg !46, !tbaa !38
  br label %6, !dbg !47

6:                                                ; preds = %4, %1
  ret i32 0, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !49 dso_local i32 @syscall(i32, ...) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @halide_current_time_ns(i8* %0) local_unnamed_addr #0 !dbg !52 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !56, metadata !DIExpression()), !dbg !60
  %3 = bitcast %struct.timespec* %2 to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #5, !dbg !61
  call void @llvm.dbg.declare(metadata %struct.timespec* %2, metadata !57, metadata !DIExpression()), !dbg !62
  %4 = call i32 (i32, ...) @syscall(i32 228, i32 0, %struct.timespec* nonnull %2) #4, !dbg !63
  %5 = bitcast %struct.timespec* %2 to <2 x i64>*, !dbg !64
  %6 = load <2 x i64>, <2 x i64>* %5, align 8, !dbg !64, !tbaa !65
  %7 = load <2 x i64>, <2 x i64>* bitcast (%struct.timespec* @halide_reference_clock to <2 x i64>*), align 8, !dbg !67, !tbaa !65
  %8 = sub <2 x i64> %6, %7, !dbg !68
  %9 = extractelement <2 x i64> %8, i32 0, !dbg !69
  %10 = mul nsw i64 %9, 1000000000, !dbg !69
  call void @llvm.dbg.value(metadata i64 %10, metadata !58, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i64 undef, metadata !59, metadata !DIExpression()), !dbg !60
  %11 = extractelement <2 x i64> %8, i32 1, !dbg !70
  %12 = add nsw i64 %11, %10, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #5, !dbg !71
  ret i64 %12, !dbg !72
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_sleep_ms(i8* %0, i32 %1) local_unnamed_addr #0 !dbg !73 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !77, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i32 %1, metadata !78, metadata !DIExpression()), !dbg !79
  %3 = mul nsw i32 %1, 1000, !dbg !80
  %4 = tail call i32 @usleep(i32 %3) #4, !dbg !81
  ret void, !dbg !82
}

declare !dbg !83 dso_local i32 @usleep(i32) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!24, !25, !26}
!llvm.ident = !{!27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halide_reference_clock_inited", scope: !2, file: !12, line: 33, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !3, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, imports: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/linux_clock.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 9, baseType: !8)
!7 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!8 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!9 = !{!0, !10}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "halide_reference_clock", scope: !2, file: !12, line: 34, type: !13, isLocal: false, isDefinition: true)
!12 = !DIFile(filename: "src/runtime/linux_clock.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !12, line: 24, size: 128, flags: DIFlagTypePassByValue, elements: !14, identifier: "_ZTS8timespec")
!14 = !{!15, !17}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !13, file: !12, line: 25, baseType: !16, size: 64)
!16 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !13, file: !12, line: 26, baseType: !16, size: 64, offset: 64)
!18 = !{!19}
!19 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !20, file: !7, line: 225)
!20 = !DINamespace(name: "Internal", scope: !21)
!21 = !DINamespace(name: "Runtime", scope: !22)
!22 = !DINamespace(name: "Halide", scope: null)
!23 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!24 = !{i32 7, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!28 = distinct !DISubprogram(name: "halide_start_clock", scope: !12, file: !12, line: 55, type: !29, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !32}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !{!34}
!34 = !DILocalVariable(name: "user_context", arg: 1, scope: !28, file: !12, line: 55, type: !32)
!35 = !DILocation(line: 0, scope: !28)
!36 = !DILocation(line: 57, column: 10, scope: !37)
!37 = distinct !DILexicalBlock(scope: !28, file: !12, line: 57, column: 9)
!38 = !{!39, !39, i64 0}
!39 = !{!"bool", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{i8 0, i8 2}
!43 = !DILocation(line: 57, column: 9, scope: !28)
!44 = !DILocation(line: 58, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !37, file: !12, line: 57, column: 41)
!46 = !DILocation(line: 59, column: 39, scope: !45)
!47 = !DILocation(line: 60, column: 5, scope: !45)
!48 = !DILocation(line: 61, column: 5, scope: !28)
!49 = !DISubprogram(name: "syscall", scope: !12, file: !12, line: 53, type: !50, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!50 = !DISubroutineType(types: !51)
!51 = !{!31, !31, null}
!52 = distinct !DISubprogram(name: "halide_current_time_ns", scope: !12, file: !12, line: 64, type: !53, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{!6, !32}
!55 = !{!56, !57, !58, !59}
!56 = !DILocalVariable(name: "user_context", arg: 1, scope: !52, file: !12, line: 64, type: !32)
!57 = !DILocalVariable(name: "now", scope: !52, file: !12, line: 65, type: !13)
!58 = !DILocalVariable(name: "d", scope: !52, file: !12, line: 69, type: !6)
!59 = !DILocalVariable(name: "nd", scope: !52, file: !12, line: 70, type: !6)
!60 = !DILocation(line: 0, scope: !52)
!61 = !DILocation(line: 65, column: 5, scope: !52)
!62 = !DILocation(line: 65, column: 14, scope: !52)
!63 = !DILocation(line: 68, column: 5, scope: !52)
!64 = !DILocation(line: 69, column: 29, scope: !52)
!65 = !{!66, !66, i64 0}
!66 = !{!"long", !40, i64 0}
!67 = !DILocation(line: 69, column: 61, scope: !52)
!68 = !DILocation(line: 69, column: 36, scope: !52)
!69 = !DILocation(line: 69, column: 69, scope: !52)
!70 = !DILocation(line: 71, column: 14, scope: !52)
!71 = !DILocation(line: 72, column: 1, scope: !52)
!72 = !DILocation(line: 71, column: 5, scope: !52)
!73 = distinct !DISubprogram(name: "halide_sleep_ms", scope: !12, file: !12, line: 75, type: !74, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !76)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !32, !31}
!76 = !{!77, !78}
!77 = !DILocalVariable(name: "user_context", arg: 1, scope: !73, file: !12, line: 75, type: !32)
!78 = !DILocalVariable(name: "ms", arg: 2, scope: !73, file: !12, line: 75, type: !31)
!79 = !DILocation(line: 0, scope: !73)
!80 = !DILocation(line: 76, column: 15, scope: !73)
!81 = !DILocation(line: 76, column: 5, scope: !73)
!82 = !DILocation(line: 77, column: 1, scope: !73)
!83 = !DISubprogram(name: "usleep", scope: !12, file: !12, line: 74, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!84 = !DISubroutineType(types: !85)
!85 = !{!31, !31}
