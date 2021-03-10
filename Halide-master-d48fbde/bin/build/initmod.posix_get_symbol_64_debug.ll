; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_get_symbol.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_get_symbol.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>

@.str = private unnamed_addr constant [10 x i8] c"dlerror: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZN6Halide7Runtime8Internal17custom_get_symbolE = weak dso_local local_unnamed_addr global i8* (i8*)* @halide_default_get_symbol, align 8, !dbg !0
@_ZN6Halide7Runtime8Internal19custom_load_libraryE = weak dso_local local_unnamed_addr global i8* (i8*)* @halide_default_load_library, align 8, !dbg !15
@_ZN6Halide7Runtime8Internal25custom_get_library_symbolE = weak dso_local local_unnamed_addr global i8* (i8*, i8*)* @halide_default_get_library_symbol, align 8, !dbg !18
@.str.2 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_get_symbol(i8* %0) #0 !dbg !169 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !171, metadata !DIExpression()), !dbg !172
  %2 = tail call i8* @dlsym(i8* null, i8* %0) #5, !dbg !173
  ret i8* %2, !dbg !174
}

declare !dbg !175 dso_local i8* @dlsym(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
define weak dso_local i8* @halide_default_load_library(i8* %0) #2 !dbg !177 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !179, metadata !DIExpression()), !dbg !181
  %2 = tail call i8* @dlopen(i8* %0, i32 1) #5, !dbg !182
  call void @llvm.dbg.value(metadata i8* %2, metadata !180, metadata !DIExpression()), !dbg !181
  %3 = icmp eq i8* %2, null, !dbg !183
  br i1 %3, label %4, label %29, !dbg !185

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !186, metadata !DIExpression()) #6, !dbg !192
  call void @llvm.dbg.value(metadata i8* null, metadata !189, metadata !DIExpression()) #6, !dbg !192
  call void @llvm.dbg.value(metadata i8* null, metadata !190, metadata !DIExpression()) #6, !dbg !192
  %5 = tail call i8* @malloc(i64 1024) #5, !dbg !195
  %6 = icmp eq i8* %5, null, !dbg !200
  br i1 %6, label %9, label %7, !dbg !202

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 1023, !dbg !203
  store i8 0, i8* %8, align 1, !dbg !205, !tbaa !206
  br label %9, !dbg !209

9:                                                ; preds = %4, %7
  %10 = phi i8* [ %8, %7 ], [ null, %4 ], !dbg !210
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !211, metadata !DIExpression()) #6, !dbg !215
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), metadata !214, metadata !DIExpression()) #6, !dbg !215
  %11 = tail call i8* @halide_string_to_string(i8* %5, i8* %10, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #5, !dbg !217
  %12 = tail call i8* @dlerror() #5, !dbg !220
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !211, metadata !DIExpression()) #6, !dbg !221
  call void @llvm.dbg.value(metadata i8* %12, metadata !214, metadata !DIExpression()) #6, !dbg !221
  %13 = icmp eq i8* %12, null, !dbg !223
  br i1 %13, label %14, label %16, !dbg !224

14:                                               ; preds = %9
  %15 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !225
  br label %18, !dbg !227

16:                                               ; preds = %9
  %17 = tail call i8* @halide_string_to_string(i8* %11, i8* %10, i8* nonnull %12) #5, !dbg !228
  br label %18

18:                                               ; preds = %14, %16
  %19 = phi i8* [ %17, %16 ], [ %15, %14 ], !dbg !229
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !211, metadata !DIExpression()) #6, !dbg !230
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), metadata !214, metadata !DIExpression()) #6, !dbg !230
  %20 = tail call i8* @halide_string_to_string(i8* %19, i8* %10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !232
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !233, metadata !DIExpression()) #6, !dbg !236
  br i1 %6, label %21, label %22, !dbg !238

21:                                               ; preds = %18
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !240
  br label %28, !dbg !243

22:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !244, metadata !DIExpression()) #6, !dbg !247
  %23 = ptrtoint i8* %20 to i64, !dbg !250
  %24 = ptrtoint i8* %5 to i64, !dbg !250
  %25 = add i64 %23, 1, !dbg !250
  %26 = sub i64 %25, %24, !dbg !251
  %27 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* null, i8* nonnull %5, i64 %26) #5, !dbg !252
  tail call void @halide_print(i8* null, i8* nonnull %5) #5, !dbg !253
  br label %28

