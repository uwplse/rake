; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/ios_io.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/ios_io.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

@.str = private unnamed_addr constant [18 x i8] c"NSAutoreleasePool\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alloc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"drain\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"retain\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"NSString\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"initWithBytesNoCopy:length:encoding:freeWhenDone:\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%@\00", align 1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal23create_autorelease_poolEv() local_unnamed_addr #0 !dbg !6 {
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !15, metadata !DIExpression()), !dbg !66
  %1 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #3, !dbg !67
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !68
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %1, i8* %2) #3, !dbg !69
  call void @llvm.dbg.value(metadata i8* %3, metadata !16, metadata !DIExpression()), !dbg !66
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !70
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #3, !dbg !71
  call void @llvm.dbg.value(metadata i8* %5, metadata !16, metadata !DIExpression()), !dbg !66
  ret i8* %5, !dbg !72
}

declare dso_local void @objc_msgSend() local_unnamed_addr #1

declare !dbg !73 dso_local i8* @objc_getClass(i8*) local_unnamed_addr #1

declare !dbg !76 dso_local i8* @sel_getUid(i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal22drain_autorelease_poolEPv(i8* %0) local_unnamed_addr #0 !dbg !22 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !26, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !27, metadata !DIExpression()), !dbg !77
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !78
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #3, !dbg !79
  ret void, !dbg !80
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal16retain_ns_objectEPv(i8* %0) local_unnamed_addr #0 !dbg !29 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !31, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !32, metadata !DIExpression()), !dbg !81
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #3, !dbg !82
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #3, !dbg !83
  ret void, !dbg !84
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %0) local_unnamed_addr #0 !dbg !34 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !36, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !37, metadata !DIExpression()), !dbg !85
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #3, !dbg !86
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #3, !dbg !87
  ret void, !dbg !88
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %0, i64 %1) local_unnamed_addr #0 !dbg !39 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !49, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i64 %1, metadata !50, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !51, metadata !DIExpression()), !dbg !89
  %3 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #3, !dbg !90
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !91
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #3, !dbg !92
  call void @llvm.dbg.value(metadata i8* %5, metadata !52, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i8* (i8*, i8*, i8*, i64, i64, i8)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*, i8*, i64, i64, i8)*), metadata !53, metadata !DIExpression()), !dbg !89
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0)) #3, !dbg !93
  %7 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*, i8*, i64, i64, i8)*)(i8* %5, i8* %6, i8* %0, i64 %1, i64 4, i8 zeroext 0) #3, !dbg !94
  ret i8* %7, !dbg !95
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal18ns_log_utf8_stringEPKc(i8* %0) local_unnamed_addr #0 !dbg !96 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !100, metadata !DIExpression()), !dbg !103
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 2) #4, !dbg !104
  call void @llvm.dbg.value(metadata i8* %2, metadata !101, metadata !DIExpression()), !dbg !103
  %3 = tail call i64 @strlen(i8* %0) #3, !dbg !105
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %0, i64 %3) #4, !dbg !106
  call void @llvm.dbg.value(metadata i8* %4, metadata !102, metadata !DIExpression()), !dbg !103
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %4) #3, !dbg !107
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #4, !dbg !108
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #4, !dbg !109
  ret void, !dbg !110
}

