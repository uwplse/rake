; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/halide_buffer_t.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/halide_buffer_t.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type opaque
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i32 @_halide_buffer_get_dimensions(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !192 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !199, metadata !DIExpression()), !dbg !200
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 5, !dbg !201
  %3 = load i32, i32* %2, align 4, !dbg !201, !tbaa !202
  ret i32 %3, !dbg !212
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i8* @_halide_buffer_get_host(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !213 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !217, metadata !DIExpression()), !dbg !218
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 2, !dbg !219
  %3 = load i8*, i8** %2, align 4, !dbg !219, !tbaa !220
  ret i8* %3, !dbg !221
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i64 @_halide_buffer_get_device(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !222 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !226, metadata !DIExpression()), !dbg !227
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 0, !dbg !228
  %3 = load i64, i64* %2, align 8, !dbg !228, !tbaa !229
  ret i64 %3, !dbg !230
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local %struct.halide_device_interface_t* @_halide_buffer_get_device_interface(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !231 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !235, metadata !DIExpression()), !dbg !236
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 1, !dbg !237
  %3 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %2, align 8, !dbg !237, !tbaa !238
  ret %struct.halide_device_interface_t* %3, !dbg !239
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i32 @_halide_buffer_get_min(%struct.halide_buffer_t* %0, i32 %1) local_unnamed_addr #0 !dbg !240 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !244, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i32 %1, metadata !245, metadata !DIExpression()), !dbg !246
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 6, !dbg !247
  %4 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %3, align 8, !dbg !247, !tbaa !248
  %5 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %4, i32 %1, i32 0, !dbg !249
  %6 = load i32, i32* %5, align 4, !dbg !249, !tbaa !250
  ret i32 %6, !dbg !252
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i32 @_halide_buffer_get_max(%struct.halide_buffer_t* %0, i32 %1) local_unnamed_addr #0 !dbg !253 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !255, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i32 %1, metadata !256, metadata !DIExpression()), !dbg !257
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 6, !dbg !258
  %4 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %3, align 8, !dbg !258, !tbaa !248
  %5 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %4, i32 %1, i32 0, !dbg !259
  %6 = load i32, i32* %5, align 4, !dbg !259, !tbaa !250
  %7 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %4, i32 %1, i32 1, !dbg !260
  %8 = load i32, i32* %7, align 4, !dbg !260, !tbaa !261
  %9 = add i32 %6, -1, !dbg !262
  %10 = add i32 %9, %8, !dbg !263
  ret i32 %10, !dbg !264
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i32 @_halide_buffer_get_extent(%struct.halide_buffer_t* %0, i32 %1) local_unnamed_addr #0 !dbg !265 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %1, metadata !268, metadata !DIExpression()), !dbg !269
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 6, !dbg !270
  %4 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %3, align 8, !dbg !270, !tbaa !248
  %5 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %4, i32 %1, i32 1, !dbg !271
  %6 = load i32, i32* %5, align 4, !dbg !271, !tbaa !261
  ret i32 %6, !dbg !272
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i32 @_halide_buffer_get_stride(%struct.halide_buffer_t* %0, i32 %1) local_unnamed_addr #0 !dbg !273 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !275, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 %1, metadata !276, metadata !DIExpression()), !dbg !277
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 6, !dbg !278
  %4 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %3, align 8, !dbg !278, !tbaa !248
  %5 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %4, i32 %1, i32 2, !dbg !279
  %6 = load i32, i32* %5, align 4, !dbg !279, !tbaa !280
  ret i32 %6, !dbg !281
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i32 @_halide_buffer_set_host_dirty(%struct.halide_buffer_t* %0, i1 zeroext %1) local_unnamed_addr #0 !dbg !282 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !286, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i1 %1, metadata !287, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !288
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !289, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i1 %1, metadata !292, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !293
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !295, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 1, metadata !298, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i1 %1, metadata !299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !300
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 3, !dbg !302
  %4 = load i64, i64* %3, align 8, !dbg !302, !tbaa !304
  %5 = and i64 %4, -2, !dbg !305
  %6 = zext i1 %1 to i64, !dbg !305
  %7 = or i64 %5, %6, !dbg !305
  store i64 %7, i64* %3, align 8, !dbg !302, !tbaa !304
  ret i32 0, !dbg !306
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i32 @_halide_buffer_set_device_dirty(%struct.halide_buffer_t* %0, i1 zeroext %1) local_unnamed_addr #0 !dbg !307 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !309, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i1 %1, metadata !310, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !311
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !312, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i1 %1, metadata !315, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !316
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !295, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i32 2, metadata !298, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i1 %1, metadata !299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !318
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 3, !dbg !320
  %4 = load i64, i64* %3, align 8, !dbg !320, !tbaa !304
  %5 = and i64 %4, -3, !dbg !321
  %6 = select i1 %1, i64 2, i64 0, !dbg !321
  %7 = or i64 %5, %6, !dbg !321
  store i64 %7, i64* %3, align 8, !dbg !320, !tbaa !304
  ret i32 0, !dbg !322
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_halide_buffer_get_host_dirty(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !323 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !327, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !329, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !334, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i32 1, metadata !337, metadata !DIExpression()), !dbg !338
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 3, !dbg !340
  %3 = load i64, i64* %2, align 8, !dbg !340, !tbaa !304
  %4 = and i64 %3, 1, !dbg !341
  %5 = icmp ne i64 %4, 0, !dbg !342
  ret i1 %5, !dbg !343
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_halide_buffer_get_device_dirty(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !344 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !346, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !348, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !334, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i32 2, metadata !337, metadata !DIExpression()), !dbg !353
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 3, !dbg !355
  %3 = load i64, i64* %2, align 8, !dbg !355, !tbaa !304
  %4 = and i64 %3, 2, !dbg !356
  %5 = icmp ne i64 %4, 0, !dbg !357
  ret i1 %5, !dbg !358
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local %struct.halide_dimension_t* @_halide_buffer_get_shape(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !359 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !363, metadata !DIExpression()), !dbg !364
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 6, !dbg !365
  %3 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %2, align 8, !dbg !365, !tbaa !248
  ret %struct.halide_dimension_t* %3, !dbg !366
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_halide_buffer_is_bounds_query(%struct.halide_buffer_t* %0) local_unnamed_addr #0 !dbg !367 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !369, metadata !DIExpression()), !dbg !370
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 2, !dbg !371
  %3 = load i8*, i8** %2, align 4, !dbg !371, !tbaa !220
  %4 = icmp eq i8* %3, null, !dbg !372
  br i1 %4, label %5, label %9, !dbg !373

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 0, !dbg !374
  %7 = load i64, i64* %6, align 8, !dbg !374, !tbaa !229
  %8 = icmp eq i64 %7, 0, !dbg !375
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ false, %1 ], [ %8, %5 ], !dbg !370
  ret i1 %10, !dbg !376
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i32 @_halide_buffer_get_type(%struct.halide_buffer_t* %0) local_unnamed_addr #1 !dbg !377 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !381, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !383, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)) #5, !dbg !388
  %3 = bitcast i32* %2 to i8*, !dbg !390
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5, !dbg !390
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 4, i32 0, !dbg !391
  call void @llvm.dbg.value(metadata i32* %2, metadata !386, metadata !DIExpression(DW_OP_deref)) #5, !dbg !388
  %5 = call i8* @memcpy(i8* nonnull %3, i8* nonnull %4, i32 4) #6, !dbg !392
  %6 = load i32, i32* %2, align 4, !dbg !393, !tbaa !394
  call void @llvm.dbg.value(metadata i32 %6, metadata !386, metadata !DIExpression()) #5, !dbg !388
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5, !dbg !395
  ret i32 %6, !dbg !396
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local %struct.halide_buffer_t* @_halide_buffer_init(%struct.halide_buffer_t* %0, %struct.halide_dimension_t* %1, i8* %2, i64 %3, %struct.halide_device_interface_t* %4, i32 %5, i32 %6, i32 %7, %struct.halide_dimension_t* %8, i64 %9) local_unnamed_addr #1 !dbg !397 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !401, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* %1, metadata !402, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i8* %2, metadata !403, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i64 %3, metadata !404, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata %struct.halide_device_interface_t* %4, metadata !405, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i32 %5, metadata !406, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i32 %6, metadata !407, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i32 %7, metadata !408, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* %8, metadata !409, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i64 %9, metadata !410, metadata !DIExpression()), !dbg !415
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 2, !dbg !416
  store i8* %2, i8** %11, align 4, !dbg !417, !tbaa !220
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 0, !dbg !418
  store i64 %3, i64* %12, align 8, !dbg !419, !tbaa !229
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 1, !dbg !420
  store %struct.halide_device_interface_t* %4, %struct.halide_device_interface_t** %13, align 8, !dbg !421, !tbaa !238
  %14 = trunc i32 %5 to i8, !dbg !422
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 4, i32 0, !dbg !423
  store i8 %14, i8* %15, align 8, !dbg !424, !tbaa !425
  %16 = trunc i32 %6 to i8, !dbg !426
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 4, i32 1, !dbg !427
  store i8 %16, i8* %17, align 1, !dbg !428, !tbaa !429
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 4, i32 2, !dbg !430
  store i16 1, i16* %18, align 2, !dbg !431, !tbaa !432
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 5, !dbg !433
  store i32 %7, i32* %19, align 4, !dbg !434, !tbaa !202
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 6, !dbg !435
  store %struct.halide_dimension_t* %1, %struct.halide_dimension_t** %20, align 8, !dbg !436, !tbaa !248
  %21 = icmp ne %struct.halide_dimension_t* %8, %1, !dbg !437
  %22 = icmp sgt i32 %7, 0
  %23 = and i1 %21, %22, !dbg !438
  call void @llvm.dbg.value(metadata i32 0, metadata !411, metadata !DIExpression()), !dbg !439
  br i1 %23, label %24, label %37, !dbg !438

24:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i32 0, metadata !411, metadata !DIExpression()), !dbg !439
  %25 = bitcast %struct.halide_dimension_t* %1 to i8*, !dbg !440
  %26 = bitcast %struct.halide_dimension_t* %8 to i8*, !dbg !440
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %25, i8* nonnull align 4 dereferenceable(16) %26, i32 16, i1 false), !dbg !440, !tbaa.struct !443
  call void @llvm.dbg.value(metadata i32 1, metadata !411, metadata !DIExpression()), !dbg !439
  %27 = icmp sgt i32 %7, 1, !dbg !444
  br i1 %27, label %28, label %37, !dbg !445, !llvm.loop !446

