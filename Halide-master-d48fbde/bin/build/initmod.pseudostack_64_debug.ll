; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/pseudostack.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/pseudostack.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_pseudostack_slot_t = type { i8*, i64 }

@llvm.used = appending global [2 x i8*] [i8* bitcast (i8* (i8*, %struct.halide_pseudostack_slot_t*, i64)* @pseudostack_alloc to i8*), i8* bitcast (void (i8*, i8*)* @pseudostack_free to i8*)], section "llvm.metadata"

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i8* @pseudostack_alloc(i8* %0, %struct.halide_pseudostack_slot_t* %1, i64 %2) #0 !dbg !22 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !27, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata %struct.halide_pseudostack_slot_t* %1, metadata !28, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i64 %2, metadata !29, metadata !DIExpression()), !dbg !30
  %4 = getelementptr inbounds %struct.halide_pseudostack_slot_t, %struct.halide_pseudostack_slot_t* %1, i64 0, i32 1, !dbg !31
  %5 = load i64, i64* %4, align 8, !dbg !31, !tbaa !33
  %6 = icmp ult i64 %5, %2, !dbg !39
  %7 = getelementptr inbounds %struct.halide_pseudostack_slot_t, %struct.halide_pseudostack_slot_t* %1, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8, !dbg !30, !tbaa !40
  br i1 %6, label %9, label %14, !dbg !41, !prof !42

9:                                                ; preds = %3
  %10 = icmp eq i8* %8, null, !dbg !43
  br i1 %10, label %12, label %11, !dbg !46

11:                                               ; preds = %9
  tail call void @halide_free(i8* %0, i8* nonnull %8) #3, !dbg !47
  br label %12, !dbg !49

12:                                               ; preds = %11, %9
  %13 = tail call i8* @halide_malloc(i8* %0, i64 %2) #3, !dbg !50
  store i8* %13, i8** %7, align 8, !dbg !51, !tbaa !40
  store i64 %2, i64* %4, align 8, !dbg !52, !tbaa !33
  br label %14, !dbg !53

14:                                               ; preds = %3, %12
  %15 = phi i8* [ %13, %12 ], [ %8, %3 ], !dbg !54
  ret i8* %15, !dbg !55
}

declare !dbg !56 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #1

declare !dbg !60 dso_local i8* @halide_malloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local void @pseudostack_free(i8* %0, i8* %1) #0 !dbg !63 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !65, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i8* %1, metadata !66, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i8* %1, metadata !67, metadata !DIExpression()), !dbg !68
  %3 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !69
  %4 = bitcast i8* %3 to i64*, !dbg !69
  store i64 0, i64* %4, align 8, !dbg !70, !tbaa !33
  %5 = bitcast i8* %1 to i8**, !dbg !71
  %6 = load i8*, i8** %5, align 8, !dbg !71, !tbaa !40
  %7 = icmp eq i8* %6, null, !dbg !73
  br i1 %7, label %9, label %8, !dbg !74

8:                                                ; preds = %2
  tail call void @halide_free(i8* %0, i8* nonnull %6) #3, !dbg !75
  br label %9, !dbg !77

9:                                                ; preds = %8, %2
  store i8* null, i8** %5, align 8, !dbg !78, !tbaa !40
  ret void, !dbg !79
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { alwaysinline nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, imports: !13, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/pseudostack.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_pseudostack_slot_t", file: !6, line: 180, size: 128, flags: DIFlagTypePassByValue, elements: !7, identifier: "_ZTS25halide_pseudostack_slot_t")
!6 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = !{!8, !10}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5, file: !6, line: 181, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5, file: !6, line: 182, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 27, baseType: !12)
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !{!14}
!14 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !15, file: !6, line: 225)
!15 = !DINamespace(name: "Internal", scope: !16)
!16 = !DINamespace(name: "Runtime", scope: !17)
!17 = !DINamespace(name: "Halide", scope: null)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!22 = distinct !DISubprogram(name: "pseudostack_alloc", scope: !23, file: !23, line: 6, type: !24, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !26)
!23 = !DIFile(filename: "src/runtime/pseudostack.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!24 = !DISubroutineType(types: !25)
!25 = !{!9, !9, !4, !11}
!26 = !{!27, !28, !29}
!27 = !DILocalVariable(name: "user_context", arg: 1, scope: !22, file: !23, line: 6, type: !9)
!28 = !DILocalVariable(name: "slot", arg: 2, scope: !22, file: !23, line: 6, type: !4)
!29 = !DILocalVariable(name: "sz", arg: 3, scope: !22, file: !23, line: 6, type: !11)
!30 = !DILocation(line: 0, scope: !22)
!31 = !DILocation(line: 7, column: 37, scope: !32)
!32 = distinct !DILexicalBlock(scope: !22, file: !23, line: 7, column: 9)
!33 = !{!34, !38, i64 8}
!34 = !{!"_ZTS25halide_pseudostack_slot_t", !35, i64 0, !38, i64 8}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!"long", !36, i64 0}
!39 = !DILocation(line: 7, column: 29, scope: !32)
!40 = !{!34, !35, i64 0}
!41 = !DILocation(line: 7, column: 9, scope: !22)
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !DILocation(line: 8, column: 13, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !23, line: 8, column: 13)
!45 = distinct !DILexicalBlock(scope: !32, file: !23, line: 7, column: 47)
!46 = !DILocation(line: 8, column: 13, scope: !45)
!47 = !DILocation(line: 9, column: 13, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !23, line: 8, column: 24)
!49 = !DILocation(line: 10, column: 9, scope: !48)
!50 = !DILocation(line: 11, column: 21, scope: !45)
!51 = !DILocation(line: 11, column: 19, scope: !45)
!52 = !DILocation(line: 12, column: 20, scope: !45)
!53 = !DILocation(line: 13, column: 5, scope: !45)
!54 = !DILocation(line: 14, column: 18, scope: !22)
!55 = !DILocation(line: 14, column: 5, scope: !22)
!56 = !DISubprogram(name: "halide_free", scope: !57, file: !57, line: 355, type: !58, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!57 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!58 = !DISubroutineType(types: !59)
!59 = !{null, !9, !9}
!60 = !DISubprogram(name: "halide_malloc", scope: !57, file: !57, line: 354, type: !61, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!61 = !DISubroutineType(types: !62)
!62 = !{!9, !9, !12}
!63 = distinct !DISubprogram(name: "pseudostack_free", scope: !23, file: !23, line: 18, type: !58, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !64)
!64 = !{!65, !66, !67}
!65 = !DILocalVariable(name: "user_context", arg: 1, scope: !63, file: !23, line: 18, type: !9)
!66 = !DILocalVariable(name: "ptr", arg: 2, scope: !63, file: !23, line: 18, type: !9)
!67 = !DILocalVariable(name: "slot", scope: !63, file: !23, line: 19, type: !4)
!68 = !DILocation(line: 0, scope: !63)
!69 = !DILocation(line: 20, column: 11, scope: !63)
!70 = !DILocation(line: 20, column: 16, scope: !63)
!71 = !DILocation(line: 21, column: 15, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !23, line: 21, column: 9)
!73 = !DILocation(line: 21, column: 9, scope: !72)
!74 = !DILocation(line: 21, column: 9, scope: !63)
!75 = !DILocation(line: 22, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !23, line: 21, column: 20)
!77 = !DILocation(line: 23, column: 5, scope: !76)
!78 = !DILocation(line: 24, column: 15, scope: !63)
!79 = !DILocation(line: 25, column: 1, scope: !63)
