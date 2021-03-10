; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/msan_stubs.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/msan_stubs.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type opaque
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* %1, i64 %2) local_unnamed_addr #0 !dbg !13 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !24, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i8* %1, metadata !25, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i64 %2, metadata !26, metadata !DIExpression()), !dbg !27
  ret i32 0, !dbg !28
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* %1, i64 %2, i8* %3) local_unnamed_addr #0 !dbg !29 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !36, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i8* %1, metadata !37, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i64 %2, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i8* %3, metadata !39, metadata !DIExpression()), !dbg !40
  ret i32 0, !dbg !41
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_msan_check_buffer_is_initialized(i8* %0, %struct.halide_buffer_t* %1, i8* %2) local_unnamed_addr #0 !dbg !42 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !50, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !51, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i8* %2, metadata !52, metadata !DIExpression()), !dbg !53
  ret i32 0, !dbg !54
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_msan_annotate_buffer_is_initialized(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !55 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !59, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !60, metadata !DIExpression()), !dbg !61
  ret i32 0, !dbg !62
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_msan_annotate_buffer_is_initialized_as_destructor(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !63 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !67, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i8* %1, metadata !68, metadata !DIExpression()), !dbg !69
  ret void, !dbg !70
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, imports: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/msan_stubs.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{}
!3 = !{!4}
!4 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !5, file: !8, line: 225)
!5 = !DINamespace(name: "Internal", scope: !6)
!6 = !DINamespace(name: "Runtime", scope: !7)
!7 = !DINamespace(name: "Halide", scope: null)
!8 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!13 = distinct !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !14, file: !14, line: 5, type: !15, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!14 = !DIFile(filename: "src/runtime/msan_stubs.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18, !19, !21}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 10, baseType: !22)
!22 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26}
!24 = !DILocalVariable(name: "user_context", arg: 1, scope: !13, file: !14, line: 5, type: !18)
!25 = !DILocalVariable(name: "ptr", arg: 2, scope: !13, file: !14, line: 5, type: !19)
!26 = !DILocalVariable(name: "len", arg: 3, scope: !13, file: !14, line: 5, type: !21)
!27 = !DILocation(line: 0, scope: !13)
!28 = !DILocation(line: 6, column: 5, scope: !13)
!29 = distinct !DISubprogram(name: "halide_msan_check_memory_is_initialized", scope: !14, file: !14, line: 9, type: !30, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!30 = !DISubroutineType(types: !31)
!31 = !{!17, !18, !19, !21, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !{!36, !37, !38, !39}
!36 = !DILocalVariable(name: "user_context", arg: 1, scope: !29, file: !14, line: 9, type: !18)
!37 = !DILocalVariable(name: "ptr", arg: 2, scope: !29, file: !14, line: 9, type: !19)
!38 = !DILocalVariable(name: "len", arg: 3, scope: !29, file: !14, line: 9, type: !21)
!39 = !DILocalVariable(name: "name", arg: 4, scope: !29, file: !14, line: 9, type: !32)
!40 = !DILocation(line: 0, scope: !29)
!41 = !DILocation(line: 10, column: 5, scope: !29)
!42 = distinct !DISubprogram(name: "halide_msan_check_buffer_is_initialized", scope: !14, file: !14, line: 13, type: !43, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !49)
!43 = !DISubroutineType(types: !44)
!44 = !{!17, !18, !45, !32}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !47, line: 1550, baseType: !48)
!47 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!48 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !47, line: 1423, size: 448, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!49 = !{!50, !51, !52}
!50 = !DILocalVariable(name: "user_context", arg: 1, scope: !42, file: !14, line: 13, type: !18)
!51 = !DILocalVariable(name: "b", arg: 2, scope: !42, file: !14, line: 13, type: !45)
!52 = !DILocalVariable(name: "buf_name", arg: 3, scope: !42, file: !14, line: 13, type: !32)
!53 = !DILocation(line: 0, scope: !42)
!54 = !DILocation(line: 14, column: 5, scope: !42)
!55 = distinct !DISubprogram(name: "halide_msan_annotate_buffer_is_initialized", scope: !14, file: !14, line: 17, type: !56, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !58)
!56 = !DISubroutineType(types: !57)
!57 = !{!17, !18, !45}
!58 = !{!59, !60}
!59 = !DILocalVariable(name: "user_context", arg: 1, scope: !55, file: !14, line: 17, type: !18)
!60 = !DILocalVariable(name: "b", arg: 2, scope: !55, file: !14, line: 17, type: !45)
!61 = !DILocation(line: 0, scope: !55)
!62 = !DILocation(line: 18, column: 5, scope: !55)
!63 = distinct !DISubprogram(name: "halide_msan_annotate_buffer_is_initialized_as_destructor", scope: !14, file: !14, line: 21, type: !64, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !18, !18}
!66 = !{!67, !68}
!67 = !DILocalVariable(name: "user_context", arg: 1, scope: !63, file: !14, line: 21, type: !18)
!68 = !DILocalVariable(name: "b", arg: 2, scope: !63, file: !14, line: 21, type: !18)
!69 = !DILocation(line: 0, scope: !63)
!70 = !DILocation(line: 22, column: 1, scope: !63)
