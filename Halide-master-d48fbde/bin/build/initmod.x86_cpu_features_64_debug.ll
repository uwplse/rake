; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/x86_cpu_features.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/x86_cpu_features.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::CpuFeatures" = type { [2 x i64], [2 x i64] }

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv(%"struct.Halide::Runtime::Internal::CpuFeatures"* noalias sret(%"struct.Halide::Runtime::Internal::CpuFeatures") align 8 %0) local_unnamed_addr #0 !dbg !119 {
  %2 = alloca [4 x i32], align 4
  %3 = alloca [4 x i32], align 4
  %4 = alloca [4 x i32], align 4
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !124, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !164, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i32 0, metadata !167, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 0, metadata !167, metadata !DIExpression()), !dbg !173
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 0, i64 0, !dbg !174
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 1, i64 0, !dbg !177
  store i64 0, i64* %6, align 8, !dbg !178, !tbaa !179
  call void @llvm.dbg.value(metadata i64 1, metadata !167, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 1, metadata !167, metadata !DIExpression()), !dbg !173
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 0, i64 1, !dbg !174
  store i64 0, i64* %7, align 8, !dbg !183, !tbaa !179
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CpuFeatures", %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, i64 0, i32 1, i64 1, !dbg !177
  store i64 0, i64* %8, align 8, !dbg !178, !tbaa !179
  call void @llvm.dbg.value(metadata i64 2, metadata !167, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !184, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata i32 4, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !184, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i32 5, metadata !187, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !184, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 9, metadata !187, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !184, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i32 7, metadata !187, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !184, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i32 6, metadata !187, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !184, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i32 39, metadata !187, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !184, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i32 40, metadata !187, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !184, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i32 41, metadata !187, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !184, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 42, metadata !187, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !184, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i32 43, metadata !187, metadata !DIExpression()), !dbg !206
  store i64 17042430231280, i64* %5, align 8, !dbg !208, !tbaa !179
  %9 = bitcast [4 x i32]* %2 to i8*, !dbg !209
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #4, !dbg !209
  call void @llvm.dbg.declare(metadata [4 x i32]* %2, metadata !125, metadata !DIExpression()), !dbg !210
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !211
  call void @llvm.dbg.value(metadata i32* %10, metadata !212, metadata !DIExpression()) #4, !dbg !221
  call void @llvm.dbg.value(metadata i32 1, metadata !219, metadata !DIExpression()) #4, !dbg !221
  call void @llvm.dbg.value(metadata i32 0, metadata !220, metadata !DIExpression()) #4, !dbg !221
  store i32 1, i32* %10, align 4, !dbg !223, !tbaa !224
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1, !dbg !226
  store i32 0, i32* %11, align 4, !dbg !227, !tbaa !224
  call void @x86_cpuid_halide(i32* nonnull %10) #5, !dbg !228
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2, !dbg !229
  %13 = load i32, i32* %12, align 4, !dbg !229, !tbaa !224
  call void @llvm.dbg.value(metadata i1 undef, metadata !130, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !230
  call void @llvm.dbg.value(metadata i1 undef, metadata !132, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !230
  call void @llvm.dbg.value(metadata i1 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !230
  call void @llvm.dbg.value(metadata i1 undef, metadata !134, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !230
  call void @llvm.dbg.value(metadata i1 undef, metadata !135, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !230
  %14 = lshr i32 %13, 15, !dbg !231
  %15 = and i32 %14, 16, !dbg !231
  %16 = lshr i32 %13, 23, !dbg !232
  %17 = and i32 %16, 32, !dbg !232
  %18 = or i32 %17, %15, !dbg !232
  %19 = lshr i32 %13, 20, !dbg !233
  %20 = and i32 %19, 512, !dbg !233
  %21 = or i32 %20, %18, !dbg !233
  %22 = lshr i32 %13, 5, !dbg !234
  %23 = and i32 %22, 128, !dbg !234
  %24 = or i32 %23, %21, !dbg !234
  %25 = zext i32 %24 to i64, !dbg !234
  %26 = and i32 %13, 805834752, !dbg !230
  %27 = icmp eq i32 %26, 0, !dbg !230
  br i1 %27, label %29, label %28, !dbg !230

28:                                               ; preds = %1
  store i64 %25, i64* %6, align 8, !dbg !230, !tbaa !179
  br label %29, !dbg !230

29:                                               ; preds = %1, %28
  call void @llvm.dbg.value(metadata i8 1, metadata !136, metadata !DIExpression()), !dbg !230
  %30 = and i32 %13, 1879048192, !dbg !235
  %31 = icmp eq i32 %30, 1879048192, !dbg !235
  br i1 %31, label %32, label %73, !dbg !235

32:                                               ; preds = %29
  %33 = bitcast [4 x i32]* %3 to i8*, !dbg !236
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %33) #4, !dbg !236
  call void @llvm.dbg.declare(metadata [4 x i32]* %3, metadata !137, metadata !DIExpression()), !dbg !237
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !238
  call void @llvm.dbg.value(metadata i32* %34, metadata !212, metadata !DIExpression()) #4, !dbg !239
  call void @llvm.dbg.value(metadata i32 7, metadata !219, metadata !DIExpression()) #4, !dbg !239
  call void @llvm.dbg.value(metadata i32 0, metadata !220, metadata !DIExpression()) #4, !dbg !239
  store i32 7, i32* %34, align 4, !dbg !241, !tbaa !224
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1, !dbg !242
  store i32 0, i32* %35, align 4, !dbg !243, !tbaa !224
  call void @x86_cpuid_halide(i32* nonnull %34) #5, !dbg !244
  call void @llvm.dbg.value(metadata i32 32, metadata !141, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 65536, metadata !144, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 131072, metadata !145, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 67108864, metadata !146, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 134217728, metadata !147, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 268435456, metadata !148, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 1073741824, metadata !149, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 -2147483648, metadata !150, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 2097152, metadata !151, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 2048, metadata !152, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 32, metadata !153, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 268500992, metadata !154, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 469827584, metadata !155, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 -805109760, metadata !156, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 -803012608, metadata !157, metadata !DIExpression()), !dbg !245
  %36 = load i32, i32* %35, align 4, !dbg !246, !tbaa !224
  %37 = and i32 %36, 32, !dbg !248
  %38 = icmp eq i32 %37, 0, !dbg !249
  br i1 %38, label %41, label %39, !dbg !250

39:                                               ; preds = %32
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !251, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i32 6, metadata !254, metadata !DIExpression()), !dbg !255
  %40 = or i64 %25, 64, !dbg !258
  store i64 %40, i64* %6, align 8, !dbg !258, !tbaa !179
  br label %41, !dbg !259

41:                                               ; preds = %39, %32
  %42 = phi i64 [ %40, %39 ], [ %25, %32 ]
  %43 = and i32 %36, 268500992, !dbg !260
  %44 = icmp eq i32 %43, 268500992, !dbg !261
  br i1 %44, label %45, label %72, !dbg !262

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !251, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 39, metadata !254, metadata !DIExpression()), !dbg !263
  %46 = and i32 %36, 469827584, !dbg !265
  %47 = icmp eq i32 %46, 469827584, !dbg !267
  %48 = select i1 %47, i64 1649267441664, i64 549755813888, !dbg !268
  %49 = or i64 %42, %48, !dbg !268
  %50 = and i32 %36, -805109760, !dbg !269
  %51 = icmp eq i32 %50, -805109760, !dbg !271
  %52 = or i64 %49, 2199023255552
  %53 = select i1 %51, i64 %52, i64 %49, !dbg !272
  store i64 %53, i64* %6, align 8, !dbg !273, !tbaa !179
  %54 = and i32 %36, -803012608, !dbg !274
  %55 = icmp eq i32 %54, -803012608, !dbg !275
  br i1 %55, label %56, label %72, !dbg !276

56:                                               ; preds = %45
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !251, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 42, metadata !254, metadata !DIExpression()), !dbg !277
  %57 = or i64 %53, 4398046511104, !dbg !279
  store i64 %57, i64* %6, align 8, !dbg !279, !tbaa !179
  %58 = bitcast [4 x i32]* %4 to i8*, !dbg !280
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %58) #4, !dbg !280
  call void @llvm.dbg.declare(metadata [4 x i32]* %4, metadata !158, metadata !DIExpression()), !dbg !281
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !282
  call void @llvm.dbg.value(metadata i32* %59, metadata !212, metadata !DIExpression()) #4, !dbg !283
  call void @llvm.dbg.value(metadata i32 7, metadata !219, metadata !DIExpression()) #4, !dbg !283
  call void @llvm.dbg.value(metadata i32 1, metadata !220, metadata !DIExpression()) #4, !dbg !283
  store i32 7, i32* %59, align 4, !dbg !285, !tbaa !224
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1, !dbg !286
  store i32 1, i32* %60, align 4, !dbg !287, !tbaa !224
  call void @x86_cpuid_halide(i32* nonnull %59) #5, !dbg !288
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2, !dbg !289
  %62 = load i32, i32* %61, align 4, !dbg !289, !tbaa !224
  %63 = and i32 %62, 2048, !dbg !291
  %64 = icmp eq i32 %63, 0, !dbg !292
  br i1 %64, label %71, label %65, !dbg !293

