; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/halide_buffer_t.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/halide_buffer_t.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type opaque
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i32 @_halide_buffer_get_dimensions(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !193 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !200, metadata !DIExpression()), !dbg !201
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 5, !dbg !202
  %3 = load i32, i32* %2, align 4, !dbg !202, !tbaa !203
  ret i32 %3, !dbg !213
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i8* @_halide_buffer_get_host(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !214 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !218, metadata !DIExpression()), !dbg !219
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 2, !dbg !220
  %3 = load i8*, i8** %2, align 8, !dbg !220, !tbaa !221
  ret i8* %3, !dbg !222
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i64 @_halide_buffer_get_device(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !223 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !227, metadata !DIExpression()), !dbg !228
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 0, !dbg !229
  %3 = load i64, i64* %2, align 8, !dbg !229, !tbaa !230
  ret i64 %3, !dbg !231
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local %struct.halide_device_interface_t* @_halide_buffer_get_device_interface(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !232 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !236, metadata !DIExpression()), !dbg !237
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 1, !dbg !238
  %3 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %2, align 8, !dbg !238, !tbaa !239
  ret %struct.halide_device_interface_t* %3, !dbg !240
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i32 @_halide_buffer_get_min(%struct.halide_buffer_t* %0, i32 %1) local_unnamed_addr #0 !dbg !241 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !245, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i32 %1, metadata !246, metadata !DIExpression()), !dbg !247
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6, !dbg !248
  %4 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %3, align 8, !dbg !248, !tbaa !249
  %5 = sext i32 %1 to i64, !dbg !250
  %6 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %4, i64 %5, i32 0, !dbg !251
  %7 = load i32, i32* %6, align 4, !dbg !251, !tbaa !252
  ret i32 %7, !dbg !254
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i32 @_halide_buffer_get_max(%struct.halide_buffer_t* %0, i32 %1) local_unnamed_addr #0 !dbg !255 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !257, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i32 %1, metadata !258, metadata !DIExpression()), !dbg !259
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6, !dbg !260
  %4 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %3, align 8, !dbg !260, !tbaa !249
  %5 = sext i32 %1 to i64, !dbg !261
  %6 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %4, i64 %5, i32 0, !dbg !262
  %7 = load i32, i32* %6, align 4, !dbg !262, !tbaa !252
  %8 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %4, i64 %5, i32 1, !dbg !263
  %9 = load i32, i32* %8, align 4, !dbg !263, !tbaa !264
  %10 = add i32 %7, -1, !dbg !265
  %11 = add i32 %10, %9, !dbg !266
  ret i32 %11, !dbg !267
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i32 @_halide_buffer_get_extent(%struct.halide_buffer_t* %0, i32 %1) local_unnamed_addr #0 !dbg !268 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !270, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 %1, metadata !271, metadata !DIExpression()), !dbg !272
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6, !dbg !273
  %4 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %3, align 8, !dbg !273, !tbaa !249
  %5 = sext i32 %1 to i64, !dbg !274
  %6 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %4, i64 %5, i32 1, !dbg !275
  %7 = load i32, i32* %6, align 4, !dbg !275, !tbaa !264
  ret i32 %7, !dbg !276
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i32 @_halide_buffer_get_stride(%struct.halide_buffer_t* %0, i32 %1) local_unnamed_addr #0 !dbg !277 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !279, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !281
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6, !dbg !282
  %4 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %3, align 8, !dbg !282, !tbaa !249
  %5 = sext i32 %1 to i64, !dbg !283
  %6 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %4, i64 %5, i32 2, !dbg !284
  %7 = load i32, i32* %6, align 4, !dbg !284, !tbaa !285
  ret i32 %7, !dbg !286
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i32 @_halide_buffer_set_host_dirty(%struct.halide_buffer_t* %0, i1 zeroext %1) local_unnamed_addr #0 !dbg !287 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i1 %1, metadata !292, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !293
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !294, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i1 %1, metadata !297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !298
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !300, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i32 1, metadata !303, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i1 %1, metadata !304, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !305
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 3, !dbg !307
  %4 = load i64, i64* %3, align 8, !dbg !307, !tbaa !309
  %5 = and i64 %4, -2, !dbg !310
  %6 = zext i1 %1 to i64, !dbg !310
  %7 = or i64 %5, %6, !dbg !310
  store i64 %7, i64* %3, align 8, !dbg !307, !tbaa !309
  ret i32 0, !dbg !311
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i32 @_halide_buffer_set_device_dirty(%struct.halide_buffer_t* %0, i1 zeroext %1) local_unnamed_addr #0 !dbg !312 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !314, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i1 %1, metadata !315, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !316
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !317, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i1 %1, metadata !320, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !321
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !300, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 2, metadata !303, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i1 %1, metadata !304, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !323
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 3, !dbg !325
  %4 = load i64, i64* %3, align 8, !dbg !325, !tbaa !309
  %5 = and i64 %4, -3, !dbg !326
  %6 = select i1 %1, i64 2, i64 0, !dbg !326
  %7 = or i64 %5, %6, !dbg !326
  store i64 %7, i64* %3, align 8, !dbg !325, !tbaa !309
  ret i32 0, !dbg !327
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_halide_buffer_get_host_dirty(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !328 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !332, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !334, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()), !dbg !343
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 3, !dbg !345
  %3 = load i64, i64* %2, align 8, !dbg !345, !tbaa !309
  %4 = and i64 %3, 1, !dbg !346
  %5 = icmp ne i64 %4, 0, !dbg !347
  ret i1 %5, !dbg !348
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_halide_buffer_get_device_dirty(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !349 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !353, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !339, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 2, metadata !342, metadata !DIExpression()), !dbg !358
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 3, !dbg !360
  %3 = load i64, i64* %2, align 8, !dbg !360, !tbaa !309
  %4 = and i64 %3, 2, !dbg !361
  %5 = icmp ne i64 %4, 0, !dbg !362
  ret i1 %5, !dbg !363
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local %struct.halide_dimension_t* @_halide_buffer_get_shape(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !364 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !368, metadata !DIExpression()), !dbg !369
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6, !dbg !370
  %3 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %2, align 8, !dbg !370, !tbaa !249
  ret %struct.halide_dimension_t* %3, !dbg !371
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_halide_buffer_is_bounds_query(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !372 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !374, metadata !DIExpression()), !dbg !375
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 2, !dbg !376
  %3 = load i8*, i8** %2, align 8, !dbg !376, !tbaa !221
  %4 = icmp eq i8* %3, null, !dbg !377
  br i1 %4, label %5, label %9, !dbg !378

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 0, !dbg !379
  %7 = load i64, i64* %6, align 8, !dbg !379, !tbaa !230
  %8 = icmp eq i64 %7, 0, !dbg !380
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ false, %1 ], [ %8, %5 ], !dbg !375
  ret i1 %10, !dbg !381
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i32 @_halide_buffer_get_type(%struct.halide_buffer_t* %0) local_unnamed_addr #1 !dbg !382 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !386, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !388, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)) #5, !dbg !393
  %3 = bitcast i32* %2 to i8*, !dbg !395
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5, !dbg !395
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 4, i32 0, !dbg !396
  call void @llvm.dbg.value(metadata i32* %2, metadata !391, metadata !DIExpression(DW_OP_deref)) #5, !dbg !393
  %5 = call i8* @memcpy(i8* nonnull %3, i8* nonnull %4, i64 4) #6, !dbg !397
  %6 = load i32, i32* %2, align 4, !dbg !398, !tbaa !399
  call void @llvm.dbg.value(metadata i32 %6, metadata !391, metadata !DIExpression()) #5, !dbg !393
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5, !dbg !400
  ret i32 %6, !dbg !401
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local %struct.halide_buffer_t* @_halide_buffer_init(%struct.halide_buffer_t* %0, %struct.halide_dimension_t* %1, i8* %2, i64 %3, %struct.halide_device_interface_t* %4, i32 %5, i32 %6, i32 %7, %struct.halide_dimension_t* %8, i64 %9) local_unnamed_addr #1 !dbg !402 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !406, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* %1, metadata !407, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata i8* %2, metadata !408, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata i64 %3, metadata !409, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %4, metadata !410, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata i32 %5, metadata !411, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata i32 %6, metadata !412, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata i32 %7, metadata !413, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* %8, metadata !414, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata i64 %9, metadata !415, metadata !DIExpression()), !dbg !420
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 2, !dbg !421
  store i8* %2, i8** %11, align 8, !dbg !422, !tbaa !221
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 0, !dbg !423
  store i64 %3, i64* %12, align 8, !dbg !424, !tbaa !230
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 1, !dbg !425
  store %struct.halide_device_interface_t* %4, %struct.halide_device_interface_t** %13, align 8, !dbg !426, !tbaa !239
  %14 = trunc i32 %5 to i8, !dbg !427
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 4, i32 0, !dbg !428
  store i8 %14, i8* %15, align 8, !dbg !429, !tbaa !430
  %16 = trunc i32 %6 to i8, !dbg !431
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 4, i32 1, !dbg !432
  store i8 %16, i8* %17, align 1, !dbg !433, !tbaa !434
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 4, i32 2, !dbg !435
  store i16 1, i16* %18, align 2, !dbg !436, !tbaa !437
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 5, !dbg !438
  store i32 %7, i32* %19, align 4, !dbg !439, !tbaa !203
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6, !dbg !440
  store %struct.halide_dimension_t* %1, %struct.halide_dimension_t** %20, align 8, !dbg !441, !tbaa !249
  %21 = icmp ne %struct.halide_dimension_t* %8, %1, !dbg !442
  %22 = icmp sgt i32 %7, 0
  %23 = and i1 %21, %22, !dbg !443
  call void @llvm.dbg.value(metadata i32 0, metadata !416, metadata !DIExpression()), !dbg !444
  br i1 %23, label %24, label %38, !dbg !443

24:                                               ; preds = %10
  %25 = zext i32 %7 to i64, !dbg !445
  call void @llvm.dbg.value(metadata i64 0, metadata !416, metadata !DIExpression()), !dbg !444
  %26 = bitcast %struct.halide_dimension_t* %1 to i8*, !dbg !447
  %27 = bitcast %struct.halide_dimension_t* %8 to i8*, !dbg !447
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %26, i8* nonnull align 4 dereferenceable(16) %27, i64 16, i1 false), !dbg !447, !tbaa.struct !449
  call void @llvm.dbg.value(metadata i64 1, metadata !416, metadata !DIExpression()), !dbg !444
  %28 = icmp eq i32 %7, 1, !dbg !445
  br i1 %28, label %38, label %29, !dbg !450, !llvm.loop !451

