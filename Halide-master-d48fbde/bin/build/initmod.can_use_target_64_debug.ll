; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/can_use_target.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/can_use_target.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Runtime::Internal::CpuFeatures" = type { [2 x i64], [2 x i64] }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }

@_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE = weak dso_local local_unnamed_addr global i32 (i32, i64*)* @halide_default_can_use_target_features, align 8, !dbg !0
@_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE = weak dso_local global [4 x i64] zeroinitializer, align 8, !dbg !17
@_ZN6Halide7Runtime8Internal31halide_cpu_features_initializedE = weak dso_local local_unnamed_addr global i8 0, align 1, !dbg !22
@_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE = weak dso_local global %struct.halide_mutex zeroinitializer, align 8, !dbg !25
@.str = private unnamed_addr constant [7 x i8] c"count \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c" CpuFeatures::kWordCount \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"Internal error: wrong structure size passed to halide_can_use_target_features()\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1

; Function Attrs: nounwind
define weak dso_local i32 @halide_default_can_use_target_features(i32 %0, i64* %1) #0 !dbg !201 {
  %3 = alloca %"struct.Halide::Runtime::Internal::CpuFeatures", align 8
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !203, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i64* %1, metadata !204, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !229, metadata !DIExpression()) #6, !dbg !234
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE, metadata !232, metadata !DIExpression()) #6, !dbg !234
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE, metadata !205, metadata !DIExpression()), !dbg !236
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE) #7, !dbg !237
  %5 = load i8, i8* @_ZN6Halide7Runtime8Internal31halide_cpu_features_initializedE, align 1, !dbg !239, !tbaa !240, !range !244
  %6 = icmp eq i8 %5, 0, !dbg !239
  br i1 %6, label %7, label %10, !dbg !245

7:                                                ; preds = %2
  %8 = bitcast %"struct.Halide::Runtime::Internal::CpuFeatures"* %3 to i8*, !dbg !246
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #6, !dbg !246
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::CpuFeatures"* %3, metadata !219, metadata !DIExpression()), !dbg !247
  call void @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv(%"struct.Halide::Runtime::Internal::CpuFeatures"* nonnull sret(%"struct.Halide::Runtime::Internal::CpuFeatures") align 8 %3) #7, !dbg !248
  %9 = call i8* @memcpy(i8* bitcast ([4 x i64]* @_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE to i8*), i8* nonnull %8, i64 32) #7, !dbg !249
  store i8 1, i8* @_ZN6Halide7Runtime8Internal31halide_cpu_features_initializedE, align 1, !dbg !250, !tbaa !240
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #6, !dbg !251
  br label %10, !dbg !252

10:                                               ; preds = %7, %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !253, metadata !DIExpression()) #6, !dbg !256
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE) #7, !dbg !258
  %11 = icmp eq i32 %0, 2, !dbg !260
  br i1 %11, label %46, label %12, !dbg !262

12:                                               ; preds = %10
  %13 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4 to i8*, !dbg !263
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #6, !dbg !263
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !265, metadata !DIExpression()) #6, !dbg !271
  call void @llvm.dbg.value(metadata i8* null, metadata !268, metadata !DIExpression()) #6, !dbg !271
  call void @llvm.dbg.value(metadata i8* null, metadata !269, metadata !DIExpression()) #6, !dbg !271
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 3, !dbg !273
  store i8* null, i8** %14, align 8, !dbg !273, !tbaa !274
  %15 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 4, !dbg !277
  store i8 1, i8* %15, align 8, !dbg !277, !tbaa !278
  %16 = call i8* @malloc(i64 1024) #7, !dbg !279
  %17 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 0, !dbg !284
  store i8* %16, i8** %17, align 8, !dbg !285, !tbaa !286
  %18 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 1, !dbg !287
  %19 = icmp eq i8* %16, null, !dbg !288
  br i1 %19, label %22, label %20, !dbg !290

20:                                               ; preds = %12
  %21 = getelementptr inbounds i8, i8* %16, i64 1023, !dbg !291
  store i8 0, i8* %21, align 1, !dbg !293, !tbaa !294
  br label %22, !dbg !295

