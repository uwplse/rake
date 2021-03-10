; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/powerpc_cpu_features.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/powerpc_cpu_features.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"struct.Halide::Runtime::Internal::CpuFeatures" = type { [2 x i64], [2 x i64] }

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv(%"struct.Halide::Runtime::Internal::CpuFeatures"* noalias sret(%"struct.Halide::Runtime::Internal::CpuFeatures") align 8 %0) local_unnamed_addr #0 !dbg !119 {
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !124, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !130, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i32 0, metadata !133, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata i32 0, metadata !133, metadata !DIExpression()), !dbg !139
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i32 0, i32 0, i32 0, !dbg !140
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i32 0, i32 1, i32 0, !dbg !143
  store i64 0, i64* %3, align 8, !dbg !144, !tbaa !145
  call void @llvm.dbg.value(metadata i32 1, metadata !133, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata i32 1, metadata !133, metadata !DIExpression()), !dbg !139
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i32 0, i32 0, i32 1, !dbg !140
  store i64 0, i64* %4, align 8, !dbg !149, !tbaa !145
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i32 0, i32 1, i32 1, !dbg !143
  store i64 0, i64* %5, align 8, !dbg !144, !tbaa !145
  call void @llvm.dbg.value(metadata i32 2, metadata !133, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !150, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i32 12, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !150, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata i32 13, metadata !153, metadata !DIExpression()), !dbg !156
  store i64 12288, i64* %2, align 8, !dbg !158, !tbaa !145
  %6 = tail call i32 @getauxval(i32 16) #3, !dbg !159
  call void @llvm.dbg.value(metadata i32 %6, metadata !125, metadata !DIExpression()), !dbg !160
  %7 = tail call i32 @getauxval(i32 26) #3, !dbg !161
  call void @llvm.dbg.value(metadata i32 %7, metadata !128, metadata !DIExpression()), !dbg !160
  %8 = and i32 %6, 128, !dbg !162
  %9 = icmp eq i32 %8, 0, !dbg !164
  %10 = icmp sgt i32 %7, -1, !dbg !165
  %11 = and i1 %9, %10, !dbg !167
  br i1 %11, label %15, label %12, !dbg !167

12:                                               ; preds = %1
  %13 = select i1 %9, i64 8192, i64 12288, !dbg !168
  %14 = select i1 %10, i64 4096, i64 %13, !dbg !169
  store i64 %14, i64* %3, align 8, !dbg !167, !tbaa !145
  br label %15, !dbg !167