29:                                               ; preds = %24, %29
  %30 = phi i64 [ %36, %29 ], [ 1, %24 ]
  %31 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %20, align 8, !dbg !454, !tbaa !249
  call void @llvm.dbg.value(metadata i64 %30, metadata !416, metadata !DIExpression()), !dbg !444
  %32 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i64 %30, !dbg !455
  %33 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %31, i64 %30, !dbg !456
  %34 = bitcast %struct.halide_dimension_t* %33 to i8*, !dbg !447
  %35 = bitcast %struct.halide_dimension_t* %32 to i8*, !dbg !447
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %34, i8* nonnull align 4 dereferenceable(16) %35, i64 16, i1 false), !dbg !447, !tbaa.struct !449
  %36 = add nuw nsw i64 %30, 1, !dbg !457
  call void @llvm.dbg.value(metadata i64 %36, metadata !416, metadata !DIExpression()), !dbg !444
  %37 = icmp eq i64 %36, %25, !dbg !445
  br i1 %37, label %38, label %29, !dbg !450, !llvm.loop !451

38:                                               ; preds = %29, %24, %10
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 3, !dbg !458
  store i64 %9, i64* %39, align 8, !dbg !459, !tbaa !309
  ret %struct.halide_buffer_t* %0, !dbg !460
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local %struct.halide_buffer_t* @_halide_buffer_init_from_buffer(%struct.halide_buffer_t* %0, %struct.halide_dimension_t* %1, %struct.halide_buffer_t* %2) local_unnamed_addr #1 !dbg !461 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !465, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* %1, metadata !466, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !467, metadata !DIExpression()), !dbg !470
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 2, !dbg !471
  %5 = load i8*, i8** %4, align 8, !dbg !471, !tbaa !221
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 2, !dbg !472
  store i8* %5, i8** %6, align 8, !dbg !473, !tbaa !221
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 0, !dbg !474
  %8 = load i64, i64* %7, align 8, !dbg !474, !tbaa !230
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 0, !dbg !475
  store i64 %8, i64* %9, align 8, !dbg !476, !tbaa !230
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 1, !dbg !477
  %11 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %10, align 8, !dbg !477, !tbaa !239
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 1, !dbg !478
  store %struct.halide_device_interface_t* %11, %struct.halide_device_interface_t** %12, align 8, !dbg !479, !tbaa !239
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 4, i32 0, !dbg !480
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 4, i32 0, !dbg !480
  %15 = bitcast i8* %14 to i32*, !dbg !480
  %16 = bitcast i8* %13 to i32*, !dbg !480
  %17 = load i32, i32* %15, align 8, !dbg !480
  store i32 %17, i32* %16, align 8, !dbg !480
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 5, !dbg !481
  %19 = load i32, i32* %18, align 4, !dbg !481, !tbaa !203
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 5, !dbg !482
  store i32 %19, i32* %20, align 4, !dbg !483, !tbaa !203
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6, !dbg !484
  store %struct.halide_dimension_t* %1, %struct.halide_dimension_t** %21, align 8, !dbg !485, !tbaa !249
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 3, !dbg !486
  %23 = load i64, i64* %22, align 8, !dbg !486, !tbaa !309
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 3, !dbg !487
  store i64 %23, i64* %24, align 8, !dbg !488, !tbaa !309
  call void @llvm.dbg.value(metadata i32 0, metadata !468, metadata !DIExpression()), !dbg !489
  %25 = icmp sgt i32 %19, 0, !dbg !490
  br i1 %25, label %26, label %33, !dbg !492

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 6
  call void @llvm.dbg.value(metadata i64 0, metadata !468, metadata !DIExpression()), !dbg !489
  %28 = bitcast %struct.halide_dimension_t** %27 to i8**, !dbg !493
  %29 = load i8*, i8** %28, align 8, !dbg !493, !tbaa !249
  %30 = bitcast %struct.halide_dimension_t* %1 to i8*, !dbg !495
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %30, i8* nonnull align 4 dereferenceable(16) %29, i64 16, i1 false), !dbg !495, !tbaa.struct !449
  call void @llvm.dbg.value(metadata i64 1, metadata !468, metadata !DIExpression()), !dbg !489
  %31 = load i32, i32* %20, align 4, !dbg !496, !tbaa !203
  %32 = icmp sgt i32 %31, 1, !dbg !490
  br i1 %32, label %34, label %33, !dbg !492, !llvm.loop !497

33:                                               ; preds = %34, %26, %3
  ret %struct.halide_buffer_t* %0, !dbg !499

34:                                               ; preds = %26, %34
  %35 = phi i64 [ %42, %34 ], [ 1, %26 ]
  %36 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %21, align 8, !dbg !500, !tbaa !249
  call void @llvm.dbg.value(metadata i64 %35, metadata !468, metadata !DIExpression()), !dbg !489
  %37 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %27, align 8, !dbg !493, !tbaa !249
  %38 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %37, i64 %35, !dbg !501
  %39 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i64 %35, !dbg !502
  %40 = bitcast %struct.halide_dimension_t* %39 to i8*, !dbg !495
  %41 = bitcast %struct.halide_dimension_t* %38 to i8*, !dbg !495
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %40, i8* nonnull align 4 dereferenceable(16) %41, i64 16, i1 false), !dbg !495, !tbaa.struct !449
  %42 = add nuw nsw i64 %35, 1, !dbg !503
  call void @llvm.dbg.value(metadata i64 %42, metadata !468, metadata !DIExpression()), !dbg !489
  %43 = load i32, i32* %20, align 4, !dbg !496, !tbaa !203
  %44 = sext i32 %43 to i64, !dbg !490
  %45 = icmp slt i64 %42, %44, !dbg !490
  br i1 %45, label %34, label %33, !dbg !492, !llvm.loop !497
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local %struct.halide_buffer_t* @_halide_buffer_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_dimension_t* %2, %struct.halide_buffer_t* %3, i32* %4, i32* %5) local_unnamed_addr #1 !dbg !504 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !508, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !509, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* %2, metadata !510, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !511, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i32* %4, metadata !512, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i32* %5, metadata !513, metadata !DIExpression()), !dbg !517
  %7 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !518
  %8 = bitcast %struct.halide_buffer_t* %3 to i8*, !dbg !518
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) %8, i64 56, i1 false), !dbg !518, !tbaa.struct !519
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6, !dbg !525
  store %struct.halide_dimension_t* %2, %struct.halide_dimension_t** %9, align 8, !dbg !526, !tbaa !249
  call void @llvm.dbg.value(metadata i64 0, metadata !514, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i32 0, metadata !515, metadata !DIExpression()), !dbg !527
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !528
  %11 = load i32, i32* %10, align 4, !dbg !528, !tbaa !203
  %12 = icmp sgt i32 %11, 0, !dbg !530
  br i1 %12, label %13, label %16, !dbg !531

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %15 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %14, align 8, !dbg !532, !tbaa !249
  br label %21, !dbg !531

16:                                               ; preds = %21, %6
  %17 = phi i64 [ 0, %6 ], [ %47, %21 ], !dbg !517
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !534
  %19 = load i8*, i8** %18, align 8, !dbg !534, !tbaa !221
  %20 = icmp eq i8* %19, null, !dbg !536
  br i1 %20, label %60, label %52, !dbg !537

21:                                               ; preds = %13, %21
  %22 = phi %struct.halide_dimension_t* [ %2, %13 ], [ %32, %21 ], !dbg !538
  %23 = phi %struct.halide_dimension_t* [ %15, %13 ], [ %38, %21 ], !dbg !532
  %24 = phi i64 [ 0, %13 ], [ %48, %21 ]
  %25 = phi i64 [ 0, %13 ], [ %47, %21 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !515, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i64 %25, metadata !514, metadata !DIExpression()), !dbg !517
  %26 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %23, i64 %24, !dbg !539
  %27 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %22, i64 %24, !dbg !540
  %28 = bitcast %struct.halide_dimension_t* %27 to i8*, !dbg !541
  %29 = bitcast %struct.halide_dimension_t* %26 to i8*, !dbg !541
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %28, i8* nonnull align 4 dereferenceable(16) %29, i64 16, i1 false), !dbg !541, !tbaa.struct !449
  %30 = getelementptr inbounds i32, i32* %4, i64 %24, !dbg !542
  %31 = load i32, i32* %30, align 4, !dbg !542, !tbaa !399
  %32 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %9, align 8, !dbg !543, !tbaa !249
  %33 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %32, i64 %24, i32 0, !dbg !544
  store i32 %31, i32* %33, align 4, !dbg !545, !tbaa !252
  %34 = getelementptr inbounds i32, i32* %5, i64 %24, !dbg !546
  %35 = load i32, i32* %34, align 4, !dbg !546, !tbaa !399
  %36 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %32, i64 %24, i32 1, !dbg !547
  store i32 %35, i32* %36, align 4, !dbg !548, !tbaa !264
  %37 = load i32, i32* %30, align 4, !dbg !549, !tbaa !399
  %38 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %14, align 8, !dbg !550, !tbaa !249
  %39 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %38, i64 %24, i32 0, !dbg !551
  %40 = load i32, i32* %39, align 4, !dbg !551, !tbaa !252
  %41 = sub nsw i32 %37, %40, !dbg !552
  %42 = sext i32 %41 to i64, !dbg !553
  %43 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %38, i64 %24, i32 2, !dbg !554
  %44 = load i32, i32* %43, align 4, !dbg !554, !tbaa !285
  %45 = sext i32 %44 to i64, !dbg !555
  %46 = mul nsw i64 %42, %45, !dbg !556
  %47 = add nsw i64 %46, %25, !dbg !557
  call void @llvm.dbg.value(metadata i64 %47, metadata !514, metadata !DIExpression()), !dbg !517
  %48 = add nuw nsw i64 %24, 1, !dbg !558
  call void @llvm.dbg.value(metadata i64 %48, metadata !515, metadata !DIExpression()), !dbg !527
  %49 = load i32, i32* %10, align 4, !dbg !528, !tbaa !203
  %50 = sext i32 %49 to i64, !dbg !530
  %51 = icmp slt i64 %48, %50, !dbg !530
  br i1 %51, label %21, label %16, !dbg !531, !llvm.loop !559

52:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !561, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !564
  %53 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1, !dbg !567
  %54 = load i8, i8* %53, align 1, !dbg !567, !tbaa !568
  %55 = zext i8 %54 to i64, !dbg !567
  %56 = add nuw nsw i64 %55, 7, !dbg !569
  %57 = lshr i64 %56, 3, !dbg !570
  %58 = mul nsw i64 %57, %17, !dbg !571
  %59 = getelementptr inbounds i8, i8* %19, i64 %58, !dbg !572
  store i8* %59, i8** %18, align 8, !dbg !572, !tbaa !221
  br label %60, !dbg !573

