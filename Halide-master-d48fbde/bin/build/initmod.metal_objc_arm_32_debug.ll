; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal_objc_arm.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal_objc_arm.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder" = type opaque

@.str = private unnamed_addr constant [18 x i8] c"NSAutoreleasePool\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alloc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"drain\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"retain\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"NSString\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"initWithBytesNoCopy:length:encoding:freeWhenDone:\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%@\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"dispatchThreadgroups:threadsPerThreadgroup:\00", align 1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal23create_autorelease_poolEv() local_unnamed_addr #0 !dbg !6 {
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !15, metadata !DIExpression()), !dbg !89
  %1 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #3, !dbg !90
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #3, !dbg !91
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %1, i8* %2) #3, !dbg !92
  call void @llvm.dbg.value(metadata i8* %3, metadata !16, metadata !DIExpression()), !dbg !89
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #3, !dbg !93
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #3, !dbg !94
  call void @llvm.dbg.value(metadata i8* %5, metadata !16, metadata !DIExpression()), !dbg !89
  ret i8* %5, !dbg !95
}

declare dso_local void @objc_msgSend() local_unnamed_addr #1

declare !dbg !96 dso_local i8* @objc_getClass(i8*) local_unnamed_addr #1

declare !dbg !99 dso_local i8* @sel_getUid(i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal22drain_autorelease_poolEPv(i8* %0) local_unnamed_addr #0 !dbg !22 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !26, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !27, metadata !DIExpression()), !dbg !100
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #3, !dbg !101
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #3, !dbg !102
  ret void, !dbg !103
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal16retain_ns_objectEPv(i8* %0) local_unnamed_addr #0 !dbg !29 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !31, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !32, metadata !DIExpression()), !dbg !104
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #3, !dbg !105
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #3, !dbg !106
  ret void, !dbg !107
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %0) local_unnamed_addr #0 !dbg !34 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !36, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !37, metadata !DIExpression()), !dbg !108
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #3, !dbg !109
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #3, !dbg !110
  ret void, !dbg !111
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* %0, i32 %1) local_unnamed_addr #0 !dbg !39 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !49, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i32 %1, metadata !50, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !51, metadata !DIExpression()), !dbg !112
  %3 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #3, !dbg !113
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #3, !dbg !114
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #3, !dbg !115
  call void @llvm.dbg.value(metadata i8* %5, metadata !52, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8* (i8*, i8*, i8*, i32, i32, i8)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*, i8*, i32, i32, i8)*), metadata !53, metadata !DIExpression()), !dbg !112
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0)) #3, !dbg !116
  %7 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*, i8*, i32, i32, i8)*)(i8* %5, i8* %6, i8* %0, i32 %1, i32 4, i8 zeroext 0) #3, !dbg !117
  ret i8* %7, !dbg !118
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal18ns_log_utf8_stringEPKc(i8* %0) local_unnamed_addr #0 !dbg !119 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !123, metadata !DIExpression()), !dbg !126
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 2) #4, !dbg !127
  call void @llvm.dbg.value(metadata i8* %2, metadata !124, metadata !DIExpression()), !dbg !126
  %3 = tail call i32 @strlen(i8* %0) #3, !dbg !128
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* %0, i32 %3) #4, !dbg !129
  call void @llvm.dbg.value(metadata i8* %4, metadata !125, metadata !DIExpression()), !dbg !126
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %4) #3, !dbg !130
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #4, !dbg !131
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #4, !dbg !132
  ret void, !dbg !133
}

declare !dbg !134 dso_local i32 @strlen(i8*) local_unnamed_addr #1