15:                                               ; preds = %1, %12
  ret void, !dbg !167
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !170 dso_local i32 @getauxval(i32) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!115, !116, !117}
!llvm.ident = !{!118}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !80, imports: !113, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/powerpc_cpu_features.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_target_feature_t", file: !4, line: 1253, baseType: !5, size: 32, elements: !6, identifier: "_ZTS23halide_target_feature_t")
!4 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!7 = !DIEnumerator(name: "halide_target_feature_jit", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "halide_target_feature_debug", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "halide_target_feature_no_asserts", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "halide_target_feature_no_bounds_query", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "halide_target_feature_sse41", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "halide_target_feature_avx", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "halide_target_feature_avx2", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "halide_target_feature_fma", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "halide_target_feature_fma4", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "halide_target_feature_f16c", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "halide_target_feature_armv7s", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "halide_target_feature_no_neon", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "halide_target_feature_vsx", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "halide_target_feature_power_arch_2_07", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "halide_target_feature_cuda", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "halide_target_feature_cuda_capability30", value: 15, isUnsigned: true)
!23 = !DIEnumerator(name: "halide_target_feature_cuda_capability32", value: 16, isUnsigned: true)
!24 = !DIEnumerator(name: "halide_target_feature_cuda_capability35", value: 17, isUnsigned: true)
!25 = !DIEnumerator(name: "halide_target_feature_cuda_capability50", value: 18, isUnsigned: true)
!26 = !DIEnumerator(name: "halide_target_feature_cuda_capability61", value: 19, isUnsigned: true)
!27 = !DIEnumerator(name: "halide_target_feature_cuda_capability70", value: 20, isUnsigned: true)
!28 = !DIEnumerator(name: "halide_target_feature_cuda_capability75", value: 21, isUnsigned: true)
!29 = !DIEnumerator(name: "halide_target_feature_cuda_capability80", value: 22, isUnsigned: true)
!30 = !DIEnumerator(name: "halide_target_feature_opencl", value: 23, isUnsigned: true)
!31 = !DIEnumerator(name: "halide_target_feature_cl_doubles", value: 24, isUnsigned: true)
!32 = !DIEnumerator(name: "halide_target_feature_cl_atomic64", value: 25, isUnsigned: true)
!33 = !DIEnumerator(name: "halide_target_feature_openglcompute", value: 26, isUnsigned: true)
!34 = !DIEnumerator(name: "halide_target_feature_user_context", value: 27, isUnsigned: true)
!35 = !DIEnumerator(name: "halide_target_feature_matlab", value: 28, isUnsigned: true)
!36 = !DIEnumerator(name: "halide_target_feature_profile", value: 29, isUnsigned: true)
!37 = !DIEnumerator(name: "halide_target_feature_no_runtime", value: 30, isUnsigned: true)
!38 = !DIEnumerator(name: "halide_target_feature_metal", value: 31, isUnsigned: true)
!39 = !DIEnumerator(name: "halide_target_feature_c_plus_plus_mangling", value: 32, isUnsigned: true)
!40 = !DIEnumerator(name: "halide_target_feature_large_buffers", value: 33, isUnsigned: true)
!41 = !DIEnumerator(name: "halide_target_feature_hvx_128", value: 34, isUnsigned: true)
!42 = !DIEnumerator(name: "halide_target_feature_hvx_v62", value: 35, isUnsigned: true)
!43 = !DIEnumerator(name: "halide_target_feature_fuzz_float_stores", value: 36, isUnsigned: true)
!44 = !DIEnumerator(name: "halide_target_feature_soft_float_abi", value: 37, isUnsigned: true)
!45 = !DIEnumerator(name: "halide_target_feature_msan", value: 38, isUnsigned: true)
!46 = !DIEnumerator(name: "halide_target_feature_avx512", value: 39, isUnsigned: true)
!47 = !DIEnumerator(name: "halide_target_feature_avx512_knl", value: 40, isUnsigned: true)
!48 = !DIEnumerator(name: "halide_target_feature_avx512_skylake", value: 41, isUnsigned: true)
!49 = !DIEnumerator(name: "halide_target_feature_avx512_cannonlake", value: 42, isUnsigned: true)
!50 = !DIEnumerator(name: "halide_target_feature_avx512_sapphirerapids", value: 43, isUnsigned: true)
!51 = !DIEnumerator(name: "halide_target_feature_hvx_use_shared_object", value: 44, isUnsigned: true)
!52 = !DIEnumerator(name: "halide_target_feature_trace_loads", value: 45, isUnsigned: true)
!53 = !DIEnumerator(name: "halide_target_feature_trace_stores", value: 46, isUnsigned: true)
!54 = !DIEnumerator(name: "halide_target_feature_trace_realizations", value: 47, isUnsigned: true)
!55 = !DIEnumerator(name: "halide_target_feature_trace_pipeline", value: 48, isUnsigned: true)
!56 = !DIEnumerator(name: "halide_target_feature_hvx_v65", value: 49, isUnsigned: true)
!57 = !DIEnumerator(name: "halide_target_feature_hvx_v66", value: 50, isUnsigned: true)
!58 = !DIEnumerator(name: "halide_target_feature_cl_half", value: 51, isUnsigned: true)
!59 = !DIEnumerator(name: "halide_target_feature_strict_float", value: 52, isUnsigned: true)
!60 = !DIEnumerator(name: "halide_target_feature_tsan", value: 53, isUnsigned: true)
!61 = !DIEnumerator(name: "halide_target_feature_asan", value: 54, isUnsigned: true)
!62 = !DIEnumerator(name: "halide_target_feature_d3d12compute", value: 55, isUnsigned: true)
!63 = !DIEnumerator(name: "halide_target_feature_check_unsafe_promises", value: 56, isUnsigned: true)
!64 = !DIEnumerator(name: "halide_target_feature_hexagon_dma", value: 57, isUnsigned: true)
!65 = !DIEnumerator(name: "halide_target_feature_embed_bitcode", value: 58, isUnsigned: true)
!66 = !DIEnumerator(name: "halide_target_feature_enable_llvm_loop_opt", value: 59, isUnsigned: true)
!67 = !DIEnumerator(name: "halide_target_feature_disable_llvm_loop_opt", value: 60, isUnsigned: true)
!68 = !DIEnumerator(name: "halide_target_feature_wasm_simd128", value: 61, isUnsigned: true)
!69 = !DIEnumerator(name: "halide_target_feature_wasm_signext", value: 62, isUnsigned: true)
!70 = !DIEnumerator(name: "halide_target_feature_wasm_sat_float_to_int", value: 63, isUnsigned: true)
!71 = !DIEnumerator(name: "halide_target_feature_wasm_threads", value: 64, isUnsigned: true)
!72 = !DIEnumerator(name: "halide_target_feature_wasm_bulk_memory", value: 65, isUnsigned: true)
!73 = !DIEnumerator(name: "halide_target_feature_sve", value: 66, isUnsigned: true)
!74 = !DIEnumerator(name: "halide_target_feature_sve2", value: 67, isUnsigned: true)
!75 = !DIEnumerator(name: "halide_target_feature_egl", value: 68, isUnsigned: true)
!76 = !DIEnumerator(name: "halide_target_feature_arm_dot_prod", value: 69, isUnsigned: true)
!77 = !DIEnumerator(name: "halide_llvm_large_code_model", value: 70, isUnsigned: true)
!78 = !DIEnumerator(name: "halide_target_feature_rvv", value: 71, isUnsigned: true)
!79 = !DIEnumerator(name: "halide_target_feature_end", value: 72, isUnsigned: true)
!80 = !{!81, !84}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !82, line: 10, baseType: !83)
!82 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!83 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CpuFeatures", scope: !86, file: !85, line: 14, size: 256, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !89, identifier: "_ZTSN6Halide7Runtime8Internal11CpuFeaturesE")
!85 = !DIFile(filename: "src/runtime/cpu_features.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!86 = !DINamespace(name: "Internal", scope: !87)
!87 = !DINamespace(name: "Runtime", scope: !88)
!88 = !DINamespace(name: "Halide", scope: null)
!89 = !{!90, !93, !97, !98, !102, !103, !109, !110}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "kWordCount", scope: !84, file: !85, line: 15, baseType: !91, flags: DIFlagStaticMember, extraData: i32 2)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "known", scope: !84, file: !85, line: 43, baseType: !94, size: 128)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 2)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !84, file: !85, line: 44, baseType: !94, size: 128, offset: 128)
!98 = !DISubprogram(name: "set_known", linkageName: "_ZN6Halide7Runtime8Internal11CpuFeatures9set_knownEi", scope: !84, file: !85, line: 17, type: !99, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !101, !92}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!102 = !DISubprogram(name: "set_available", linkageName: "_ZN6Halide7Runtime8Internal11CpuFeatures13set_availableEi", scope: !84, file: !85, line: 21, type: !99, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!103 = !DISubprogram(name: "test_known", linkageName: "_ZNK6Halide7Runtime8Internal11CpuFeatures10test_knownEi", scope: !84, file: !85, line: 25, type: !104, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !107, !92}
!106 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!109 = !DISubprogram(name: "test_available", linkageName: "_ZNK6Halide7Runtime8Internal11CpuFeatures14test_availableEi", scope: !84, file: !85, line: 29, type: !104, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DISubprogram(name: "CpuFeatures", scope: !84, file: !85, line: 34, type: !111, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !101}
!113 = !{!114}
!114 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !86, file: !82, line: 225)
!115 = !{i32 7, !"Dwarf Version", i32 4}
!116 = !{i32 2, !"Debug Info Version", i32 3}
!117 = !{i32 1, !"wchar_size", i32 4}
!118 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!119 = distinct !DISubprogram(name: "halide_get_cpu_features", linkageName: "_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv", scope: !86, file: !120, line: 17, type: !121, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !123)
!120 = !DIFile(filename: "src/runtime/powerpc_cpu_features.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!121 = !DISubroutineType(types: !122)
!122 = !{!84}
!123 = !{!124, !125, !128}
!124 = !DILocalVariable(name: "features", scope: !119, file: !120, line: 18, type: !84)
!125 = !DILocalVariable(name: "hwcap", scope: !119, file: !120, line: 22, type: !126)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!128 = !DILocalVariable(name: "hwcap2", scope: !119, file: !120, line: 23, type: !126)
!129 = !DILocation(line: 18, column: 17, scope: !119)
!130 = !DILocalVariable(name: "this", arg: 1, scope: !131, type: !136, flags: DIFlagArtificial | DIFlagObjectPointer)
!131 = distinct !DISubprogram(name: "CpuFeatures", linkageName: "_ZN6Halide7Runtime8Internal11CpuFeaturesC2Ev", scope: !84, file: !85, line: 34, type: !111, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !110, retainedNodes: !132)
!132 = !{!130, !133}
!133 = !DILocalVariable(name: "i", scope: !134, file: !85, line: 37, type: !92)
!134 = distinct !DILexicalBlock(scope: !135, file: !85, line: 37, column: 9)
!135 = distinct !DILexicalBlock(scope: !131, file: !85, line: 34, column: 19)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 32)
!137 = !DILocation(line: 0, scope: !131, inlinedAt: !138)
!138 = distinct !DILocation(line: 18, column: 17, scope: !119)
!139 = !DILocation(line: 0, scope: !134, inlinedAt: !138)
!140 = !DILocation(line: 38, column: 13, scope: !141, inlinedAt: !138)
!141 = distinct !DILexicalBlock(scope: !142, file: !85, line: 37, column: 46)
!142 = distinct !DILexicalBlock(scope: !134, file: !85, line: 37, column: 9)
!143 = !DILocation(line: 39, column: 13, scope: !141, inlinedAt: !138)
!144 = !DILocation(line: 39, column: 26, scope: !141, inlinedAt: !138)
!145 = !{!146, !146, i64 0}
!146 = !{!"long long", !147, i64 0}
!147 = !{!"omnipotent char", !148, i64 0}
!148 = !{!"Simple C++ TBAA"}
!149 = !DILocation(line: 38, column: 22, scope: !141, inlinedAt: !138)
!150 = !DILocalVariable(name: "this", arg: 1, scope: !151, type: !136, flags: DIFlagArtificial | DIFlagObjectPointer)
!151 = distinct !DISubprogram(name: "set_known", linkageName: "_ZN6Halide7Runtime8Internal11CpuFeatures9set_knownEi", scope: !84, file: !85, line: 17, type: !99, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !98, retainedNodes: !152)
!152 = !{!150, !153}
!153 = !DILocalVariable(name: "i", arg: 2, scope: !151, file: !85, line: 17, type: !92)
!154 = !DILocation(line: 0, scope: !151, inlinedAt: !155)
!155 = distinct !DILocation(line: 19, column: 14, scope: !119)
!156 = !DILocation(line: 0, scope: !151, inlinedAt: !157)
!157 = distinct !DILocation(line: 20, column: 14, scope: !119)
!158 = !DILocation(line: 18, column: 23, scope: !151, inlinedAt: !157)
!159 = !DILocation(line: 22, column: 33, scope: !119)
!160 = !DILocation(line: 0, scope: !119)
!161 = !DILocation(line: 23, column: 34, scope: !119)
!162 = !DILocation(line: 25, column: 15, scope: !163)
!163 = distinct !DILexicalBlock(scope: !119, file: !120, line: 25, column: 9)
!164 = !DILocation(line: 25, column: 9, scope: !163)
!165 = !DILocation(line: 28, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !119, file: !120, line: 28, column: 9)
!167 = !DILocation(line: 32, column: 1, scope: !119)
!168 = !DILocation(line: 25, column: 9, scope: !119)
!169 = !DILocation(line: 28, column: 9, scope: !119)
!170 = !DISubprogram(name: "getauxval", scope: !120, file: !120, line: 11, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !173)
!171 = !DISubroutineType(types: !172)
!172 = !{!127, !127}
!173 = !{}