22:                                               ; preds = %12, %20
  %23 = phi i8* [ %21, %20 ], [ null, %12 ], !dbg !296
  %24 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, i64 0, i32 2, !dbg !297
  store i8* %23, i8** %24, align 8, !dbg !299
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !300, metadata !DIExpression()) #6, !dbg !304
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), metadata !303, metadata !DIExpression()) #6, !dbg !304
  %25 = call i8* @halide_string_to_string(i8* %16, i8* %23, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #7, !dbg !306
  store i8* %25, i8** %18, align 8, !dbg !309, !tbaa !310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !311, metadata !DIExpression()) #6, !dbg !315
  call void @llvm.dbg.value(metadata i32 %0, metadata !314, metadata !DIExpression()) #6, !dbg !315
  %26 = sext i32 %0 to i64, !dbg !317
  %27 = call i8* @halide_int64_to_string(i8* %25, i8* %23, i64 %26, i32 1) #7, !dbg !318
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !300, metadata !DIExpression()) #6, !dbg !319
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), metadata !303, metadata !DIExpression()) #6, !dbg !319
  %28 = call i8* @halide_string_to_string(i8* %27, i8* %23, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !321
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !311, metadata !DIExpression()) #6, !dbg !322
  call void @llvm.dbg.value(metadata i32 2, metadata !314, metadata !DIExpression()) #6, !dbg !322
  %29 = call i8* @halide_int64_to_string(i8* %28, i8* %23, i64 2, i32 1) #7, !dbg !324
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !300, metadata !DIExpression()) #6, !dbg !325
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), metadata !303, metadata !DIExpression()) #6, !dbg !325
  %30 = call i8* @halide_string_to_string(i8* %29, i8* %23, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !327
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %4, metadata !328, metadata !DIExpression()) #6, !dbg !331
  br i1 %19, label %31, label %32, !dbg !333

31:                                               ; preds = %22
  call void @halide_error(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !335
  br label %40, !dbg !338

32:                                               ; preds = %22
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !339, metadata !DIExpression()) #6, !dbg !342
  %33 = ptrtoint i8* %30 to i64, !dbg !345
  %34 = ptrtoint i8* %16 to i64, !dbg !345
  %35 = add i64 %33, 1, !dbg !345
  %36 = sub i64 %35, %34, !dbg !346
  %37 = call i32 @halide_msan_annotate_memory_is_initialized(i8* null, i8* nonnull %16, i64 %36) #7, !dbg !347
  %38 = load i8*, i8** %14, align 8, !dbg !348, !tbaa !274
  %39 = load i8*, i8** %17, align 8, !dbg !352, !tbaa !286
  call void @halide_print(i8* %38, i8* %39) #7, !dbg !353
  br label %40

40:                                               ; preds = %32, %31
  %41 = load i8, i8* %15, align 8, !dbg !354, !tbaa !278, !range !244
  %42 = icmp eq i8 %41, 0, !dbg !354
  br i1 %42, label %45, label %43, !dbg !356

43:                                               ; preds = %40
  %44 = load i8*, i8** %17, align 8, !dbg !357, !tbaa !286
  call void @free(i8* %44) #7, !dbg !358
  br label %45, !dbg !360

45:                                               ; preds = %40, %43
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #6, !dbg !263
  call void @halide_error(i8* null, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !361
  br label %46, !dbg !362

46:                                               ; preds = %45, %10
  call void @llvm.dbg.value(metadata i64 0, metadata !223, metadata !DIExpression()), !dbg !363
  %47 = load i64, i64* %1, align 8, !dbg !364, !tbaa !366
  %48 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE, i64 0, i64 0), align 8, !dbg !368, !tbaa !366
  %49 = and i64 %48, %47, !dbg !369
  call void @llvm.dbg.value(metadata i64 %49, metadata !225, metadata !DIExpression()), !dbg !370
  %50 = icmp eq i64 %49, 0, !dbg !371
  br i1 %50, label %55, label %51, !dbg !372

51:                                               ; preds = %46
  %52 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE, i64 0, i64 2), align 8, !dbg !373, !tbaa !366
  %53 = and i64 %52, %49, !dbg !376
  %54 = icmp eq i64 %53, %49, !dbg !377
  br i1 %54, label %55, label %61, !dbg !378

55:                                               ; preds = %46, %51
  call void @llvm.dbg.value(metadata i64 1, metadata !223, metadata !DIExpression()), !dbg !363
  %56 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !364
  %57 = load i64, i64* %56, align 8, !dbg !364, !tbaa !366
  %58 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE, i64 0, i64 1), align 8, !dbg !368, !tbaa !366
  %59 = and i64 %58, %57, !dbg !369
  call void @llvm.dbg.value(metadata i64 %59, metadata !225, metadata !DIExpression()), !dbg !370
  %60 = icmp eq i64 %59, 0, !dbg !371
  br i1 %60, label %67, label %63, !dbg !372

61:                                               ; preds = %67, %63, %51
  %62 = phi i32 [ 0, %51 ], [ 0, %63 ], [ 1, %67 ]
  ret i32 %62, !dbg !379

63:                                               ; preds = %55
  %64 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE, i64 0, i64 3), align 8, !dbg !373, !tbaa !366
  %65 = and i64 %64, %59, !dbg !376
  %66 = icmp eq i64 %65, %59, !dbg !377
  br i1 %66, label %67, label %61, !dbg !378