28:                                               ; preds = %24, %28
  %29 = phi i32 [ %35, %28 ], [ 1, %24 ]
  %30 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %20, align 8, !dbg !449, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %29, metadata !411, metadata !DIExpression()), !dbg !439
  %31 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i32 %29, !dbg !450
  %32 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %30, i32 %29, !dbg !451
  %33 = bitcast %struct.halide_dimension_t* %32 to i8*, !dbg !440
  %34 = bitcast %struct.halide_dimension_t* %31 to i8*, !dbg !440
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %33, i8* nonnull align 4 dereferenceable(16) %34, i32 16, i1 false), !dbg !440, !tbaa.struct !443
  %35 = add nuw nsw i32 %29, 1, !dbg !452
  call void @llvm.dbg.value(metadata i32 %35, metadata !411, metadata !DIExpression()), !dbg !439
  %36 = icmp slt i32 %35, %7, !dbg !444
  br i1 %36, label %28, label %37, !dbg !445, !llvm.loop !446

37:                                               ; preds = %28, %24, %10
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 3, !dbg !453
  store i64 %9, i64* %38, align 8, !dbg !454, !tbaa !304
  ret %struct.halide_buffer_t* %0, !dbg !455
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local %struct.halide_buffer_t* @_halide_buffer_init_from_buffer(%struct.halide_buffer_t* %0, %struct.halide_dimension_t* %1, %struct.halide_buffer_t* %2) local_unnamed_addr #1 !dbg !456 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !460, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* %1, metadata !461, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !462, metadata !DIExpression()), !dbg !465
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 2, !dbg !466
  %5 = load i8*, i8** %4, align 4, !dbg !466, !tbaa !220
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 2, !dbg !467
  store i8* %5, i8** %6, align 4, !dbg !468, !tbaa !220
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 0, !dbg !469
  %8 = load i64, i64* %7, align 8, !dbg !469, !tbaa !229
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 0, !dbg !470
  store i64 %8, i64* %9, align 8, !dbg !471, !tbaa !229
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 1, !dbg !472
  %11 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %10, align 8, !dbg !472, !tbaa !238
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 1, !dbg !473
  store %struct.halide_device_interface_t* %11, %struct.halide_device_interface_t** %12, align 8, !dbg !474, !tbaa !238
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 4, i32 0, !dbg !475
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 4, i32 0, !dbg !475
  %15 = bitcast i8* %14 to i32*, !dbg !475
  %16 = bitcast i8* %13 to i32*, !dbg !475
  %17 = load i32, i32* %15, align 8, !dbg !475
  store i32 %17, i32* %16, align 8, !dbg !475
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 5, !dbg !476
  %19 = load i32, i32* %18, align 4, !dbg !476, !tbaa !202
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 5, !dbg !477
  store i32 %19, i32* %20, align 4, !dbg !478, !tbaa !202
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 6, !dbg !479
  store %struct.halide_dimension_t* %1, %struct.halide_dimension_t** %21, align 8, !dbg !480, !tbaa !248
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 3, !dbg !481
  %23 = load i64, i64* %22, align 8, !dbg !481, !tbaa !304
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 3, !dbg !482
  store i64 %23, i64* %24, align 8, !dbg !483, !tbaa !304
  call void @llvm.dbg.value(metadata i32 0, metadata !463, metadata !DIExpression()), !dbg !484
  %25 = icmp sgt i32 %19, 0, !dbg !485
  br i1 %25, label %26, label %33, !dbg !487

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 6
  call void @llvm.dbg.value(metadata i32 0, metadata !463, metadata !DIExpression()), !dbg !484
  %28 = bitcast %struct.halide_dimension_t** %27 to i8**, !dbg !488
  %29 = load i8*, i8** %28, align 8, !dbg !488, !tbaa !248
  %30 = bitcast %struct.halide_dimension_t* %1 to i8*, !dbg !490
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %30, i8* nonnull align 4 dereferenceable(16) %29, i32 16, i1 false), !dbg !490, !tbaa.struct !443
  call void @llvm.dbg.value(metadata i32 1, metadata !463, metadata !DIExpression()), !dbg !484
  %31 = load i32, i32* %20, align 4, !dbg !491, !tbaa !202
  %32 = icmp sgt i32 %31, 1, !dbg !485
  br i1 %32, label %34, label %33, !dbg !487, !llvm.loop !492

33:                                               ; preds = %34, %26, %3
  ret %struct.halide_buffer_t* %0, !dbg !494

34:                                               ; preds = %26, %34
  %35 = phi i32 [ %42, %34 ], [ 1, %26 ]
  %36 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %21, align 8, !dbg !495, !tbaa !248
  call void @llvm.dbg.value(metadata i32 %35, metadata !463, metadata !DIExpression()), !dbg !484
  %37 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %27, align 8, !dbg !488, !tbaa !248
  %38 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %37, i32 %35, !dbg !496
  %39 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i32 %35, !dbg !497
  %40 = bitcast %struct.halide_dimension_t* %39 to i8*, !dbg !490
  %41 = bitcast %struct.halide_dimension_t* %38 to i8*, !dbg !490
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %40, i8* nonnull align 4 dereferenceable(16) %41, i32 16, i1 false), !dbg !490, !tbaa.struct !443
  %42 = add nuw nsw i32 %35, 1, !dbg !498
  call void @llvm.dbg.value(metadata i32 %42, metadata !463, metadata !DIExpression()), !dbg !484
  %43 = load i32, i32* %20, align 4, !dbg !491, !tbaa !202
  %44 = icmp slt i32 %42, %43, !dbg !485
  br i1 %44, label %34, label %33, !dbg !487, !llvm.loop !492
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local %struct.halide_buffer_t* @_halide_buffer_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_dimension_t* %2, %struct.halide_buffer_t* %3, i32* %4, i32* %5) local_unnamed_addr #1 !dbg !499 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !504, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* %2, metadata !505, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !506, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32* %4, metadata !507, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32* %5, metadata !508, metadata !DIExpression()), !dbg !512
  %7 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !513
  %8 = bitcast %struct.halide_buffer_t* %3 to i8*, !dbg !513
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(40) %7, i8* nonnull align 8 dereferenceable(40) %8, i32 40, i1 false), !dbg !513, !tbaa.struct !514
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6, !dbg !520
  store %struct.halide_dimension_t* %2, %struct.halide_dimension_t** %9, align 8, !dbg !521, !tbaa !248
  call void @llvm.dbg.value(metadata i64 0, metadata !509, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 0, metadata !510, metadata !DIExpression()), !dbg !522
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !523
  %11 = load i32, i32* %10, align 4, !dbg !523, !tbaa !202
  %12 = icmp sgt i32 %11, 0, !dbg !525
  br i1 %12, label %13, label %18, !dbg !526

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %15 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %14, align 8, !dbg !527, !tbaa !248
  br label %23, !dbg !526

16:                                               ; preds = %23
  %17 = trunc i64 %49 to i32, !dbg !526
  br label %18, !dbg !529

18:                                               ; preds = %16, %6
  %19 = phi i32 [ 0, %6 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !529
  %21 = load i8*, i8** %20, align 4, !dbg !529, !tbaa !220
  %22 = icmp eq i8* %21, null, !dbg !531
  br i1 %22, label %61, label %53, !dbg !532

23:                                               ; preds = %13, %23
  %24 = phi %struct.halide_dimension_t* [ %2, %13 ], [ %34, %23 ], !dbg !533
  %25 = phi %struct.halide_dimension_t* [ %15, %13 ], [ %40, %23 ], !dbg !527
  %26 = phi i32 [ 0, %13 ], [ %50, %23 ]
  %27 = phi i64 [ 0, %13 ], [ %49, %23 ]
  call void @llvm.dbg.value(metadata i32 %26, metadata !510, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i64 %27, metadata !509, metadata !DIExpression()), !dbg !512
  %28 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %25, i32 %26, !dbg !534
  %29 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %24, i32 %26, !dbg !535
  %30 = bitcast %struct.halide_dimension_t* %29 to i8*, !dbg !536
  %31 = bitcast %struct.halide_dimension_t* %28 to i8*, !dbg !536
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %30, i8* nonnull align 4 dereferenceable(16) %31, i32 16, i1 false), !dbg !536, !tbaa.struct !443
  %32 = getelementptr inbounds i32, i32* %4, i32 %26, !dbg !537
  %33 = load i32, i32* %32, align 4, !dbg !537, !tbaa !394
  %34 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %9, align 8, !dbg !538, !tbaa !248
  %35 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %34, i32 %26, i32 0, !dbg !539
  store i32 %33, i32* %35, align 4, !dbg !540, !tbaa !250
  %36 = getelementptr inbounds i32, i32* %5, i32 %26, !dbg !541
  %37 = load i32, i32* %36, align 4, !dbg !541, !tbaa !394
  %38 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %34, i32 %26, i32 1, !dbg !542
  store i32 %37, i32* %38, align 4, !dbg !543, !tbaa !261
  %39 = load i32, i32* %32, align 4, !dbg !544, !tbaa !394
  %40 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %14, align 8, !dbg !545, !tbaa !248
  %41 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %40, i32 %26, i32 0, !dbg !546
  %42 = load i32, i32* %41, align 4, !dbg !546, !tbaa !250
  %43 = sub nsw i32 %39, %42, !dbg !547
  %44 = zext i32 %43 to i64, !dbg !548
  %45 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %40, i32 %26, i32 2, !dbg !549
  %46 = load i32, i32* %45, align 4, !dbg !549, !tbaa !280
  %47 = zext i32 %46 to i64, !dbg !550
  %48 = mul nuw i64 %44, %47, !dbg !551
  %49 = add i64 %48, %27, !dbg !552
  call void @llvm.dbg.value(metadata i64 %49, metadata !509, metadata !DIExpression()), !dbg !512
  %50 = add nuw nsw i32 %26, 1, !dbg !553
  call void @llvm.dbg.value(metadata i32 %50, metadata !510, metadata !DIExpression()), !dbg !522
  %51 = load i32, i32* %10, align 4, !dbg !523, !tbaa !202
  %52 = icmp slt i32 %50, %51, !dbg !525
  br i1 %52, label %23, label %16, !dbg !526, !llvm.loop !554

53:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !556, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !559
  %54 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1, !dbg !562
  %55 = load i8, i8* %54, align 1, !dbg !562, !tbaa !563
  %56 = zext i8 %55 to i32, !dbg !562
  %57 = add nuw nsw i32 %56, 7, !dbg !564
  %58 = lshr i32 %57, 3, !dbg !565
  %59 = mul i32 %58, %19, !dbg !566
  %60 = getelementptr inbounds i8, i8* %21, i32 %59, !dbg !566
  store i8* %60, i8** %20, align 4, !dbg !566, !tbaa !220
  br label %61, !dbg !567

61:                                               ; preds = %53, %18
  %62 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 1, !dbg !568
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %62, align 8, !dbg !569, !tbaa !238
  %63 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !570
  store i64 0, i64* %63, align 8, !dbg !571, !tbaa !229
  %64 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 1, !dbg !572
  %65 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %64, align 8, !dbg !572, !tbaa !238
  %66 = icmp eq %struct.halide_device_interface_t* %65, null, !dbg !574
  br i1 %66, label %71, label %67, !dbg !575

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %65, i32 0, i32 9, !dbg !576
  %69 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)** %68, align 4, !dbg !576, !tbaa !578
  %70 = tail call i32 %69(i8* %0, %struct.halide_buffer_t* nonnull %3, %struct.halide_buffer_t* nonnull %1) #6, !dbg !580
  br label %71, !dbg !581

71:                                               ; preds = %67, %61
  ret %struct.halide_buffer_t* %1, !dbg !582
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i32 @_halide_buffer_retire_crop_after_extern_stage(i8* %0, i8* %1) local_unnamed_addr #1 !dbg !583 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !587, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i8* %1, metadata !588, metadata !DIExpression()), !dbg !592
  %3 = bitcast i8* %1 to %struct.halide_buffer_t**, !dbg !593
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %3, metadata !589, metadata !DIExpression()), !dbg !592
  %4 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %3, align 4, !dbg !594, !tbaa !516
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !590, metadata !DIExpression()), !dbg !592
  %5 = getelementptr inbounds i8, i8* %1, i32 4, !dbg !595
  %6 = bitcast i8* %5 to %struct.halide_buffer_t**, !dbg !595
  %7 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %6, align 4, !dbg !595, !tbaa !516
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !591, metadata !DIExpression()), !dbg !592
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i32 0, i32 0, !dbg !596
  %9 = load i64, i64* %8, align 8, !dbg !596, !tbaa !229
  %10 = icmp eq i64 %9, 0, !dbg !598
  br i1 %10, label %43, label %11, !dbg !599

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i32 0, i32 0, !dbg !600
  %13 = load i64, i64* %12, align 8, !dbg !600, !tbaa !229
  %14 = icmp eq i64 %13, 0, !dbg !603
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !348, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !348, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !334, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !334, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i32 2, metadata !337, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i32 2, metadata !337, metadata !DIExpression()), !dbg !614
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i32 0, i32 3, !dbg !616
  %16 = load i64, i64* %15, align 8, !dbg !616, !tbaa !304
  %17 = and i64 %16, 2, !dbg !616
  %18 = icmp eq i64 %17, 0, !dbg !616
  br i1 %14, label %19, label %32, !dbg !617

19:                                               ; preds = %11
  br i1 %18, label %26, label %20, !dbg !618

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i32 0, i32 1, !dbg !619
  %22 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %21, align 8, !dbg !619, !tbaa !238
  %23 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %22, i32 0, i32 4, !dbg !621
  %24 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %23, align 4, !dbg !621, !tbaa !622
  %25 = tail call i32 %24(i8* %0, %struct.halide_buffer_t* nonnull %4) #6, !dbg !623
  br label %26, !dbg !624

26:                                               ; preds = %20, %19
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i32 0, i32 1, !dbg !625
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !dbg !625, !tbaa !238
  %29 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %28, i32 0, i32 1, !dbg !626
  %30 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %29, align 4, !dbg !626, !tbaa !627
  %31 = tail call i32 %30(i8* %0, %struct.halide_buffer_t* nonnull %4) #6, !dbg !628
  br label %43, !dbg !629

32:                                               ; preds = %11
  br i1 %18, label %37, label %33, !dbg !630

33:                                               ; preds = %32
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !312, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i1 true, metadata !315, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !631
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !295, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i32 2, metadata !298, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i1 true, metadata !299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !634
  %34 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i32 0, i32 3, !dbg !636
  %35 = load i64, i64* %34, align 8, !dbg !638, !tbaa !304
  %36 = or i64 %35, 2, !dbg !638
  store i64 %36, i64* %34, align 8, !dbg !638, !tbaa !304
  br label %37, !dbg !639

37:                                               ; preds = %33, %32
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i32 0, i32 1, !dbg !640
  %39 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %38, align 8, !dbg !640, !tbaa !238
  %40 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %39, i32 0, i32 11, !dbg !641
  %41 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %40, align 4, !dbg !641, !tbaa !642
  %42 = tail call i32 %41(i8* %0, %struct.halide_buffer_t* nonnull %4) #6, !dbg !643
  br label %43

43:                                               ; preds = %26, %37, %2
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !329, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !334, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i32 1, metadata !337, metadata !DIExpression()), !dbg !647
  %44 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i32 0, i32 3, !dbg !649
  %45 = load i64, i64* %44, align 8, !dbg !649, !tbaa !304
  %46 = and i64 %45, 1, !dbg !650
  %47 = icmp eq i64 %46, 0, !dbg !651
  br i1 %47, label %52, label %48, !dbg !652

48:                                               ; preds = %43
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !289, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i1 true, metadata !292, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !653
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !295, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i32 1, metadata !298, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i1 true, metadata !299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !656
  %49 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i32 0, i32 3, !dbg !658
  %50 = load i64, i64* %49, align 8, !dbg !659, !tbaa !304
  %51 = or i64 %50, 1, !dbg !659
  store i64 %51, i64* %49, align 8, !dbg !659, !tbaa !304
  br label %52, !dbg !660

52:                                               ; preds = %48, %43
  ret i32 0, !dbg !661
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i32 @_halide_buffer_retire_crops_after_extern_stage(i8* %0, i8* %1) local_unnamed_addr #1 !dbg !662 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !664, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i8* %1, metadata !665, metadata !DIExpression()), !dbg !667
  %3 = bitcast i8* %1 to %struct.halide_buffer_t**, !dbg !668
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %3, metadata !666, metadata !DIExpression()), !dbg !667
  %4 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %3, align 4, !dbg !669, !tbaa !516
  %5 = icmp eq %struct.halide_buffer_t* %4, null, !dbg !669
  br i1 %5, label %59, label %6, !dbg !670

6:                                                ; preds = %2, %55
  %7 = phi %struct.halide_buffer_t* [ %57, %55 ], [ %4, %2 ]
  %8 = phi %struct.halide_buffer_t** [ %56, %55 ], [ %3, %2 ]
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %8, metadata !666, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i8* %0, metadata !587, metadata !DIExpression()) #5, !dbg !671
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %8, metadata !588, metadata !DIExpression()) #5, !dbg !671
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %8, metadata !589, metadata !DIExpression()) #5, !dbg !671
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !590, metadata !DIExpression()) #5, !dbg !671
  %9 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %8, i32 1, !dbg !674
  %10 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %9, align 4, !dbg !674, !tbaa !516
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %10, metadata !591, metadata !DIExpression()) #5, !dbg !671
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i32 0, i32 0, !dbg !675
  %12 = load i64, i64* %11, align 8, !dbg !675, !tbaa !229
  %13 = icmp eq i64 %12, 0, !dbg !676
  br i1 %13, label %46, label %14, !dbg !677

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %10, i32 0, i32 0, !dbg !678
  %16 = load i64, i64* %15, align 8, !dbg !678, !tbaa !229
  %17 = icmp eq i64 %16, 0, !dbg !679
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !348, metadata !DIExpression()) #5, !dbg !680
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !348, metadata !DIExpression()) #5, !dbg !682
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !334, metadata !DIExpression()) #5, !dbg !684
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !334, metadata !DIExpression()) #5, !dbg !686
  call void @llvm.dbg.value(metadata i32 2, metadata !337, metadata !DIExpression()) #5, !dbg !684
  call void @llvm.dbg.value(metadata i32 2, metadata !337, metadata !DIExpression()) #5, !dbg !686
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i32 0, i32 3, !dbg !688
  %19 = load i64, i64* %18, align 8, !dbg !688, !tbaa !304
  %20 = and i64 %19, 2, !dbg !688
  %21 = icmp eq i64 %20, 0, !dbg !688
  br i1 %17, label %22, label %35, !dbg !689

22:                                               ; preds = %14
  br i1 %21, label %29, label %23, !dbg !690

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i32 0, i32 1, !dbg !691
  %25 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %24, align 8, !dbg !691, !tbaa !238
  %26 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %25, i32 0, i32 4, !dbg !692
  %27 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %26, align 4, !dbg !692, !tbaa !622
  %28 = tail call i32 %27(i8* %0, %struct.halide_buffer_t* nonnull %7) #6, !dbg !693
  br label %29, !dbg !694

29:                                               ; preds = %23, %22
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i32 0, i32 1, !dbg !695
  %31 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %30, align 8, !dbg !695, !tbaa !238
  %32 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %31, i32 0, i32 1, !dbg !696
  %33 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %32, align 4, !dbg !696, !tbaa !627
  %34 = tail call i32 %33(i8* %0, %struct.halide_buffer_t* nonnull %7) #6, !dbg !697
  br label %46, !dbg !698

35:                                               ; preds = %14
  br i1 %21, label %40, label %36, !dbg !699

36:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %10, metadata !312, metadata !DIExpression()) #5, !dbg !700
  call void @llvm.dbg.value(metadata i1 true, metadata !315, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !700
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %10, metadata !295, metadata !DIExpression()) #5, !dbg !702
  call void @llvm.dbg.value(metadata i32 2, metadata !298, metadata !DIExpression()) #5, !dbg !702
  call void @llvm.dbg.value(metadata i1 true, metadata !299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !702
  %37 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %10, i32 0, i32 3, !dbg !704
  %38 = load i64, i64* %37, align 8, !dbg !705, !tbaa !304
  %39 = or i64 %38, 2, !dbg !705
  store i64 %39, i64* %37, align 8, !dbg !705, !tbaa !304
  br label %40, !dbg !706

40:                                               ; preds = %36, %35
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i32 0, i32 1, !dbg !707
  %42 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %41, align 8, !dbg !707, !tbaa !238
  %43 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %42, i32 0, i32 11, !dbg !708
  %44 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %43, align 4, !dbg !708, !tbaa !642
  %45 = tail call i32 %44(i8* %0, %struct.halide_buffer_t* nonnull %7) #6, !dbg !709
  br label %46

46:                                               ; preds = %40, %29, %6
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !329, metadata !DIExpression()) #5, !dbg !710
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %7, metadata !334, metadata !DIExpression()) #5, !dbg !712
  call void @llvm.dbg.value(metadata i32 1, metadata !337, metadata !DIExpression()) #5, !dbg !712
  %47 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i32 0, i32 3, !dbg !714
  %48 = load i64, i64* %47, align 8, !dbg !714, !tbaa !304
  %49 = and i64 %48, 1, !dbg !715
  %50 = icmp eq i64 %49, 0, !dbg !716
  br i1 %50, label %55, label %51, !dbg !717

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %10, metadata !289, metadata !DIExpression()) #5, !dbg !718
  call void @llvm.dbg.value(metadata i1 true, metadata !292, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !718
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %10, metadata !295, metadata !DIExpression()) #5, !dbg !720
  call void @llvm.dbg.value(metadata i32 1, metadata !298, metadata !DIExpression()) #5, !dbg !720
  call void @llvm.dbg.value(metadata i1 true, metadata !299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !720
  %52 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %10, i32 0, i32 3, !dbg !722
  %53 = load i64, i64* %52, align 8, !dbg !723, !tbaa !304
  %54 = or i64 %53, 1, !dbg !723
  store i64 %54, i64* %52, align 8, !dbg !723, !tbaa !304
  br label %55, !dbg !724

55:                                               ; preds = %46, %51
  %56 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %8, i32 2, !dbg !725
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %56, metadata !666, metadata !DIExpression()), !dbg !667
  %57 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %56, align 4, !dbg !669, !tbaa !516
  %58 = icmp eq %struct.halide_buffer_t* %57, null, !dbg !669
  br i1 %58, label %59, label %6, !dbg !670, !llvm.loop !726

59:                                               ; preds = %55, %2
  ret i32 0, !dbg !728
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local %struct.halide_buffer_t* @_halide_buffer_set_bounds(%struct.halide_buffer_t* %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #0 !dbg !729 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !733, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i32 %1, metadata !734, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i32 %2, metadata !735, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i32 %3, metadata !736, metadata !DIExpression()), !dbg !737
  %5 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 6, !dbg !738
  %6 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %5, align 8, !dbg !738, !tbaa !248
  %7 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %6, i32 %1, i32 0, !dbg !739
  store i32 %2, i32* %7, align 4, !dbg !740, !tbaa !250
  %8 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %6, i32 %1, i32 1, !dbg !741
  store i32 %3, i32* %8, align 4, !dbg !742, !tbaa !261
  ret %struct.halide_buffer_t* %0, !dbg !743
}