60:                                               ; preds = %52, %16
  %61 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1, !dbg !574
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %61, align 8, !dbg !575, !tbaa !239
  %62 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !576
  store i64 0, i64* %62, align 8, !dbg !577, !tbaa !230
  %63 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 1, !dbg !578
  %64 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %63, align 8, !dbg !578, !tbaa !239
  %65 = icmp eq %struct.halide_device_interface_t* %64, null, !dbg !580
  br i1 %65, label %70, label %66, !dbg !581

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %64, i64 0, i32 9, !dbg !582
  %68 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)** %67, align 8, !dbg !582, !tbaa !584
  %69 = tail call i32 %68(i8* %0, %struct.halide_buffer_t* nonnull %3, %struct.halide_buffer_t* nonnull %1) #6, !dbg !586
  br label %70, !dbg !587

70:                                               ; preds = %66, %60
  ret %struct.halide_buffer_t* %1, !dbg !588
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i32 @_halide_buffer_retire_crop_after_extern_stage(i8* %0, i8* %1) local_unnamed_addr #1 !dbg !589 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !593, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i8* %1, metadata !594, metadata !DIExpression()), !dbg !598
  %3 = bitcast i8* %1 to %struct.halide_buffer_t**, !dbg !599
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %3, metadata !595, metadata !DIExpression()), !dbg !598
  %4 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %3, align 8, !dbg !600, !tbaa !521
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !596, metadata !DIExpression()), !dbg !598
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !601
  %6 = bitcast i8* %5 to %struct.halide_buffer_t**, !dbg !601
  %7 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %6, align 8, !dbg !601, !tbaa !521
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !597, metadata !DIExpression()), !dbg !598
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 0, !dbg !602
  %9 = load i64, i64* %8, align 8, !dbg !602, !tbaa !230
  %10 = icmp eq i64 %9, 0, !dbg !604
  br i1 %10, label %43, label %11, !dbg !605

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 0, !dbg !606
  %13 = load i64, i64* %12, align 8, !dbg !606, !tbaa !230
  %14 = icmp eq i64 %13, 0, !dbg !609
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !353, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !353, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !339, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !339, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 2, metadata !342, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i32 2, metadata !342, metadata !DIExpression()), !dbg !620
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 3, !dbg !622
  %16 = load i64, i64* %15, align 8, !dbg !622, !tbaa !309
  %17 = and i64 %16, 2, !dbg !622
  %18 = icmp eq i64 %17, 0, !dbg !622
  br i1 %14, label %19, label %32, !dbg !623

19:                                               ; preds = %11
  br i1 %18, label %26, label %20, !dbg !624

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 1, !dbg !625
  %22 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %21, align 8, !dbg !625, !tbaa !239
  %23 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %22, i64 0, i32 4, !dbg !627
  %24 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %23, align 8, !dbg !627, !tbaa !628
  %25 = tail call i32 %24(i8* %0, %struct.halide_buffer_t* nonnull %4) #6, !dbg !629
  br label %26, !dbg !630

26:                                               ; preds = %20, %19
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 1, !dbg !631
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !dbg !631, !tbaa !239
  %29 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %28, i64 0, i32 1, !dbg !632
  %30 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %29, align 8, !dbg !632, !tbaa !633
  %31 = tail call i32 %30(i8* %0, %struct.halide_buffer_t* nonnull %4) #6, !dbg !634
  br label %43, !dbg !635

32:                                               ; preds = %11
  br i1 %18, label %37, label %33, !dbg !636

33:                                               ; preds = %32
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !317, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i1 true, metadata !320, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !637
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !300, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i32 2, metadata !303, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i1 true, metadata !304, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !640
  %34 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 3, !dbg !642
  %35 = load i64, i64* %34, align 8, !dbg !644, !tbaa !309
  %36 = or i64 %35, 2, !dbg !644
  store i64 %36, i64* %34, align 8, !dbg !644, !tbaa !309
  br label %37, !dbg !645

37:                                               ; preds = %33, %32
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 1, !dbg !646
  %39 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %38, align 8, !dbg !646, !tbaa !239
  %40 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %39, i64 0, i32 11, !dbg !647
  %41 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %40, align 8, !dbg !647, !tbaa !648
  %42 = tail call i32 %41(i8* %0, %struct.halide_buffer_t* nonnull %4) #6, !dbg !649
  br label %43

43:                                               ; preds = %26, %37, %2
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !334, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !339, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()), !dbg !653
  %44 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 3, !dbg !655
  %45 = load i64, i64* %44, align 8, !dbg !655, !tbaa !309
  %46 = and i64 %45, 1, !dbg !656
  %47 = icmp eq i64 %46, 0, !dbg !657
  br i1 %47, label %52, label %48, !dbg !658

48:                                               ; preds = %43
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !294, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata i1 true, metadata !297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !659
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !300, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i32 1, metadata !303, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i1 true, metadata !304, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !662
  %49 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 3, !dbg !664
  %50 = load i64, i64* %49, align 8, !dbg !665, !tbaa !309
  %51 = or i64 %50, 1, !dbg !665
  store i64 %51, i64* %49, align 8, !dbg !665, !tbaa !309
  br label %52, !dbg !666

52:                                               ; preds = %48, %43
  ret i32 0, !dbg !667
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i32 @_halide_buffer_retire_crops_after_extern_stage(i8* %0, i8* %1) local_unnamed_addr #1 !dbg !668 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !670, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i8* %1, metadata !671, metadata !DIExpression()), !dbg !673
  %3 = bitcast i8* %1 to %struct.halide_buffer_t**, !dbg !674
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %3, metadata !672, metadata !DIExpression()), !dbg !673
  %4 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %3, align 8, !dbg !675, !tbaa !521
  %5 = icmp eq %struct.halide_buffer_t* %4, null, !dbg !675
  br i1 %5, label %59, label %6, !dbg !676

6:                                                ; preds = %2, %55
  %7 = phi %struct.halide_buffer_t* [ %57, %55 ], [ %4, %2 ]
  %8 = phi %struct.halide_buffer_t** [ %56, %55 ], [ %3, %2 ]
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %8, metadata !672, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i8* %0, metadata !593, metadata !DIExpression()) #5, !dbg !677
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %8, metadata !594, metadata !DIExpression()) #5, !dbg !677
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %8, metadata !595, metadata !DIExpression()) #5, !dbg !677
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !596, metadata !DIExpression()) #5, !dbg !677
  %9 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %8, i64 1, !dbg !680
  %10 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %9, align 8, !dbg !680, !tbaa !521
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %10, metadata !597, metadata !DIExpression()) #5, !dbg !677
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 0, !dbg !681
  %12 = load i64, i64* %11, align 8, !dbg !681, !tbaa !230
  %13 = icmp eq i64 %12, 0, !dbg !682
  br i1 %13, label %46, label %14, !dbg !683

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %10, i64 0, i32 0, !dbg !684
  %16 = load i64, i64* %15, align 8, !dbg !684, !tbaa !230
  %17 = icmp eq i64 %16, 0, !dbg !685
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !353, metadata !DIExpression()) #5, !dbg !686
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !353, metadata !DIExpression()) #5, !dbg !688
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !339, metadata !DIExpression()) #5, !dbg !690
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !339, metadata !DIExpression()) #5, !dbg !692
  call void @llvm.dbg.value(metadata i32 2, metadata !342, metadata !DIExpression()) #5, !dbg !690
  call void @llvm.dbg.value(metadata i32 2, metadata !342, metadata !DIExpression()) #5, !dbg !692
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 3, !dbg !694
  %19 = load i64, i64* %18, align 8, !dbg !694, !tbaa !309
  %20 = and i64 %19, 2, !dbg !694
  %21 = icmp eq i64 %20, 0, !dbg !694
  br i1 %17, label %22, label %35, !dbg !695

22:                                               ; preds = %14
  br i1 %21, label %29, label %23, !dbg !696

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 1, !dbg !697
  %25 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %24, align 8, !dbg !697, !tbaa !239
  %26 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %25, i64 0, i32 4, !dbg !698
  %27 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %26, align 8, !dbg !698, !tbaa !628
  %28 = tail call i32 %27(i8* %0, %struct.halide_buffer_t* nonnull %7) #6, !dbg !699
  br label %29, !dbg !700

29:                                               ; preds = %23, %22
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 1, !dbg !701
  %31 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %30, align 8, !dbg !701, !tbaa !239
  %32 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %31, i64 0, i32 1, !dbg !702
  %33 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %32, align 8, !dbg !702, !tbaa !633
  %34 = tail call i32 %33(i8* %0, %struct.halide_buffer_t* nonnull %7) #6, !dbg !703
  br label %46, !dbg !704

35:                                               ; preds = %14
  br i1 %21, label %40, label %36, !dbg !705

36:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %10, metadata !317, metadata !DIExpression()) #5, !dbg !706
  call void @llvm.dbg.value(metadata i1 true, metadata !320, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !706
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %10, metadata !300, metadata !DIExpression()) #5, !dbg !708
  call void @llvm.dbg.value(metadata i32 2, metadata !303, metadata !DIExpression()) #5, !dbg !708
  call void @llvm.dbg.value(metadata i1 true, metadata !304, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !708
  %37 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %10, i64 0, i32 3, !dbg !710
  %38 = load i64, i64* %37, align 8, !dbg !711, !tbaa !309
  %39 = or i64 %38, 2, !dbg !711
  store i64 %39, i64* %37, align 8, !dbg !711, !tbaa !309
  br label %40, !dbg !712

40:                                               ; preds = %36, %35
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 1, !dbg !713
  %42 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %41, align 8, !dbg !713, !tbaa !239
  %43 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %42, i64 0, i32 11, !dbg !714
  %44 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %43, align 8, !dbg !714, !tbaa !648
  %45 = tail call i32 %44(i8* %0, %struct.halide_buffer_t* nonnull %7) #6, !dbg !715
  br label %46

46:                                               ; preds = %40, %29, %6
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !334, metadata !DIExpression()) #5, !dbg !716
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !339, metadata !DIExpression()) #5, !dbg !718
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()) #5, !dbg !718
  %47 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 3, !dbg !720
  %48 = load i64, i64* %47, align 8, !dbg !720, !tbaa !309
  %49 = and i64 %48, 1, !dbg !721
  %50 = icmp eq i64 %49, 0, !dbg !722
  br i1 %50, label %55, label %51, !dbg !723

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %10, metadata !294, metadata !DIExpression()) #5, !dbg !724
  call void @llvm.dbg.value(metadata i1 true, metadata !297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !724
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %10, metadata !300, metadata !DIExpression()) #5, !dbg !726
  call void @llvm.dbg.value(metadata i32 1, metadata !303, metadata !DIExpression()) #5, !dbg !726
  call void @llvm.dbg.value(metadata i1 true, metadata !304, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !726
  %52 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %10, i64 0, i32 3, !dbg !728
  %53 = load i64, i64* %52, align 8, !dbg !729, !tbaa !309
  %54 = or i64 %53, 1, !dbg !729
  store i64 %54, i64* %52, align 8, !dbg !729, !tbaa !309
  br label %55, !dbg !730

55:                                               ; preds = %46, %51
  %56 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %8, i64 2, !dbg !731
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %56, metadata !672, metadata !DIExpression()), !dbg !673
  %57 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %56, align 8, !dbg !675, !tbaa !521
  %58 = icmp eq %struct.halide_buffer_t* %57, null, !dbg !675
  br i1 %58, label %59, label %6, !dbg !676, !llvm.loop !732

