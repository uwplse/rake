; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_error_handler.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_error_handler.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@.str = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@_ZN6Halide7Runtime8Internal13error_handlerE = weak dso_local local_unnamed_addr global void (i8*, i8*)* @halide_default_error, align 4, !dbg !0

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_default_error(i8* %0, i8* %1) #0 !dbg !26 {
  %3 = alloca [4096 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !28, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.value(metadata i8* %1, metadata !29, metadata !DIExpression()), !dbg !36
  %4 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %4) #5, !dbg !37
  call void @llvm.dbg.declare(metadata [4096 x i8]* %3, metadata !30, metadata !DIExpression()), !dbg !38
  %5 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 4094, !dbg !39
  %6 = call i8* @halide_string_to_string(i8* nonnull %4, i8* nonnull %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #6, !dbg !40
  call void @llvm.dbg.value(metadata i8* %6, metadata !34, metadata !DIExpression()), !dbg !36
  %7 = getelementptr inbounds i8, i8* %6, i32 4094, !dbg !41
  %8 = call i8* @halide_string_to_string(i8* %6, i8* nonnull %7, i8* %1) #6, !dbg !42
  call void @llvm.dbg.value(metadata i8* %8, metadata !34, metadata !DIExpression()), !dbg !36
  %9 = getelementptr inbounds i8, i8* %8, i32 -1, !dbg !43
  %10 = load i8, i8* %9, align 1, !dbg !43, !tbaa !45
  %11 = icmp eq i8 %10, 10, !dbg !48
  br i1 %11, label %14, label %12, !dbg !49

12:                                               ; preds = %2
  store i8 10, i8* %8, align 1, !dbg !50, !tbaa !45
  %13 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !52
  store i8 0, i8* %13, align 1, !dbg !53, !tbaa !45
  call void @llvm.dbg.value(metadata i8* %13, metadata !34, metadata !DIExpression()), !dbg !36
  br label %14, !dbg !54

14:                                               ; preds = %12, %2
  %15 = phi i8* [ %13, %12 ], [ %8, %2 ], !dbg !36
  call void @llvm.dbg.value(metadata i8* %15, metadata !34, metadata !DIExpression()), !dbg !36
  %16 = ptrtoint i8* %15 to i32, !dbg !55
  %17 = ptrtoint [4096 x i8]* %3 to i32, !dbg !55
  %18 = sub i32 1, %17, !dbg !55
  %19 = add i32 %18, %16, !dbg !56
  %20 = sext i32 %19 to i64, !dbg !57
  %21 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %20) #6, !dbg !58
  call void @halide_print(i8* %0, i8* nonnull %4) #6, !dbg !59
  call void @abort() #6, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %4) #5, !dbg !61
  ret void, !dbg !61
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !62 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !65 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !72 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !73 dso_local void @abort() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_error(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !76 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !78, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i8* %1, metadata !79, metadata !DIExpression()), !dbg !80
  %3 = load void (i8*, i8*)*, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal13error_handlerE, align 4, !dbg !81, !tbaa !82
  tail call void %3(i8* %0, i8* %1) #6, !dbg !84
  ret void, !dbg !85
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void (i8*, i8*)* @halide_set_error_handler(void (i8*, i8*)* %0) local_unnamed_addr #4 !dbg !86 {
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %0, metadata !90, metadata !DIExpression()), !dbg !92
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal13error_handlerE, align 4, !dbg !93, !tbaa !82
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %2, metadata !91, metadata !DIExpression()), !dbg !92
  store void (i8*, i8*)* %0, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal13error_handlerE, align 4, !dbg !94, !tbaa !82
  ret void (i8*, i8*)* %2, !dbg !95
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!22, !23, !24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "error_handler", linkageName: "_ZN6Halide7Runtime8Internal13error_handlerE", scope: !2, file: !5, line: 30, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/posix_error_handler.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_error_handler_t", file: !7, line: 113, baseType: !8)
!7 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !12}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !16, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !17, globals: !18, imports: !19, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_error_handler.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!17 = !{}
!18 = !{!0}
!19 = !{!20}
!20 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !15, entity: !2, file: !21, line: 225)
!21 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!22 = !{i32 7, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!26 = distinct !DISubprogram(name: "halide_default_error", scope: !5, file: !5, line: 9, type: !9, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !27)
!27 = !{!28, !29, !30, !34}
!28 = !DILocalVariable(name: "user_context", arg: 1, scope: !26, file: !5, line: 9, type: !11)
!29 = !DILocalVariable(name: "msg", arg: 2, scope: !26, file: !5, line: 9, type: !12)
!30 = !DILocalVariable(name: "buf", scope: !26, file: !5, line: 10, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32768, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 4096)
!34 = !DILocalVariable(name: "dst", scope: !26, file: !5, line: 11, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!36 = !DILocation(line: 0, scope: !26)
!37 = !DILocation(line: 10, column: 5, scope: !26)
!38 = !DILocation(line: 10, column: 10, scope: !26)
!39 = !DILocation(line: 11, column: 50, scope: !26)
!40 = !DILocation(line: 11, column: 17, scope: !26)
!41 = !DILocation(line: 12, column: 44, scope: !26)
!42 = !DILocation(line: 12, column: 11, scope: !26)
!43 = !DILocation(line: 15, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !26, file: !5, line: 15, column: 9)
!45 = !{!46, !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !DILocation(line: 15, column: 17, scope: !44)
!49 = !DILocation(line: 15, column: 9, scope: !26)
!50 = !DILocation(line: 16, column: 16, scope: !51)
!51 = distinct !DILexicalBlock(scope: !44, file: !5, line: 15, column: 26)
!52 = !DILocation(line: 17, column: 9, scope: !51)
!53 = !DILocation(line: 17, column: 16, scope: !51)
!54 = !DILocation(line: 19, column: 5, scope: !51)
!55 = !DILocation(line: 20, column: 77, scope: !26)
!56 = !DILocation(line: 20, column: 83, scope: !26)
!57 = !DILocation(line: 20, column: 73, scope: !26)
!58 = !DILocation(line: 20, column: 11, scope: !26)
!59 = !DILocation(line: 21, column: 5, scope: !26)
!60 = !DILocation(line: 22, column: 5, scope: !26)
!61 = !DILocation(line: 23, column: 1, scope: !26)
!62 = !DISubprogram(name: "halide_string_to_string", scope: !21, file: !21, line: 120, type: !63, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !17)
!63 = !DISubroutineType(types: !64)
!64 = !{!35, !35, !35, !12}
!65 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !7, file: !7, line: 973, type: !66, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !17)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !11, !69, !71}
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!71 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DISubprogram(name: "halide_print", scope: !7, file: !7, line: 97, type: !9, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !17)
!73 = !DISubprogram(name: "abort", scope: !5, file: !5, line: 7, type: !74, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !17)
!74 = !DISubroutineType(types: !75)
!75 = !{null}
!76 = distinct !DISubprogram(name: "halide_error", scope: !5, file: !5, line: 38, type: !9, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !77)
!77 = !{!78, !79}
!78 = !DILocalVariable(name: "user_context", arg: 1, scope: !76, file: !5, line: 38, type: !11)
!79 = !DILocalVariable(name: "msg", arg: 2, scope: !76, file: !5, line: 38, type: !12)
!80 = !DILocation(line: 0, scope: !76)
!81 = !DILocation(line: 39, column: 7, scope: !76)
!82 = !{!83, !83, i64 0}
!83 = !{!"any pointer", !46, i64 0}
!84 = !DILocation(line: 39, column: 5, scope: !76)
!85 = !DILocation(line: 40, column: 1, scope: !76)
!86 = distinct !DISubprogram(name: "halide_set_error_handler", scope: !5, file: !5, line: 42, type: !87, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !89)
!87 = !DISubroutineType(types: !88)
!88 = !{!6, !6}
!89 = !{!90, !91}
!90 = !DILocalVariable(name: "handler", arg: 1, scope: !86, file: !5, line: 42, type: !6)
!91 = !DILocalVariable(name: "result", scope: !86, file: !5, line: 43, type: !6)
!92 = !DILocation(line: 0, scope: !86)
!93 = !DILocation(line: 43, column: 37, scope: !86)
!94 = !DILocation(line: 44, column: 19, scope: !86)
!95 = !DILocation(line: 45, column: 5, scope: !86)