67:                                               ; preds = %63, %55
  call void @llvm.dbg.value(metadata i64 2, metadata !223, metadata !DIExpression()), !dbg !363
  br label %61
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i32, i64*)* @halide_set_custom_can_use_target_features(i32 (i32, i64*)* %0) local_unnamed_addr #1 !dbg !380 {
  call void @llvm.dbg.value(metadata i32 (i32, i64*)* %0, metadata !384, metadata !DIExpression()), !dbg !386
  %2 = load i32 (i32, i64*)*, i32 (i32, i64*)** @_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE, align 8, !dbg !387, !tbaa !388
  call void @llvm.dbg.value(metadata i32 (i32, i64*)* %2, metadata !385, metadata !DIExpression()), !dbg !386
  store i32 (i32, i64*)* %0, i32 (i32, i64*)** @_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE, align 8, !dbg !389, !tbaa !388
  ret i32 (i32, i64*)* %2, !dbg !390
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_can_use_target_features(i32 %0, i64* %1) local_unnamed_addr #4 !dbg !391 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !393, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i64* %1, metadata !394, metadata !DIExpression()), !dbg !395
  %3 = load i32 (i32, i64*)*, i32 (i32, i64*)** @_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE, align 8, !dbg !396, !tbaa !388
  %4 = tail call i32 %3(i32 %0, i64* %1) #7, !dbg !397
  ret i32 %4, !dbg !398
}

declare !dbg !399 extern_weak dso_local void @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv(%"struct.Halide::Runtime::Internal::CpuFeatures"* sret(%"struct.Halide::Runtime::Internal::CpuFeatures") align 8) local_unnamed_addr #5

declare !dbg !403 dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #5

declare !dbg !407 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #5

declare !dbg !410 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #5

declare !dbg !413 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #5

declare !dbg !414 dso_local i8* @malloc(i64) local_unnamed_addr #5

declare !dbg !417 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #5

declare !dbg !418 dso_local void @free(i8*) local_unnamed_addr #5

declare !dbg !421 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #5

declare !dbg !424 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #5

