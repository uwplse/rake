; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal_objc_arm.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal_objc_arm.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder" = type opaque
%struct.MTLSize = type { i64, i64, i64 }

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
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !15, metadata !DIExpression()), !dbg !97
  %1 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #4, !dbg !98
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !99
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %1, i8* %2) #4, !dbg !100
  call void @llvm.dbg.value(metadata i8* %3, metadata !16, metadata !DIExpression()), !dbg !97
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !101
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #4, !dbg !102
  call void @llvm.dbg.value(metadata i8* %5, metadata !16, metadata !DIExpression()), !dbg !97
  ret i8* %5, !dbg !103
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare dso_local void @objc_msgSend() local_unnamed_addr #3

declare !dbg !104 dso_local i8* @objc_getClass(i8*) local_unnamed_addr #3

declare !dbg !107 dso_local i8* @sel_getUid(i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal22drain_autorelease_poolEPv(i8* %0) local_unnamed_addr #0 !dbg !22 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !26, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !27, metadata !DIExpression()), !dbg !108
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !109
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #4, !dbg !110
  ret void, !dbg !111
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal16retain_ns_objectEPv(i8* %0) local_unnamed_addr #0 !dbg !29 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !31, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !32, metadata !DIExpression()), !dbg !112
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !113
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #4, !dbg !114
  ret void, !dbg !115
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %0) local_unnamed_addr #0 !dbg !34 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !36, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !37, metadata !DIExpression()), !dbg !116
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !117
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #4, !dbg !118
  ret void, !dbg !119
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %0, i64 %1) local_unnamed_addr #0 !dbg !39 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !49, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i64 %1, metadata !50, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*), metadata !51, metadata !DIExpression()), !dbg !120
  %3 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !121
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !122
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #4, !dbg !123
  call void @llvm.dbg.value(metadata i8* %5, metadata !52, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i8* (i8*, i8*, i8*, i64, i64, i8)* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*, i8*, i64, i64, i8)*), metadata !53, metadata !DIExpression()), !dbg !120
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !124
  %7 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*, i8*, i64, i64, i8)*)(i8* %5, i8* %6, i8* %0, i64 %1, i64 4, i8 zeroext 0) #4, !dbg !125
  ret i8* %7, !dbg !126
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal18ns_log_utf8_stringEPKc(i8* %0) local_unnamed_addr #0 !dbg !127 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !131, metadata !DIExpression()), !dbg !134
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 2) #5, !dbg !135
  call void @llvm.dbg.value(metadata i8* %2, metadata !132, metadata !DIExpression()), !dbg !134
  %3 = tail call i64 @strlen(i8* %0) #4, !dbg !136
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %0, i64 %3) #5, !dbg !137
  call void @llvm.dbg.value(metadata i8* %4, metadata !133, metadata !DIExpression()), !dbg !134
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %4) #4, !dbg !138
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #5, !dbg !139
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #5, !dbg !140
  ret void, !dbg !141
}

declare !dbg !142 dso_local i64 @strlen(i8*) local_unnamed_addr #3