59:                                               ; preds = %55, %2
  ret i32 0, !dbg !734
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local %struct.halide_buffer_t* @_halide_buffer_set_bounds(%struct.halide_buffer_t* %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #0 !dbg !735 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !739, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i32 %1, metadata !740, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i32 %2, metadata !741, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i32 %3, metadata !742, metadata !DIExpression()), !dbg !743
  %5 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6, !dbg !744
  %6 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %5, align 8, !dbg !744, !tbaa !249
  %7 = sext i32 %1 to i64, !dbg !745
  %8 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %6, i64 %7, i32 0, !dbg !746
  store i32 %2, i32* %8, align 4, !dbg !747, !tbaa !252
  %9 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %6, i64 %7, i32 1, !dbg !748
  store i32 %3, i32* %9, align 4, !dbg !749, !tbaa !264
  ret %struct.halide_buffer_t* %0, !dbg !750
}

declare !dbg !751 dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { alwaysinline nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!189, !190, !191}
!llvm.ident = !{!192}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, imports: !184, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/halide_buffer_t.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
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
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 1415, baseType: !15, size: 32, elements: !16, identifier: "_ZTS19halide_buffer_flags")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "halide_buffer_flag_host_dirty", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "halide_buffer_flag_device_dirty", value: 2, isUnsigned: true)
!19 = !{!20, !21, !5, !22, !24}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !4, line: 413, baseType: !3)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !6, line: 9, baseType: !23)
!23 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !4, line: 1550, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !4, line: 1423, size: 448, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !28, identifier: "_ZTS15halide_buffer_t")
!28 = !{!29, !32, !86, !87, !88, !122, !124, !147, !148, !153, !157, !160, !161, !164, !165, !170, !173, !174, !175, !180, !183}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !27, file: !4, line: 1425, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 10, baseType: !31)
!31 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !27, file: !4, line: 1428, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !4, line: 723, size: 1024, flags: DIFlagTypePassByValue, elements: !36, identifier: "_ZTS25halide_device_interface_t")
!36 = !{!37, !44, !48, !49, !53, !54, !55, !56, !57, !61, !67, !71, !72, !76, !77, !82}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !35, file: !4, line: 724, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !42, !43, !33}
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !35, file: !4, line: 726, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!41, !42, !43}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !35, file: !4, line: 727, baseType: !45, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !35, file: !4, line: 728, baseType: !50, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !42, !33}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !35, file: !4, line: 730, baseType: !45, size: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !35, file: !4, line: 731, baseType: !38, size: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !35, file: !4, line: 733, baseType: !38, size: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !35, file: !4, line: 735, baseType: !45, size: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !35, file: !4, line: 736, baseType: !58, size: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!41, !42, !43, !33, !43}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !35, file: !4, line: 738, baseType: !62, size: 64, offset: 576)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!41, !42, !65, !43}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !35, file: !4, line: 740, baseType: !68, size: 64, offset: 640)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!41, !42, !65, !41, !41, !43}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !35, file: !4, line: 742, baseType: !45, size: 64, offset: 704)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !35, file: !4, line: 743, baseType: !73, size: 64, offset: 768)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!41, !42, !43, !30, !33}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !35, file: !4, line: 745, baseType: !45, size: 64, offset: 832)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !35, file: !4, line: 746, baseType: !78, size: 64, offset: 896)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!41, !42, !81, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !35, file: !4, line: 747, baseType: !83, size: 64, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !4, line: 707, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS30halide_device_interface_impl_t")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !27, file: !4, line: 1433, baseType: !20, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !27, file: !4, line: 1436, baseType: !30, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !27, file: !4, line: 1439, baseType: !89, size: 32, offset: 256)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !4, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !90, identifier: "_ZTS13halide_type_t")
!90 = !{!91, !92, !93, !96, !100, !103, !108, !113, !114, !115, !118}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !89, file: !4, line: 434, baseType: !21, size: 8, align: 8)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !89, file: !4, line: 442, baseType: !5, size: 8, align: 8, offset: 8)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !89, file: !4, line: 446, baseType: !94, size: 16, align: 16, offset: 16)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !6, line: 14, baseType: !95)
!95 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!96 = !DISubprogram(name: "halide_type_t", scope: !89, file: !4, line: 453, type: !97, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !99, !21, !5, !94}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100 = !DISubprogram(name: "halide_type_t", scope: !89, file: !4, line: 459, type: !101, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !99}
!103 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !89, file: !4, line: 463, type: !104, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!104 = !DISubroutineType(types: !105)
!105 = !{!89, !106, !94}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!108 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !89, file: !4, line: 468, type: !109, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!109 = !DISubroutineType(types: !110)
!110 = !{!111, !106, !112}
!111 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!112 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !107, size: 64)
!113 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !89, file: !4, line: 472, type: !109, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!114 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !89, file: !4, line: 476, type: !109, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !89, file: !4, line: 481, type: !116, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!116 = !DISubroutineType(types: !117)
!117 = !{!41, !106}
!118 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !89, file: !4, line: 485, type: !119, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !106}
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 12, baseType: !15)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !27, file: !4, line: 1442, baseType: !123, size: 32, offset: 288)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !6, line: 11, baseType: !41)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !27, file: !4, line: 1446, baseType: !125, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !4, line: 1409, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !4, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !128, identifier: "_ZTS18halide_dimension_t")
!128 = !{!129, !130, !131, !132, !133, !137, !140, !146}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !127, file: !4, line: 1383, baseType: !123, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !127, file: !4, line: 1383, baseType: !123, size: 32, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !127, file: !4, line: 1383, baseType: !123, size: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !4, line: 1386, baseType: !121, size: 32, offset: 96)
!133 = !DISubprogram(name: "halide_dimension_t", scope: !127, file: !4, line: 1388, type: !134, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!137 = !DISubprogram(name: "halide_dimension_t", scope: !127, file: !4, line: 1389, type: !138, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !136, !123, !123, !123, !121}
!140 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !127, file: !4, line: 1393, type: !141, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!141 = !DISubroutineType(types: !142)
!142 = !{!111, !143, !145}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!145 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !144, size: 64)
!146 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !127, file: !4, line: 1400, type: !141, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !27, file: !4, line: 1449, baseType: !42, size: 64, offset: 384)
!148 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !27, file: !4, line: 1454, type: !149, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!149 = !DISubroutineType(types: !150)
!150 = !{!111, !151, !152}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !4, line: 1416, baseType: !14)
!153 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !27, file: !4, line: 1458, type: !154, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !156, !152, !111}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!157 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !27, file: !4, line: 1466, type: !158, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!158 = !DISubroutineType(types: !159)
!159 = !{!111, !151}
!160 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !27, file: !4, line: 1470, type: !158, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!161 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !27, file: !4, line: 1474, type: !162, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !156, !111}
!164 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !27, file: !4, line: 1478, type: !162, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !27, file: !4, line: 1485, type: !166, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DISubroutineType(types: !167)
!167 = !{!168, !151}
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 27, baseType: !169)
!169 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!170 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !27, file: !4, line: 1495, type: !171, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DISubroutineType(types: !172)
!172 = !{!20, !151}
!173 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !27, file: !4, line: 1506, type: !171, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !27, file: !4, line: 1518, type: !166, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !27, file: !4, line: 1523, type: !176, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!176 = !DISubroutineType(types: !177)
!177 = !{!20, !151, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!180 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !27, file: !4, line: 1534, type: !181, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DISubroutineType(types: !182)
!182 = !{!41, !156, !42}
!183 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !27, file: !4, line: 1545, type: !158, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!184 = !{!185}
!185 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !186, file: !6, line: 225)
!186 = !DINamespace(name: "Internal", scope: !187)
!187 = !DINamespace(name: "Runtime", scope: !188)
!188 = !DINamespace(name: "Halide", scope: null)
!189 = !{i32 7, !"Dwarf Version", i32 4}
!190 = !{i32 2, !"Debug Info Version", i32 3}
!191 = !{i32 1, !"wchar_size", i32 4}
!192 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!193 = distinct !DISubprogram(name: "_halide_buffer_get_dimensions", scope: !194, file: !194, line: 18, type: !195, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !199)
!194 = !DIFile(filename: "src/runtime/halide_buffer_t.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!195 = !DISubroutineType(types: !196)
!196 = !{!41, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!199 = !{!200}
!200 = !DILocalVariable(name: "buf", arg: 1, scope: !193, file: !194, line: 18, type: !197)
!201 = !DILocation(line: 0, scope: !193)
!202 = !DILocation(line: 19, column: 17, scope: !193)
!203 = !{!204, !212, i64 36}
!204 = !{!"_ZTS15halide_buffer_t", !205, i64 0, !208, i64 8, !208, i64 16, !205, i64 24, !209, i64 32, !212, i64 36, !208, i64 40, !208, i64 48}
!205 = !{!"long long", !206, i64 0}
!206 = !{!"omnipotent char", !207, i64 0}
!207 = !{!"Simple C++ TBAA"}
!208 = !{!"any pointer", !206, i64 0}
!209 = !{!"_ZTS13halide_type_t", !210, i64 0, !206, i64 1, !211, i64 2}
!210 = !{!"_ZTS18halide_type_code_t", !206, i64 0}
!211 = !{!"short", !206, i64 0}
!212 = !{!"int", !206, i64 0}
!213 = !DILocation(line: 19, column: 5, scope: !193)
!214 = distinct !DISubprogram(name: "_halide_buffer_get_host", scope: !194, file: !194, line: 23, type: !215, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{!20, !197}
!217 = !{!218}
!218 = !DILocalVariable(name: "buf", arg: 1, scope: !214, file: !194, line: 23, type: !197)
!219 = !DILocation(line: 0, scope: !214)
!220 = !DILocation(line: 24, column: 17, scope: !214)
!221 = !{!204, !208, i64 16}
!222 = !DILocation(line: 24, column: 5, scope: !214)
!223 = distinct !DISubprogram(name: "_halide_buffer_get_device", scope: !194, file: !194, line: 28, type: !224, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !226)
!224 = !DISubroutineType(types: !225)
!225 = !{!30, !197}
!226 = !{!227}
!227 = !DILocalVariable(name: "buf", arg: 1, scope: !223, file: !194, line: 28, type: !197)
!228 = !DILocation(line: 0, scope: !223)
!229 = !DILocation(line: 29, column: 17, scope: !223)
!230 = !{!204, !205, i64 0}
!231 = !DILocation(line: 29, column: 5, scope: !223)
!232 = distinct !DISubprogram(name: "_halide_buffer_get_device_interface", scope: !194, file: !194, line: 33, type: !233, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !235)
!233 = !DISubroutineType(types: !234)
!234 = !{!33, !197}
!235 = !{!236}
!236 = !DILocalVariable(name: "buf", arg: 1, scope: !232, file: !194, line: 33, type: !197)
!237 = !DILocation(line: 0, scope: !232)
!238 = !DILocation(line: 34, column: 17, scope: !232)
!239 = !{!204, !208, i64 8}
!240 = !DILocation(line: 34, column: 5, scope: !232)
!241 = distinct !DISubprogram(name: "_halide_buffer_get_min", scope: !194, file: !194, line: 38, type: !242, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{!41, !197, !41}
!244 = !{!245, !246}
!245 = !DILocalVariable(name: "buf", arg: 1, scope: !241, file: !194, line: 38, type: !197)
!246 = !DILocalVariable(name: "d", arg: 2, scope: !241, file: !194, line: 38, type: !41)
!247 = !DILocation(line: 0, scope: !241)
!248 = !DILocation(line: 39, column: 17, scope: !241)
!249 = !{!204, !208, i64 40}
!250 = !DILocation(line: 39, column: 12, scope: !241)
!251 = !DILocation(line: 39, column: 24, scope: !241)
!252 = !{!253, !212, i64 0}
!253 = !{!"_ZTS18halide_dimension_t", !212, i64 0, !212, i64 4, !212, i64 8, !212, i64 12}
!254 = !DILocation(line: 39, column: 5, scope: !241)
!255 = distinct !DISubprogram(name: "_halide_buffer_get_max", scope: !194, file: !194, line: 43, type: !242, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !256)
!256 = !{!257, !258}
!257 = !DILocalVariable(name: "buf", arg: 1, scope: !255, file: !194, line: 43, type: !197)
!258 = !DILocalVariable(name: "d", arg: 2, scope: !255, file: !194, line: 43, type: !41)
!259 = !DILocation(line: 0, scope: !255)
!260 = !DILocation(line: 44, column: 17, scope: !255)
!261 = !DILocation(line: 44, column: 12, scope: !255)
!262 = !DILocation(line: 44, column: 24, scope: !255)
!263 = !DILocation(line: 44, column: 42, scope: !255)
!264 = !{!253, !212, i64 4}
!265 = !DILocation(line: 44, column: 28, scope: !255)
!266 = !DILocation(line: 44, column: 49, scope: !255)
!267 = !DILocation(line: 44, column: 5, scope: !255)
!268 = distinct !DISubprogram(name: "_halide_buffer_get_extent", scope: !194, file: !194, line: 48, type: !242, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !269)
!269 = !{!270, !271}
!270 = !DILocalVariable(name: "buf", arg: 1, scope: !268, file: !194, line: 48, type: !197)
!271 = !DILocalVariable(name: "d", arg: 2, scope: !268, file: !194, line: 48, type: !41)
!272 = !DILocation(line: 0, scope: !268)
!273 = !DILocation(line: 49, column: 17, scope: !268)
!274 = !DILocation(line: 49, column: 12, scope: !268)
!275 = !DILocation(line: 49, column: 24, scope: !268)
!276 = !DILocation(line: 49, column: 5, scope: !268)
!277 = distinct !DISubprogram(name: "_halide_buffer_get_stride", scope: !194, file: !194, line: 53, type: !242, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !278)
!278 = !{!279, !280}
!279 = !DILocalVariable(name: "buf", arg: 1, scope: !277, file: !194, line: 53, type: !197)
!280 = !DILocalVariable(name: "d", arg: 2, scope: !277, file: !194, line: 53, type: !41)
!281 = !DILocation(line: 0, scope: !277)
!282 = !DILocation(line: 54, column: 17, scope: !277)
!283 = !DILocation(line: 54, column: 12, scope: !277)
!284 = !DILocation(line: 54, column: 24, scope: !277)
!285 = !{!253, !212, i64 8}
!286 = !DILocation(line: 54, column: 5, scope: !277)
!287 = distinct !DISubprogram(name: "_halide_buffer_set_host_dirty", scope: !194, file: !194, line: 58, type: !288, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !290)
!288 = !DISubroutineType(types: !289)
!289 = !{!41, !25, !111}
!290 = !{!291, !292}
!291 = !DILocalVariable(name: "buf", arg: 1, scope: !287, file: !194, line: 58, type: !25)
!292 = !DILocalVariable(name: "val", arg: 2, scope: !287, file: !194, line: 58, type: !111)
!293 = !DILocation(line: 0, scope: !287)
!294 = !DILocalVariable(name: "this", arg: 1, scope: !295, type: !43, flags: DIFlagArtificial | DIFlagObjectPointer)
!295 = distinct !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !27, file: !4, line: 1474, type: !162, scopeLine: 1474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !161, retainedNodes: !296)
!296 = !{!294, !297}
!297 = !DILocalVariable(name: "v", arg: 2, scope: !295, file: !4, line: 1474, type: !111)
!298 = !DILocation(line: 0, scope: !295, inlinedAt: !299)
!299 = distinct !DILocation(line: 59, column: 10, scope: !287)
!300 = !DILocalVariable(name: "this", arg: 1, scope: !301, type: !43, flags: DIFlagArtificial | DIFlagObjectPointer)
!301 = distinct !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !27, file: !4, line: 1458, type: !154, scopeLine: 1458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !153, retainedNodes: !302)
!302 = !{!300, !303, !304}
!303 = !DILocalVariable(name: "flag", arg: 2, scope: !301, file: !4, line: 1458, type: !152)
!304 = !DILocalVariable(name: "value", arg: 3, scope: !301, file: !4, line: 1458, type: !111)
!305 = !DILocation(line: 0, scope: !301, inlinedAt: !306)
!306 = distinct !DILocation(line: 1475, column: 9, scope: !295, inlinedAt: !299)
!307 = !DILocation(line: 0, scope: !308, inlinedAt: !306)
!308 = distinct !DILexicalBlock(scope: !301, file: !4, line: 1459, column: 13)
!309 = !{!204, !205, i64 24}
!310 = !DILocation(line: 1459, column: 13, scope: !301, inlinedAt: !306)
!311 = !DILocation(line: 60, column: 5, scope: !287)
!312 = distinct !DISubprogram(name: "_halide_buffer_set_device_dirty", scope: !194, file: !194, line: 64, type: !288, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !313)
!313 = !{!314, !315}
!314 = !DILocalVariable(name: "buf", arg: 1, scope: !312, file: !194, line: 64, type: !25)
!315 = !DILocalVariable(name: "val", arg: 2, scope: !312, file: !194, line: 64, type: !111)
!316 = !DILocation(line: 0, scope: !312)
!317 = !DILocalVariable(name: "this", arg: 1, scope: !318, type: !43, flags: DIFlagArtificial | DIFlagObjectPointer)
!318 = distinct !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !27, file: !4, line: 1478, type: !162, scopeLine: 1478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !164, retainedNodes: !319)
!319 = !{!317, !320}
!320 = !DILocalVariable(name: "v", arg: 2, scope: !318, file: !4, line: 1478, type: !111)
!321 = !DILocation(line: 0, scope: !318, inlinedAt: !322)
!322 = distinct !DILocation(line: 65, column: 10, scope: !312)
!323 = !DILocation(line: 0, scope: !301, inlinedAt: !324)
!324 = distinct !DILocation(line: 1479, column: 9, scope: !318, inlinedAt: !322)
!325 = !DILocation(line: 0, scope: !308, inlinedAt: !324)
!326 = !DILocation(line: 1459, column: 13, scope: !301, inlinedAt: !324)
!327 = !DILocation(line: 66, column: 5, scope: !312)
!328 = distinct !DISubprogram(name: "_halide_buffer_get_host_dirty", scope: !194, file: !194, line: 70, type: !329, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !331)
!329 = !DISubroutineType(types: !330)
!330 = !{!111, !197}
!331 = !{!332}
!332 = !DILocalVariable(name: "buf", arg: 1, scope: !328, file: !194, line: 70, type: !197)
!333 = !DILocation(line: 0, scope: !328)
!334 = !DILocalVariable(name: "this", arg: 1, scope: !335, type: !65, flags: DIFlagArtificial | DIFlagObjectPointer)
!335 = distinct !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !27, file: !4, line: 1466, type: !158, scopeLine: 1466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !157, retainedNodes: !336)
!336 = !{!334}
!337 = !DILocation(line: 0, scope: !335, inlinedAt: !338)
!338 = distinct !DILocation(line: 71, column: 17, scope: !328)
!339 = !DILocalVariable(name: "this", arg: 1, scope: !340, type: !65, flags: DIFlagArtificial | DIFlagObjectPointer)
!340 = distinct !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !27, file: !4, line: 1454, type: !149, scopeLine: 1454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !148, retainedNodes: !341)
!341 = !{!339, !342}
!342 = !DILocalVariable(name: "flag", arg: 2, scope: !340, file: !4, line: 1454, type: !152)
!343 = !DILocation(line: 0, scope: !340, inlinedAt: !344)
!344 = distinct !DILocation(line: 1467, column: 16, scope: !335, inlinedAt: !338)
!345 = !DILocation(line: 1455, column: 17, scope: !340, inlinedAt: !344)
!346 = !DILocation(line: 1455, column: 23, scope: !340, inlinedAt: !344)
!347 = !DILocation(line: 1455, column: 31, scope: !340, inlinedAt: !344)
!348 = !DILocation(line: 71, column: 5, scope: !328)
!349 = distinct !DISubprogram(name: "_halide_buffer_get_device_dirty", scope: !194, file: !194, line: 75, type: !329, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !350)
!350 = !{!351}
!351 = !DILocalVariable(name: "buf", arg: 1, scope: !349, file: !194, line: 75, type: !197)
!352 = !DILocation(line: 0, scope: !349)
!353 = !DILocalVariable(name: "this", arg: 1, scope: !354, type: !65, flags: DIFlagArtificial | DIFlagObjectPointer)
!354 = distinct !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !27, file: !4, line: 1470, type: !158, scopeLine: 1470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !160, retainedNodes: !355)
!355 = !{!353}
!356 = !DILocation(line: 0, scope: !354, inlinedAt: !357)
!357 = distinct !DILocation(line: 76, column: 17, scope: !349)
!358 = !DILocation(line: 0, scope: !340, inlinedAt: !359)
!359 = distinct !DILocation(line: 1471, column: 16, scope: !354, inlinedAt: !357)
!360 = !DILocation(line: 1455, column: 17, scope: !340, inlinedAt: !359)
!361 = !DILocation(line: 1455, column: 23, scope: !340, inlinedAt: !359)
!362 = !DILocation(line: 1455, column: 31, scope: !340, inlinedAt: !359)
!363 = !DILocation(line: 76, column: 5, scope: !349)
!364 = distinct !DISubprogram(name: "_halide_buffer_get_shape", scope: !194, file: !194, line: 80, type: !365, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{!125, !25}
!367 = !{!368}
!368 = !DILocalVariable(name: "buf", arg: 1, scope: !364, file: !194, line: 80, type: !25)
!369 = !DILocation(line: 0, scope: !364)
!370 = !DILocation(line: 81, column: 17, scope: !364)
!371 = !DILocation(line: 81, column: 5, scope: !364)
!372 = distinct !DISubprogram(name: "_halide_buffer_is_bounds_query", scope: !194, file: !194, line: 85, type: !329, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !373)
!373 = !{!374}
!374 = !DILocalVariable(name: "buf", arg: 1, scope: !372, file: !194, line: 85, type: !197)
!375 = !DILocation(line: 0, scope: !372)
!376 = !DILocation(line: 86, column: 17, scope: !372)
!377 = !DILocation(line: 86, column: 22, scope: !372)
!378 = !DILocation(line: 86, column: 33, scope: !372)
!379 = !DILocation(line: 86, column: 41, scope: !372)
!380 = !DILocation(line: 86, column: 48, scope: !372)
!381 = !DILocation(line: 86, column: 5, scope: !372)
!382 = distinct !DISubprogram(name: "_halide_buffer_get_type", scope: !194, file: !194, line: 90, type: !383, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!121, !197}
!385 = !{!386}
!386 = !DILocalVariable(name: "buf", arg: 1, scope: !382, file: !194, line: 90, type: !197)
!387 = !DILocation(line: 0, scope: !382)
!388 = !DILocalVariable(name: "this", arg: 1, scope: !389, type: !392, flags: DIFlagArtificial | DIFlagObjectPointer)
!389 = distinct !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !89, file: !4, line: 485, type: !119, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !118, retainedNodes: !390)
!390 = !{!388, !391}
!391 = !DILocalVariable(name: "u", scope: !389, file: !4, line: 486, type: !121)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!393 = !DILocation(line: 0, scope: !389, inlinedAt: !394)
!394 = distinct !DILocation(line: 91, column: 22, scope: !382)
!395 = !DILocation(line: 486, column: 9, scope: !389, inlinedAt: !394)
!396 = !DILocation(line: 487, column: 20, scope: !389, inlinedAt: !394)
!397 = !DILocation(line: 487, column: 9, scope: !389, inlinedAt: !394)
!398 = !DILocation(line: 488, column: 16, scope: !389, inlinedAt: !394)
!399 = !{!212, !212, i64 0}
!400 = !DILocation(line: 489, column: 5, scope: !389, inlinedAt: !394)
!401 = !DILocation(line: 91, column: 5, scope: !382)
!402 = distinct !DISubprogram(name: "_halide_buffer_init", scope: !194, file: !194, line: 95, type: !403, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!25, !25, !125, !42, !30, !33, !41, !41, !41, !125, !30}
!405 = !{!406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416}
!406 = !DILocalVariable(name: "dst", arg: 1, scope: !402, file: !194, line: 95, type: !25)
!407 = !DILocalVariable(name: "dst_shape", arg: 2, scope: !402, file: !194, line: 96, type: !125)
!408 = !DILocalVariable(name: "host", arg: 3, scope: !402, file: !194, line: 97, type: !42)
!409 = !DILocalVariable(name: "device", arg: 4, scope: !402, file: !194, line: 98, type: !30)
!410 = !DILocalVariable(name: "device_interface", arg: 5, scope: !402, file: !194, line: 99, type: !33)
!411 = !DILocalVariable(name: "type_code", arg: 6, scope: !402, file: !194, line: 100, type: !41)
!412 = !DILocalVariable(name: "type_bits", arg: 7, scope: !402, file: !194, line: 100, type: !41)
!413 = !DILocalVariable(name: "dimensions", arg: 8, scope: !402, file: !194, line: 101, type: !41)
!414 = !DILocalVariable(name: "shape", arg: 9, scope: !402, file: !194, line: 102, type: !125)
!415 = !DILocalVariable(name: "flags", arg: 10, scope: !402, file: !194, line: 103, type: !30)
!416 = !DILocalVariable(name: "i", scope: !417, file: !194, line: 113, type: !41)
!417 = distinct !DILexicalBlock(scope: !418, file: !194, line: 113, column: 9)
!418 = distinct !DILexicalBlock(scope: !419, file: !194, line: 112, column: 28)
!419 = distinct !DILexicalBlock(scope: !402, file: !194, line: 112, column: 9)
!420 = !DILocation(line: 0, scope: !402)
!421 = !DILocation(line: 104, column: 10, scope: !402)
!422 = !DILocation(line: 104, column: 15, scope: !402)
!423 = !DILocation(line: 105, column: 10, scope: !402)
!424 = !DILocation(line: 105, column: 17, scope: !402)
!425 = !DILocation(line: 106, column: 10, scope: !402)
!426 = !DILocation(line: 106, column: 27, scope: !402)
!427 = !DILocation(line: 107, column: 22, scope: !402)
!428 = !DILocation(line: 107, column: 15, scope: !402)
!429 = !DILocation(line: 107, column: 20, scope: !402)
!430 = !{!204, !210, i64 32}
!431 = !DILocation(line: 108, column: 31, scope: !402)
!432 = !DILocation(line: 108, column: 15, scope: !402)
!433 = !DILocation(line: 108, column: 20, scope: !402)
!434 = !{!204, !206, i64 33}
!435 = !DILocation(line: 109, column: 15, scope: !402)
!436 = !DILocation(line: 109, column: 21, scope: !402)
!437 = !{!204, !211, i64 34}
!438 = !DILocation(line: 110, column: 10, scope: !402)
!439 = !DILocation(line: 110, column: 21, scope: !402)
!440 = !DILocation(line: 111, column: 10, scope: !402)
!441 = !DILocation(line: 111, column: 14, scope: !402)
!442 = !DILocation(line: 112, column: 15, scope: !419)
!443 = !DILocation(line: 112, column: 9, scope: !402)
!444 = !DILocation(line: 0, scope: !417)
!445 = !DILocation(line: 113, column: 27, scope: !446)
!446 = distinct !DILexicalBlock(scope: !417, file: !194, line: 113, column: 9)
!447 = !DILocation(line: 114, column: 25, scope: !448)
!448 = distinct !DILexicalBlock(scope: !446, file: !194, line: 113, column: 46)
!449 = !{i64 0, i64 4, !399, i64 4, i64 4, !399, i64 8, i64 4, !399, i64 12, i64 4, !399}
!450 = !DILocation(line: 113, column: 9, scope: !417)
!451 = distinct !{!451, !450, !452, !453}
!452 = !DILocation(line: 115, column: 9, scope: !417)
!453 = !{!"llvm.loop.mustprogress"}
!454 = !DILocation(line: 114, column: 18, scope: !448)
!455 = !DILocation(line: 114, column: 27, scope: !448)
!456 = !DILocation(line: 114, column: 13, scope: !448)
!457 = !DILocation(line: 113, column: 42, scope: !446)
!458 = !DILocation(line: 117, column: 10, scope: !402)
!459 = !DILocation(line: 117, column: 16, scope: !402)
!460 = !DILocation(line: 118, column: 5, scope: !402)
!461 = distinct !DISubprogram(name: "_halide_buffer_init_from_buffer", scope: !194, file: !194, line: 122, type: !462, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{!25, !25, !125, !197}
!464 = !{!465, !466, !467, !468}
!465 = !DILocalVariable(name: "dst", arg: 1, scope: !461, file: !194, line: 122, type: !25)
!466 = !DILocalVariable(name: "dst_shape", arg: 2, scope: !461, file: !194, line: 123, type: !125)
!467 = !DILocalVariable(name: "src", arg: 3, scope: !461, file: !194, line: 124, type: !197)
!468 = !DILocalVariable(name: "i", scope: !469, file: !194, line: 132, type: !41)
!469 = distinct !DILexicalBlock(scope: !461, file: !194, line: 132, column: 5)
!470 = !DILocation(line: 0, scope: !461)
!471 = !DILocation(line: 125, column: 22, scope: !461)
!472 = !DILocation(line: 125, column: 10, scope: !461)
!473 = !DILocation(line: 125, column: 15, scope: !461)
!474 = !DILocation(line: 126, column: 24, scope: !461)
!475 = !DILocation(line: 126, column: 10, scope: !461)
!476 = !DILocation(line: 126, column: 17, scope: !461)
!477 = !DILocation(line: 127, column: 34, scope: !461)
!478 = !DILocation(line: 127, column: 10, scope: !461)
!479 = !DILocation(line: 127, column: 27, scope: !461)
!480 = !DILocation(line: 128, column: 15, scope: !461)
!481 = !DILocation(line: 129, column: 28, scope: !461)
!482 = !DILocation(line: 129, column: 10, scope: !461)
!483 = !DILocation(line: 129, column: 21, scope: !461)
!484 = !DILocation(line: 130, column: 10, scope: !461)
!485 = !DILocation(line: 130, column: 14, scope: !461)
!486 = !DILocation(line: 131, column: 23, scope: !461)
!487 = !DILocation(line: 131, column: 10, scope: !461)
!488 = !DILocation(line: 131, column: 16, scope: !461)
!489 = !DILocation(line: 0, scope: !469)
!490 = !DILocation(line: 132, column: 23, scope: !491)
!491 = distinct !DILexicalBlock(scope: !469, file: !194, line: 132, column: 5)
!492 = !DILocation(line: 132, column: 5, scope: !469)
!493 = !DILocation(line: 133, column: 28, scope: !494)
!494 = distinct !DILexicalBlock(scope: !491, file: !194, line: 132, column: 47)
!495 = !DILocation(line: 133, column: 21, scope: !494)
!496 = !DILocation(line: 132, column: 30, scope: !491)
!497 = distinct !{!497, !492, !498, !453}
!498 = !DILocation(line: 134, column: 5, scope: !469)
!499 = !DILocation(line: 135, column: 5, scope: !461)
!500 = !DILocation(line: 133, column: 14, scope: !494)
!501 = !DILocation(line: 133, column: 23, scope: !494)
!502 = !DILocation(line: 133, column: 9, scope: !494)
!503 = !DILocation(line: 132, column: 43, scope: !491)
!504 = distinct !DISubprogram(name: "_halide_buffer_crop", scope: !194, file: !194, line: 139, type: !505, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !507)
!505 = !DISubroutineType(types: !506)
!506 = !{!25, !42, !25, !125, !197, !178, !178}
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515}
!508 = !DILocalVariable(name: "user_context", arg: 1, scope: !504, file: !194, line: 139, type: !42)
!509 = !DILocalVariable(name: "dst", arg: 2, scope: !504, file: !194, line: 140, type: !25)
!510 = !DILocalVariable(name: "dst_shape", arg: 3, scope: !504, file: !194, line: 141, type: !125)
!511 = !DILocalVariable(name: "src", arg: 4, scope: !504, file: !194, line: 142, type: !197)
!512 = !DILocalVariable(name: "min", arg: 5, scope: !504, file: !194, line: 143, type: !178)
!513 = !DILocalVariable(name: "extent", arg: 6, scope: !504, file: !194, line: 143, type: !178)
!514 = !DILocalVariable(name: "offset", scope: !504, file: !194, line: 146, type: !22)
!515 = !DILocalVariable(name: "i", scope: !516, file: !194, line: 147, type: !41)
!516 = distinct !DILexicalBlock(scope: !504, file: !194, line: 147, column: 5)
!517 = !DILocation(line: 0, scope: !504)
!518 = !DILocation(line: 144, column: 10, scope: !504)
!519 = !{i64 0, i64 8, !520, i64 8, i64 8, !521, i64 16, i64 8, !521, i64 24, i64 8, !520, i64 32, i64 1, !522, i64 33, i64 1, !523, i64 34, i64 2, !524, i64 36, i64 4, !399, i64 40, i64 8, !521, i64 48, i64 8, !521}
!520 = !{!205, !205, i64 0}
!521 = !{!208, !208, i64 0}
!522 = !{!210, !210, i64 0}
!523 = !{!206, !206, i64 0}
!524 = !{!211, !211, i64 0}
!525 = !DILocation(line: 145, column: 10, scope: !504)
!526 = !DILocation(line: 145, column: 14, scope: !504)
!527 = !DILocation(line: 0, scope: !516)
!528 = !DILocation(line: 147, column: 30, scope: !529)
!529 = distinct !DILexicalBlock(scope: !516, file: !194, line: 147, column: 5)
!530 = !DILocation(line: 147, column: 23, scope: !529)
!531 = !DILocation(line: 147, column: 5, scope: !516)
!532 = !DILocation(line: 148, column: 28, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !194, line: 147, column: 47)
!534 = !DILocation(line: 153, column: 14, scope: !535)
!535 = distinct !DILexicalBlock(scope: !504, file: !194, line: 153, column: 9)
!536 = !DILocation(line: 153, column: 9, scope: !535)
!537 = !DILocation(line: 153, column: 9, scope: !504)
!538 = !DILocation(line: 148, column: 14, scope: !533)
!539 = !DILocation(line: 148, column: 23, scope: !533)
!540 = !DILocation(line: 148, column: 9, scope: !533)
!541 = !DILocation(line: 148, column: 21, scope: !533)
!542 = !DILocation(line: 149, column: 27, scope: !533)
!543 = !DILocation(line: 149, column: 14, scope: !533)
!544 = !DILocation(line: 149, column: 21, scope: !533)
!545 = !DILocation(line: 149, column: 25, scope: !533)
!546 = !DILocation(line: 150, column: 30, scope: !533)
!547 = !DILocation(line: 150, column: 21, scope: !533)
!548 = !DILocation(line: 150, column: 28, scope: !533)
!549 = !DILocation(line: 151, column: 20, scope: !533)
!550 = !DILocation(line: 151, column: 34, scope: !533)
!551 = !DILocation(line: 151, column: 41, scope: !533)
!552 = !DILocation(line: 151, column: 27, scope: !533)
!553 = !DILocation(line: 151, column: 19, scope: !533)
!554 = !DILocation(line: 151, column: 69, scope: !533)
!555 = !DILocation(line: 151, column: 57, scope: !533)
!556 = !DILocation(line: 151, column: 46, scope: !533)
!557 = !DILocation(line: 151, column: 16, scope: !533)
!558 = !DILocation(line: 147, column: 43, scope: !529)
!559 = distinct !{!559, !531, !560, !453}
!560 = !DILocation(line: 152, column: 5, scope: !516)
!561 = !DILocalVariable(name: "this", arg: 1, scope: !562, type: !392, flags: DIFlagArtificial | DIFlagObjectPointer)
!562 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !89, file: !4, line: 481, type: !116, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !115, retainedNodes: !563)
!563 = !{!561}
!564 = !DILocation(line: 0, scope: !562, inlinedAt: !565)
!565 = distinct !DILocation(line: 154, column: 41, scope: !566)
!566 = distinct !DILexicalBlock(scope: !535, file: !194, line: 153, column: 20)
!567 = !DILocation(line: 482, column: 17, scope: !562, inlinedAt: !565)
!568 = !{!209, !206, i64 1}
!569 = !DILocation(line: 482, column: 22, scope: !562, inlinedAt: !565)
!570 = !DILocation(line: 482, column: 27, scope: !562, inlinedAt: !565)
!571 = !DILocation(line: 154, column: 29, scope: !566)
!572 = !DILocation(line: 154, column: 19, scope: !566)
!573 = !DILocation(line: 155, column: 5, scope: !566)
!574 = !DILocation(line: 156, column: 10, scope: !504)
!575 = !DILocation(line: 156, column: 27, scope: !504)
!576 = !DILocation(line: 157, column: 10, scope: !504)
!577 = !DILocation(line: 157, column: 17, scope: !504)
!578 = !DILocation(line: 158, column: 14, scope: !579)
!579 = distinct !DILexicalBlock(scope: !504, file: !194, line: 158, column: 9)
!580 = !DILocation(line: 158, column: 9, scope: !579)
!581 = !DILocation(line: 158, column: 9, scope: !504)
!582 = !DILocation(line: 159, column: 32, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !194, line: 158, column: 32)
!584 = !{!585, !208, i64 72}
!585 = !{!"_ZTS25halide_device_interface_t", !208, i64 0, !208, i64 8, !208, i64 16, !208, i64 24, !208, i64 32, !208, i64 40, !208, i64 48, !208, i64 56, !208, i64 64, !208, i64 72, !208, i64 80, !208, i64 88, !208, i64 96, !208, i64 104, !208, i64 112, !208, i64 120}
!586 = !DILocation(line: 159, column: 9, scope: !583)
!587 = !DILocation(line: 160, column: 5, scope: !583)
!588 = !DILocation(line: 161, column: 5, scope: !504)
!589 = distinct !DISubprogram(name: "_halide_buffer_retire_crop_after_extern_stage", scope: !194, file: !194, line: 169, type: !590, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !592)
!590 = !DISubroutineType(types: !591)
!591 = !{!41, !42, !42}
!592 = !{!593, !594, !595, !596, !597}
!593 = !DILocalVariable(name: "user_context", arg: 1, scope: !589, file: !194, line: 169, type: !42)
!594 = !DILocalVariable(name: "obj", arg: 2, scope: !589, file: !194, line: 170, type: !42)
!595 = !DILocalVariable(name: "buffers", scope: !589, file: !194, line: 171, type: !24)
!596 = !DILocalVariable(name: "crop", scope: !589, file: !194, line: 172, type: !25)
!597 = !DILocalVariable(name: "parent", scope: !589, file: !194, line: 173, type: !25)
!598 = !DILocation(line: 0, scope: !589)
!599 = !DILocation(line: 171, column: 33, scope: !589)
!600 = !DILocation(line: 172, column: 29, scope: !589)
!601 = !DILocation(line: 173, column: 31, scope: !589)
!602 = !DILocation(line: 175, column: 15, scope: !603)
!603 = distinct !DILexicalBlock(scope: !589, file: !194, line: 175, column: 9)
!604 = !DILocation(line: 175, column: 9, scope: !603)
!605 = !DILocation(line: 175, column: 9, scope: !589)
!606 = !DILocation(line: 176, column: 22, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !194, line: 176, column: 13)
!608 = distinct !DILexicalBlock(scope: !603, file: !194, line: 175, column: 23)
!609 = !DILocation(line: 176, column: 14, scope: !607)
!610 = !DILocation(line: 0, scope: !354, inlinedAt: !611)
!611 = distinct !DILocation(line: 180, column: 23, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !194, line: 180, column: 17)
!613 = distinct !DILexicalBlock(scope: !607, file: !194, line: 176, column: 30)
!614 = !DILocation(line: 0, scope: !354, inlinedAt: !615)
!615 = distinct !DILocation(line: 186, column: 23, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !194, line: 186, column: 17)
!617 = distinct !DILexicalBlock(scope: !607, file: !194, line: 184, column: 16)
!618 = !DILocation(line: 0, scope: !340, inlinedAt: !619)
!619 = distinct !DILocation(line: 1471, column: 16, scope: !354, inlinedAt: !611)
!620 = !DILocation(line: 0, scope: !340, inlinedAt: !621)
!621 = distinct !DILocation(line: 1471, column: 16, scope: !354, inlinedAt: !615)
!622 = !DILocation(line: 0, scope: !607)
!623 = !DILocation(line: 176, column: 13, scope: !608)
!624 = !DILocation(line: 180, column: 17, scope: !613)
!625 = !DILocation(line: 181, column: 23, scope: !626)
!626 = distinct !DILexicalBlock(scope: !612, file: !194, line: 180, column: 39)
!627 = !DILocation(line: 181, column: 41, scope: !626)
!628 = !{!585, !208, i64 32}
!629 = !DILocation(line: 181, column: 17, scope: !626)
!630 = !DILocation(line: 182, column: 13, scope: !626)
!631 = !DILocation(line: 183, column: 19, scope: !613)
!632 = !DILocation(line: 183, column: 37, scope: !613)
!633 = !{!585, !208, i64 8}
!634 = !DILocation(line: 183, column: 13, scope: !613)
!635 = !DILocation(line: 184, column: 9, scope: !613)
!636 = !DILocation(line: 186, column: 17, scope: !617)
!637 = !DILocation(line: 0, scope: !318, inlinedAt: !638)
!638 = distinct !DILocation(line: 187, column: 25, scope: !639)
!639 = distinct !DILexicalBlock(scope: !616, file: !194, line: 186, column: 39)
!640 = !DILocation(line: 0, scope: !301, inlinedAt: !641)
!641 = distinct !DILocation(line: 1479, column: 9, scope: !318, inlinedAt: !638)
!642 = !DILocation(line: 1460, column: 13, scope: !643, inlinedAt: !641)
!643 = distinct !DILexicalBlock(scope: !308, file: !4, line: 1459, column: 20)
!644 = !DILocation(line: 1460, column: 19, scope: !643, inlinedAt: !641)
!645 = !DILocation(line: 188, column: 13, scope: !639)
!646 = !DILocation(line: 189, column: 19, scope: !617)
!647 = !DILocation(line: 189, column: 37, scope: !617)
!648 = !{!585, !208, i64 88}
!649 = !DILocation(line: 189, column: 13, scope: !617)
!650 = !DILocation(line: 0, scope: !335, inlinedAt: !651)
!651 = distinct !DILocation(line: 192, column: 15, scope: !652)
!652 = distinct !DILexicalBlock(scope: !589, file: !194, line: 192, column: 9)
!653 = !DILocation(line: 0, scope: !340, inlinedAt: !654)
!654 = distinct !DILocation(line: 1467, column: 16, scope: !335, inlinedAt: !651)
!655 = !DILocation(line: 1455, column: 17, scope: !340, inlinedAt: !654)
!656 = !DILocation(line: 1455, column: 23, scope: !340, inlinedAt: !654)
!657 = !DILocation(line: 1455, column: 31, scope: !340, inlinedAt: !654)
!658 = !DILocation(line: 192, column: 9, scope: !589)
!659 = !DILocation(line: 0, scope: !295, inlinedAt: !660)
!660 = distinct !DILocation(line: 193, column: 17, scope: !661)
!661 = distinct !DILexicalBlock(scope: !652, file: !194, line: 192, column: 29)
!662 = !DILocation(line: 0, scope: !301, inlinedAt: !663)
!663 = distinct !DILocation(line: 1475, column: 9, scope: !295, inlinedAt: !660)
!664 = !DILocation(line: 1460, column: 13, scope: !643, inlinedAt: !663)
!665 = !DILocation(line: 1460, column: 19, scope: !643, inlinedAt: !663)
!666 = !DILocation(line: 194, column: 5, scope: !661)
!667 = !DILocation(line: 195, column: 5, scope: !589)
!668 = distinct !DISubprogram(name: "_halide_buffer_retire_crops_after_extern_stage", scope: !194, file: !194, line: 199, type: !590, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !669)
!669 = !{!670, !671, !672}
!670 = !DILocalVariable(name: "user_context", arg: 1, scope: !668, file: !194, line: 199, type: !42)
!671 = !DILocalVariable(name: "obj", arg: 2, scope: !668, file: !194, line: 200, type: !42)
!672 = !DILocalVariable(name: "buffers", scope: !668, file: !194, line: 201, type: !24)
!673 = !DILocation(line: 0, scope: !668)
!674 = !DILocation(line: 201, column: 33, scope: !668)
!675 = !DILocation(line: 202, column: 12, scope: !668)
!676 = !DILocation(line: 202, column: 5, scope: !668)
!677 = !DILocation(line: 0, scope: !589, inlinedAt: !678)
!678 = distinct !DILocation(line: 203, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !668, file: !194, line: 202, column: 22)
!680 = !DILocation(line: 173, column: 31, scope: !589, inlinedAt: !678)
!681 = !DILocation(line: 175, column: 15, scope: !603, inlinedAt: !678)
!682 = !DILocation(line: 175, column: 9, scope: !603, inlinedAt: !678)
!683 = !DILocation(line: 175, column: 9, scope: !589, inlinedAt: !678)
!684 = !DILocation(line: 176, column: 22, scope: !607, inlinedAt: !678)
!685 = !DILocation(line: 176, column: 14, scope: !607, inlinedAt: !678)
!686 = !DILocation(line: 0, scope: !354, inlinedAt: !687)
!687 = distinct !DILocation(line: 180, column: 23, scope: !612, inlinedAt: !678)
!688 = !DILocation(line: 0, scope: !354, inlinedAt: !689)
!689 = distinct !DILocation(line: 186, column: 23, scope: !616, inlinedAt: !678)
!690 = !DILocation(line: 0, scope: !340, inlinedAt: !691)
!691 = distinct !DILocation(line: 1471, column: 16, scope: !354, inlinedAt: !687)
!692 = !DILocation(line: 0, scope: !340, inlinedAt: !693)
!693 = distinct !DILocation(line: 1471, column: 16, scope: !354, inlinedAt: !689)
!694 = !DILocation(line: 0, scope: !607, inlinedAt: !678)
!695 = !DILocation(line: 176, column: 13, scope: !608, inlinedAt: !678)
!696 = !DILocation(line: 180, column: 17, scope: !613, inlinedAt: !678)
!697 = !DILocation(line: 181, column: 23, scope: !626, inlinedAt: !678)
!698 = !DILocation(line: 181, column: 41, scope: !626, inlinedAt: !678)
!699 = !DILocation(line: 181, column: 17, scope: !626, inlinedAt: !678)
!700 = !DILocation(line: 182, column: 13, scope: !626, inlinedAt: !678)
!701 = !DILocation(line: 183, column: 19, scope: !613, inlinedAt: !678)
!702 = !DILocation(line: 183, column: 37, scope: !613, inlinedAt: !678)
!703 = !DILocation(line: 183, column: 13, scope: !613, inlinedAt: !678)
!704 = !DILocation(line: 184, column: 9, scope: !613, inlinedAt: !678)
!705 = !DILocation(line: 186, column: 17, scope: !617, inlinedAt: !678)
!706 = !DILocation(line: 0, scope: !318, inlinedAt: !707)
!707 = distinct !DILocation(line: 187, column: 25, scope: !639, inlinedAt: !678)
!708 = !DILocation(line: 0, scope: !301, inlinedAt: !709)
!709 = distinct !DILocation(line: 1479, column: 9, scope: !318, inlinedAt: !707)
!710 = !DILocation(line: 1460, column: 13, scope: !643, inlinedAt: !709)
!711 = !DILocation(line: 1460, column: 19, scope: !643, inlinedAt: !709)
!712 = !DILocation(line: 188, column: 13, scope: !639, inlinedAt: !678)
!713 = !DILocation(line: 189, column: 19, scope: !617, inlinedAt: !678)
!714 = !DILocation(line: 189, column: 37, scope: !617, inlinedAt: !678)
!715 = !DILocation(line: 189, column: 13, scope: !617, inlinedAt: !678)
!716 = !DILocation(line: 0, scope: !335, inlinedAt: !717)
!717 = distinct !DILocation(line: 192, column: 15, scope: !652, inlinedAt: !678)
!718 = !DILocation(line: 0, scope: !340, inlinedAt: !719)
!719 = distinct !DILocation(line: 1467, column: 16, scope: !335, inlinedAt: !717)
!720 = !DILocation(line: 1455, column: 17, scope: !340, inlinedAt: !719)
!721 = !DILocation(line: 1455, column: 23, scope: !340, inlinedAt: !719)
!722 = !DILocation(line: 1455, column: 31, scope: !340, inlinedAt: !719)
!723 = !DILocation(line: 192, column: 9, scope: !589, inlinedAt: !678)
!724 = !DILocation(line: 0, scope: !295, inlinedAt: !725)
!725 = distinct !DILocation(line: 193, column: 17, scope: !661, inlinedAt: !678)
!726 = !DILocation(line: 0, scope: !301, inlinedAt: !727)
!727 = distinct !DILocation(line: 1475, column: 9, scope: !295, inlinedAt: !725)
!728 = !DILocation(line: 1460, column: 13, scope: !643, inlinedAt: !727)
!729 = !DILocation(line: 1460, column: 19, scope: !643, inlinedAt: !727)
!730 = !DILocation(line: 194, column: 5, scope: !661, inlinedAt: !678)
!731 = !DILocation(line: 204, column: 17, scope: !679)
!732 = distinct !{!732, !676, !733, !453}
!733 = !DILocation(line: 205, column: 5, scope: !668)
!734 = !DILocation(line: 206, column: 5, scope: !668)
!735 = distinct !DISubprogram(name: "_halide_buffer_set_bounds", scope: !194, file: !194, line: 210, type: !736, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{!25, !25, !41, !41, !41}
!738 = !{!739, !740, !741, !742}
!739 = !DILocalVariable(name: "buf", arg: 1, scope: !735, file: !194, line: 210, type: !25)
!740 = !DILocalVariable(name: "dim", arg: 2, scope: !735, file: !194, line: 211, type: !41)
!741 = !DILocalVariable(name: "min", arg: 3, scope: !735, file: !194, line: 211, type: !41)
!742 = !DILocalVariable(name: "extent", arg: 4, scope: !735, file: !194, line: 211, type: !41)
!743 = !DILocation(line: 0, scope: !735)
!744 = !DILocation(line: 212, column: 10, scope: !735)
!745 = !DILocation(line: 212, column: 5, scope: !735)
!746 = !DILocation(line: 212, column: 19, scope: !735)
!747 = !DILocation(line: 212, column: 23, scope: !735)
!748 = !DILocation(line: 213, column: 19, scope: !735)
!749 = !DILocation(line: 213, column: 26, scope: !735)
!750 = !DILocation(line: 214, column: 5, scope: !735)
!751 = !DISubprogram(name: "memcpy", scope: !6, file: !6, line: 94, type: !752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !756)
!752 = !DISubroutineType(types: !753)
!753 = !{!42, !42, !754, !169}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!756 = !{}
