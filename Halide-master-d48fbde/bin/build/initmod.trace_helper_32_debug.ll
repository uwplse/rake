; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/trace_helper.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/trace_helper.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.halide_trace_event_t = type { i8*, i8*, i32*, i8*, %struct.halide_type_t, i32, i32, i32, i32 }
%struct.halide_type_t = type { i8, i8, i16 }

; Function Attrs: nounwind
define weak dso_local i32 @halide_trace_helper(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i8* %11) local_unnamed_addr #0 !dbg !41 {
  %13 = alloca %struct.halide_trace_event_t, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !52, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %1, metadata !53, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %2, metadata !54, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32* %3, metadata !55, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %4, metadata !56, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %5, metadata !57, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %6, metadata !58, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %7, metadata !59, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %8, metadata !60, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %9, metadata !61, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %10, metadata !62, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i8* %11, metadata !63, metadata !DIExpression()), !dbg !113
  %14 = bitcast %struct.halide_trace_event_t* %13 to i8*, !dbg !114
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %14) #4, !dbg !114
  call void @llvm.dbg.declare(metadata %struct.halide_trace_event_t* %13, metadata !64, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata %struct.halide_trace_event_t* %13, metadata !116, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata %struct.halide_trace_event_t* %13, metadata !122, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !126
  %15 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 4, i32 0, !dbg !128
  %16 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 4, i32 1, !dbg !129
  %17 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 4, i32 2, !dbg !130
  %18 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 0, !dbg !131
  store i8* %1, i8** %18, align 4, !dbg !132, !tbaa !133
  %19 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 1, !dbg !143
  store i8* %2, i8** %19, align 4, !dbg !144, !tbaa !145
  %20 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 2, !dbg !146
  store i32* %3, i32** %20, align 4, !dbg !147, !tbaa !148
  %21 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 3, !dbg !149
  store i8* %11, i8** %21, align 4, !dbg !150, !tbaa !151
  %22 = trunc i32 %4 to i8, !dbg !152
  store i8 %22, i8* %15, align 4, !dbg !153, !tbaa !154
  %23 = trunc i32 %5 to i8, !dbg !155
  store i8 %23, i8* %16, align 1, !dbg !156, !tbaa !157
  %24 = trunc i32 %6 to i16, !dbg !158
  store i16 %24, i16* %17, align 2, !dbg !159, !tbaa !160
  %25 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 5, !dbg !161
  store i32 %7, i32* %25, align 4, !dbg !162, !tbaa !163
  %26 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 6, !dbg !164
  store i32 %8, i32* %26, align 4, !dbg !165, !tbaa !166
  %27 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 7, !dbg !167
  store i32 %9, i32* %27, align 4, !dbg !168, !tbaa !169
  %28 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 8, !dbg !170
  store i32 %10, i32* %28, align 4, !dbg !171, !tbaa !172
  %29 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %14, i64 36) #5, !dbg !173
  %30 = add nsw i32 %5, 7, !dbg !174
  %31 = sdiv i32 %30, 8, !dbg !175
  %32 = mul nsw i32 %31, %6, !dbg !176
  %33 = sext i32 %32 to i64, !dbg !177
  %34 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* %2, i64 %33) #5, !dbg !178
  %35 = bitcast i32* %3 to i8*, !dbg !179
  %36 = shl i32 %10, 2, !dbg !180
  %37 = zext i32 %36 to i64, !dbg !181
  %38 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* %35, i64 %37) #5, !dbg !182
  %39 = call i32 @halide_trace(i8* %0, %struct.halide_trace_event_t* nonnull %13) #5, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %14) #4, !dbg !184
  ret i32 %39, !dbg !185
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !186 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !193 dso_local i32 @halide_trace(i8*, %struct.halide_trace_event_t*) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38, !39}
!llvm.ident = !{!40}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !28, imports: !32, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/trace_helper.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{!3, !14}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !4, line: 403, baseType: !5, size: 8, elements: !8, identifier: "_ZTS18halide_type_code_t")
!4 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 16, baseType: !7)
!6 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_trace_event_code_t", file: !4, line: 493, baseType: !15, size: 32, elements: !16, identifier: "_ZTS25halide_trace_event_code_t")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!17 = !DIEnumerator(name: "halide_trace_load", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "halide_trace_store", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "halide_trace_begin_realization", value: 2, isUnsigned: true)
!20 = !DIEnumerator(name: "halide_trace_end_realization", value: 3, isUnsigned: true)
!21 = !DIEnumerator(name: "halide_trace_produce", value: 4, isUnsigned: true)
!22 = !DIEnumerator(name: "halide_trace_end_produce", value: 5, isUnsigned: true)
!23 = !DIEnumerator(name: "halide_trace_consume", value: 6, isUnsigned: true)
!24 = !DIEnumerator(name: "halide_trace_end_consume", value: 7, isUnsigned: true)
!25 = !DIEnumerator(name: "halide_trace_begin_pipeline", value: 8, isUnsigned: true)
!26 = !DIEnumerator(name: "halide_trace_end_pipeline", value: 9, isUnsigned: true)
!27 = !DIEnumerator(name: "halide_trace_tag", value: 10, isUnsigned: true)
!28 = !{!29, !5, !30, !14}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !4, line: 413, baseType: !3)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !6, line: 14, baseType: !31)
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !{!33}
!33 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !34, file: !6, line: 225)
!34 = !DINamespace(name: "Internal", scope: !35)
!35 = !DINamespace(name: "Runtime", scope: !36)
!36 = !DINamespace(name: "Halide", scope: null)
!37 = !{i32 7, !"Dwarf Version", i32 4}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!41 = distinct !DISubprogram(name: "halide_trace_helper", scope: !42, file: !42, line: 7, type: !43, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !51)
!42 = !DIFile(filename: "src/runtime/trace_helper.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !46, !47, !46, !50, !45, !45, !45, !45, !45, !45, !45, !47}
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 32)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!52 = !DILocalVariable(name: "user_context", arg: 1, scope: !41, file: !42, line: 7, type: !46)
!53 = !DILocalVariable(name: "func", arg: 2, scope: !41, file: !42, line: 8, type: !47)
!54 = !DILocalVariable(name: "value", arg: 3, scope: !41, file: !42, line: 9, type: !46)
!55 = !DILocalVariable(name: "coords", arg: 4, scope: !41, file: !42, line: 9, type: !50)
!56 = !DILocalVariable(name: "type_code", arg: 5, scope: !41, file: !42, line: 10, type: !45)
!57 = !DILocalVariable(name: "type_bits", arg: 6, scope: !41, file: !42, line: 10, type: !45)
!58 = !DILocalVariable(name: "type_lanes", arg: 7, scope: !41, file: !42, line: 10, type: !45)
!59 = !DILocalVariable(name: "code", arg: 8, scope: !41, file: !42, line: 11, type: !45)
!60 = !DILocalVariable(name: "parent_id", arg: 9, scope: !41, file: !42, line: 12, type: !45)
!61 = !DILocalVariable(name: "value_index", arg: 10, scope: !41, file: !42, line: 12, type: !45)
!62 = !DILocalVariable(name: "dimensions", arg: 11, scope: !41, file: !42, line: 12, type: !45)
!63 = !DILocalVariable(name: "trace_tag", arg: 12, scope: !41, file: !42, line: 13, type: !47)
!64 = !DILocalVariable(name: "event", scope: !41, file: !42, line: 14, type: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_trace_event_t", file: !4, line: 505, size: 288, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !66, identifier: "_ZTS20halide_trace_event_t")
!66 = !{!67, !68, !69, !72, !73, !105, !106, !107, !108, !109}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !65, file: !4, line: 507, baseType: !47, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !65, file: !4, line: 513, baseType: !46, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "coordinates", scope: !65, file: !4, line: 525, baseType: !70, size: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !6, line: 11, baseType: !45)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "trace_tag", scope: !65, file: !4, line: 530, baseType: !47, size: 32, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !4, line: 534, baseType: !74, size: 32, offset: 128)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !4, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !75, identifier: "_ZTS13halide_type_t")
!75 = !{!76, !77, !78, !79, !83, !86, !91, !96, !97, !98, !101}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !74, file: !4, line: 434, baseType: !29, size: 8, align: 8)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !74, file: !4, line: 442, baseType: !5, size: 8, align: 8, offset: 8)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !74, file: !4, line: 446, baseType: !30, size: 16, align: 16, offset: 16)
!79 = !DISubprogram(name: "halide_type_t", scope: !74, file: !4, line: 453, type: !80, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !82, !29, !5, !30}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!83 = !DISubprogram(name: "halide_type_t", scope: !74, file: !4, line: 459, type: !84, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !82}
!86 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !74, file: !4, line: 463, type: !87, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!87 = !DISubroutineType(types: !88)
!88 = !{!74, !89, !30}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!91 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !74, file: !4, line: 468, type: !92, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !89, !95}
!94 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!95 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !90, size: 32)
!96 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !74, file: !4, line: 472, type: !92, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!97 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !74, file: !4, line: 476, type: !92, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!98 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !74, file: !4, line: 481, type: !99, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!99 = !DISubroutineType(types: !100)
!100 = !{!45, !89}
!101 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !74, file: !4, line: 485, type: !102, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!102 = !DISubroutineType(types: !103)
!103 = !{!104, !89}
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 12, baseType: !15)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !65, file: !4, line: 537, baseType: !14, size: 32, offset: 160)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "parent_id", scope: !65, file: !4, line: 541, baseType: !71, size: 32, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "value_index", scope: !65, file: !4, line: 545, baseType: !71, size: 32, offset: 224)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !65, file: !4, line: 548, baseType: !71, size: 32, offset: 256)
!109 = !DISubprogram(name: "halide_trace_event_t", scope: !65, file: !4, line: 553, type: !110, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!113 = !DILocation(line: 0, scope: !41)
!114 = !DILocation(line: 14, column: 5, scope: !41)
!115 = !DILocation(line: 14, column: 26, scope: !41)
!116 = !DILocalVariable(name: "this", arg: 1, scope: !117, type: !119, flags: DIFlagArtificial | DIFlagObjectPointer)
!117 = distinct !DISubprogram(name: "halide_trace_event_t", linkageName: "_ZN20halide_trace_event_tC2Ev", scope: !65, file: !4, line: 553, type: !110, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !109, retainedNodes: !118)
!118 = !{!116}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 32)
!120 = !DILocation(line: 0, scope: !117, inlinedAt: !121)
!121 = distinct !DILocation(line: 14, column: 26, scope: !41)
!122 = !DILocalVariable(name: "this", arg: 1, scope: !123, type: !125, flags: DIFlagArtificial | DIFlagObjectPointer)
!123 = distinct !DISubprogram(name: "halide_type_t", linkageName: "_ZN13halide_type_tC2Ev", scope: !74, file: !4, line: 459, type: !84, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !83, retainedNodes: !124)
!124 = !{!122}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 32)
!126 = !DILocation(line: 0, scope: !123, inlinedAt: !127)
!127 = distinct !DILocation(line: 553, column: 26, scope: !117, inlinedAt: !121)
!128 = !DILocation(line: 460, column: 11, scope: !123, inlinedAt: !127)
!129 = !DILocation(line: 460, column: 40, scope: !123, inlinedAt: !127)
!130 = !DILocation(line: 460, column: 49, scope: !123, inlinedAt: !127)
!131 = !DILocation(line: 15, column: 11, scope: !41)
!132 = !DILocation(line: 15, column: 16, scope: !41)
!133 = !{!134, !135, i64 0}
!134 = !{!"_ZTS20halide_trace_event_t", !135, i64 0, !135, i64 4, !135, i64 8, !135, i64 12, !138, i64 16, !141, i64 20, !142, i64 24, !142, i64 28, !142, i64 32}
!135 = !{!"any pointer", !136, i64 0}
!136 = !{!"omnipotent char", !137, i64 0}
!137 = !{!"Simple C++ TBAA"}
!138 = !{!"_ZTS13halide_type_t", !139, i64 0, !136, i64 1, !140, i64 2}
!139 = !{!"_ZTS18halide_type_code_t", !136, i64 0}
!140 = !{!"short", !136, i64 0}
!141 = !{!"_ZTS25halide_trace_event_code_t", !136, i64 0}
!142 = !{!"int", !136, i64 0}
!143 = !DILocation(line: 16, column: 11, scope: !41)
!144 = !DILocation(line: 16, column: 17, scope: !41)
!145 = !{!134, !135, i64 4}
!146 = !DILocation(line: 17, column: 11, scope: !41)
!147 = !DILocation(line: 17, column: 23, scope: !41)
!148 = !{!134, !135, i64 8}
!149 = !DILocation(line: 18, column: 11, scope: !41)
!150 = !DILocation(line: 18, column: 21, scope: !41)
!151 = !{!134, !135, i64 12}
!152 = !DILocation(line: 19, column: 23, scope: !41)
!153 = !DILocation(line: 19, column: 21, scope: !41)
!154 = !{!134, !139, i64 16}
!155 = !DILocation(line: 20, column: 32, scope: !41)
!156 = !DILocation(line: 20, column: 21, scope: !41)
!157 = !{!134, !136, i64 17}
!158 = !DILocation(line: 21, column: 34, scope: !41)
!159 = !DILocation(line: 21, column: 22, scope: !41)
!160 = !{!134, !140, i64 18}
!161 = !DILocation(line: 22, column: 11, scope: !41)
!162 = !DILocation(line: 22, column: 17, scope: !41)
!163 = !{!134, !141, i64 20}
!164 = !DILocation(line: 23, column: 11, scope: !41)
!165 = !DILocation(line: 23, column: 21, scope: !41)
!166 = !{!134, !142, i64 24}
!167 = !DILocation(line: 24, column: 11, scope: !41)
!168 = !DILocation(line: 24, column: 23, scope: !41)
!169 = !{!134, !142, i64 28}
!170 = !DILocation(line: 25, column: 11, scope: !41)
!171 = !DILocation(line: 25, column: 22, scope: !41)
!172 = !{!134, !142, i64 32}
!173 = !DILocation(line: 26, column: 11, scope: !41)
!174 = !DILocation(line: 27, column: 100, scope: !41)
!175 = !DILocation(line: 27, column: 105, scope: !41)
!176 = !DILocation(line: 27, column: 86, scope: !41)
!177 = !DILocation(line: 27, column: 75, scope: !41)
!178 = !DILocation(line: 27, column: 11, scope: !41)
!179 = !DILocation(line: 28, column: 68, scope: !41)
!180 = !DILocation(line: 28, column: 87, scope: !41)
!181 = !DILocation(line: 28, column: 76, scope: !41)
!182 = !DILocation(line: 28, column: 11, scope: !41)
!183 = !DILocation(line: 29, column: 12, scope: !41)
!184 = !DILocation(line: 30, column: 1, scope: !41)
!185 = !DILocation(line: 29, column: 5, scope: !41)
!186 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !4, file: !4, line: 973, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !192)
!187 = !DISubroutineType(types: !188)
!188 = !{!45, !46, !189, !191}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!191 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!192 = !{}
!193 = !DISubprogram(name: "halide_trace", scope: !4, file: !4, line: 594, type: !194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !192)
!194 = !DISubroutineType(types: !195)
!195 = !{!45, !46, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