declare !dbg !145 dso_local void @NSLog(i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %0) local_unnamed_addr #0 !dbg !148 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !150, metadata !DIExpression()), !dbg !152
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 2) #5, !dbg !153
  call void @llvm.dbg.value(metadata i8* %2, metadata !151, metadata !DIExpression()), !dbg !152
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %0) #4, !dbg !154
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #5, !dbg !155
  ret void, !dbg !156
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiii(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 !dbg !62 {
  %8 = alloca %struct.MTLSize, align 8
  %9 = alloca %struct.MTLSize, align 8
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, metadata !72, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i32 %1, metadata !73, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i32 %2, metadata !74, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i32 %3, metadata !75, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i32 %4, metadata !76, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i32 %5, metadata !77, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i32 %6, metadata !78, metadata !DIExpression()), !dbg !157
  %10 = bitcast %struct.MTLSize* %8 to i8*, !dbg !158
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #6, !dbg !158
  call void @llvm.dbg.declare(metadata %struct.MTLSize* %8, metadata !79, metadata !DIExpression()), !dbg !159
  %11 = sext i32 %1 to i64, !dbg !160
  %12 = getelementptr inbounds %struct.MTLSize, %struct.MTLSize* %8, i64 0, i32 0, !dbg !161
  store i64 %11, i64* %12, align 8, !dbg !162, !tbaa !163
  %13 = sext i32 %2 to i64, !dbg !168
  %14 = getelementptr inbounds %struct.MTLSize, %struct.MTLSize* %8, i64 0, i32 1, !dbg !169
  store i64 %13, i64* %14, align 8, !dbg !170, !tbaa !171
  %15 = sext i32 %3 to i64, !dbg !172
  %16 = getelementptr inbounds %struct.MTLSize, %struct.MTLSize* %8, i64 0, i32 2, !dbg !173
  store i64 %15, i64* %16, align 8, !dbg !174, !tbaa !175
  %17 = bitcast %struct.MTLSize* %9 to i8*, !dbg !176
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #6, !dbg !176
  call void @llvm.dbg.declare(metadata %struct.MTLSize* %9, metadata !85, metadata !DIExpression()), !dbg !177
  %18 = sext i32 %4 to i64, !dbg !178
  %19 = getelementptr inbounds %struct.MTLSize, %struct.MTLSize* %9, i64 0, i32 0, !dbg !179
  store i64 %18, i64* %19, align 8, !dbg !180, !tbaa !163
  %20 = sext i32 %5 to i64, !dbg !181
  %21 = getelementptr inbounds %struct.MTLSize, %struct.MTLSize* %9, i64 0, i32 1, !dbg !182
  store i64 %20, i64* %21, align 8, !dbg !183, !tbaa !171
  %22 = sext i32 %6 to i64, !dbg !184
  %23 = getelementptr inbounds %struct.MTLSize, %struct.MTLSize* %9, i64 0, i32 2, !dbg !185
  store i64 %22, i64* %23, align 8, !dbg !186, !tbaa !175
  call void @llvm.dbg.value(metadata void (i8*, i8*, %struct.MTLSize*, %struct.MTLSize*)* bitcast (void ()* @objc_msgSend to void (i8*, i8*, %struct.MTLSize*, %struct.MTLSize*)*), metadata !86, metadata !DIExpression()), !dbg !157
  %24 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*, !dbg !187
  %25 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0)) #4, !dbg !188
  call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %struct.MTLSize*, %struct.MTLSize*)*)(i8* %24, i8* %25, %struct.MTLSize* nonnull %8, %struct.MTLSize* nonnull %9) #4, !dbg !189
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #6, !dbg !190
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #6, !dbg !190
  ret void, !dbg !190
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!93, !94, !95}
!llvm.ident = !{!96}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, imports: !91, splitDebugInlining: false, nameTableKind: None)
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
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "dispatch_threadgroups_method", scope: !62, file: !61, line: 31, baseType: !87)
!61 = !DIFile(filename: "src/runtime/metal_objc_platform_dependent.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!62 = distinct !DISubprogram(name: "dispatch_threadgroups", linkageName: "_ZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiii", scope: !63, file: !61, line: 10, type: !64, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !71)
!63 = !DINamespace(name: "Metal", scope: !7)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !69, !69, !69, !69, !69, !69}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtl_compute_command_encoder", scope: !63, file: !68, line: 11, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Halide7Runtime8Internal5Metal27mtl_compute_command_encoderE")
!68 = !DIFile(filename: "src/runtime/metal_objc_platform_dependent.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !46, line: 11, baseType: !70)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !85, !86}
!72 = !DILocalVariable(name: "encoder", arg: 1, scope: !62, file: !61, line: 10, type: !66)
!73 = !DILocalVariable(name: "blocks_x", arg: 2, scope: !62, file: !61, line: 11, type: !69)
!74 = !DILocalVariable(name: "blocks_y", arg: 3, scope: !62, file: !61, line: 11, type: !69)
!75 = !DILocalVariable(name: "blocks_z", arg: 4, scope: !62, file: !61, line: 11, type: !69)
!76 = !DILocalVariable(name: "threads_x", arg: 5, scope: !62, file: !61, line: 12, type: !69)
!77 = !DILocalVariable(name: "threads_y", arg: 6, scope: !62, file: !61, line: 12, type: !69)
!78 = !DILocalVariable(name: "threads_z", arg: 7, scope: !62, file: !61, line: 12, type: !69)
!79 = !DILocalVariable(name: "threadgroupsPerGrid", scope: !62, file: !61, line: 20, type: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MTLSize", scope: !62, file: !61, line: 14, size: 192, flags: DIFlagTypePassByValue, elements: !81)
!81 = !{!82, !83, !84}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !80, file: !61, line: 15, baseType: !47, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !80, file: !61, line: 16, baseType: !47, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !80, file: !61, line: 17, baseType: !47, size: 64, offset: 128)
!85 = !DILocalVariable(name: "threadsPerThreadgroup", scope: !62, file: !61, line: 25, type: !80)
!86 = !DILocalVariable(name: "method", scope: !62, file: !61, line: 33, type: !60)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !12, !20, !90, !90}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!91 = !{!92}
!92 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !7, file: !46, line: 225)
!93 = !{i32 7, !"Dwarf Version", i32 4}
!94 = !{i32 2, !"Debug Info Version", i32 3}
!95 = !{i32 1, !"wchar_size", i32 4}
!96 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!97 = !DILocation(line: 0, scope: !6)
!98 = !DILocation(line: 45, column: 30, scope: !6)
!99 = !DILocation(line: 45, column: 66, scope: !6)
!100 = !DILocation(line: 45, column: 20, scope: !6)
!101 = !DILocation(line: 46, column: 28, scope: !6)
!102 = !DILocation(line: 46, column: 12, scope: !6)
!103 = !DILocation(line: 47, column: 5, scope: !6)
!104 = !DISubprogram(name: "objc_getClass", scope: !5, file: !5, line: 7, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!105 = !DISubroutineType(types: !106)
!106 = !{!13, !42}
!107 = !DISubprogram(name: "sel_getUid", scope: !5, file: !5, line: 8, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!108 = !DILocation(line: 0, scope: !22)
!109 = !DILocation(line: 53, column: 21, scope: !22)
!110 = !DILocation(line: 53, column: 5, scope: !22)
!111 = !DILocation(line: 54, column: 1, scope: !22)
!112 = !DILocation(line: 0, scope: !29)
!113 = !DILocation(line: 59, column: 20, scope: !29)
!114 = !DILocation(line: 59, column: 5, scope: !29)
!115 = !DILocation(line: 60, column: 1, scope: !29)
!116 = !DILocation(line: 0, scope: !34)
!117 = !DILocation(line: 65, column: 20, scope: !34)
!118 = !DILocation(line: 65, column: 5, scope: !34)
!119 = !DILocation(line: 66, column: 1, scope: !34)
!120 = !DILocation(line: 0, scope: !39)
!121 = !DILocation(line: 72, column: 36, scope: !39)
!122 = !DILocation(line: 72, column: 63, scope: !39)
!123 = !DILocation(line: 72, column: 25, scope: !39)
!124 = !DILocation(line: 74, column: 33, scope: !39)
!125 = !DILocation(line: 74, column: 12, scope: !39)
!126 = !DILocation(line: 74, column: 5, scope: !39)
!127 = distinct !DISubprogram(name: "ns_log_utf8_string", linkageName: "_ZN6Halide7Runtime8Internal18ns_log_utf8_stringEPKc", scope: !7, file: !5, line: 80, type: !128, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !42}
!130 = !{!131, !132, !133}
!131 = !DILocalVariable(name: "string", arg: 1, scope: !127, file: !5, line: 80, type: !42)
!132 = !DILocalVariable(name: "format_string", scope: !127, file: !5, line: 81, type: !12)
!133 = !DILocalVariable(name: "ns_string", scope: !127, file: !5, line: 82, type: !12)
!134 = !DILocation(line: 0, scope: !127)
!135 = !DILocation(line: 81, column: 29, scope: !127)
!136 = !DILocation(line: 82, column: 58, scope: !127)
!137 = !DILocation(line: 82, column: 25, scope: !127)
!138 = !DILocation(line: 83, column: 5, scope: !127)
!139 = !DILocation(line: 84, column: 5, scope: !127)
!140 = !DILocation(line: 85, column: 5, scope: !127)
!141 = !DILocation(line: 86, column: 1, scope: !127)
!142 = !DISubprogram(name: "strlen", scope: !5, file: !5, line: 78, type: !143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!143 = !DISubroutineType(types: !144)
!144 = !{!47, !42}
!145 = !DISubprogram(name: "NSLog", scope: !5, file: !5, line: 35, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !13, null}
!148 = distinct !DISubprogram(name: "ns_log_object", linkageName: "_ZN6Halide7Runtime8Internal13ns_log_objectEPv", scope: !7, file: !5, line: 88, type: !23, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !149)
!149 = !{!150, !151}
!150 = !DILocalVariable(name: "obj", arg: 1, scope: !148, file: !5, line: 88, type: !12)
!151 = !DILocalVariable(name: "format_string", scope: !148, file: !5, line: 89, type: !12)
!152 = !DILocation(line: 0, scope: !148)
!153 = !DILocation(line: 89, column: 29, scope: !148)
!154 = !DILocation(line: 90, column: 5, scope: !148)
!155 = !DILocation(line: 91, column: 5, scope: !148)
!156 = !DILocation(line: 92, column: 1, scope: !148)
!157 = !DILocation(line: 0, scope: !62)
!158 = !DILocation(line: 20, column: 5, scope: !62)
!159 = !DILocation(line: 20, column: 13, scope: !62)
!160 = !DILocation(line: 21, column: 33, scope: !62)
!161 = !DILocation(line: 21, column: 25, scope: !62)
!162 = !DILocation(line: 21, column: 31, scope: !62)
!163 = !{!164, !165, i64 0}
!164 = !{!"_ZTSZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiiiE7MTLSize", !165, i64 0, !165, i64 8, !165, i64 16}
!165 = !{!"long", !166, i64 0}
!166 = !{!"omnipotent char", !167, i64 0}
!167 = !{!"Simple C++ TBAA"}
!168 = !DILocation(line: 22, column: 34, scope: !62)
!169 = !DILocation(line: 22, column: 25, scope: !62)
!170 = !DILocation(line: 22, column: 32, scope: !62)
!171 = !{!164, !165, i64 8}
!172 = !DILocation(line: 23, column: 33, scope: !62)
!173 = !DILocation(line: 23, column: 25, scope: !62)
!174 = !DILocation(line: 23, column: 31, scope: !62)
!175 = !{!164, !165, i64 16}
!176 = !DILocation(line: 25, column: 5, scope: !62)
!177 = !DILocation(line: 25, column: 13, scope: !62)
!178 = !DILocation(line: 26, column: 35, scope: !62)
!179 = !DILocation(line: 26, column: 27, scope: !62)
!180 = !DILocation(line: 26, column: 33, scope: !62)
!181 = !DILocation(line: 27, column: 36, scope: !62)
!182 = !DILocation(line: 27, column: 27, scope: !62)
!183 = !DILocation(line: 27, column: 34, scope: !62)
!184 = !DILocation(line: 28, column: 35, scope: !62)
!185 = !DILocation(line: 28, column: 27, scope: !62)
!186 = !DILocation(line: 28, column: 33, scope: !62)
!187 = !DILocation(line: 34, column: 15, scope: !62)
!188 = !DILocation(line: 34, column: 24, scope: !62)
!189 = !DILocation(line: 34, column: 5, scope: !62)
!190 = !DILocation(line: 51, column: 1, scope: !62)
