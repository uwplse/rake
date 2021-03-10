; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/float16_t.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/float16_t.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local float @halide_float16_bits_to_float(i16 zeroext %0) local_unnamed_addr #0 !dbg !15 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !23, metadata !DIExpression()), !dbg !44
  %2 = zext i16 %0 to i32, !dbg !45
  call void @llvm.dbg.value(metadata i16 %0, metadata !24, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 18446744071562067968, DW_OP_and, DW_OP_stack_value)), !dbg !44
  %3 = and i32 %2, 1023, !dbg !46
  call void @llvm.dbg.value(metadata i32 %3, metadata !32, metadata !DIExpression()), !dbg !44
  %4 = lshr i32 %2, 10, !dbg !47
  %5 = and i32 %4, 31, !dbg !47
  call void @llvm.dbg.value(metadata i32 %5, metadata !33, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i32 %5, metadata !33, metadata !DIExpression(DW_OP_constu, 15, DW_OP_minus, DW_OP_stack_value)), !dbg !44
  %6 = icmp eq i32 %5, 0, !dbg !48
  %7 = icmp ne i32 %3, 0
  %8 = and i1 %7, %6, !dbg !49
  br i1 %8, label %9, label %19, !dbg !49

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %3, metadata !35, metadata !DIExpression()), !dbg !50
  %10 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 true), !dbg !51, !range !52
  call void @llvm.dbg.value(metadata i32 %10, metadata !38, metadata !DIExpression()), !dbg !50
  %11 = xor i32 %10, 31, !dbg !53
  call void @llvm.dbg.value(metadata i32 %11, metadata !39, metadata !DIExpression()), !dbg !50
  %12 = shl nuw i32 1, %11, !dbg !54
  %13 = xor i32 %12, -1, !dbg !55
  %14 = and i32 %3, %13, !dbg !56
  call void @llvm.dbg.value(metadata i32 %14, metadata !35, metadata !DIExpression()), !dbg !50
  %15 = sub nsw i32 23, %11, !dbg !57
  %16 = shl i32 %14, %15, !dbg !58
  call void @llvm.dbg.value(metadata i32 %16, metadata !35, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i32 undef, metadata !40, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i32 undef, metadata !41, metadata !DIExpression()), !dbg !50
  %17 = mul nsw i32 %10, -8388608, !dbg !59
  %18 = add i32 %17, 1124073472, !dbg !59
  call void @llvm.dbg.value(metadata i32 undef, metadata !27, metadata !DIExpression()), !dbg !44
  br label %26, !dbg !60

19:                                               ; preds = %1
  %20 = shl nuw nsw i32 %3, 13, !dbg !61
  call void @llvm.dbg.value(metadata i32 %20, metadata !32, metadata !DIExpression()), !dbg !44
  br i1 %6, label %26, label %21, !dbg !62

21:                                               ; preds = %19
  %22 = icmp eq i32 %5, 31, !dbg !63
  br i1 %22, label %26, label %23, !dbg !66

23:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i32 %5, metadata !42, metadata !DIExpression(DW_OP_plus_uconst, 112, DW_OP_stack_value)), !dbg !67
  %24 = shl nuw nsw i32 %5, 23
  %25 = add nuw nsw i32 %24, 939524096
  br label %26