declare !dbg !137 dso_local void @NSLog(i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %0) local_unnamed_addr #0 !dbg !140 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !142, metadata !DIExpression()), !dbg !144
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 2) #4, !dbg !145
  call void @llvm.dbg.value(metadata i8* %2, metadata !143, metadata !DIExpression()), !dbg !144
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %0) #3, !dbg !146
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #4, !dbg !147
  ret void, !dbg !148
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiii(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 !dbg !62 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, metadata !72, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 %1, metadata !73, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 %2, metadata !74, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 %3, metadata !75, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 %4, metadata !76, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 %5, metadata !77, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 %6, metadata !78, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata void (i8*, i8*, i32, i32, i32, i32, i32, i32)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, i32, i32, i32, i32, i32, i32)*), metadata !79, metadata !DIExpression()), !dbg !149
  %8 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*, !dbg !150
  %9 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0)) #3, !dbg !151
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, i32, i32, i32, i32, i32, i32)*)(i8* %8, i8* %9, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #3, !dbg !152
  ret void, !dbg !153
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!85, !86, !87}
!llvm.ident = !{!88}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, imports: !83, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal_objc_arm.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{}
!3 = !{!4, !21, !28, !33, !38, !54, !60}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "pool_method", scope: !6, file: !5, line: 43, baseType: !17)
!5 = !DIFile(filename: "src/runtime/objc_support.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = distinct !DISubprogram(name: "create_autorelease_pool", linkageName: "_ZN6Halide7Runtime8Internal23create_autorelease_poolEv", scope: !7, file: !5, line: 42, type: !10, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!7 = !DINamespace(name: "Internal", scope: !8)
!8 = !DINamespace(name: "Runtime", scope: !9)
!9 = !DINamespace(name: "Halide", scope: null)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "objc_id", file: !5, line: 5, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!14 = !{!15, !16}
!15 = !DILocalVariable(name: "method", scope: !6, file: !5, line: 44, type: !4)
!16 = !DILocalVariable(name: "pool", scope: !6, file: !5, line: 45, type: !12)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 32)
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
!39 = distinct !DISubprogram(name: "wrap_string_as_ns_string", linkageName: "_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcj", scope: !7, file: !5, line: 68, type: !40, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !48)
!40 = !DISubroutineType(types: !41)
!41 = !{!12, !42, !45}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 27, baseType: !47)
!46 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!47 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!48 = !{!49, !50, !51, !52, !53}
!49 = !DILocalVariable(name: "string", arg: 1, scope: !39, file: !5, line: 68, type: !42)
!50 = !DILocalVariable(name: "length", arg: 2, scope: !39, file: !5, line: 68, type: !45)
!51 = !DILocalVariable(name: "method1", scope: !39, file: !5, line: 71, type: !38)
!52 = !DILocalVariable(name: "ns_string", scope: !39, file: !5, line: 72, type: !12)
!53 = !DILocalVariable(name: "method", scope: !39, file: !5, line: 73, type: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "init_with_bytes_no_copy_method", scope: !39, file: !5, line: 69, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 32)
!56 = !DISubroutineType(types: !57)
!57 = !{!12, !12, !20, !42, !45, !45, !58}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !46, line: 16, baseType: !59)
!59 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "dispatch_threadgroups_method", scope: !62, file: !61, line: 44, baseType: !80)
!61 = !DIFile(filename: "src/runtime/metal_objc_platform_dependent.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!62 = distinct !DISubprogram(name: "dispatch_threadgroups", linkageName: "_ZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiii", scope: !63, file: !61, line: 10, type: !64, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !71)
!63 = !DINamespace(name: "Metal", scope: !7)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !69, !69, !69, !69, !69, !69}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 32)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_compute_command_encoder", scope: !63, file: !68, line: 11, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal27mtl_compute_command_encoderE")
!68 = !DIFile(filename: "src/runtime/metal_objc_platform_dependent.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !46, line: 11, baseType: !70)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79}
!72 = !DILocalVariable(name: "encoder", arg: 1, scope: !62, file: !61, line: 10, type: !66)
!73 = !DILocalVariable(name: "blocks_x", arg: 2, scope: !62, file: !61, line: 11, type: !69)
!74 = !DILocalVariable(name: "blocks_y", arg: 3, scope: !62, file: !61, line: 11, type: !69)
!75 = !DILocalVariable(name: "blocks_z", arg: 4, scope: !62, file: !61, line: 11, type: !69)
!76 = !DILocalVariable(name: "threads_x", arg: 5, scope: !62, file: !61, line: 12, type: !69)
!77 = !DILocalVariable(name: "threads_y", arg: 6, scope: !62, file: !61, line: 12, type: !69)
!78 = !DILocalVariable(name: "threads_z", arg: 7, scope: !62, file: !61, line: 12, type: !69)
!79 = !DILocalVariable(name: "method", scope: !62, file: !61, line: 47, type: !60)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 32)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !12, !20, !69, !69, !69, !69, !69, !69}
!83 = !{!84}
!84 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !7, file: !46, line: 225)
!85 = !{i32 7, !"Dwarf Version", i32 4}
!86 = !{i32 2, !"Debug Info Version", i32 3}
!87 = !{i32 1, !"wchar_size", i32 4}
!88 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!89 = !DILocation(line: 0, scope: !6)
!90 = !DILocation(line: 45, column: 30, scope: !6)
!91 = !DILocation(line: 45, column: 66, scope: !6)
!92 = !DILocation(line: 45, column: 20, scope: !6)
!93 = !DILocation(line: 46, column: 28, scope: !6)
!94 = !DILocation(line: 46, column: 12, scope: !6)
!95 = !DILocation(line: 47, column: 5, scope: !6)
!96 = !DISubprogram(name: "objc_getClass", scope: !5, file: !5, line: 7, type: !97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!97 = !DISubroutineType(types: !98)
!98 = !{!13, !42}
!99 = !DISubprogram(name: "sel_getUid", scope: !5, file: !5, line: 8, type: !97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!100 = !DILocation(line: 0, scope: !22)
!101 = !DILocation(line: 53, column: 21, scope: !22)
!102 = !DILocation(line: 53, column: 5, scope: !22)
!103 = !DILocation(line: 54, column: 1, scope: !22)
!104 = !DILocation(line: 0, scope: !29)
!105 = !DILocation(line: 59, column: 20, scope: !29)
!106 = !DILocation(line: 59, column: 5, scope: !29)
!107 = !DILocation(line: 60, column: 1, scope: !29)
!108 = !DILocation(line: 0, scope: !34)
!109 = !DILocation(line: 65, column: 20, scope: !34)
!110 = !DILocation(line: 65, column: 5, scope: !34)
!111 = !DILocation(line: 66, column: 1, scope: !34)
!112 = !DILocation(line: 0, scope: !39)
!113 = !DILocation(line: 72, column: 36, scope: !39)
!114 = !DILocation(line: 72, column: 63, scope: !39)
!115 = !DILocation(line: 72, column: 25, scope: !39)
!116 = !DILocation(line: 74, column: 33, scope: !39)
!117 = !DILocation(line: 74, column: 12, scope: !39)
!118 = !DILocation(line: 74, column: 5, scope: !39)
!119 = distinct !DISubprogram(name: "ns_log_utf8_string", linkageName: "_ZN6Halide7Runtime8Internal18ns_log_utf8_stringEPKc", scope: !7, file: !5, line: 80, type: !120, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !42}
!122 = !{!123, !124, !125}
!123 = !DILocalVariable(name: "string", arg: 1, scope: !119, file: !5, line: 80, type: !42)
!124 = !DILocalVariable(name: "format_string", scope: !119, file: !5, line: 81, type: !12)
!125 = !DILocalVariable(name: "ns_string", scope: !119, file: !5, line: 82, type: !12)
!126 = !DILocation(line: 0, scope: !119)
!127 = !DILocation(line: 81, column: 29, scope: !119)
!128 = !DILocation(line: 82, column: 58, scope: !119)
!129 = !DILocation(line: 82, column: 25, scope: !119)
!130 = !DILocation(line: 83, column: 5, scope: !119)
!131 = !DILocation(line: 84, column: 5, scope: !119)
!132 = !DILocation(line: 85, column: 5, scope: !119)
!133 = !DILocation(line: 86, column: 1, scope: !119)
!134 = !DISubprogram(name: "strlen", scope: !5, file: !5, line: 78, type: !135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!135 = !DISubroutineType(types: !136)
!136 = !{!47, !42}
!137 = !DISubprogram(name: "NSLog", scope: !5, file: !5, line: 35, type: !138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !13, null}
!140 = distinct !DISubprogram(name: "ns_log_object", linkageName: "_ZN6Halide7Runtime8Internal13ns_log_objectEPv", scope: !7, file: !5, line: 88, type: !23, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !141)
!141 = !{!142, !143}
!142 = !DILocalVariable(name: "obj", arg: 1, scope: !140, file: !5, line: 88, type: !12)
!143 = !DILocalVariable(name: "format_string", scope: !140, file: !5, line: 89, type: !12)
!144 = !DILocation(line: 0, scope: !140)
!145 = !DILocation(line: 89, column: 29, scope: !140)
!146 = !DILocation(line: 90, column: 5, scope: !140)
!147 = !DILocation(line: 91, column: 5, scope: !140)
!148 = !DILocation(line: 92, column: 1, scope: !140)
!149 = !DILocation(line: 0, scope: !62)
!150 = !DILocation(line: 48, column: 15, scope: !62)
!151 = !DILocation(line: 48, column: 24, scope: !62)
!152 = !DILocation(line: 48, column: 5, scope: !62)
!153 = !DILocation(line: 51, column: 1, scope: !62)