65:                                               ; preds = %56
  %66 = load i32, i32* %59, align 4, !dbg !294, !tbaa !224
  %67 = and i32 %66, 32, !dbg !295
  %68 = icmp eq i32 %67, 0, !dbg !296
  br i1 %68, label %71, label %69, !dbg !297

69:                                               ; preds = %65
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %0, metadata !251, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i32 43, metadata !254, metadata !DIExpression()), !dbg !298
  %70 = or i64 %53, 13194139533312, !dbg !301
  store i64 %70, i64* %6, align 8, !dbg !301, !tbaa !179
  br label %71, !dbg !302

71:                                               ; preds = %69, %65, %56
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %58) #4, !dbg !303
  br label %72, !dbg !304

72:                                               ; preds = %45, %71, %41
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %33) #4, !dbg !305
  br label %73, !dbg !306

73:                                               ; preds = %29, %72
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #4, !dbg !307
  ret void, !dbg !307
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !308 dso_local void @x86_cpuid_halide(i32*) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!115, !116, !117}
!llvm.ident = !{!118}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !80, imports: !113, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/x86_cpu_features.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
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
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!102 = !DISubprogram(name: "set_available", linkageName: "_ZN6Halide7Runtime8Internal11CpuFeatures13set_availableEi", scope: !84, file: !85, line: 21, type: !99, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!103 = !DISubprogram(name: "test_known", linkageName: "_ZNK6Halide7Runtime8Internal11CpuFeatures10test_knownEi", scope: !84, file: !85, line: 25, type: !104, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !107, !92}
!106 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!119 = distinct !DISubprogram(name: "halide_get_cpu_features", linkageName: "_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv", scope: !86, file: !120, line: 20, type: !121, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !123)
!120 = !DIFile(filename: "src/runtime/x86_cpu_features.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!121 = !DISubroutineType(types: !122)
!122 = !{!84}
!123 = !{!124, !125, !130, !132, !133, !134, !135, !136, !137, !141, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!124 = !DILocalVariable(name: "features", scope: !119, file: !120, line: 21, type: !84)
!125 = !DILocalVariable(name: "info", scope: !119, file: !120, line: 33, type: !126)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !128)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !82, line: 11, baseType: !92)
!128 = !{!129}
!129 = !DISubrange(count: 4)
!130 = !DILocalVariable(name: "have_sse41", scope: !119, file: !120, line: 36, type: !131)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!132 = !DILocalVariable(name: "have_avx", scope: !119, file: !120, line: 37, type: !131)
!133 = !DILocalVariable(name: "have_f16c", scope: !119, file: !120, line: 38, type: !131)
!134 = !DILocalVariable(name: "have_rdrand", scope: !119, file: !120, line: 39, type: !131)
!135 = !DILocalVariable(name: "have_fma", scope: !119, file: !120, line: 40, type: !131)
!136 = !DILocalVariable(name: "use_64_bits", scope: !119, file: !120, line: 54, type: !131)
!137 = !DILocalVariable(name: "info2", scope: !138, file: !120, line: 56, type: !140)
!138 = distinct !DILexicalBlock(scope: !139, file: !120, line: 55, column: 62)
!139 = distinct !DILexicalBlock(scope: !119, file: !120, line: 55, column: 9)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 128, elements: !128)
!141 = !DILocalVariable(name: "avx2", scope: !138, file: !120, line: 58, type: !142)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !82, line: 12, baseType: !5)
!144 = !DILocalVariable(name: "avx512f", scope: !138, file: !120, line: 59, type: !142)
!145 = !DILocalVariable(name: "avx512dq", scope: !138, file: !120, line: 60, type: !142)
!146 = !DILocalVariable(name: "avx512pf", scope: !138, file: !120, line: 61, type: !142)
!147 = !DILocalVariable(name: "avx512er", scope: !138, file: !120, line: 62, type: !142)
!148 = !DILocalVariable(name: "avx512cd", scope: !138, file: !120, line: 63, type: !142)
!149 = !DILocalVariable(name: "avx512bw", scope: !138, file: !120, line: 64, type: !142)
!150 = !DILocalVariable(name: "avx512vl", scope: !138, file: !120, line: 65, type: !142)
!151 = !DILocalVariable(name: "avx512ifma", scope: !138, file: !120, line: 66, type: !142)
!152 = !DILocalVariable(name: "avx512vnni", scope: !138, file: !120, line: 67, type: !142)
!153 = !DILocalVariable(name: "avx512bf16", scope: !138, file: !120, line: 68, type: !142)
!154 = !DILocalVariable(name: "avx512", scope: !138, file: !120, line: 69, type: !142)
!155 = !DILocalVariable(name: "avx512_knl", scope: !138, file: !120, line: 70, type: !142)
!156 = !DILocalVariable(name: "avx512_skylake", scope: !138, file: !120, line: 71, type: !142)
!157 = !DILocalVariable(name: "avx512_cannonlake", scope: !138, file: !120, line: 72, type: !142)
!158 = !DILocalVariable(name: "info3", scope: !159, file: !120, line: 87, type: !126)
!159 = distinct !DILexicalBlock(scope: !160, file: !120, line: 84, column: 70)
!160 = distinct !DILexicalBlock(scope: !161, file: !120, line: 84, column: 17)
!161 = distinct !DILexicalBlock(scope: !162, file: !120, line: 76, column: 44)
!162 = distinct !DILexicalBlock(scope: !138, file: !120, line: 76, column: 13)
!163 = !DILocation(line: 21, column: 17, scope: !119)
!164 = !DILocalVariable(name: "this", arg: 1, scope: !165, type: !170, flags: DIFlagArtificial | DIFlagObjectPointer)
!165 = distinct !DISubprogram(name: "CpuFeatures", linkageName: "_ZN6Halide7Runtime8Internal11CpuFeaturesC2Ev", scope: !84, file: !85, line: 34, type: !111, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !110, retainedNodes: !166)
!166 = !{!164, !167}
!167 = !DILocalVariable(name: "i", scope: !168, file: !85, line: 37, type: !92)
!168 = distinct !DILexicalBlock(scope: !169, file: !85, line: 37, column: 9)
!169 = distinct !DILexicalBlock(scope: !165, file: !85, line: 34, column: 19)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!171 = !DILocation(line: 0, scope: !165, inlinedAt: !172)
!172 = distinct !DILocation(line: 21, column: 17, scope: !119)
!173 = !DILocation(line: 0, scope: !168, inlinedAt: !172)
!174 = !DILocation(line: 38, column: 13, scope: !175, inlinedAt: !172)
!175 = distinct !DILexicalBlock(scope: !176, file: !85, line: 37, column: 46)
!176 = distinct !DILexicalBlock(scope: !168, file: !85, line: 37, column: 9)
!177 = !DILocation(line: 39, column: 13, scope: !175, inlinedAt: !172)
!178 = !DILocation(line: 39, column: 26, scope: !175, inlinedAt: !172)
!179 = !{!180, !180, i64 0}
!180 = !{!"long long", !181, i64 0}
!181 = !{!"omnipotent char", !182, i64 0}
!182 = !{!"Simple C++ TBAA"}
!183 = !DILocation(line: 38, column: 22, scope: !175, inlinedAt: !172)
!184 = !DILocalVariable(name: "this", arg: 1, scope: !185, type: !170, flags: DIFlagArtificial | DIFlagObjectPointer)
!185 = distinct !DISubprogram(name: "set_known", linkageName: "_ZN6Halide7Runtime8Internal11CpuFeatures9set_knownEi", scope: !84, file: !85, line: 17, type: !99, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !98, retainedNodes: !186)
!186 = !{!184, !187}
!187 = !DILocalVariable(name: "i", arg: 2, scope: !185, file: !85, line: 17, type: !92)
!188 = !DILocation(line: 0, scope: !185, inlinedAt: !189)
!189 = distinct !DILocation(line: 22, column: 14, scope: !119)
!190 = !DILocation(line: 0, scope: !185, inlinedAt: !191)
!191 = distinct !DILocation(line: 23, column: 14, scope: !119)
!192 = !DILocation(line: 0, scope: !185, inlinedAt: !193)
!193 = distinct !DILocation(line: 24, column: 14, scope: !119)
!194 = !DILocation(line: 0, scope: !185, inlinedAt: !195)
!195 = distinct !DILocation(line: 25, column: 14, scope: !119)
!196 = !DILocation(line: 0, scope: !185, inlinedAt: !197)
!197 = distinct !DILocation(line: 26, column: 14, scope: !119)
!198 = !DILocation(line: 0, scope: !185, inlinedAt: !199)
!199 = distinct !DILocation(line: 27, column: 14, scope: !119)
!200 = !DILocation(line: 0, scope: !185, inlinedAt: !201)
!201 = distinct !DILocation(line: 28, column: 14, scope: !119)
!202 = !DILocation(line: 0, scope: !185, inlinedAt: !203)
!203 = distinct !DILocation(line: 29, column: 14, scope: !119)
!204 = !DILocation(line: 0, scope: !185, inlinedAt: !205)
!205 = distinct !DILocation(line: 30, column: 14, scope: !119)
!206 = !DILocation(line: 0, scope: !185, inlinedAt: !207)
!207 = distinct !DILocation(line: 31, column: 14, scope: !119)
!208 = !DILocation(line: 18, column: 23, scope: !185, inlinedAt: !207)
!209 = !DILocation(line: 33, column: 5, scope: !119)
!210 = !DILocation(line: 33, column: 13, scope: !119)
!211 = !DILocation(line: 34, column: 11, scope: !119)
!212 = !DILocalVariable(name: "info", arg: 1, scope: !213, file: !120, line: 12, type: !217)
!213 = distinct !DISubprogram(name: "cpuid", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_15cpuidEPiii", scope: !214, file: !120, line: 12, type: !215, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !218)
!214 = !DINamespace(scope: !86)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !217, !127, !127}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!218 = !{!212, !219, !220}
!219 = !DILocalVariable(name: "fn_id", arg: 2, scope: !213, file: !120, line: 12, type: !127)
!220 = !DILocalVariable(name: "extra", arg: 3, scope: !213, file: !120, line: 12, type: !127)
!221 = !DILocation(line: 0, scope: !213, inlinedAt: !222)
!222 = distinct !DILocation(line: 34, column: 5, scope: !119)
!223 = !DILocation(line: 13, column: 13, scope: !213, inlinedAt: !222)
!224 = !{!225, !225, i64 0}
!225 = !{!"int", !181, i64 0}
!226 = !DILocation(line: 14, column: 5, scope: !213, inlinedAt: !222)
!227 = !DILocation(line: 14, column: 13, scope: !213, inlinedAt: !222)
!228 = !DILocation(line: 15, column: 5, scope: !213, inlinedAt: !222)
!229 = !DILocation(line: 36, column: 30, scope: !119)
!230 = !DILocation(line: 0, scope: !119)
!231 = !DILocation(line: 41, column: 9, scope: !119)
!232 = !DILocation(line: 44, column: 9, scope: !119)
!233 = !DILocation(line: 47, column: 9, scope: !119)
!234 = !DILocation(line: 50, column: 9, scope: !119)
!235 = !DILocation(line: 55, column: 33, scope: !139)
!236 = !DILocation(line: 56, column: 9, scope: !138)
!237 = !DILocation(line: 56, column: 13, scope: !138)
!238 = !DILocation(line: 57, column: 15, scope: !138)
!239 = !DILocation(line: 0, scope: !213, inlinedAt: !240)
!240 = distinct !DILocation(line: 57, column: 9, scope: !138)
!241 = !DILocation(line: 13, column: 13, scope: !213, inlinedAt: !240)
!242 = !DILocation(line: 14, column: 5, scope: !213, inlinedAt: !240)
!243 = !DILocation(line: 14, column: 13, scope: !213, inlinedAt: !240)
!244 = !DILocation(line: 15, column: 5, scope: !213, inlinedAt: !240)
!245 = !DILocation(line: 0, scope: !138)
!246 = !DILocation(line: 73, column: 14, scope: !247)
!247 = distinct !DILexicalBlock(scope: !138, file: !120, line: 73, column: 13)
!248 = !DILocation(line: 73, column: 23, scope: !247)
!249 = !DILocation(line: 73, column: 31, scope: !247)
!250 = !DILocation(line: 73, column: 13, scope: !138)
!251 = !DILocalVariable(name: "this", arg: 1, scope: !252, type: !170, flags: DIFlagArtificial | DIFlagObjectPointer)
!252 = distinct !DISubprogram(name: "set_available", linkageName: "_ZN6Halide7Runtime8Internal11CpuFeatures13set_availableEi", scope: !84, file: !85, line: 21, type: !99, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !102, retainedNodes: !253)
!253 = !{!251, !254}
!254 = !DILocalVariable(name: "i", arg: 2, scope: !252, file: !85, line: 21, type: !92)
!255 = !DILocation(line: 0, scope: !252, inlinedAt: !256)
!256 = distinct !DILocation(line: 74, column: 22, scope: !257)
!257 = distinct !DILexicalBlock(scope: !247, file: !120, line: 73, column: 40)
!258 = !DILocation(line: 22, column: 27, scope: !252, inlinedAt: !256)
!259 = !DILocation(line: 75, column: 9, scope: !257)
!260 = !DILocation(line: 76, column: 23, scope: !162)
!261 = !DILocation(line: 76, column: 33, scope: !162)
!262 = !DILocation(line: 76, column: 13, scope: !138)
!263 = !DILocation(line: 0, scope: !252, inlinedAt: !264)
!264 = distinct !DILocation(line: 77, column: 22, scope: !161)
!265 = !DILocation(line: 78, column: 27, scope: !266)
!266 = distinct !DILexicalBlock(scope: !161, file: !120, line: 78, column: 17)
!267 = !DILocation(line: 78, column: 41, scope: !266)
!268 = !DILocation(line: 78, column: 17, scope: !161)
!269 = !DILocation(line: 81, column: 27, scope: !270)
!270 = distinct !DILexicalBlock(scope: !161, file: !120, line: 81, column: 17)
!271 = !DILocation(line: 81, column: 45, scope: !270)
!272 = !DILocation(line: 81, column: 17, scope: !161)
!273 = !DILocation(line: 0, scope: !161)
!274 = !DILocation(line: 84, column: 27, scope: !160)
!275 = !DILocation(line: 84, column: 48, scope: !160)
!276 = !DILocation(line: 84, column: 17, scope: !161)
!277 = !DILocation(line: 0, scope: !252, inlinedAt: !278)
!278 = distinct !DILocation(line: 85, column: 26, scope: !159)
!279 = !DILocation(line: 22, column: 27, scope: !252, inlinedAt: !278)
!280 = !DILocation(line: 87, column: 17, scope: !159)
!281 = !DILocation(line: 87, column: 25, scope: !159)
!282 = !DILocation(line: 88, column: 23, scope: !159)
!283 = !DILocation(line: 0, scope: !213, inlinedAt: !284)
!284 = distinct !DILocation(line: 88, column: 17, scope: !159)
!285 = !DILocation(line: 13, column: 13, scope: !213, inlinedAt: !284)
!286 = !DILocation(line: 14, column: 5, scope: !213, inlinedAt: !284)
!287 = !DILocation(line: 14, column: 13, scope: !213, inlinedAt: !284)
!288 = !DILocation(line: 15, column: 5, scope: !213, inlinedAt: !284)
!289 = !DILocation(line: 89, column: 22, scope: !290)
!290 = distinct !DILexicalBlock(scope: !159, file: !120, line: 89, column: 21)
!291 = !DILocation(line: 89, column: 31, scope: !290)
!292 = !DILocation(line: 89, column: 45, scope: !290)
!293 = !DILocation(line: 89, column: 59, scope: !290)
!294 = !DILocation(line: 90, column: 22, scope: !290)
!295 = !DILocation(line: 90, column: 31, scope: !290)
!296 = !DILocation(line: 90, column: 45, scope: !290)
!297 = !DILocation(line: 89, column: 21, scope: !159)
!298 = !DILocation(line: 0, scope: !252, inlinedAt: !299)
!299 = distinct !DILocation(line: 91, column: 30, scope: !300)
!300 = distinct !DILexicalBlock(scope: !290, file: !120, line: 90, column: 60)
!301 = !DILocation(line: 22, column: 27, scope: !252, inlinedAt: !299)
!302 = !DILocation(line: 92, column: 17, scope: !300)
!303 = !DILocation(line: 93, column: 13, scope: !160)
!304 = !DILocation(line: 93, column: 13, scope: !159)
!305 = !DILocation(line: 95, column: 5, scope: !139)
!306 = !DILocation(line: 95, column: 5, scope: !138)
!307 = !DILocation(line: 97, column: 1, scope: !119)
!308 = !DISubprogram(name: "x86_cpuid_halide", scope: !120, file: !120, line: 8, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !312)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!312 = !{}