26:                                               ; preds = %23, %19, %21, %9
  %27 = phi i32 [ %18, %9 ], [ %20, %21 ], [ %20, %19 ], [ %20, %23 ]
  %28 = phi i32 [ %16, %9 ], [ 2139095040, %21 ], [ 0, %19 ], [ %25, %23 ]
  %29 = sext i16 %0 to i32, !dbg !68
  call void @llvm.dbg.value(metadata i32 %29, metadata !24, metadata !DIExpression(DW_OP_constu, 18446744071562067968, DW_OP_and, DW_OP_stack_value)), !dbg !44
  %30 = and i32 %29, -2147483648, !dbg !68
  call void @llvm.dbg.value(metadata i32 %30, metadata !24, metadata !DIExpression()), !dbg !44
  %31 = or i32 %27, %30, !dbg !69
  %32 = or i32 %31, %28, !dbg !69
  %33 = bitcast i32 %32 to float, !dbg !69
  call void @llvm.dbg.value(metadata float %33, metadata !27, metadata !DIExpression()), !dbg !44
  ret float %33, !dbg !70
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local double @halide_float16_bits_to_double(i16 zeroext %0) local_unnamed_addr #0 !dbg !71 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !75, metadata !DIExpression()), !dbg !77
  %2 = tail call float @halide_float16_bits_to_float(i16 zeroext %0) #2, !dbg !78
  call void @llvm.dbg.value(metadata float %2, metadata !76, metadata !DIExpression()), !dbg !77
  %3 = fpext float %2 to double, !dbg !79
  ret double %3, !dbg !80
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, imports: !5, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/float16_t.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{!6}
!6 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !7, file: !10, line: 225)
!7 = !DINamespace(name: "Internal", scope: !8)
!8 = !DINamespace(name: "Runtime", scope: !9)
!9 = !DINamespace(name: "Halide", scope: null)
!10 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!15 = distinct !DISubprogram(name: "halide_float16_bits_to_float", scope: !16, file: !16, line: 6, type: !17, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !22)
!16 = !DIFile(filename: "src/runtime/float16_t.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !20}
!19 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !10, line: 14, baseType: !21)
!21 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!22 = !{!23, !24, !27, !32, !33, !35, !38, !39, !40, !41, !42}
!23 = !DILocalVariable(name: "bits", arg: 1, scope: !15, file: !16, line: 6, type: !20)
!24 = !DILocalVariable(name: "signMask", scope: !15, file: !16, line: 7, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !10, line: 12, baseType: !26)
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DILocalVariable(name: "result", scope: !15, file: !16, line: 11, type: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !15, file: !16, line: 8, size: 32, flags: DIFlagTypePassByValue, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "asFloat", scope: !28, file: !16, line: 9, baseType: !19, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "asUInt", scope: !28, file: !16, line: 10, baseType: !25, size: 32)
!32 = !DILocalVariable(name: "significandBits", scope: !15, file: !16, line: 13, type: !25)
!33 = !DILocalVariable(name: "exponent", scope: !15, file: !16, line: 16, type: !34)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DILocalVariable(name: "newSignificand", scope: !36, file: !16, line: 27, type: !25)
!36 = distinct !DILexicalBlock(scope: !37, file: !16, line: 19, column: 50)
!37 = distinct !DILexicalBlock(scope: !15, file: !16, line: 19, column: 9)
!38 = !DILocalVariable(name: "leadingZeros", scope: !36, file: !16, line: 29, type: !34)
!39 = !DILocalVariable(name: "setMSB", scope: !36, file: !16, line: 30, type: !34)
!40 = !DILocalVariable(name: "newExponent", scope: !36, file: !16, line: 36, type: !34)
!41 = !DILocalVariable(name: "reEncodedExponent", scope: !36, file: !16, line: 37, type: !25)
!42 = !DILocalVariable(name: "reEncodedExponent", scope: !43, file: !16, line: 50, type: !25)
!43 = distinct !DILexicalBlock(scope: !37, file: !16, line: 40, column: 12)
!44 = !DILocation(line: 0, scope: !15)
!45 = !DILocation(line: 7, column: 26, scope: !15)
!46 = !DILocation(line: 13, column: 38, scope: !15)
!47 = !DILocation(line: 16, column: 37, scope: !15)
!48 = !DILocation(line: 19, column: 18, scope: !37)
!49 = !DILocation(line: 19, column: 25, scope: !37)
!50 = !DILocation(line: 0, scope: !36)
!51 = !DILocation(line: 29, column: 28, scope: !36)
!52 = !{i32 22, i32 33}
!53 = !DILocation(line: 30, column: 25, scope: !36)
!54 = !DILocation(line: 32, column: 31, scope: !36)
!55 = !DILocation(line: 32, column: 27, scope: !36)
!56 = !DILocation(line: 32, column: 24, scope: !36)
!57 = !DILocation(line: 34, column: 32, scope: !36)
!58 = !DILocation(line: 34, column: 24, scope: !36)
!59 = !DILocation(line: 38, column: 55, scope: !36)
!60 = !DILocation(line: 40, column: 5, scope: !36)
!61 = !DILocation(line: 48, column: 25, scope: !43)
!62 = !DILocation(line: 51, column: 13, scope: !43)
!63 = !DILocation(line: 54, column: 29, scope: !64)
!64 = distinct !DILexicalBlock(scope: !65, file: !16, line: 54, column: 20)
!65 = distinct !DILexicalBlock(scope: !43, file: !16, line: 51, column: 13)
!66 = !DILocation(line: 54, column: 20, scope: !65)
!67 = !DILocation(line: 0, scope: !43)
!68 = !DILocation(line: 7, column: 41, scope: !15)
!69 = !DILocation(line: 0, scope: !37)
!70 = !DILocation(line: 63, column: 5, scope: !15)
!71 = distinct !DISubprogram(name: "halide_float16_bits_to_double", scope: !16, file: !16, line: 66, type: !72, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{!4, !20}
!74 = !{!75, !76}
!75 = !DILocalVariable(name: "bits", arg: 1, scope: !71, file: !16, line: 66, type: !20)
!76 = !DILocalVariable(name: "valueAsFloat", scope: !71, file: !16, line: 69, type: !19)
!77 = !DILocation(line: 0, scope: !71)
!78 = !DILocation(line: 69, column: 26, scope: !71)
!79 = !DILocation(line: 70, column: 20, scope: !71)
!80 = !DILocation(line: 70, column: 5, scope: !71)