declare !dbg !744 dso_local i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #3

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
!llvm.module.flags = !{!188, !189, !190}
!llvm.ident = !{!191}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, imports: !183, splitDebugInlining: false, nameTableKind: None)
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
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !4, line: 413, baseType: !3)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !6, line: 9, baseType: !23)
!23 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !4, line: 1550, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !4, line: 1423, size: 320, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !28, identifier: "_ZTS15halide_buffer_t")
!28 = !{!29, !32, !86, !87, !88, !122, !124, !147, !148, !153, !157, !160, !161, !164, !165, !169, !172, !173, !174, !179, !182}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !27, file: !4, line: 1425, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 10, baseType: !31)
!31 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !27, file: !4, line: 1428, baseType: !33, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !4, line: 723, size: 512, flags: DIFlagTypePassByValue, elements: !36, identifier: "_ZTS25halide_device_interface_t")
!36 = !{!37, !44, !48, !49, !53, !54, !55, !56, !57, !61, !67, !71, !72, !76, !77, !82}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !35, file: !4, line: 724, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 32)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !42, !43, !33}
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !35, file: !4, line: 726, baseType: !45, size: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 32)
!46 = !DISubroutineType(types: !47)
!47 = !{!41, !42, !43}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !35, file: !4, line: 727, baseType: !45, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !35, file: !4, line: 728, baseType: !50, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 32)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !42, !33}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !35, file: !4, line: 730, baseType: !45, size: 32, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !35, file: !4, line: 731, baseType: !38, size: 32, offset: 160)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !35, file: !4, line: 733, baseType: !38, size: 32, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !35, file: !4, line: 735, baseType: !45, size: 32, offset: 224)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !35, file: !4, line: 736, baseType: !58, size: 32, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 32)
!59 = !DISubroutineType(types: !60)
!60 = !{!41, !42, !43, !33, !43}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !35, file: !4, line: 738, baseType: !62, size: 32, offset: 288)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 32)
!63 = !DISubroutineType(types: !64)
!64 = !{!41, !42, !65, !43}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !35, file: !4, line: 740, baseType: !68, size: 32, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32)
!69 = !DISubroutineType(types: !70)
!70 = !{!41, !42, !65, !41, !41, !43}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !35, file: !4, line: 742, baseType: !45, size: 32, offset: 352)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !35, file: !4, line: 743, baseType: !73, size: 32, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 32)
!74 = !DISubroutineType(types: !75)
!75 = !{!41, !42, !43, !30, !33}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !35, file: !4, line: 745, baseType: !45, size: 32, offset: 416)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !35, file: !4, line: 746, baseType: !78, size: 32, offset: 448)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 32)
!79 = !DISubroutineType(types: !80)
!80 = !{!41, !42, !81, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !35, file: !4, line: 747, baseType: !83, size: 32, offset: 480)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !4, line: 707, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS30halide_device_interface_impl_t")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !27, file: !4, line: 1433, baseType: !20, size: 32, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !27, file: !4, line: 1436, baseType: !30, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !27, file: !4, line: 1439, baseType: !89, size: 32, offset: 192)
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
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!100 = !DISubprogram(name: "halide_type_t", scope: !89, file: !4, line: 459, type: !101, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !99}
!103 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !89, file: !4, line: 463, type: !104, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!104 = !DISubroutineType(types: !105)
!105 = !{!89, !106, !94}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!108 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !89, file: !4, line: 468, type: !109, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!109 = !DISubroutineType(types: !110)
!110 = !{!111, !106, !112}
!111 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!112 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !107, size: 32)
!113 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !89, file: !4, line: 472, type: !109, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!114 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !89, file: !4, line: 476, type: !109, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !89, file: !4, line: 481, type: !116, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!116 = !DISubroutineType(types: !117)
!117 = !{!41, !106}
!118 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !89, file: !4, line: 485, type: !119, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !106}
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 12, baseType: !15)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !27, file: !4, line: 1442, baseType: !123, size: 32, offset: 224)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !6, line: 11, baseType: !41)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !27, file: !4, line: 1446, baseType: !125, size: 32, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 32)
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
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!137 = !DISubprogram(name: "halide_dimension_t", scope: !127, file: !4, line: 1389, type: !138, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !136, !123, !123, !123, !121}
!140 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !127, file: !4, line: 1393, type: !141, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!141 = !DISubroutineType(types: !142)
!142 = !{!111, !143, !145}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!145 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !144, size: 32)
!146 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !127, file: !4, line: 1400, type: !141, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !27, file: !4, line: 1449, baseType: !42, size: 32, offset: 288)
!148 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !27, file: !4, line: 1454, type: !149, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!149 = !DISubroutineType(types: !150)
!150 = !{!111, !151, !152}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !4, line: 1416, baseType: !14)
!153 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !27, file: !4, line: 1458, type: !154, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !156, !152, !111}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 27, baseType: !15)
!169 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !27, file: !4, line: 1495, type: !170, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!170 = !DISubroutineType(types: !171)
!171 = !{!20, !151}
!172 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !27, file: !4, line: 1506, type: !170, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!173 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !27, file: !4, line: 1518, type: !166, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !27, file: !4, line: 1523, type: !175, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DISubroutineType(types: !176)
!176 = !{!20, !151, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!179 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !27, file: !4, line: 1534, type: !180, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!180 = !DISubroutineType(types: !181)
!181 = !{!41, !156, !42}
!182 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !27, file: !4, line: 1545, type: !158, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!183 = !{!184}
!184 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !185, file: !6, line: 225)
!185 = !DINamespace(name: "Internal", scope: !186)
!186 = !DINamespace(name: "Runtime", scope: !187)
!187 = !DINamespace(name: "Halide", scope: null)
!188 = !{i32 7, !"Dwarf Version", i32 4}
!189 = !{i32 2, !"Debug Info Version", i32 3}
!190 = !{i32 1, !"wchar_size", i32 4}
!191 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!192 = distinct !DISubprogram(name: "_halide_buffer_get_dimensions", scope: !193, file: !193, line: 18, type: !194, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !198)
!193 = !DIFile(filename: "src/runtime/halide_buffer_t.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!194 = !DISubroutineType(types: !195)
!195 = !{!41, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!198 = !{!199}
!199 = !DILocalVariable(name: "buf", arg: 1, scope: !192, file: !193, line: 18, type: !196)
!200 = !DILocation(line: 0, scope: !192)
!201 = !DILocation(line: 19, column: 17, scope: !192)
!202 = !{!203, !211, i64 28}
!203 = !{!"_ZTS15halide_buffer_t", !204, i64 0, !207, i64 8, !207, i64 12, !204, i64 16, !208, i64 24, !211, i64 28, !207, i64 32, !207, i64 36}
!204 = !{!"long long", !205, i64 0}
!205 = !{!"omnipotent char", !206, i64 0}
!206 = !{!"Simple C++ TBAA"}
!207 = !{!"any pointer", !205, i64 0}
!208 = !{!"_ZTS13halide_type_t", !209, i64 0, !205, i64 1, !210, i64 2}
!209 = !{!"_ZTS18halide_type_code_t", !205, i64 0}
!210 = !{!"short", !205, i64 0}
!211 = !{!"int", !205, i64 0}
!212 = !DILocation(line: 19, column: 5, scope: !192)
!213 = distinct !DISubprogram(name: "_halide_buffer_get_host", scope: !193, file: !193, line: 23, type: !214, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !216)
!214 = !DISubroutineType(types: !215)
!215 = !{!20, !196}
!216 = !{!217}
!217 = !DILocalVariable(name: "buf", arg: 1, scope: !213, file: !193, line: 23, type: !196)
!218 = !DILocation(line: 0, scope: !213)
!219 = !DILocation(line: 24, column: 17, scope: !213)
!220 = !{!203, !207, i64 12}
!221 = !DILocation(line: 24, column: 5, scope: !213)
!222 = distinct !DISubprogram(name: "_halide_buffer_get_device", scope: !193, file: !193, line: 28, type: !223, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{!30, !196}
!225 = !{!226}
!226 = !DILocalVariable(name: "buf", arg: 1, scope: !222, file: !193, line: 28, type: !196)
!227 = !DILocation(line: 0, scope: !222)
!228 = !DILocation(line: 29, column: 17, scope: !222)
!229 = !{!203, !204, i64 0}
!230 = !DILocation(line: 29, column: 5, scope: !222)
!231 = distinct !DISubprogram(name: "_halide_buffer_get_device_interface", scope: !193, file: !193, line: 33, type: !232, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !234)
!232 = !DISubroutineType(types: !233)
!233 = !{!33, !196}
!234 = !{!235}
!235 = !DILocalVariable(name: "buf", arg: 1, scope: !231, file: !193, line: 33, type: !196)
!236 = !DILocation(line: 0, scope: !231)
!237 = !DILocation(line: 34, column: 17, scope: !231)
!238 = !{!203, !207, i64 8}
!239 = !DILocation(line: 34, column: 5, scope: !231)
!240 = distinct !DISubprogram(name: "_halide_buffer_get_min", scope: !193, file: !193, line: 38, type: !241, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{!41, !196, !41}
!243 = !{!244, !245}
!244 = !DILocalVariable(name: "buf", arg: 1, scope: !240, file: !193, line: 38, type: !196)
!245 = !DILocalVariable(name: "d", arg: 2, scope: !240, file: !193, line: 38, type: !41)
!246 = !DILocation(line: 0, scope: !240)
!247 = !DILocation(line: 39, column: 17, scope: !240)
!248 = !{!203, !207, i64 32}
!249 = !DILocation(line: 39, column: 24, scope: !240)
!250 = !{!251, !211, i64 0}
!251 = !{!"_ZTS18halide_dimension_t", !211, i64 0, !211, i64 4, !211, i64 8, !211, i64 12}
!252 = !DILocation(line: 39, column: 5, scope: !240)
!253 = distinct !DISubprogram(name: "_halide_buffer_get_max", scope: !193, file: !193, line: 43, type: !241, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !254)
!254 = !{!255, !256}
!255 = !DILocalVariable(name: "buf", arg: 1, scope: !253, file: !193, line: 43, type: !196)
!256 = !DILocalVariable(name: "d", arg: 2, scope: !253, file: !193, line: 43, type: !41)
!257 = !DILocation(line: 0, scope: !253)
!258 = !DILocation(line: 44, column: 17, scope: !253)
!259 = !DILocation(line: 44, column: 24, scope: !253)
!260 = !DILocation(line: 44, column: 42, scope: !253)
!261 = !{!251, !211, i64 4}
!262 = !DILocation(line: 44, column: 28, scope: !253)
!263 = !DILocation(line: 44, column: 49, scope: !253)
!264 = !DILocation(line: 44, column: 5, scope: !253)
!265 = distinct !DISubprogram(name: "_halide_buffer_get_extent", scope: !193, file: !193, line: 48, type: !241, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !266)
!266 = !{!267, !268}
!267 = !DILocalVariable(name: "buf", arg: 1, scope: !265, file: !193, line: 48, type: !196)
!268 = !DILocalVariable(name: "d", arg: 2, scope: !265, file: !193, line: 48, type: !41)
!269 = !DILocation(line: 0, scope: !265)
!270 = !DILocation(line: 49, column: 17, scope: !265)
!271 = !DILocation(line: 49, column: 24, scope: !265)
!272 = !DILocation(line: 49, column: 5, scope: !265)
!273 = distinct !DISubprogram(name: "_halide_buffer_get_stride", scope: !193, file: !193, line: 53, type: !241, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !274)
!274 = !{!275, !276}
!275 = !DILocalVariable(name: "buf", arg: 1, scope: !273, file: !193, line: 53, type: !196)
!276 = !DILocalVariable(name: "d", arg: 2, scope: !273, file: !193, line: 53, type: !41)
!277 = !DILocation(line: 0, scope: !273)
!278 = !DILocation(line: 54, column: 17, scope: !273)
!279 = !DILocation(line: 54, column: 24, scope: !273)
!280 = !{!251, !211, i64 8}
!281 = !DILocation(line: 54, column: 5, scope: !273)
!282 = distinct !DISubprogram(name: "_halide_buffer_set_host_dirty", scope: !193, file: !193, line: 58, type: !283, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{!41, !25, !111}
!285 = !{!286, !287}
!286 = !DILocalVariable(name: "buf", arg: 1, scope: !282, file: !193, line: 58, type: !25)
!287 = !DILocalVariable(name: "val", arg: 2, scope: !282, file: !193, line: 58, type: !111)
!288 = !DILocation(line: 0, scope: !282)
!289 = !DILocalVariable(name: "this", arg: 1, scope: !290, type: !43, flags: DIFlagArtificial | DIFlagObjectPointer)
!290 = distinct !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !27, file: !4, line: 1474, type: !162, scopeLine: 1474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !161, retainedNodes: !291)
!291 = !{!289, !292}
!292 = !DILocalVariable(name: "v", arg: 2, scope: !290, file: !4, line: 1474, type: !111)
!293 = !DILocation(line: 0, scope: !290, inlinedAt: !294)
!294 = distinct !DILocation(line: 59, column: 10, scope: !282)
!295 = !DILocalVariable(name: "this", arg: 1, scope: !296, type: !43, flags: DIFlagArtificial | DIFlagObjectPointer)
!296 = distinct !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !27, file: !4, line: 1458, type: !154, scopeLine: 1458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !153, retainedNodes: !297)
!297 = !{!295, !298, !299}
!298 = !DILocalVariable(name: "flag", arg: 2, scope: !296, file: !4, line: 1458, type: !152)
!299 = !DILocalVariable(name: "value", arg: 3, scope: !296, file: !4, line: 1458, type: !111)
!300 = !DILocation(line: 0, scope: !296, inlinedAt: !301)
!301 = distinct !DILocation(line: 1475, column: 9, scope: !290, inlinedAt: !294)
!302 = !DILocation(line: 0, scope: !303, inlinedAt: !301)
!303 = distinct !DILexicalBlock(scope: !296, file: !4, line: 1459, column: 13)
!304 = !{!203, !204, i64 16}
!305 = !DILocation(line: 1459, column: 13, scope: !296, inlinedAt: !301)
!306 = !DILocation(line: 60, column: 5, scope: !282)
!307 = distinct !DISubprogram(name: "_halide_buffer_set_device_dirty", scope: !193, file: !193, line: 64, type: !283, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !308)
!308 = !{!309, !310}
!309 = !DILocalVariable(name: "buf", arg: 1, scope: !307, file: !193, line: 64, type: !25)
!310 = !DILocalVariable(name: "val", arg: 2, scope: !307, file: !193, line: 64, type: !111)
!311 = !DILocation(line: 0, scope: !307)
!312 = !DILocalVariable(name: "this", arg: 1, scope: !313, type: !43, flags: DIFlagArtificial | DIFlagObjectPointer)
!313 = distinct !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !27, file: !4, line: 1478, type: !162, scopeLine: 1478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !164, retainedNodes: !314)
!314 = !{!312, !315}
!315 = !DILocalVariable(name: "v", arg: 2, scope: !313, file: !4, line: 1478, type: !111)
!316 = !DILocation(line: 0, scope: !313, inlinedAt: !317)
!317 = distinct !DILocation(line: 65, column: 10, scope: !307)
!318 = !DILocation(line: 0, scope: !296, inlinedAt: !319)
!319 = distinct !DILocation(line: 1479, column: 9, scope: !313, inlinedAt: !317)
!320 = !DILocation(line: 0, scope: !303, inlinedAt: !319)
!321 = !DILocation(line: 1459, column: 13, scope: !296, inlinedAt: !319)
!322 = !DILocation(line: 66, column: 5, scope: !307)
!323 = distinct !DISubprogram(name: "_halide_buffer_get_host_dirty", scope: !193, file: !193, line: 70, type: !324, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !326)
!324 = !DISubroutineType(types: !325)
!325 = !{!111, !196}
!326 = !{!327}
!327 = !DILocalVariable(name: "buf", arg: 1, scope: !323, file: !193, line: 70, type: !196)
!328 = !DILocation(line: 0, scope: !323)
!329 = !DILocalVariable(name: "this", arg: 1, scope: !330, type: !65, flags: DIFlagArtificial | DIFlagObjectPointer)
!330 = distinct !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !27, file: !4, line: 1466, type: !158, scopeLine: 1466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !157, retainedNodes: !331)
!331 = !{!329}
!332 = !DILocation(line: 0, scope: !330, inlinedAt: !333)
!333 = distinct !DILocation(line: 71, column: 17, scope: !323)
!334 = !DILocalVariable(name: "this", arg: 1, scope: !335, type: !65, flags: DIFlagArtificial | DIFlagObjectPointer)
!335 = distinct !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !27, file: !4, line: 1454, type: !149, scopeLine: 1454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !148, retainedNodes: !336)
!336 = !{!334, !337}
!337 = !DILocalVariable(name: "flag", arg: 2, scope: !335, file: !4, line: 1454, type: !152)
!338 = !DILocation(line: 0, scope: !335, inlinedAt: !339)
!339 = distinct !DILocation(line: 1467, column: 16, scope: !330, inlinedAt: !333)
!340 = !DILocation(line: 1455, column: 17, scope: !335, inlinedAt: !339)
!341 = !DILocation(line: 1455, column: 23, scope: !335, inlinedAt: !339)
!342 = !DILocation(line: 1455, column: 31, scope: !335, inlinedAt: !339)
!343 = !DILocation(line: 71, column: 5, scope: !323)
!344 = distinct !DISubprogram(name: "_halide_buffer_get_device_dirty", scope: !193, file: !193, line: 75, type: !324, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !345)
!345 = !{!346}
!346 = !DILocalVariable(name: "buf", arg: 1, scope: !344, file: !193, line: 75, type: !196)
!347 = !DILocation(line: 0, scope: !344)
!348 = !DILocalVariable(name: "this", arg: 1, scope: !349, type: !65, flags: DIFlagArtificial | DIFlagObjectPointer)
!349 = distinct !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !27, file: !4, line: 1470, type: !158, scopeLine: 1470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !160, retainedNodes: !350)
!350 = !{!348}
!351 = !DILocation(line: 0, scope: !349, inlinedAt: !352)
!352 = distinct !DILocation(line: 76, column: 17, scope: !344)
!353 = !DILocation(line: 0, scope: !335, inlinedAt: !354)
!354 = distinct !DILocation(line: 1471, column: 16, scope: !349, inlinedAt: !352)
!355 = !DILocation(line: 1455, column: 17, scope: !335, inlinedAt: !354)
!356 = !DILocation(line: 1455, column: 23, scope: !335, inlinedAt: !354)
!357 = !DILocation(line: 1455, column: 31, scope: !335, inlinedAt: !354)
!358 = !DILocation(line: 76, column: 5, scope: !344)
!359 = distinct !DISubprogram(name: "_halide_buffer_get_shape", scope: !193, file: !193, line: 80, type: !360, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !362)
!360 = !DISubroutineType(types: !361)
!361 = !{!125, !25}
!362 = !{!363}
!363 = !DILocalVariable(name: "buf", arg: 1, scope: !359, file: !193, line: 80, type: !25)
!364 = !DILocation(line: 0, scope: !359)
!365 = !DILocation(line: 81, column: 17, scope: !359)
!366 = !DILocation(line: 81, column: 5, scope: !359)
!367 = distinct !DISubprogram(name: "_halide_buffer_is_bounds_query", scope: !193, file: !193, line: 85, type: !324, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !368)
!368 = !{!369}
!369 = !DILocalVariable(name: "buf", arg: 1, scope: !367, file: !193, line: 85, type: !196)
!370 = !DILocation(line: 0, scope: !367)
!371 = !DILocation(line: 86, column: 17, scope: !367)
!372 = !DILocation(line: 86, column: 22, scope: !367)
!373 = !DILocation(line: 86, column: 33, scope: !367)
!374 = !DILocation(line: 86, column: 41, scope: !367)
!375 = !DILocation(line: 86, column: 48, scope: !367)
!376 = !DILocation(line: 86, column: 5, scope: !367)
!377 = distinct !DISubprogram(name: "_halide_buffer_get_type", scope: !193, file: !193, line: 90, type: !378, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !380)
!378 = !DISubroutineType(types: !379)
!379 = !{!121, !196}
!380 = !{!381}
!381 = !DILocalVariable(name: "buf", arg: 1, scope: !377, file: !193, line: 90, type: !196)
!382 = !DILocation(line: 0, scope: !377)
!383 = !DILocalVariable(name: "this", arg: 1, scope: !384, type: !387, flags: DIFlagArtificial | DIFlagObjectPointer)
!384 = distinct !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !89, file: !4, line: 485, type: !119, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !118, retainedNodes: !385)
!385 = !{!383, !386}
!386 = !DILocalVariable(name: "u", scope: !384, file: !4, line: 486, type: !121)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!388 = !DILocation(line: 0, scope: !384, inlinedAt: !389)
!389 = distinct !DILocation(line: 91, column: 22, scope: !377)
!390 = !DILocation(line: 486, column: 9, scope: !384, inlinedAt: !389)
!391 = !DILocation(line: 487, column: 20, scope: !384, inlinedAt: !389)
!392 = !DILocation(line: 487, column: 9, scope: !384, inlinedAt: !389)
!393 = !DILocation(line: 488, column: 16, scope: !384, inlinedAt: !389)
!394 = !{!211, !211, i64 0}
!395 = !DILocation(line: 489, column: 5, scope: !384, inlinedAt: !389)
!396 = !DILocation(line: 91, column: 5, scope: !377)
!397 = distinct !DISubprogram(name: "_halide_buffer_init", scope: !193, file: !193, line: 95, type: !398, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{!25, !25, !125, !42, !30, !33, !41, !41, !41, !125, !30}
!400 = !{!401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411}
!401 = !DILocalVariable(name: "dst", arg: 1, scope: !397, file: !193, line: 95, type: !25)
!402 = !DILocalVariable(name: "dst_shape", arg: 2, scope: !397, file: !193, line: 96, type: !125)
!403 = !DILocalVariable(name: "host", arg: 3, scope: !397, file: !193, line: 97, type: !42)
!404 = !DILocalVariable(name: "device", arg: 4, scope: !397, file: !193, line: 98, type: !30)
!405 = !DILocalVariable(name: "device_interface", arg: 5, scope: !397, file: !193, line: 99, type: !33)
!406 = !DILocalVariable(name: "type_code", arg: 6, scope: !397, file: !193, line: 100, type: !41)
!407 = !DILocalVariable(name: "type_bits", arg: 7, scope: !397, file: !193, line: 100, type: !41)
!408 = !DILocalVariable(name: "dimensions", arg: 8, scope: !397, file: !193, line: 101, type: !41)
!409 = !DILocalVariable(name: "shape", arg: 9, scope: !397, file: !193, line: 102, type: !125)
!410 = !DILocalVariable(name: "flags", arg: 10, scope: !397, file: !193, line: 103, type: !30)
!411 = !DILocalVariable(name: "i", scope: !412, file: !193, line: 113, type: !41)
!412 = distinct !DILexicalBlock(scope: !413, file: !193, line: 113, column: 9)
!413 = distinct !DILexicalBlock(scope: !414, file: !193, line: 112, column: 28)
!414 = distinct !DILexicalBlock(scope: !397, file: !193, line: 112, column: 9)
!415 = !DILocation(line: 0, scope: !397)
!416 = !DILocation(line: 104, column: 10, scope: !397)
!417 = !DILocation(line: 104, column: 15, scope: !397)
!418 = !DILocation(line: 105, column: 10, scope: !397)
!419 = !DILocation(line: 105, column: 17, scope: !397)
!420 = !DILocation(line: 106, column: 10, scope: !397)
!421 = !DILocation(line: 106, column: 27, scope: !397)
!422 = !DILocation(line: 107, column: 22, scope: !397)
!423 = !DILocation(line: 107, column: 15, scope: !397)
!424 = !DILocation(line: 107, column: 20, scope: !397)
!425 = !{!203, !209, i64 24}
!426 = !DILocation(line: 108, column: 31, scope: !397)
!427 = !DILocation(line: 108, column: 15, scope: !397)
!428 = !DILocation(line: 108, column: 20, scope: !397)
!429 = !{!203, !205, i64 25}
!430 = !DILocation(line: 109, column: 15, scope: !397)
!431 = !DILocation(line: 109, column: 21, scope: !397)
!432 = !{!203, !210, i64 26}
!433 = !DILocation(line: 110, column: 10, scope: !397)
!434 = !DILocation(line: 110, column: 21, scope: !397)
!435 = !DILocation(line: 111, column: 10, scope: !397)
!436 = !DILocation(line: 111, column: 14, scope: !397)
!437 = !DILocation(line: 112, column: 15, scope: !414)
!438 = !DILocation(line: 112, column: 9, scope: !397)
!439 = !DILocation(line: 0, scope: !412)
!440 = !DILocation(line: 114, column: 25, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !193, line: 113, column: 46)
!442 = distinct !DILexicalBlock(scope: !412, file: !193, line: 113, column: 9)
!443 = !{i64 0, i64 4, !394, i64 4, i64 4, !394, i64 8, i64 4, !394, i64 12, i64 4, !394}
!444 = !DILocation(line: 113, column: 27, scope: !442)
!445 = !DILocation(line: 113, column: 9, scope: !412)
!446 = distinct !{!446, !445, !447, !448}
!447 = !DILocation(line: 115, column: 9, scope: !412)
!448 = !{!"llvm.loop.mustprogress"}
!449 = !DILocation(line: 114, column: 18, scope: !441)
!450 = !DILocation(line: 114, column: 27, scope: !441)
!451 = !DILocation(line: 114, column: 13, scope: !441)
!452 = !DILocation(line: 113, column: 42, scope: !442)
!453 = !DILocation(line: 117, column: 10, scope: !397)
!454 = !DILocation(line: 117, column: 16, scope: !397)
!455 = !DILocation(line: 118, column: 5, scope: !397)
!456 = distinct !DISubprogram(name: "_halide_buffer_init_from_buffer", scope: !193, file: !193, line: 122, type: !457, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !459)
!457 = !DISubroutineType(types: !458)
!458 = !{!25, !25, !125, !196}
!459 = !{!460, !461, !462, !463}
!460 = !DILocalVariable(name: "dst", arg: 1, scope: !456, file: !193, line: 122, type: !25)
!461 = !DILocalVariable(name: "dst_shape", arg: 2, scope: !456, file: !193, line: 123, type: !125)
!462 = !DILocalVariable(name: "src", arg: 3, scope: !456, file: !193, line: 124, type: !196)
!463 = !DILocalVariable(name: "i", scope: !464, file: !193, line: 132, type: !41)
!464 = distinct !DILexicalBlock(scope: !456, file: !193, line: 132, column: 5)
!465 = !DILocation(line: 0, scope: !456)
!466 = !DILocation(line: 125, column: 22, scope: !456)
!467 = !DILocation(line: 125, column: 10, scope: !456)
!468 = !DILocation(line: 125, column: 15, scope: !456)
!469 = !DILocation(line: 126, column: 24, scope: !456)
!470 = !DILocation(line: 126, column: 10, scope: !456)
!471 = !DILocation(line: 126, column: 17, scope: !456)
!472 = !DILocation(line: 127, column: 34, scope: !456)
!473 = !DILocation(line: 127, column: 10, scope: !456)
!474 = !DILocation(line: 127, column: 27, scope: !456)
!475 = !DILocation(line: 128, column: 15, scope: !456)
!476 = !DILocation(line: 129, column: 28, scope: !456)
!477 = !DILocation(line: 129, column: 10, scope: !456)
!478 = !DILocation(line: 129, column: 21, scope: !456)
!479 = !DILocation(line: 130, column: 10, scope: !456)
!480 = !DILocation(line: 130, column: 14, scope: !456)
!481 = !DILocation(line: 131, column: 23, scope: !456)
!482 = !DILocation(line: 131, column: 10, scope: !456)
!483 = !DILocation(line: 131, column: 16, scope: !456)
!484 = !DILocation(line: 0, scope: !464)
!485 = !DILocation(line: 132, column: 23, scope: !486)
!486 = distinct !DILexicalBlock(scope: !464, file: !193, line: 132, column: 5)
!487 = !DILocation(line: 132, column: 5, scope: !464)
!488 = !DILocation(line: 133, column: 28, scope: !489)
!489 = distinct !DILexicalBlock(scope: !486, file: !193, line: 132, column: 47)
!490 = !DILocation(line: 133, column: 21, scope: !489)
!491 = !DILocation(line: 132, column: 30, scope: !486)
!492 = distinct !{!492, !487, !493, !448}
!493 = !DILocation(line: 134, column: 5, scope: !464)
!494 = !DILocation(line: 135, column: 5, scope: !456)
!495 = !DILocation(line: 133, column: 14, scope: !489)
!496 = !DILocation(line: 133, column: 23, scope: !489)
!497 = !DILocation(line: 133, column: 9, scope: !489)
!498 = !DILocation(line: 132, column: 43, scope: !486)
!499 = distinct !DISubprogram(name: "_halide_buffer_crop", scope: !193, file: !193, line: 139, type: !500, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !502)
!500 = !DISubroutineType(types: !501)
!501 = !{!25, !42, !25, !125, !196, !177, !177}
!502 = !{!503, !504, !505, !506, !507, !508, !509, !510}
!503 = !DILocalVariable(name: "user_context", arg: 1, scope: !499, file: !193, line: 139, type: !42)
!504 = !DILocalVariable(name: "dst", arg: 2, scope: !499, file: !193, line: 140, type: !25)
!505 = !DILocalVariable(name: "dst_shape", arg: 3, scope: !499, file: !193, line: 141, type: !125)
!506 = !DILocalVariable(name: "src", arg: 4, scope: !499, file: !193, line: 142, type: !196)
!507 = !DILocalVariable(name: "min", arg: 5, scope: !499, file: !193, line: 143, type: !177)
!508 = !DILocalVariable(name: "extent", arg: 6, scope: !499, file: !193, line: 143, type: !177)
!509 = !DILocalVariable(name: "offset", scope: !499, file: !193, line: 146, type: !22)
!510 = !DILocalVariable(name: "i", scope: !511, file: !193, line: 147, type: !41)
!511 = distinct !DILexicalBlock(scope: !499, file: !193, line: 147, column: 5)
!512 = !DILocation(line: 0, scope: !499)
!513 = !DILocation(line: 144, column: 10, scope: !499)
!514 = !{i64 0, i64 8, !515, i64 8, i64 4, !516, i64 12, i64 4, !516, i64 16, i64 8, !515, i64 24, i64 1, !517, i64 25, i64 1, !518, i64 26, i64 2, !519, i64 28, i64 4, !394, i64 32, i64 4, !516, i64 36, i64 4, !516}
!515 = !{!204, !204, i64 0}
!516 = !{!207, !207, i64 0}
!517 = !{!209, !209, i64 0}
!518 = !{!205, !205, i64 0}
!519 = !{!210, !210, i64 0}
!520 = !DILocation(line: 145, column: 10, scope: !499)
!521 = !DILocation(line: 145, column: 14, scope: !499)
!522 = !DILocation(line: 0, scope: !511)
!523 = !DILocation(line: 147, column: 30, scope: !524)
!524 = distinct !DILexicalBlock(scope: !511, file: !193, line: 147, column: 5)
!525 = !DILocation(line: 147, column: 23, scope: !524)
!526 = !DILocation(line: 147, column: 5, scope: !511)
!527 = !DILocation(line: 148, column: 28, scope: !528)
!528 = distinct !DILexicalBlock(scope: !524, file: !193, line: 147, column: 47)
!529 = !DILocation(line: 153, column: 14, scope: !530)
!530 = distinct !DILexicalBlock(scope: !499, file: !193, line: 153, column: 9)
!531 = !DILocation(line: 153, column: 9, scope: !530)
!532 = !DILocation(line: 153, column: 9, scope: !499)
!533 = !DILocation(line: 148, column: 14, scope: !528)
!534 = !DILocation(line: 148, column: 23, scope: !528)
!535 = !DILocation(line: 148, column: 9, scope: !528)
!536 = !DILocation(line: 148, column: 21, scope: !528)
!537 = !DILocation(line: 149, column: 27, scope: !528)
!538 = !DILocation(line: 149, column: 14, scope: !528)
!539 = !DILocation(line: 149, column: 21, scope: !528)
!540 = !DILocation(line: 149, column: 25, scope: !528)
!541 = !DILocation(line: 150, column: 30, scope: !528)
!542 = !DILocation(line: 150, column: 21, scope: !528)
!543 = !DILocation(line: 150, column: 28, scope: !528)
!544 = !DILocation(line: 151, column: 20, scope: !528)
!545 = !DILocation(line: 151, column: 34, scope: !528)
!546 = !DILocation(line: 151, column: 41, scope: !528)
!547 = !DILocation(line: 151, column: 27, scope: !528)
!548 = !DILocation(line: 151, column: 19, scope: !528)
!549 = !DILocation(line: 151, column: 69, scope: !528)
!550 = !DILocation(line: 151, column: 57, scope: !528)
!551 = !DILocation(line: 151, column: 46, scope: !528)
!552 = !DILocation(line: 151, column: 16, scope: !528)
!553 = !DILocation(line: 147, column: 43, scope: !524)
!554 = distinct !{!554, !526, !555, !448}
!555 = !DILocation(line: 152, column: 5, scope: !511)
!556 = !DILocalVariable(name: "this", arg: 1, scope: !557, type: !387, flags: DIFlagArtificial | DIFlagObjectPointer)
!557 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !89, file: !4, line: 481, type: !116, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !115, retainedNodes: !558)
!558 = !{!556}
!559 = !DILocation(line: 0, scope: !557, inlinedAt: !560)
!560 = distinct !DILocation(line: 154, column: 41, scope: !561)
!561 = distinct !DILexicalBlock(scope: !530, file: !193, line: 153, column: 20)
!562 = !DILocation(line: 482, column: 17, scope: !557, inlinedAt: !560)
!563 = !{!208, !205, i64 1}
!564 = !DILocation(line: 482, column: 22, scope: !557, inlinedAt: !560)
!565 = !DILocation(line: 482, column: 27, scope: !557, inlinedAt: !560)
!566 = !DILocation(line: 154, column: 19, scope: !561)
!567 = !DILocation(line: 155, column: 5, scope: !561)
!568 = !DILocation(line: 156, column: 10, scope: !499)
!569 = !DILocation(line: 156, column: 27, scope: !499)
!570 = !DILocation(line: 157, column: 10, scope: !499)
!571 = !DILocation(line: 157, column: 17, scope: !499)
!572 = !DILocation(line: 158, column: 14, scope: !573)
!573 = distinct !DILexicalBlock(scope: !499, file: !193, line: 158, column: 9)
!574 = !DILocation(line: 158, column: 9, scope: !573)
!575 = !DILocation(line: 158, column: 9, scope: !499)
!576 = !DILocation(line: 159, column: 32, scope: !577)
!577 = distinct !DILexicalBlock(scope: !573, file: !193, line: 158, column: 32)
!578 = !{!579, !207, i64 36}
!579 = !{!"_ZTS25halide_device_interface_t", !207, i64 0, !207, i64 4, !207, i64 8, !207, i64 12, !207, i64 16, !207, i64 20, !207, i64 24, !207, i64 28, !207, i64 32, !207, i64 36, !207, i64 40, !207, i64 44, !207, i64 48, !207, i64 52, !207, i64 56, !207, i64 60}
!580 = !DILocation(line: 159, column: 9, scope: !577)
!581 = !DILocation(line: 160, column: 5, scope: !577)
!582 = !DILocation(line: 161, column: 5, scope: !499)
!583 = distinct !DISubprogram(name: "_halide_buffer_retire_crop_after_extern_stage", scope: !193, file: !193, line: 169, type: !584, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !586)
!584 = !DISubroutineType(types: !585)
!585 = !{!41, !42, !42}
!586 = !{!587, !588, !589, !590, !591}
!587 = !DILocalVariable(name: "user_context", arg: 1, scope: !583, file: !193, line: 169, type: !42)
!588 = !DILocalVariable(name: "obj", arg: 2, scope: !583, file: !193, line: 170, type: !42)
!589 = !DILocalVariable(name: "buffers", scope: !583, file: !193, line: 171, type: !24)
!590 = !DILocalVariable(name: "crop", scope: !583, file: !193, line: 172, type: !25)
!591 = !DILocalVariable(name: "parent", scope: !583, file: !193, line: 173, type: !25)
!592 = !DILocation(line: 0, scope: !583)
!593 = !DILocation(line: 171, column: 33, scope: !583)
!594 = !DILocation(line: 172, column: 29, scope: !583)
!595 = !DILocation(line: 173, column: 31, scope: !583)
!596 = !DILocation(line: 175, column: 15, scope: !597)
!597 = distinct !DILexicalBlock(scope: !583, file: !193, line: 175, column: 9)
!598 = !DILocation(line: 175, column: 9, scope: !597)
!599 = !DILocation(line: 175, column: 9, scope: !583)
!600 = !DILocation(line: 176, column: 22, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !193, line: 176, column: 13)
!602 = distinct !DILexicalBlock(scope: !597, file: !193, line: 175, column: 23)
!603 = !DILocation(line: 176, column: 14, scope: !601)
!604 = !DILocation(line: 0, scope: !349, inlinedAt: !605)
!605 = distinct !DILocation(line: 180, column: 23, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !193, line: 180, column: 17)
!607 = distinct !DILexicalBlock(scope: !601, file: !193, line: 176, column: 30)
!608 = !DILocation(line: 0, scope: !349, inlinedAt: !609)
!609 = distinct !DILocation(line: 186, column: 23, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !193, line: 186, column: 17)
!611 = distinct !DILexicalBlock(scope: !601, file: !193, line: 184, column: 16)
!612 = !DILocation(line: 0, scope: !335, inlinedAt: !613)
!613 = distinct !DILocation(line: 1471, column: 16, scope: !349, inlinedAt: !605)
!614 = !DILocation(line: 0, scope: !335, inlinedAt: !615)
!615 = distinct !DILocation(line: 1471, column: 16, scope: !349, inlinedAt: !609)
!616 = !DILocation(line: 0, scope: !601)
!617 = !DILocation(line: 176, column: 13, scope: !602)
!618 = !DILocation(line: 180, column: 17, scope: !607)
!619 = !DILocation(line: 181, column: 23, scope: !620)
!620 = distinct !DILexicalBlock(scope: !606, file: !193, line: 180, column: 39)
!621 = !DILocation(line: 181, column: 41, scope: !620)
!622 = !{!579, !207, i64 16}
!623 = !DILocation(line: 181, column: 17, scope: !620)
!624 = !DILocation(line: 182, column: 13, scope: !620)
!625 = !DILocation(line: 183, column: 19, scope: !607)
!626 = !DILocation(line: 183, column: 37, scope: !607)
!627 = !{!579, !207, i64 4}
!628 = !DILocation(line: 183, column: 13, scope: !607)
!629 = !DILocation(line: 184, column: 9, scope: !607)
!630 = !DILocation(line: 186, column: 17, scope: !611)
!631 = !DILocation(line: 0, scope: !313, inlinedAt: !632)
!632 = distinct !DILocation(line: 187, column: 25, scope: !633)
!633 = distinct !DILexicalBlock(scope: !610, file: !193, line: 186, column: 39)
!634 = !DILocation(line: 0, scope: !296, inlinedAt: !635)
!635 = distinct !DILocation(line: 1479, column: 9, scope: !313, inlinedAt: !632)
!636 = !DILocation(line: 1460, column: 13, scope: !637, inlinedAt: !635)
!637 = distinct !DILexicalBlock(scope: !303, file: !4, line: 1459, column: 20)
!638 = !DILocation(line: 1460, column: 19, scope: !637, inlinedAt: !635)
!639 = !DILocation(line: 188, column: 13, scope: !633)
!640 = !DILocation(line: 189, column: 19, scope: !611)
!641 = !DILocation(line: 189, column: 37, scope: !611)
!642 = !{!579, !207, i64 44}
!643 = !DILocation(line: 189, column: 13, scope: !611)
!644 = !DILocation(line: 0, scope: !330, inlinedAt: !645)
!645 = distinct !DILocation(line: 192, column: 15, scope: !646)
!646 = distinct !DILexicalBlock(scope: !583, file: !193, line: 192, column: 9)
!647 = !DILocation(line: 0, scope: !335, inlinedAt: !648)
!648 = distinct !DILocation(line: 1467, column: 16, scope: !330, inlinedAt: !645)
!649 = !DILocation(line: 1455, column: 17, scope: !335, inlinedAt: !648)
!650 = !DILocation(line: 1455, column: 23, scope: !335, inlinedAt: !648)
!651 = !DILocation(line: 1455, column: 31, scope: !335, inlinedAt: !648)
!652 = !DILocation(line: 192, column: 9, scope: !583)
!653 = !DILocation(line: 0, scope: !290, inlinedAt: !654)
!654 = distinct !DILocation(line: 193, column: 17, scope: !655)
!655 = distinct !DILexicalBlock(scope: !646, file: !193, line: 192, column: 29)
!656 = !DILocation(line: 0, scope: !296, inlinedAt: !657)
!657 = distinct !DILocation(line: 1475, column: 9, scope: !290, inlinedAt: !654)
!658 = !DILocation(line: 1460, column: 13, scope: !637, inlinedAt: !657)
!659 = !DILocation(line: 1460, column: 19, scope: !637, inlinedAt: !657)
!660 = !DILocation(line: 194, column: 5, scope: !655)
!661 = !DILocation(line: 195, column: 5, scope: !583)
!662 = distinct !DISubprogram(name: "_halide_buffer_retire_crops_after_extern_stage", scope: !193, file: !193, line: 199, type: !584, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !663)
!663 = !{!664, !665, !666}
!664 = !DILocalVariable(name: "user_context", arg: 1, scope: !662, file: !193, line: 199, type: !42)
!665 = !DILocalVariable(name: "obj", arg: 2, scope: !662, file: !193, line: 200, type: !42)
!666 = !DILocalVariable(name: "buffers", scope: !662, file: !193, line: 201, type: !24)
!667 = !DILocation(line: 0, scope: !662)
!668 = !DILocation(line: 201, column: 33, scope: !662)
!669 = !DILocation(line: 202, column: 12, scope: !662)
!670 = !DILocation(line: 202, column: 5, scope: !662)
!671 = !DILocation(line: 0, scope: !583, inlinedAt: !672)
!672 = distinct !DILocation(line: 203, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !662, file: !193, line: 202, column: 22)
!674 = !DILocation(line: 173, column: 31, scope: !583, inlinedAt: !672)
!675 = !DILocation(line: 175, column: 15, scope: !597, inlinedAt: !672)
!676 = !DILocation(line: 175, column: 9, scope: !597, inlinedAt: !672)
!677 = !DILocation(line: 175, column: 9, scope: !583, inlinedAt: !672)
!678 = !DILocation(line: 176, column: 22, scope: !601, inlinedAt: !672)
!679 = !DILocation(line: 176, column: 14, scope: !601, inlinedAt: !672)
!680 = !DILocation(line: 0, scope: !349, inlinedAt: !681)
!681 = distinct !DILocation(line: 180, column: 23, scope: !606, inlinedAt: !672)
!682 = !DILocation(line: 0, scope: !349, inlinedAt: !683)
!683 = distinct !DILocation(line: 186, column: 23, scope: !610, inlinedAt: !672)
!684 = !DILocation(line: 0, scope: !335, inlinedAt: !685)
!685 = distinct !DILocation(line: 1471, column: 16, scope: !349, inlinedAt: !681)
!686 = !DILocation(line: 0, scope: !335, inlinedAt: !687)
!687 = distinct !DILocation(line: 1471, column: 16, scope: !349, inlinedAt: !683)
!688 = !DILocation(line: 0, scope: !601, inlinedAt: !672)
!689 = !DILocation(line: 176, column: 13, scope: !602, inlinedAt: !672)
!690 = !DILocation(line: 180, column: 17, scope: !607, inlinedAt: !672)
!691 = !DILocation(line: 181, column: 23, scope: !620, inlinedAt: !672)
!692 = !DILocation(line: 181, column: 41, scope: !620, inlinedAt: !672)
!693 = !DILocation(line: 181, column: 17, scope: !620, inlinedAt: !672)
!694 = !DILocation(line: 182, column: 13, scope: !620, inlinedAt: !672)
!695 = !DILocation(line: 183, column: 19, scope: !607, inlinedAt: !672)
!696 = !DILocation(line: 183, column: 37, scope: !607, inlinedAt: !672)
!697 = !DILocation(line: 183, column: 13, scope: !607, inlinedAt: !672)
!698 = !DILocation(line: 184, column: 9, scope: !607, inlinedAt: !672)
!699 = !DILocation(line: 186, column: 17, scope: !611, inlinedAt: !672)
!700 = !DILocation(line: 0, scope: !313, inlinedAt: !701)
!701 = distinct !DILocation(line: 187, column: 25, scope: !633, inlinedAt: !672)
!702 = !DILocation(line: 0, scope: !296, inlinedAt: !703)
!703 = distinct !DILocation(line: 1479, column: 9, scope: !313, inlinedAt: !701)
!704 = !DILocation(line: 1460, column: 13, scope: !637, inlinedAt: !703)
!705 = !DILocation(line: 1460, column: 19, scope: !637, inlinedAt: !703)
!706 = !DILocation(line: 188, column: 13, scope: !633, inlinedAt: !672)
!707 = !DILocation(line: 189, column: 19, scope: !611, inlinedAt: !672)
!708 = !DILocation(line: 189, column: 37, scope: !611, inlinedAt: !672)
!709 = !DILocation(line: 189, column: 13, scope: !611, inlinedAt: !672)
!710 = !DILocation(line: 0, scope: !330, inlinedAt: !711)
!711 = distinct !DILocation(line: 192, column: 15, scope: !646, inlinedAt: !672)
!712 = !DILocation(line: 0, scope: !335, inlinedAt: !713)
!713 = distinct !DILocation(line: 1467, column: 16, scope: !330, inlinedAt: !711)
!714 = !DILocation(line: 1455, column: 17, scope: !335, inlinedAt: !713)
!715 = !DILocation(line: 1455, column: 23, scope: !335, inlinedAt: !713)
!716 = !DILocation(line: 1455, column: 31, scope: !335, inlinedAt: !713)
!717 = !DILocation(line: 192, column: 9, scope: !583, inlinedAt: !672)
!718 = !DILocation(line: 0, scope: !290, inlinedAt: !719)
!719 = distinct !DILocation(line: 193, column: 17, scope: !655, inlinedAt: !672)
!720 = !DILocation(line: 0, scope: !296, inlinedAt: !721)
!721 = distinct !DILocation(line: 1475, column: 9, scope: !290, inlinedAt: !719)
!722 = !DILocation(line: 1460, column: 13, scope: !637, inlinedAt: !721)
!723 = !DILocation(line: 1460, column: 19, scope: !637, inlinedAt: !721)
!724 = !DILocation(line: 194, column: 5, scope: !655, inlinedAt: !672)
!725 = !DILocation(line: 204, column: 17, scope: !673)
!726 = distinct !{!726, !670, !727, !448}
!727 = !DILocation(line: 205, column: 5, scope: !662)
!728 = !DILocation(line: 206, column: 5, scope: !662)
!729 = distinct !DISubprogram(name: "_halide_buffer_set_bounds", scope: !193, file: !193, line: 210, type: !730, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !732)
!730 = !DISubroutineType(types: !731)
!731 = !{!25, !25, !41, !41, !41}
!732 = !{!733, !734, !735, !736}
!733 = !DILocalVariable(name: "buf", arg: 1, scope: !729, file: !193, line: 210, type: !25)
!734 = !DILocalVariable(name: "dim", arg: 2, scope: !729, file: !193, line: 211, type: !41)
!735 = !DILocalVariable(name: "min", arg: 3, scope: !729, file: !193, line: 211, type: !41)
!736 = !DILocalVariable(name: "extent", arg: 4, scope: !729, file: !193, line: 211, type: !41)
!737 = !DILocation(line: 0, scope: !729)
!738 = !DILocation(line: 212, column: 10, scope: !729)
!739 = !DILocation(line: 212, column: 19, scope: !729)
!740 = !DILocation(line: 212, column: 23, scope: !729)
!741 = !DILocation(line: 213, column: 19, scope: !729)
!742 = !DILocation(line: 213, column: 26, scope: !729)
!743 = !DILocation(line: 214, column: 5, scope: !729)
!744 = !DISubprogram(name: "memcpy", scope: !6, file: !6, line: 94, type: !745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !749)
!745 = !DISubroutineType(types: !746)
!746 = !{!42, !42, !747, !15}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!749 = !{}