declare !dbg !111 dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare !dbg !114 dso_local void @NSLog(i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %0) local_unnamed_addr #0 !dbg !117 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !119, metadata !DIExpression()), !dbg !121
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 2) #4, !dbg !122
  call void @llvm.dbg.value(metadata i8* %2, metadata !120, metadata !DIExpression()), !dbg !121
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %0) #3, !dbg !123
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #4, !dbg !124
  ret void, !dbg !125
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_default_print(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !126 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !131, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i8* %1, metadata !132, metadata !DIExpression()), !dbg !134
  %3 = tail call i8* @_ZN6Halide7Runtime8Internal23create_autorelease_poolEv() #4, !dbg !135
  call void @llvm.dbg.value(metadata i8* %3, metadata !133, metadata !DIExpression()), !dbg !134
  tail call void @_ZN6Halide7Runtime8Internal18ns_log_utf8_stringEPKc(i8* %1) #4, !dbg !136
  tail call void @_ZN6Halide7Runtime8Internal22drain_autorelease_poolEPv(i8* %3) #4, !dbg !137
  ret void, !dbg !138
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!62, !63, !64}
!llvm.ident = !{!65}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, imports: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/ios_io.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{}
!3 = !{!4, !21, !28, !33, !38, !54}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "pool_method", scope: !6, file: !5, line: 43, baseType: !17)
!5 = !DIFile(filename: "src/runtime/objc_support.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = distinct !DISubprogram(name: "create_autorelease_pool", linkageName: "_ZN6Halide7Runtime8Internal23create_autorelease_poolEv", scope: !7, file: !5, line: 42, type: !10, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!7 = !DINamespace(name: "Internal", scope: !8)
!8 = !DINamespace(name: "Runtime", scope: !9)
!9 = !DINamespace(name: "Halide", scope: null)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "objc_id", file: !5, line: 5, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !{!15, !16}
!15 = !DILocalVariable(name: "method", scope: !6, file: !5, line: 44, type: !4)
!16 = !DILocalVariable(name: "pool", scope: !6, file: !5, line: 45, type: !12)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DISubroutineType(types: !19)
!19 = !{!12, !12, !20}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "objc_sel", file: !5, line: 6, baseType: !13)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "drain_method", scope: !22, file: !5, line: 51, baseType: !17)
!22 = distinct !DISubprogram(name: "drain_autorelease_pool", linkageName: "_ZN6Halide7Runtime8Internal22drain_autorelease_poolEPv", scope: !7, file: !5, line: 50, type: !23, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !12}
!25 = !{!26, !27}
!26 = !DILocalVariable(name: "pool", arg: 1, scope: !22, file: !5, line: 50, type: !12)
!27 = !DILocalVariable(name: "method", scope: !22, file: !5, line: 52, type: !21)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "retain_method", scope: !29, file: !5, line: 57, baseType: !17)
!29 = distinct !DISubprogram(name: "retain_ns_object", linkageName: "_ZN6Halide7Runtime8Internal16retain_ns_objectEPv", scope: !7, file: !5, line: 56, type: !23, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !30)
!30 = !{!31, !32}
!31 = !DILocalVariable(name: "obj", arg: 1, scope: !29, file: !5, line: 56, type: !12)
!32 = !DILocalVariable(name: "method", scope: !29, file: !5, line: 58, type: !28)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "release_method", scope: !34, file: !5, line: 63, baseType: !17)
!34 = distinct !DISubprogram(name: "release_ns_object", linkageName: "_ZN6Halide7Runtime8Internal17release_ns_objectEPv", scope: !7, file: !5, line: 62, type: !23, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!35 = !{!36, !37}
!36 = !DILocalVariable(name: "obj", arg: 1, scope: !34, file: !5, line: 62, type: !12)
!37 = !DILocalVariable(name: "method", scope: !34, file: !5, line: 64, type: !33)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_method", scope: !39, file: !5, line: 70, baseType: !17)
!39 = distinct !DISubprogram(name: "wrap_string_as_ns_string", linkageName: "_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm", scope: !7, file: !5, line: 68, type: !40, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !48)
!40 = !DISubroutineType(types: !41)
!41 = !{!12, !42, !45}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 27, baseType: !47)
!46 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!47 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!48 = !{!49, !50, !51, !52, !53}
!49 = !DILocalVariable(name: "string", arg: 1, scope: !39, file: !5, line: 68, type: !42)
!50 = !DILocalVariable(name: "length", arg: 2, scope: !39, file: !5, line: 68, type: !45)
!51 = !DILocalVariable(name: "method1", scope: !39, file: !5, line: 71, type: !38)
!52 = !DILocalVariable(name: "ns_string", scope: !39, file: !5, line: 72, type: !12)
!53 = !DILocalVariable(name: "method", scope: !39, file: !5, line: 73, type: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "init_with_bytes_no_copy_method", scope: !39, file: !5, line: 69, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!12, !12, !20, !42, !45, !45, !58}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !46, line: 16, baseType: !59)
!59 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!60 = !{!61}
!61 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !7, file: !46, line: 225)
!62 = !{i32 7, !"Dwarf Version", i32 4}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 4}
!65 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!66 = !DILocation(line: 0, scope: !6)
!67 = !DILocation(line: 45, column: 30, scope: !6)
!68 = !DILocation(line: 45, column: 66, scope: !6)
!69 = !DILocation(line: 45, column: 20, scope: !6)
!70 = !DILocation(line: 46, column: 28, scope: !6)
!71 = !DILocation(line: 46, column: 12, scope: !6)
!72 = !DILocation(line: 47, column: 5, scope: !6)
!73 = !DISubprogram(name: "objc_getClass", scope: !5, file: !5, line: 7, type: !74, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!74 = !DISubroutineType(types: !75)
!75 = !{!13, !42}
!76 = !DISubprogram(name: "sel_getUid", scope: !5, file: !5, line: 8, type: !74, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!77 = !DILocation(line: 0, scope: !22)
!78 = !DILocation(line: 53, column: 21, scope: !22)
!79 = !DILocation(line: 53, column: 5, scope: !22)
!80 = !DILocation(line: 54, column: 1, scope: !22)
!81 = !DILocation(line: 0, scope: !29)
!82 = !DILocation(line: 59, column: 20, scope: !29)
!83 = !DILocation(line: 59, column: 5, scope: !29)
!84 = !DILocation(line: 60, column: 1, scope: !29)
!85 = !DILocation(line: 0, scope: !34)
!86 = !DILocation(line: 65, column: 20, scope: !34)
!87 = !DILocation(line: 65, column: 5, scope: !34)
!88 = !DILocation(line: 66, column: 1, scope: !34)
!89 = !DILocation(line: 0, scope: !39)
!90 = !DILocation(line: 72, column: 36, scope: !39)
!91 = !DILocation(line: 72, column: 63, scope: !39)
!92 = !DILocation(line: 72, column: 25, scope: !39)
!93 = !DILocation(line: 74, column: 33, scope: !39)
!94 = !DILocation(line: 74, column: 12, scope: !39)
!95 = !DILocation(line: 74, column: 5, scope: !39)
!96 = distinct !DISubprogram(name: "ns_log_utf8_string", linkageName: "_ZN6Halide7Runtime8Internal18ns_log_utf8_stringEPKc", scope: !7, file: !5, line: 80, type: !97, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !99)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !42}
!99 = !{!100, !101, !102}
!100 = !DILocalVariable(name: "string", arg: 1, scope: !96, file: !5, line: 80, type: !42)
!101 = !DILocalVariable(name: "format_string", scope: !96, file: !5, line: 81, type: !12)
!102 = !DILocalVariable(name: "ns_string", scope: !96, file: !5, line: 82, type: !12)
!103 = !DILocation(line: 0, scope: !96)
!104 = !DILocation(line: 81, column: 29, scope: !96)
!105 = !DILocation(line: 82, column: 58, scope: !96)
!106 = !DILocation(line: 82, column: 25, scope: !96)
!107 = !DILocation(line: 83, column: 5, scope: !96)
!108 = !DILocation(line: 84, column: 5, scope: !96)
!109 = !DILocation(line: 85, column: 5, scope: !96)
!110 = !DILocation(line: 86, column: 1, scope: !96)
!111 = !DISubprogram(name: "strlen", scope: !5, file: !5, line: 78, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!112 = !DISubroutineType(types: !113)
!113 = !{!47, !42}
!114 = !DISubprogram(name: "NSLog", scope: !5, file: !5, line: 35, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !13, null}
!117 = distinct !DISubprogram(name: "ns_log_object", linkageName: "_ZN6Halide7Runtime8Internal13ns_log_objectEPv", scope: !7, file: !5, line: 88, type: !23, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !118)
!118 = !{!119, !120}
!119 = !DILocalVariable(name: "obj", arg: 1, scope: !117, file: !5, line: 88, type: !12)
!120 = !DILocalVariable(name: "format_string", scope: !117, file: !5, line: 89, type: !12)
!121 = !DILocation(line: 0, scope: !117)
!122 = !DILocation(line: 89, column: 29, scope: !117)
!123 = !DILocation(line: 90, column: 5, scope: !117)
!124 = !DILocation(line: 91, column: 5, scope: !117)
!125 = !DILocation(line: 92, column: 1, scope: !117)
!126 = distinct !DISubprogram(name: "halide_default_print", scope: !127, file: !127, line: 6, type: !128, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!127 = !DIFile(filename: "src/runtime/ios_io.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!128 = !DISubroutineType(types: !129)
!129 = !{null, !13, !42}
!130 = !{!131, !132, !133}
!131 = !DILocalVariable(name: "user_context", arg: 1, scope: !126, file: !127, line: 6, type: !13)
!132 = !DILocalVariable(name: "str", arg: 2, scope: !126, file: !127, line: 6, type: !42)
!133 = !DILocalVariable(name: "pool", scope: !126, file: !127, line: 7, type: !13)
!134 = !DILocation(line: 0, scope: !126)
!135 = !DILocation(line: 7, column: 18, scope: !126)
!136 = !DILocation(line: 8, column: 5, scope: !126)
!137 = !DILocation(line: 9, column: 5, scope: !126)
!138 = !DILocation(line: 10, column: 1, scope: !126)