28:                                               ; preds = %21, %22
  call void @free(i8* %5) #5, !dbg !257
  br label %29, !dbg !260

29:                                               ; preds = %28, %1
  ret i8* %2, !dbg !261
}

declare !dbg !262 dso_local i8* @dlopen(i8*, i32) local_unnamed_addr #1

declare !dbg !265 dso_local i8* @dlerror() local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_get_library_symbol(i8* %0, i8* %1) #0 !dbg !268 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !270, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i8* %1, metadata !271, metadata !DIExpression()), !dbg !272
  %3 = tail call i8* @dlsym(i8* %0, i8* %1) #5, !dbg !273
  ret i8* %3, !dbg !274
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*)* @halide_set_custom_get_symbol(i8* (i8*)* %0) local_unnamed_addr #3 !dbg !275 {
  call void @llvm.dbg.value(metadata i8* (i8*)* %0, metadata !279, metadata !DIExpression()), !dbg !281
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal17custom_get_symbolE, align 8, !dbg !282, !tbaa !283
  call void @llvm.dbg.value(metadata i8* (i8*)* %2, metadata !280, metadata !DIExpression()), !dbg !281
  store i8* (i8*)* %0, i8* (i8*)** @_ZN6Halide7Runtime8Internal17custom_get_symbolE, align 8, !dbg !285, !tbaa !283
  ret i8* (i8*)* %2, !dbg !286
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*)* @halide_set_custom_load_library(i8* (i8*)* %0) local_unnamed_addr #3 !dbg !287 {
  call void @llvm.dbg.value(metadata i8* (i8*)* %0, metadata !291, metadata !DIExpression()), !dbg !293
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal19custom_load_libraryE, align 8, !dbg !294, !tbaa !283
  call void @llvm.dbg.value(metadata i8* (i8*)* %2, metadata !292, metadata !DIExpression()), !dbg !293
  store i8* (i8*)* %0, i8* (i8*)** @_ZN6Halide7Runtime8Internal19custom_load_libraryE, align 8, !dbg !295, !tbaa !283
  ret i8* (i8*)* %2, !dbg !296
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*, i8*)* @halide_set_custom_get_library_symbol(i8* (i8*, i8*)* %0) local_unnamed_addr #3 !dbg !297 {
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* %0, metadata !301, metadata !DIExpression()), !dbg !303
  %2 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @_ZN6Halide7Runtime8Internal25custom_get_library_symbolE, align 8, !dbg !304, !tbaa !283
  call void @llvm.dbg.value(metadata i8* (i8*, i8*)* %2, metadata !302, metadata !DIExpression()), !dbg !303
  store i8* (i8*, i8*)* %0, i8* (i8*, i8*)** @_ZN6Halide7Runtime8Internal25custom_get_library_symbolE, align 8, !dbg !305, !tbaa !283
  ret i8* (i8*, i8*)* %2, !dbg !306
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_get_symbol(i8* %0) local_unnamed_addr #0 !dbg !307 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !309, metadata !DIExpression()), !dbg !310
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal17custom_get_symbolE, align 8, !dbg !311, !tbaa !283
  %3 = tail call i8* %2(i8* %0) #5, !dbg !311
  ret i8* %3, !dbg !312
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_load_library(i8* %0) local_unnamed_addr #0 !dbg !313 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !315, metadata !DIExpression()), !dbg !316
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal19custom_load_libraryE, align 8, !dbg !317, !tbaa !283
  %3 = tail call i8* %2(i8* %0) #5, !dbg !317
  ret i8* %3, !dbg !318
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_get_library_symbol(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !319 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !321, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i8* %1, metadata !322, metadata !DIExpression()), !dbg !323
  %3 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @_ZN6Halide7Runtime8Internal25custom_get_library_symbolE, align 8, !dbg !324, !tbaa !283
  %4 = tail call i8* %3(i8* %0, i8* %1) #5, !dbg !324
  ret i8* %4, !dbg !325
}