declare !dbg !427 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!197, !198, !199}
!llvm.ident = !{!200}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "custom_can_use_target_features", linkageName: "_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE", scope: !2, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/can_use_target.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_can_use_target_features_t", file: !7, line: 1361, baseType: !8)
!7 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !15, line: 10, baseType: !16)
!15 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!16 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "halide_cpu_features_storage", linkageName: "_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE", scope: !2, file: !5, line: 11, type: !19, isLocal: false, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "halide_cpu_features_initialized", linkageName: "_ZN6Halide7Runtime8Internal31halide_cpu_features_initializedE", scope: !2, file: !5, line: 12, type: !24, isLocal: false, isDefinition: true)
!24 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "halide_cpu_features_initialized_lock", linkageName: "_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE", scope: !2, file: !5, line: 13, type: !27, isLocal: false, isDefinition: true)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !7, line: 120, size: 64, flags: DIFlagTypePassByValue, elements: !28, identifier: "_ZTS12halide_mutex")
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !27, file: !7, line: 121, baseType: !30, size: 64)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !32)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !15, line: 61, baseType: !14)
!32 = !{!33}
!33 = !DISubrange(count: 1)
!34 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !35, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !46, globals: !194, imports: !195, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/can_use_target.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!36 = !{!37}
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !7, line: 403, baseType: !38, size: 8, elements: !40, identifier: "_ZTS18halide_type_code_t")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !15, line: 16, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !{!41, !42, !43, !44, !45}
!41 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!42 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!43 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!44 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!45 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!46 = !{!47, !169, !53, !171}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !49, file: !48, line: 203, baseType: !50)
!48 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!49 = !DINamespace(scope: !2)
!50 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !49, file: !48, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !51, templateParams: !166)
!51 = !{!52, !55, !56, !57, !59, !60, !62, !66, !72, !77, !81, !84, !89, !93, !97, !102, !108, !141, !148, !151, !154, !159, !160, !163, !164, !165}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !50, file: !48, line: 32, baseType: !53, size: 64, flags: DIFlagPublic)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !50, file: !48, line: 32, baseType: !53, size: 64, offset: 64, flags: DIFlagPublic)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !50, file: !48, line: 32, baseType: !53, size: 64, offset: 128, flags: DIFlagPublic)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !50, file: !48, line: 33, baseType: !58, size: 64, offset: 192, flags: DIFlagPublic)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !50, file: !48, line: 34, baseType: !24, size: 8, offset: 256, flags: DIFlagPublic)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !50, file: !48, line: 35, baseType: !61, size: 8, offset: 264, flags: DIFlagPublic)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8, elements: !32)
!62 = !DISubprogram(name: "Printer", scope: !50, file: !48, line: 37, type: !63, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !65, !58, !53}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!66 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !50, file: !48, line: 57, type: !67, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !65, !70}
!69 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !50, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!72 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !50, file: !48, line: 67, type: !73, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!73 = !DISubroutineType(types: !74)
!74 = !{!69, !65, !75}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !15, line: 9, baseType: !76)
!76 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!77 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !50, file: !48, line: 72, type: !78, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!78 = !DISubroutineType(types: !79)
!79 = !{!69, !65, !80}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !15, line: 11, baseType: !11)
!81 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !50, file: !48, line: 77, type: !82, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!82 = !DISubroutineType(types: !83)
!83 = !{!69, !65, !14}
!84 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !50, file: !48, line: 82, type: !85, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DISubroutineType(types: !86)
!86 = !{!69, !65, !87}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !15, line: 12, baseType: !88)
!88 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!89 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !50, file: !48, line: 87, type: !90, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!90 = !DISubroutineType(types: !91)
!91 = !{!69, !65, !92}
!92 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!93 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !50, file: !48, line: 92, type: !94, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!94 = !DISubroutineType(types: !95)
!95 = !{!69, !65, !96}
!96 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!97 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !50, file: !48, line: 97, type: !98, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!98 = !DISubroutineType(types: !99)
!99 = !{!69, !65, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!102 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !50, file: !48, line: 102, type: !103, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!103 = !DISubroutineType(types: !104)
!104 = !{!69, !65, !105}
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !15, line: 14, baseType: !107)
!107 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!108 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !50, file: !48, line: 108, type: !109, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!109 = !DISubroutineType(types: !110)
!110 = !{!69, !65, !111}
!111 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !7, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !114, identifier: "_ZTS13halide_type_t")
!114 = !{!115, !117, !118, !119, !123, !126, !130, !133, !134, !135, !138}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !113, file: !7, line: 434, baseType: !116, size: 8, align: 8)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !7, line: 413, baseType: !37)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !113, file: !7, line: 442, baseType: !38, size: 8, align: 8, offset: 8)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !113, file: !7, line: 446, baseType: !106, size: 16, align: 16, offset: 16)
!119 = !DISubprogram(name: "halide_type_t", scope: !113, file: !7, line: 453, type: !120, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !122, !116, !38, !106}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!123 = !DISubprogram(name: "halide_type_t", scope: !113, file: !7, line: 459, type: !124, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !122}
!126 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !113, file: !7, line: 463, type: !127, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!127 = !DISubroutineType(types: !128)
!128 = !{!113, !129, !106}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!130 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !113, file: !7, line: 468, type: !131, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!131 = !DISubroutineType(types: !132)
!132 = !{!24, !129, !111}
!133 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !113, file: !7, line: 472, type: !131, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!134 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !113, file: !7, line: 476, type: !131, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!135 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !113, file: !7, line: 481, type: !136, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!136 = !DISubroutineType(types: !137)
!137 = !{!11, !129}
!138 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !113, file: !7, line: 485, type: !139, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DISubroutineType(types: !140)
!140 = !{!87, !129}
!141 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !50, file: !48, line: 113, type: !142, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!142 = !DISubroutineType(types: !143)
!143 = !{!69, !65, !144}
!144 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !7, line: 1550, baseType: !147)
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !7, line: 1423, size: 448, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!148 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !50, file: !48, line: 119, type: !149, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!149 = !DISubroutineType(types: !150)
!150 = !{!70, !65}
!151 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !50, file: !48, line: 131, type: !152, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !65}
!154 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !50, file: !48, line: 139, type: !155, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!155 = !DISubroutineType(types: !156)
!156 = !{!14, !157}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!159 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !50, file: !48, line: 143, type: !155, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !50, file: !48, line: 148, type: !161, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !65, !11}
!163 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !50, file: !48, line: 158, type: !149, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!164 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !50, file: !48, line: 162, type: !152, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DISubprogram(name: "~Printer", scope: !50, file: !48, line: 166, type: !152, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !{!167, !168}
!167 = !DITemplateValueParameter(name: "type", type: !11, value: i32 0)
!168 = !DITemplateValueParameter(name: "length", type: !16, value: i64 1024)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CpuFeatures", scope: !2, file: !172, line: 14, size: 256, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !173, identifier: "_ZTSN6Halide7Runtime8Internal11CpuFeaturesE")
!172 = !DIFile(filename: "src/runtime/cpu_features.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!173 = !{!174, !176, !180, !181, !185, !186, !190, !191}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "kWordCount", scope: !171, file: !172, line: 15, baseType: !175, flags: DIFlagStaticMember, extraData: i32 2)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "known", scope: !171, file: !172, line: 43, baseType: !177, size: 128)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 2)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !171, file: !172, line: 44, baseType: !177, size: 128, offset: 128)
!181 = !DISubprogram(name: "set_known", linkageName: "_ZN6Halide7Runtime8Internal11CpuFeatures9set_knownEi", scope: !171, file: !172, line: 17, type: !182, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !184, !11}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!185 = !DISubprogram(name: "set_available", linkageName: "_ZN6Halide7Runtime8Internal11CpuFeatures13set_availableEi", scope: !171, file: !172, line: 21, type: !182, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DISubprogram(name: "test_known", linkageName: "_ZNK6Halide7Runtime8Internal11CpuFeatures10test_knownEi", scope: !171, file: !172, line: 25, type: !187, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!187 = !DISubroutineType(types: !188)
!188 = !{!24, !189, !11}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!190 = !DISubprogram(name: "test_available", linkageName: "_ZNK6Halide7Runtime8Internal11CpuFeatures14test_availableEi", scope: !171, file: !172, line: 29, type: !187, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!191 = !DISubprogram(name: "CpuFeatures", scope: !171, file: !172, line: 34, type: !192, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !184}
!194 = !{!0, !17, !22, !25}
!195 = !{!196}
!196 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !34, entity: !2, file: !15, line: 225)
!197 = !{i32 7, !"Dwarf Version", i32 4}
!198 = !{i32 2, !"Debug Info Version", i32 3}
!199 = !{i32 1, !"wchar_size", i32 4}
!200 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!201 = distinct !DISubprogram(name: "halide_default_can_use_target_features", scope: !5, file: !5, line: 37, type: !9, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !202)
!202 = !{!203, !204, !205, !219, !222, !223, !225}
!203 = !DILocalVariable(name: "count", arg: 1, scope: !201, file: !5, line: 37, type: !11)
!204 = !DILocalVariable(name: "features", arg: 2, scope: !201, file: !5, line: 37, type: !12)
!205 = !DILocalVariable(name: "lock", scope: !206, file: !5, line: 45, type: !207)
!206 = distinct !DILexicalBlock(scope: !201, file: !5, line: 44, column: 5)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !2, file: !208, line: 11, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !209, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!208 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!209 = !{!210, !212, !216}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !207, file: !208, line: 12, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!212 = !DISubprogram(name: "ScopedMutexLock", scope: !207, file: !208, line: 14, type: !213, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !215, !211}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!216 = !DISubprogram(name: "~ScopedMutexLock", scope: !207, file: !208, line: 19, type: !217, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !215}
!219 = !DILocalVariable(name: "tmp", scope: !220, file: !5, line: 49, type: !171)
!220 = distinct !DILexicalBlock(scope: !221, file: !5, line: 48, column: 47)
!221 = distinct !DILexicalBlock(scope: !206, file: !5, line: 48, column: 13)
!222 = !DILocalVariable(name: "cpu_features", scope: !201, file: !5, line: 62, type: !169)
!223 = !DILocalVariable(name: "i", scope: !224, file: !5, line: 63, type: !11)
!224 = distinct !DILexicalBlock(scope: !201, file: !5, line: 63, column: 5)
!225 = !DILocalVariable(name: "m", scope: !226, file: !5, line: 64, type: !14)
!226 = distinct !DILexicalBlock(scope: !227, file: !5, line: 63, column: 55)
!227 = distinct !DILexicalBlock(scope: !224, file: !5, line: 63, column: 5)
!228 = !DILocation(line: 0, scope: !201)
!229 = !DILocalVariable(name: "this", arg: 1, scope: !230, type: !233, flags: DIFlagArtificial | DIFlagObjectPointer)
!230 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !207, file: !208, line: 14, type: !213, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !212, retainedNodes: !231)
!231 = !{!229, !232}
!232 = !DILocalVariable(name: "mutex", arg: 2, scope: !230, file: !208, line: 14, type: !211)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!234 = !DILocation(line: 0, scope: !230, inlinedAt: !235)
!235 = distinct !DILocation(line: 45, column: 25, scope: !206)
!236 = !DILocation(line: 0, scope: !206)
!237 = !DILocation(line: 16, column: 9, scope: !238, inlinedAt: !235)
!238 = distinct !DILexicalBlock(scope: !230, file: !208, line: 15, column: 24)
!239 = !DILocation(line: 48, column: 14, scope: !221)
!240 = !{!241, !241, i64 0}
!241 = !{!"bool", !242, i64 0}
!242 = !{!"omnipotent char", !243, i64 0}
!243 = !{!"Simple C++ TBAA"}
!244 = !{i8 0, i8 2}
!245 = !DILocation(line: 48, column: 13, scope: !206)
!246 = !DILocation(line: 49, column: 13, scope: !220)
!247 = !DILocation(line: 49, column: 25, scope: !220)
!248 = !DILocation(line: 49, column: 31, scope: !220)
!249 = !DILocation(line: 50, column: 13, scope: !220)
!250 = !DILocation(line: 51, column: 45, scope: !220)
!251 = !DILocation(line: 52, column: 9, scope: !221)
!252 = !DILocation(line: 52, column: 9, scope: !220)
!253 = !DILocalVariable(name: "this", arg: 1, scope: !254, type: !233, flags: DIFlagArtificial | DIFlagObjectPointer)
!254 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !207, file: !208, line: 19, type: !217, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !216, retainedNodes: !255)
!255 = !{!253}
!256 = !DILocation(line: 0, scope: !254, inlinedAt: !257)
!257 = distinct !DILocation(line: 53, column: 5, scope: !201)
!258 = !DILocation(line: 20, column: 9, scope: !259, inlinedAt: !257)
!259 = distinct !DILexicalBlock(scope: !254, file: !208, line: 19, column: 38)
!260 = !DILocation(line: 55, column: 15, scope: !261)
!261 = distinct !DILexicalBlock(scope: !201, file: !5, line: 55, column: 9)
!262 = !DILocation(line: 55, column: 9, scope: !201)
!263 = !DILocation(line: 58, column: 9, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !5, line: 55, column: 43)
!265 = !DILocalVariable(name: "this", arg: 1, scope: !266, type: !270, flags: DIFlagArtificial | DIFlagObjectPointer)
!266 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !50, file: !48, line: 37, type: !63, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !62, retainedNodes: !267)
!267 = !{!265, !268, !269}
!268 = !DILocalVariable(name: "ctx", arg: 2, scope: !266, file: !48, line: 37, type: !58)
!269 = !DILocalVariable(name: "mem", arg: 3, scope: !266, file: !48, line: 37, type: !53)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!271 = !DILocation(line: 0, scope: !266, inlinedAt: !272)
!272 = distinct !DILocation(line: 58, column: 9, scope: !264)
!273 = !DILocation(line: 38, column: 11, scope: !266, inlinedAt: !272)
!274 = !{!275, !276, i64 24}
!275 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEE", !276, i64 0, !276, i64 8, !276, i64 16, !276, i64 24, !241, i64 32, !242, i64 33}
!276 = !{!"any pointer", !242, i64 0}
!277 = !DILocation(line: 38, column: 30, scope: !266, inlinedAt: !272)
!278 = !{!275, !241, i64 32}
!279 = !DILocation(line: 44, column: 27, scope: !280, inlinedAt: !272)
!280 = distinct !DILexicalBlock(scope: !281, file: !48, line: 43, column: 16)
!281 = distinct !DILexicalBlock(scope: !282, file: !48, line: 41, column: 20)
!282 = distinct !DILexicalBlock(scope: !283, file: !48, line: 39, column: 13)
!283 = distinct !DILexicalBlock(scope: !266, file: !48, line: 38, column: 54)
!284 = !DILocation(line: 44, column: 13, scope: !280, inlinedAt: !272)
!285 = !DILocation(line: 44, column: 17, scope: !280, inlinedAt: !272)
!286 = !{!275, !276, i64 0}
!287 = !DILocation(line: 47, column: 9, scope: !283, inlinedAt: !272)
!288 = !DILocation(line: 48, column: 13, scope: !289, inlinedAt: !272)
!289 = distinct !DILexicalBlock(scope: !283, file: !48, line: 48, column: 13)
!290 = !DILocation(line: 48, column: 13, scope: !283, inlinedAt: !272)
!291 = !DILocation(line: 49, column: 23, scope: !292, inlinedAt: !272)
!292 = distinct !DILexicalBlock(scope: !289, file: !48, line: 48, column: 18)
!293 = !DILocation(line: 50, column: 18, scope: !292, inlinedAt: !272)
!294 = !{!242, !242, i64 0}
!295 = !DILocation(line: 51, column: 9, scope: !292, inlinedAt: !272)
!296 = !DILocation(line: 0, scope: !289, inlinedAt: !272)
!297 = !DILocation(line: 53, column: 13, scope: !298, inlinedAt: !272)
!298 = distinct !DILexicalBlock(scope: !289, file: !48, line: 51, column: 16)
!299 = !DILocation(line: 53, column: 17, scope: !298, inlinedAt: !272)
!300 = !DILocalVariable(name: "this", arg: 1, scope: !301, type: !270, flags: DIFlagArtificial | DIFlagObjectPointer)
!301 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !50, file: !48, line: 57, type: !67, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !66, retainedNodes: !302)
!302 = !{!300, !303}
!303 = !DILocalVariable(name: "arg", arg: 2, scope: !301, file: !48, line: 57, type: !70)
!304 = !DILocation(line: 0, scope: !301, inlinedAt: !305)
!305 = distinct !DILocation(line: 58, column: 24, scope: !264)
!306 = !DILocation(line: 62, column: 19, scope: !307, inlinedAt: !305)
!307 = distinct !DILexicalBlock(scope: !308, file: !48, line: 61, column: 16)
!308 = distinct !DILexicalBlock(scope: !301, file: !48, line: 59, column: 13)
!309 = !DILocation(line: 62, column: 17, scope: !307, inlinedAt: !305)
!310 = !{!275, !276, i64 8}
!311 = !DILocalVariable(name: "this", arg: 1, scope: !312, type: !270, flags: DIFlagArtificial | DIFlagObjectPointer)
!312 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !50, file: !48, line: 72, type: !78, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !77, retainedNodes: !313)
!313 = !{!311, !314}
!314 = !DILocalVariable(name: "arg", arg: 2, scope: !312, file: !48, line: 72, type: !80)
!315 = !DILocation(line: 0, scope: !312, inlinedAt: !316)
!316 = distinct !DILocation(line: 58, column: 36, scope: !264)
!317 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !316)
!318 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !316)
!319 = !DILocation(line: 0, scope: !301, inlinedAt: !320)
!320 = distinct !DILocation(line: 58, column: 45, scope: !264)
!321 = !DILocation(line: 62, column: 19, scope: !307, inlinedAt: !320)
!322 = !DILocation(line: 0, scope: !312, inlinedAt: !323)
!323 = distinct !DILocation(line: 58, column: 76, scope: !264)
!324 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !323)
!325 = !DILocation(line: 0, scope: !301, inlinedAt: !326)
!326 = distinct !DILocation(line: 58, column: 103, scope: !264)
!327 = !DILocation(line: 62, column: 19, scope: !307, inlinedAt: !326)
!328 = !DILocalVariable(name: "this", arg: 1, scope: !329, type: !270, flags: DIFlagArtificial | DIFlagObjectPointer)
!329 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !50, file: !48, line: 166, type: !152, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !165, retainedNodes: !330)
!330 = !{!328}
!331 = !DILocation(line: 0, scope: !329, inlinedAt: !332)
!332 = distinct !DILocation(line: 58, column: 9, scope: !264)
!333 = !DILocation(line: 167, column: 13, scope: !334, inlinedAt: !332)
!334 = distinct !DILexicalBlock(scope: !329, file: !48, line: 166, column: 16)
!335 = !DILocation(line: 168, column: 13, scope: !336, inlinedAt: !332)
!336 = distinct !DILexicalBlock(scope: !337, file: !48, line: 167, column: 19)
!337 = distinct !DILexicalBlock(scope: !334, file: !48, line: 167, column: 13)
!338 = !DILocation(line: 169, column: 9, scope: !336, inlinedAt: !332)
!339 = !DILocalVariable(name: "this", arg: 1, scope: !340, type: !270, flags: DIFlagArtificial | DIFlagObjectPointer)
!340 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !50, file: !48, line: 162, type: !152, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !164, retainedNodes: !341)
!341 = !{!339}
!342 = !DILocation(line: 0, scope: !340, inlinedAt: !343)
!343 = distinct !DILocation(line: 170, column: 13, scope: !344, inlinedAt: !332)
!344 = distinct !DILexicalBlock(scope: !337, file: !48, line: 169, column: 16)
!345 = !DILocation(line: 163, column: 81, scope: !340, inlinedAt: !343)
!346 = !DILocation(line: 163, column: 87, scope: !340, inlinedAt: !343)
!347 = !DILocation(line: 163, column: 15, scope: !340, inlinedAt: !343)
!348 = !DILocation(line: 174, column: 30, scope: !349, inlinedAt: !332)
!349 = distinct !DILexicalBlock(scope: !350, file: !48, line: 173, column: 46)
!350 = distinct !DILexicalBlock(scope: !351, file: !48, line: 173, column: 24)
!351 = distinct !DILexicalBlock(scope: !344, file: !48, line: 171, column: 17)
!352 = !DILocation(line: 174, column: 44, scope: !349, inlinedAt: !332)
!353 = !DILocation(line: 174, column: 17, scope: !349, inlinedAt: !332)
!354 = !DILocation(line: 180, column: 13, scope: !355, inlinedAt: !332)
!355 = distinct !DILexicalBlock(scope: !334, file: !48, line: 180, column: 13)
!356 = !DILocation(line: 180, column: 21, scope: !355, inlinedAt: !332)
!357 = !DILocation(line: 180, column: 24, scope: !355, inlinedAt: !332)
!358 = !DILocation(line: 181, column: 13, scope: !359, inlinedAt: !332)
!359 = distinct !DILexicalBlock(scope: !355, file: !48, line: 180, column: 40)
!360 = !DILocation(line: 182, column: 9, scope: !359, inlinedAt: !332)
!361 = !DILocation(line: 60, column: 9, scope: !264)
!362 = !DILocation(line: 61, column: 5, scope: !264)
!363 = !DILocation(line: 0, scope: !224)
!364 = !DILocation(line: 65, column: 19, scope: !365)
!365 = distinct !DILexicalBlock(scope: !226, file: !5, line: 65, column: 13)
!366 = !{!367, !367, i64 0}
!367 = !{!"long long", !242, i64 0}
!368 = !DILocation(line: 65, column: 33, scope: !365)
!369 = !DILocation(line: 65, column: 31, scope: !365)
!370 = !DILocation(line: 0, scope: !226)
!371 = !DILocation(line: 65, column: 58, scope: !365)
!372 = !DILocation(line: 65, column: 13, scope: !226)
!373 = !DILocation(line: 66, column: 22, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !5, line: 66, column: 17)
!375 = distinct !DILexicalBlock(scope: !365, file: !5, line: 65, column: 64)
!376 = !DILocation(line: 66, column: 20, scope: !374)
!377 = !DILocation(line: 66, column: 50, scope: !374)
!378 = !DILocation(line: 66, column: 17, scope: !375)
!379 = !DILocation(line: 73, column: 1, scope: !201)
!380 = distinct !DISubprogram(name: "halide_set_custom_can_use_target_features", scope: !5, file: !5, line: 21, type: !381, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !383)
!381 = !DISubroutineType(types: !382)
!382 = !{!6, !6}
!383 = !{!384, !385}
!384 = !DILocalVariable(name: "fn", arg: 1, scope: !380, file: !5, line: 21, type: !6)
!385 = !DILocalVariable(name: "result", scope: !380, file: !5, line: 22, type: !6)
!386 = !DILocation(line: 0, scope: !380)
!387 = !DILocation(line: 22, column: 47, scope: !380)
!388 = !{!276, !276, i64 0}
!389 = !DILocation(line: 23, column: 36, scope: !380)
!390 = !DILocation(line: 24, column: 5, scope: !380)
!391 = distinct !DISubprogram(name: "halide_can_use_target_features", scope: !5, file: !5, line: 27, type: !9, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !392)
!392 = !{!393, !394}
!393 = !DILocalVariable(name: "count", arg: 1, scope: !391, file: !5, line: 27, type: !11)
!394 = !DILocalVariable(name: "features", arg: 2, scope: !391, file: !5, line: 27, type: !12)
!395 = !DILocation(line: 0, scope: !391)
!396 = !DILocation(line: 28, column: 14, scope: !391)
!397 = !DILocation(line: 28, column: 12, scope: !391)
!398 = !DILocation(line: 28, column: 5, scope: !391)
!399 = !DISubprogram(name: "halide_get_cpu_features", linkageName: "_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv", scope: !2, file: !172, line: 48, type: !400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !402)
!400 = !DISubroutineType(types: !401)
!401 = !{!171}
!402 = !{}
!403 = !DISubprogram(name: "memcpy", scope: !15, file: !15, line: 94, type: !404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !402)
!404 = !DISubroutineType(types: !405)
!405 = !{!58, !58, !100, !406}
!406 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!407 = !DISubprogram(name: "halide_error", scope: !7, file: !7, line: 111, type: !408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !402)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !58, !70}
!410 = !DISubprogram(name: "halide_mutex_lock", scope: !7, file: !7, line: 133, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !402)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !211}
!413 = !DISubprogram(name: "halide_mutex_unlock", scope: !7, file: !7, line: 134, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !402)
!414 = !DISubprogram(name: "malloc", scope: !15, file: !15, line: 87, type: !415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !402)
!415 = !DISubroutineType(types: !416)
!416 = !{!58, !406}
!417 = !DISubprogram(name: "halide_print", scope: !7, file: !7, line: 97, type: !408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !402)
!418 = !DISubprogram(name: "free", scope: !15, file: !15, line: 86, type: !419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !402)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !58}
!421 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !7, file: !7, line: 973, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !402)
!422 = !DISubroutineType(types: !423)
!423 = !{!11, !58, !100, !16}
!424 = !DISubprogram(name: "halide_string_to_string", scope: !15, file: !15, line: 120, type: !425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !402)
!425 = !DISubroutineType(types: !426)
!426 = !{!53, !53, !53, !70}
!427 = !DISubprogram(name: "halide_int64_to_string", scope: !15, file: !15, line: 122, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !402)
!428 = !DISubroutineType(types: !429)
!429 = !{!53, !53, !53, !76, !11}