declare !dbg !326 dso_local i8* @malloc(i64) local_unnamed_addr #1

declare !dbg !330 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #1

declare !dbg !333 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #1

declare !dbg !334 dso_local void @free(i8*) local_unnamed_addr #1

declare !dbg !337 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #1

declare !dbg !340 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!165, !166, !167}
!llvm.ident = !{!168}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "custom_get_symbol", linkageName: "_ZN6Halide7Runtime8Internal17custom_get_symbolE", scope: !2, file: !5, line: 34, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/posix_get_symbol.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_get_symbol_t", file: !7, line: 381, baseType: !8)
!7 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "custom_load_library", linkageName: "_ZN6Halide7Runtime8Internal19custom_load_libraryE", scope: !2, file: !5, line: 35, type: !17, isLocal: false, isDefinition: true)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_load_library_t", file: !7, line: 382, baseType: !8)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "custom_get_library_symbol", linkageName: "_ZN6Halide7Runtime8Internal25custom_get_library_symbolE", scope: !2, file: !5, line: 36, type: !20, isLocal: false, isDefinition: true)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_get_library_symbol_t", file: !7, line: 383, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{!11, !11, !12}
!24 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !25, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !26, retainedTypes: !37, globals: !162, imports: !163, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_get_symbol.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!26 = !{!27}
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !7, line: 403, baseType: !28, size: 8, elements: !31, identifier: "_ZTS18halide_type_code_t")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !29, line: 16, baseType: !30)
!29 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!36 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!37 = !{!38, !44}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !40, file: !39, line: 203, baseType: !41)
!39 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!40 = !DINamespace(scope: !2)
!41 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !40, file: !39, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !42, templateParams: !159)
!42 = !{!43, !45, !46, !47, !48, !50, !54, !58, !62, !67, !72, !77, !82, !86, !90, !95, !101, !134, !141, !144, !147, !152, !153, !156, !157, !158}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !41, file: !39, line: 32, baseType: !44, size: 64, flags: DIFlagPublic)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !41, file: !39, line: 32, baseType: !44, size: 64, offset: 64, flags: DIFlagPublic)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !41, file: !39, line: 32, baseType: !44, size: 64, offset: 128, flags: DIFlagPublic)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !41, file: !39, line: 33, baseType: !11, size: 64, offset: 192, flags: DIFlagPublic)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !41, file: !39, line: 34, baseType: !49, size: 8, offset: 256, flags: DIFlagPublic)
!49 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !41, file: !39, line: 35, baseType: !51, size: 8, offset: 264, flags: DIFlagPublic)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 1)
!54 = !DISubprogram(name: "Printer", scope: !41, file: !39, line: 37, type: !55, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57, !11, !44}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!58 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !41, file: !39, line: 57, type: !59, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !57, !12}
!61 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !41, size: 64)
!62 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !41, file: !39, line: 67, type: !63, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!63 = !DISubroutineType(types: !64)
!64 = !{!61, !57, !65}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !29, line: 9, baseType: !66)
!66 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!67 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !41, file: !39, line: 72, type: !68, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!68 = !DISubroutineType(types: !69)
!69 = !{!61, !57, !70}
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !29, line: 11, baseType: !71)
!71 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!72 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !41, file: !39, line: 77, type: !73, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!73 = !DISubroutineType(types: !74)
!74 = !{!61, !57, !75}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !29, line: 10, baseType: !76)
!76 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !41, file: !39, line: 82, type: !78, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!78 = !DISubroutineType(types: !79)
!79 = !{!61, !57, !80}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !29, line: 12, baseType: !81)
!81 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!82 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !41, file: !39, line: 87, type: !83, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!83 = !DISubroutineType(types: !84)
!84 = !{!61, !57, !85}
!85 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!86 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !41, file: !39, line: 92, type: !87, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!87 = !DISubroutineType(types: !88)
!88 = !{!61, !57, !89}
!89 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!90 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !41, file: !39, line: 97, type: !91, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!91 = !DISubroutineType(types: !92)
!92 = !{!61, !57, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!95 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !41, file: !39, line: 102, type: !96, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!96 = !DISubroutineType(types: !97)
!97 = !{!61, !57, !98}
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !29, line: 14, baseType: !100)
!100 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!101 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !41, file: !39, line: 108, type: !102, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!102 = !DISubroutineType(types: !103)
!103 = !{!61, !57, !104}
!104 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !7, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !107, identifier: "_ZTS13halide_type_t")
!107 = !{!108, !110, !111, !112, !116, !119, !123, !126, !127, !128, !131}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !106, file: !7, line: 434, baseType: !109, size: 8, align: 8)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !7, line: 413, baseType: !27)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !106, file: !7, line: 442, baseType: !28, size: 8, align: 8, offset: 8)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !106, file: !7, line: 446, baseType: !99, size: 16, align: 16, offset: 16)
!112 = !DISubprogram(name: "halide_type_t", scope: !106, file: !7, line: 453, type: !113, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115, !109, !28, !99}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!116 = !DISubprogram(name: "halide_type_t", scope: !106, file: !7, line: 459, type: !117, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !115}
!119 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !106, file: !7, line: 463, type: !120, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!120 = !DISubroutineType(types: !121)
!121 = !{!106, !122, !99}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!123 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !106, file: !7, line: 468, type: !124, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!124 = !DISubroutineType(types: !125)
!125 = !{!49, !122, !104}
!126 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !106, file: !7, line: 472, type: !124, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!127 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !106, file: !7, line: 476, type: !124, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!128 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !106, file: !7, line: 481, type: !129, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!129 = !DISubroutineType(types: !130)
!130 = !{!71, !122}
!131 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !106, file: !7, line: 485, type: !132, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!132 = !DISubroutineType(types: !133)
!133 = !{!80, !122}
!134 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !41, file: !39, line: 113, type: !135, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!135 = !DISubroutineType(types: !136)
!136 = !{!61, !57, !137}
!137 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !7, line: 1550, baseType: !140)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !7, line: 1423, size: 448, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!141 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !41, file: !39, line: 119, type: !142, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!142 = !DISubroutineType(types: !143)
!143 = !{!12, !57}
!144 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !41, file: !39, line: 131, type: !145, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !57}
!147 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !41, file: !39, line: 139, type: !148, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DISubroutineType(types: !149)
!149 = !{!75, !150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!152 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !41, file: !39, line: 143, type: !148, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!153 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !41, file: !39, line: 148, type: !154, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !57, !71}
!156 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !41, file: !39, line: 158, type: !142, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!157 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !41, file: !39, line: 162, type: !145, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!158 = !DISubprogram(name: "~Printer", scope: !41, file: !39, line: 166, type: !145, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!159 = !{!160, !161}
!160 = !DITemplateValueParameter(name: "type", type: !71, value: i32 0)
!161 = !DITemplateValueParameter(name: "length", type: !76, value: i64 1024)
!162 = !{!0, !15, !18}
!163 = !{!164}
!164 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !24, entity: !2, file: !29, line: 225)
!165 = !{i32 7, !"Dwarf Version", i32 4}
!166 = !{i32 2, !"Debug Info Version", i32 3}
!167 = !{i32 1, !"wchar_size", i32 4}
!168 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!169 = distinct !DISubprogram(name: "halide_default_get_symbol", scope: !5, file: !5, line: 12, type: !9, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !170)
!170 = !{!171}
!171 = !DILocalVariable(name: "name", arg: 1, scope: !169, file: !5, line: 12, type: !12)
!172 = !DILocation(line: 0, scope: !169)
!173 = !DILocation(line: 13, column: 12, scope: !169)
!174 = !DILocation(line: 13, column: 5, scope: !169)
!175 = !DISubprogram(name: "dlsym", scope: !5, file: !5, line: 7, type: !22, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !176)
!176 = !{}
!177 = distinct !DISubprogram(name: "halide_default_load_library", scope: !5, file: !5, line: 16, type: !9, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !178)
!178 = !{!179, !180}
!179 = !DILocalVariable(name: "name", arg: 1, scope: !177, file: !5, line: 16, type: !12)
!180 = !DILocalVariable(name: "lib", scope: !177, file: !5, line: 17, type: !11)
!181 = !DILocation(line: 0, scope: !177)
!182 = !DILocation(line: 17, column: 17, scope: !177)
!183 = !DILocation(line: 18, column: 10, scope: !184)
!184 = distinct !DILexicalBlock(scope: !177, file: !5, line: 18, column: 9)
!185 = !DILocation(line: 18, column: 9, scope: !177)
!186 = !DILocalVariable(name: "this", arg: 1, scope: !187, type: !191, flags: DIFlagArtificial | DIFlagObjectPointer)
!187 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !41, file: !39, line: 37, type: !55, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, declaration: !54, retainedNodes: !188)
!188 = !{!186, !189, !190}
!189 = !DILocalVariable(name: "ctx", arg: 2, scope: !187, file: !39, line: 37, type: !11)
!190 = !DILocalVariable(name: "mem", arg: 3, scope: !187, file: !39, line: 37, type: !44)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!192 = !DILocation(line: 0, scope: !187, inlinedAt: !193)
!193 = distinct !DILocation(line: 19, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !184, file: !5, line: 18, column: 15)
!195 = !DILocation(line: 44, column: 27, scope: !196, inlinedAt: !193)
!196 = distinct !DILexicalBlock(scope: !197, file: !39, line: 43, column: 16)
!197 = distinct !DILexicalBlock(scope: !198, file: !39, line: 41, column: 20)
!198 = distinct !DILexicalBlock(scope: !199, file: !39, line: 39, column: 13)
!199 = distinct !DILexicalBlock(scope: !187, file: !39, line: 38, column: 54)
!200 = !DILocation(line: 48, column: 13, scope: !201, inlinedAt: !193)
!201 = distinct !DILexicalBlock(scope: !199, file: !39, line: 48, column: 13)
!202 = !DILocation(line: 48, column: 13, scope: !199, inlinedAt: !193)
!203 = !DILocation(line: 49, column: 23, scope: !204, inlinedAt: !193)
!204 = distinct !DILexicalBlock(scope: !201, file: !39, line: 48, column: 18)
!205 = !DILocation(line: 50, column: 18, scope: !204, inlinedAt: !193)
!206 = !{!207, !207, i64 0}
!207 = !{!"omnipotent char", !208, i64 0}
!208 = !{!"Simple C++ TBAA"}
!209 = !DILocation(line: 51, column: 9, scope: !204, inlinedAt: !193)
!210 = !DILocation(line: 0, scope: !201, inlinedAt: !193)
!211 = !DILocalVariable(name: "this", arg: 1, scope: !212, type: !191, flags: DIFlagArtificial | DIFlagObjectPointer)
!212 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !41, file: !39, line: 57, type: !59, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, declaration: !58, retainedNodes: !213)
!213 = !{!211, !214}
!214 = !DILocalVariable(name: "arg", arg: 2, scope: !212, file: !39, line: 57, type: !12)
!215 = !DILocation(line: 0, scope: !212, inlinedAt: !216)
!216 = distinct !DILocation(line: 19, column: 24, scope: !194)
!217 = !DILocation(line: 62, column: 19, scope: !218, inlinedAt: !216)
!218 = distinct !DILexicalBlock(scope: !219, file: !39, line: 61, column: 16)
!219 = distinct !DILexicalBlock(scope: !212, file: !39, line: 59, column: 13)
!220 = !DILocation(line: 19, column: 42, scope: !194)
!221 = !DILocation(line: 0, scope: !212, inlinedAt: !222)
!222 = distinct !DILocation(line: 19, column: 39, scope: !194)
!223 = !DILocation(line: 59, column: 17, scope: !219, inlinedAt: !222)
!224 = !DILocation(line: 59, column: 13, scope: !212, inlinedAt: !222)
!225 = !DILocation(line: 60, column: 19, scope: !226, inlinedAt: !222)
!226 = distinct !DILexicalBlock(scope: !219, file: !39, line: 59, column: 29)
!227 = !DILocation(line: 61, column: 9, scope: !226, inlinedAt: !222)
!228 = !DILocation(line: 62, column: 19, scope: !218, inlinedAt: !222)
!229 = !DILocation(line: 0, scope: !219, inlinedAt: !222)
!230 = !DILocation(line: 0, scope: !212, inlinedAt: !231)
!231 = distinct !DILocation(line: 19, column: 52, scope: !194)
!232 = !DILocation(line: 62, column: 19, scope: !218, inlinedAt: !231)
!233 = !DILocalVariable(name: "this", arg: 1, scope: !234, type: !191, flags: DIFlagArtificial | DIFlagObjectPointer)
!234 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !41, file: !39, line: 166, type: !145, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, declaration: !158, retainedNodes: !235)
!235 = !{!233}
!236 = !DILocation(line: 0, scope: !234, inlinedAt: !237)
!237 = distinct !DILocation(line: 19, column: 9, scope: !194)
!238 = !DILocation(line: 167, column: 13, scope: !239, inlinedAt: !237)
!239 = distinct !DILexicalBlock(scope: !234, file: !39, line: 166, column: 16)
!240 = !DILocation(line: 168, column: 13, scope: !241, inlinedAt: !237)
!241 = distinct !DILexicalBlock(scope: !242, file: !39, line: 167, column: 19)
!242 = distinct !DILexicalBlock(scope: !239, file: !39, line: 167, column: 13)
!243 = !DILocation(line: 169, column: 9, scope: !241, inlinedAt: !237)
!244 = !DILocalVariable(name: "this", arg: 1, scope: !245, type: !191, flags: DIFlagArtificial | DIFlagObjectPointer)
!245 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !41, file: !39, line: 162, type: !145, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, declaration: !157, retainedNodes: !246)
!246 = !{!244}
!247 = !DILocation(line: 0, scope: !245, inlinedAt: !248)
!248 = distinct !DILocation(line: 170, column: 13, scope: !249, inlinedAt: !237)
!249 = distinct !DILexicalBlock(scope: !242, file: !39, line: 169, column: 16)
!250 = !DILocation(line: 163, column: 81, scope: !245, inlinedAt: !248)
!251 = !DILocation(line: 163, column: 87, scope: !245, inlinedAt: !248)
!252 = !DILocation(line: 163, column: 15, scope: !245, inlinedAt: !248)
!253 = !DILocation(line: 174, column: 17, scope: !254, inlinedAt: !237)
!254 = distinct !DILexicalBlock(scope: !255, file: !39, line: 173, column: 46)
!255 = distinct !DILexicalBlock(scope: !256, file: !39, line: 173, column: 24)
!256 = distinct !DILexicalBlock(scope: !249, file: !39, line: 171, column: 17)
!257 = !DILocation(line: 181, column: 13, scope: !258, inlinedAt: !237)
!258 = distinct !DILexicalBlock(scope: !259, file: !39, line: 180, column: 40)
!259 = distinct !DILexicalBlock(scope: !239, file: !39, line: 180, column: 13)
!260 = !DILocation(line: 20, column: 5, scope: !194)
!261 = !DILocation(line: 21, column: 5, scope: !177)
!262 = !DISubprogram(name: "dlopen", scope: !5, file: !5, line: 6, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !176)
!263 = !DISubroutineType(types: !264)
!264 = !{!11, !12, !71}
!265 = !DISubprogram(name: "dlerror", scope: !5, file: !5, line: 8, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !176)
!266 = !DISubroutineType(types: !267)
!267 = !{!44}
!268 = distinct !DISubprogram(name: "halide_default_get_library_symbol", scope: !5, file: !5, line: 24, type: !22, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !269)
!269 = !{!270, !271}
!270 = !DILocalVariable(name: "lib", arg: 1, scope: !268, file: !5, line: 24, type: !11)
!271 = !DILocalVariable(name: "name", arg: 2, scope: !268, file: !5, line: 24, type: !12)
!272 = !DILocation(line: 0, scope: !268)
!273 = !DILocation(line: 25, column: 12, scope: !268)
!274 = !DILocation(line: 25, column: 5, scope: !268)
!275 = distinct !DISubprogram(name: "halide_set_custom_get_symbol", scope: !5, file: !5, line: 44, type: !276, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{!6, !6}
!278 = !{!279, !280}
!279 = !DILocalVariable(name: "f", arg: 1, scope: !275, file: !5, line: 44, type: !6)
!280 = !DILocalVariable(name: "result", scope: !275, file: !5, line: 45, type: !6)
!281 = !DILocation(line: 0, scope: !275)
!282 = !DILocation(line: 45, column: 34, scope: !275)
!283 = !{!284, !284, i64 0}
!284 = !{!"any pointer", !207, i64 0}
!285 = !DILocation(line: 46, column: 23, scope: !275)
!286 = !DILocation(line: 47, column: 5, scope: !275)
!287 = distinct !DISubprogram(name: "halide_set_custom_load_library", scope: !5, file: !5, line: 50, type: !288, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !290)
!288 = !DISubroutineType(types: !289)
!289 = !{!17, !17}
!290 = !{!291, !292}
!291 = !DILocalVariable(name: "f", arg: 1, scope: !287, file: !5, line: 50, type: !17)
!292 = !DILocalVariable(name: "result", scope: !287, file: !5, line: 51, type: !17)
!293 = !DILocation(line: 0, scope: !287)
!294 = !DILocation(line: 51, column: 36, scope: !287)
!295 = !DILocation(line: 52, column: 25, scope: !287)
!296 = !DILocation(line: 53, column: 5, scope: !287)
!297 = distinct !DISubprogram(name: "halide_set_custom_get_library_symbol", scope: !5, file: !5, line: 56, type: !298, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{!20, !20}
!300 = !{!301, !302}
!301 = !DILocalVariable(name: "f", arg: 1, scope: !297, file: !5, line: 56, type: !20)
!302 = !DILocalVariable(name: "result", scope: !297, file: !5, line: 57, type: !20)
!303 = !DILocation(line: 0, scope: !297)
!304 = !DILocation(line: 57, column: 42, scope: !297)
!305 = !DILocation(line: 58, column: 31, scope: !297)
!306 = !DILocation(line: 59, column: 5, scope: !297)
!307 = distinct !DISubprogram(name: "halide_get_symbol", scope: !5, file: !5, line: 62, type: !9, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !308)
!308 = !{!309}
!309 = !DILocalVariable(name: "name", arg: 1, scope: !307, file: !5, line: 62, type: !12)
!310 = !DILocation(line: 0, scope: !307)
!311 = !DILocation(line: 63, column: 12, scope: !307)
!312 = !DILocation(line: 63, column: 5, scope: !307)
!313 = distinct !DISubprogram(name: "halide_load_library", scope: !5, file: !5, line: 66, type: !9, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !314)
!314 = !{!315}
!315 = !DILocalVariable(name: "name", arg: 1, scope: !313, file: !5, line: 66, type: !12)
!316 = !DILocation(line: 0, scope: !313)
!317 = !DILocation(line: 67, column: 12, scope: !313)
!318 = !DILocation(line: 67, column: 5, scope: !313)
!319 = distinct !DISubprogram(name: "halide_get_library_symbol", scope: !5, file: !5, line: 70, type: !22, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !320)
!320 = !{!321, !322}
!321 = !DILocalVariable(name: "lib", arg: 1, scope: !319, file: !5, line: 70, type: !11)
!322 = !DILocalVariable(name: "name", arg: 2, scope: !319, file: !5, line: 70, type: !12)
!323 = !DILocation(line: 0, scope: !319)
!324 = !DILocation(line: 71, column: 12, scope: !319)
!325 = !DILocation(line: 71, column: 5, scope: !319)
!326 = !DISubprogram(name: "malloc", scope: !29, file: !29, line: 87, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !176)
!327 = !DISubroutineType(types: !328)
!328 = !{!11, !329}
!329 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!330 = !DISubprogram(name: "halide_error", scope: !7, file: !7, line: 111, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !176)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !11, !12}
!333 = !DISubprogram(name: "halide_print", scope: !7, file: !7, line: 97, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !176)
!334 = !DISubprogram(name: "free", scope: !29, file: !29, line: 86, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !176)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !11}
!337 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !7, file: !7, line: 973, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !176)
!338 = !DISubroutineType(types: !339)
!339 = !{!71, !11, !93, !76}
!340 = !DISubprogram(name: "halide_string_to_string", scope: !29, file: !29, line: 120, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !176)
!341 = !DISubroutineType(types: !342)
!342 = !{!44, !44, !44, !12}
