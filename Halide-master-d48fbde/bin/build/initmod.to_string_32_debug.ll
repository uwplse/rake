; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/to_string.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/to_string.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type opaque
%struct.halide_dimension_t = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"-nan\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"-0.000000e+00\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"0.000000e+00\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"-0.000000\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"0.000000\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"e+\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"e-\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"handle\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"bad_type_code\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"nullptr\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"buffer(\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c", {\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: nounwind
define weak dso_local i8* @halide_string_to_string(i8* %0, i8* %1, i8* %2) local_unnamed_addr #0 !dbg !31 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !40, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i8* %1, metadata !41, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i8* %2, metadata !42, metadata !DIExpression()), !dbg !43
  %4 = icmp ult i8* %0, %1, !dbg !44
  br i1 %4, label %6, label %15, !dbg !46

5:                                                ; preds = %11
  store i8 0, i8* %8, align 1, !dbg !47, !tbaa !51
  br label %15, !dbg !54

6:                                                ; preds = %3, %11
  %7 = phi i8* [ %13, %11 ], [ %2, %3 ]
  %8 = phi i8* [ %12, %11 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i8* %8, metadata !40, metadata !DIExpression()), !dbg !43
  %9 = load i8, i8* %7, align 1, !dbg !55, !tbaa !51
  store i8 %9, i8* %8, align 1, !dbg !56, !tbaa !51
  %10 = icmp eq i8 %9, 0, !dbg !57
  br i1 %10, label %15, label %11, !dbg !59

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !60
  call void @llvm.dbg.value(metadata i8* %12, metadata !40, metadata !DIExpression()), !dbg !43
  %13 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !61
  call void @llvm.dbg.value(metadata i8* %13, metadata !42, metadata !DIExpression()), !dbg !43
  %14 = icmp eq i8* %12, %1, !dbg !62
  br i1 %14, label %5, label %6, !dbg !63, !llvm.loop !64

15:                                               ; preds = %6, %3, %5
  %16 = phi i8* [ %1, %5 ], [ %0, %3 ], [ %8, %6 ], !dbg !43
  ret i8* %16, !dbg !67
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_uint64_to_string(i8* %0, i8* %1, i64 %2, i32 %3) local_unnamed_addr #2 !dbg !68 {
  %5 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !73, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata i8* %1, metadata !74, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata i64 %2, metadata !75, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata i32 %3, metadata !76, metadata !DIExpression()), !dbg !88
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #6, !dbg !89
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !77, metadata !DIExpression()), !dbg !90
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 31, !dbg !91
  store i8 0, i8* %7, align 1, !dbg !92, !tbaa !51
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 30, !dbg !93
  call void @llvm.dbg.value(metadata i8* %8, metadata !81, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !82, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i64 %2, metadata !75, metadata !DIExpression()), !dbg !88
  %9 = icmp sgt i32 %3, 0, !dbg !95
  %10 = icmp ne i64 %2, 0, !dbg !96
  %11 = or i1 %9, %10, !dbg !96
  br i1 %11, label %16, label %12, !dbg !97

12:                                               ; preds = %16, %4
  %13 = phi i8* [ %8, %4 ], [ %25, %16 ], !dbg !88
  %14 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !98
  call void @llvm.dbg.value(metadata i8* %14, metadata !81, metadata !DIExpression()), !dbg !88
  %15 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* nonnull %14) #7, !dbg !99
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #6, !dbg !100
  ret i8* %15, !dbg !101

16:                                               ; preds = %4, %16
  %17 = phi i64 [ %20, %16 ], [ %2, %4 ]
  %18 = phi i8* [ %25, %16 ], [ %8, %4 ]
  %19 = phi i32 [ %26, %16 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i64 %17, metadata !75, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata i8* %18, metadata !81, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata i32 %19, metadata !82, metadata !DIExpression()), !dbg !94
  %20 = udiv i64 %17, 10, !dbg !102
  call void @llvm.dbg.value(metadata i64 %20, metadata !84, metadata !DIExpression()), !dbg !103
  %21 = mul i64 %20, -10, !dbg !104
  %22 = add i64 %21, %17, !dbg !105
  call void @llvm.dbg.value(metadata i64 %22, metadata !87, metadata !DIExpression()), !dbg !103
  %23 = trunc i64 %22 to i8, !dbg !106
  %24 = add i8 %23, 48, !dbg !106
  store i8 %24, i8* %18, align 1, !dbg !107, !tbaa !51
  %25 = getelementptr inbounds i8, i8* %18, i32 -1, !dbg !108
  call void @llvm.dbg.value(metadata i8* %25, metadata !81, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata i64 %20, metadata !75, metadata !DIExpression()), !dbg !88
  %26 = add nuw nsw i32 %19, 1, !dbg !109
  call void @llvm.dbg.value(metadata i32 %26, metadata !82, metadata !DIExpression()), !dbg !94
  %27 = icmp slt i32 %26, %3, !dbg !95
  %28 = icmp ugt i64 %17, 9, !dbg !96
  %29 = or i1 %27, %28, !dbg !96
  br i1 %29, label %16, label %12, !dbg !97, !llvm.loop !110
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_int64_to_string(i8* %0, i8* %1, i64 %2, i32 %3) local_unnamed_addr #2 !dbg !113 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !119, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i8* %1, metadata !120, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i64 %2, metadata !121, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i32 %3, metadata !122, metadata !DIExpression()), !dbg !123
  %5 = icmp slt i64 %2, 0, !dbg !124
  %6 = icmp ult i8* %0, %1
  %7 = and i1 %6, %5, !dbg !126
  br i1 %7, label %8, label %11, !dbg !126

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !127
  call void @llvm.dbg.value(metadata i8* %9, metadata !119, metadata !DIExpression()), !dbg !123
  store i8 45, i8* %0, align 1, !dbg !129, !tbaa !51
  %10 = sub nsw i64 0, %2, !dbg !130
  call void @llvm.dbg.value(metadata i64 %10, metadata !121, metadata !DIExpression()), !dbg !123
  br label %11, !dbg !131

11:                                               ; preds = %8, %4
  %12 = phi i64 [ %10, %8 ], [ %2, %4 ]
  %13 = phi i8* [ %9, %8 ], [ %0, %4 ]
  call void @llvm.dbg.value(metadata i8* %13, metadata !119, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i64 %12, metadata !121, metadata !DIExpression()), !dbg !123
  %14 = tail call i8* @halide_uint64_to_string(i8* %13, i8* %1, i64 %12, i32 %3) #7, !dbg !132
  ret i8* %14, !dbg !133
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_double_to_string(i8* %0, i8* %1, double %2, i32 %3) local_unnamed_addr #2 !dbg !134 {
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  %7 = alloca [512 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !139, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i8* %1, metadata !140, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata double %2, metadata !141, metadata !DIExpression()), !dbg !190
  store double %2, double* %5, align 8, !tbaa !191
  call void @llvm.dbg.value(metadata i32 %3, metadata !142, metadata !DIExpression()), !dbg !190
  %8 = bitcast i64* %6 to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #6, !dbg !193
  call void @llvm.dbg.value(metadata i64 0, metadata !143, metadata !DIExpression()), !dbg !190
  store i64 0, i64* %6, align 8, !dbg !194, !tbaa !195
  %9 = bitcast double* %5 to i8*, !dbg !197
  call void @llvm.dbg.value(metadata double* %5, metadata !141, metadata !DIExpression(DW_OP_deref)), !dbg !190
  call void @llvm.dbg.value(metadata i64* %6, metadata !143, metadata !DIExpression(DW_OP_deref)), !dbg !190
  %10 = call i8* @memcpy(i8* nonnull %8, i8* nonnull %9, i32 8) #8, !dbg !198
  call void @llvm.dbg.value(metadata i64 1, metadata !144, metadata !DIExpression()), !dbg !190
  %11 = load i64, i64* %6, align 8, !dbg !199, !tbaa !195
  call void @llvm.dbg.value(metadata i64 %11, metadata !143, metadata !DIExpression()), !dbg !190
  %12 = and i64 %11, 4503599627370495, !dbg !200
  call void @llvm.dbg.value(metadata i64 %12, metadata !145, metadata !DIExpression()), !dbg !190
  %13 = lshr i64 %11, 52, !dbg !201
  %14 = trunc i64 %13 to i32, !dbg !202
  %15 = and i32 %14, 2047, !dbg !202
  call void @llvm.dbg.value(metadata i32 %15, metadata !146, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i64 %11, metadata !147, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !190
  %16 = icmp eq i32 %15, 2047, !dbg !203
  br i1 %16, label %17, label %30, !dbg !205

17:                                               ; preds = %4
  %18 = icmp eq i64 %12, 0, !dbg !206
  %19 = icmp sgt i64 %11, -1, !dbg !209
  br i1 %18, label %25, label %20, !dbg !210

20:                                               ; preds = %17
  br i1 %19, label %23, label %21, !dbg !211

21:                                               ; preds = %20
  %22 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #7, !dbg !213
  br label %176, !dbg !216

23:                                               ; preds = %20
  %24 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !217
  br label %176, !dbg !219

25:                                               ; preds = %17
  br i1 %19, label %28, label %26, !dbg !220

26:                                               ; preds = %25
  %27 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !222
  br label %176, !dbg !225

28:                                               ; preds = %25
  %29 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !226
  br label %176, !dbg !228

30:                                               ; preds = %4
  %31 = icmp eq i32 %15, 0, !dbg !229
  %32 = icmp eq i64 %12, 0
  %33 = and i1 %32, %31, !dbg !231
  br i1 %33, label %34, label %47, !dbg !231

34:                                               ; preds = %30
  %35 = icmp eq i32 %3, 0, !dbg !232
  %36 = icmp sgt i64 %11, -1, !dbg !235
  br i1 %35, label %42, label %37, !dbg !236

37:                                               ; preds = %34
  br i1 %36, label %40, label %38, !dbg !237

38:                                               ; preds = %37
  %39 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !239
  br label %176, !dbg !242

40:                                               ; preds = %37
  %41 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !243
  br label %176, !dbg !245

42:                                               ; preds = %34
  br i1 %36, label %45, label %43, !dbg !246

43:                                               ; preds = %42
  %44 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !248
  br label %176, !dbg !251

45:                                               ; preds = %42
  %46 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !252
  br label %176, !dbg !254

47:                                               ; preds = %30
  %48 = icmp sgt i64 %11, -1, !dbg !255
  br i1 %48, label %53, label %49, !dbg !257

49:                                               ; preds = %47
  %50 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !258
  call void @llvm.dbg.value(metadata i8* %50, metadata !139, metadata !DIExpression()), !dbg !190
  %51 = load double, double* %5, align 8, !dbg !260, !tbaa !191
  call void @llvm.dbg.value(metadata double %51, metadata !141, metadata !DIExpression()), !dbg !190
  %52 = fneg double %51, !dbg !261
  call void @llvm.dbg.value(metadata double %52, metadata !141, metadata !DIExpression()), !dbg !190
  store double %52, double* %5, align 8, !dbg !262, !tbaa !191
  br label %53, !dbg !263

53:                                               ; preds = %49, %47
  %54 = phi i8* [ %50, %49 ], [ %0, %47 ]
  call void @llvm.dbg.value(metadata i8* %54, metadata !139, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i32 6, metadata !148, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i64 1000000, metadata !150, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i32 52, metadata !152, metadata !DIExpression()), !dbg !190
  %55 = icmp eq i32 %3, 0, !dbg !264
  br i1 %55, label %100, label %56, !dbg !265

56:                                               ; preds = %53
  %57 = load double, double* %5, align 8, !dbg !266, !tbaa !191
  call void @llvm.dbg.value(metadata i32 0, metadata !153, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double %57, metadata !141, metadata !DIExpression()), !dbg !190
  %58 = fcmp olt double %57, 1.000000e+00, !dbg !268
  br i1 %58, label %59, label %66, !dbg !269

59:                                               ; preds = %56, %59
  %60 = phi i32 [ %63, %59 ], [ 0, %56 ]
  %61 = phi double [ %62, %59 ], [ %57, %56 ]
  call void @llvm.dbg.value(metadata i32 %60, metadata !153, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double %61, metadata !141, metadata !DIExpression()), !dbg !190
  %62 = fmul double %61, 1.000000e+01, !dbg !270
  call void @llvm.dbg.value(metadata double %62, metadata !141, metadata !DIExpression()), !dbg !190
  %63 = add nsw i32 %60, -1, !dbg !272
  call void @llvm.dbg.value(metadata i32 %63, metadata !153, metadata !DIExpression()), !dbg !267
  %64 = fcmp olt double %62, 1.000000e+00, !dbg !268
  br i1 %64, label %59, label %65, !dbg !269, !llvm.loop !273

65:                                               ; preds = %59
  store double %62, double* %5, align 8, !dbg !270, !tbaa !191
  br label %66, !dbg !269

66:                                               ; preds = %65, %56
  %67 = phi double [ %62, %65 ], [ %57, %56 ], !dbg !275
  %68 = phi i32 [ %63, %65 ], [ 0, %56 ], !dbg !267
  call void @llvm.dbg.value(metadata i32 %68, metadata !153, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double %67, metadata !141, metadata !DIExpression()), !dbg !190
  %69 = fcmp ult double %67, 1.000000e+01, !dbg !276
  br i1 %69, label %77, label %70, !dbg !277

70:                                               ; preds = %66, %70
  %71 = phi i32 [ %74, %70 ], [ %68, %66 ]
  %72 = phi double [ %73, %70 ], [ %67, %66 ]
  call void @llvm.dbg.value(metadata i32 %71, metadata !153, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double %72, metadata !141, metadata !DIExpression()), !dbg !190
  %73 = fdiv double %72, 1.000000e+01, !dbg !278
  call void @llvm.dbg.value(metadata double %73, metadata !141, metadata !DIExpression()), !dbg !190
  %74 = add nsw i32 %71, 1, !dbg !280
  call void @llvm.dbg.value(metadata i32 %74, metadata !153, metadata !DIExpression()), !dbg !267
  %75 = fcmp ult double %73, 1.000000e+01, !dbg !276
  br i1 %75, label %76, label %70, !dbg !277, !llvm.loop !281

76:                                               ; preds = %70
  store double %73, double* %5, align 8, !dbg !278, !tbaa !191
  br label %77, !dbg !277

77:                                               ; preds = %76, %66
  %78 = phi double [ %73, %76 ], [ %67, %66 ], !dbg !275
  %79 = phi i32 [ %74, %76 ], [ %68, %66 ], !dbg !267
  %80 = fmul double %78, 1.000000e+06, !dbg !283
  %81 = fadd double %80, 5.000000e-01, !dbg !284
  %82 = fptoui double %81 to i64, !dbg !285
  call void @llvm.dbg.value(metadata i64 %82, metadata !156, metadata !DIExpression()), !dbg !267
  %83 = udiv i64 %82, 1000000, !dbg !286
  call void @llvm.dbg.value(metadata i64 %83, metadata !157, metadata !DIExpression()), !dbg !267
  %84 = mul i64 %83, -1000000, !dbg !287
  %85 = add i64 %84, %82, !dbg !288
  call void @llvm.dbg.value(metadata i64 %85, metadata !158, metadata !DIExpression()), !dbg !267
  %86 = call i8* @halide_int64_to_string(i8* %54, i8* %1, i64 %83, i32 1) #7, !dbg !289
  call void @llvm.dbg.value(metadata i8* %86, metadata !139, metadata !DIExpression()), !dbg !190
  %87 = call i8* @halide_string_to_string(i8* %86, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #7, !dbg !290
  call void @llvm.dbg.value(metadata i8* %87, metadata !139, metadata !DIExpression()), !dbg !190
  %88 = call i8* @halide_int64_to_string(i8* %87, i8* %1, i64 %85, i32 6) #7, !dbg !291
  call void @llvm.dbg.value(metadata i8* %88, metadata !139, metadata !DIExpression()), !dbg !190
  %89 = icmp sgt i32 %79, -1, !dbg !292
  br i1 %89, label %90, label %92, !dbg !294

90:                                               ; preds = %77
  %91 = call i8* @halide_string_to_string(i8* %88, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)) #7, !dbg !295
  call void @llvm.dbg.value(metadata i8* %91, metadata !139, metadata !DIExpression()), !dbg !190
  br label %95, !dbg !297

92:                                               ; preds = %77
  %93 = call i8* @halide_string_to_string(i8* %88, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !298
  call void @llvm.dbg.value(metadata i8* %93, metadata !139, metadata !DIExpression()), !dbg !190
  %94 = sub nsw i32 0, %79, !dbg !300
  call void @llvm.dbg.value(metadata i32 %94, metadata !153, metadata !DIExpression()), !dbg !267
  br label %95

95:                                               ; preds = %92, %90
  %96 = phi i32 [ %79, %90 ], [ %94, %92 ], !dbg !267
  %97 = phi i8* [ %91, %90 ], [ %93, %92 ], !dbg !301
  call void @llvm.dbg.value(metadata i8* %97, metadata !139, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i32 %96, metadata !153, metadata !DIExpression()), !dbg !267
  %98 = zext i32 %96 to i64, !dbg !302
  %99 = call i8* @halide_int64_to_string(i8* %97, i8* %1, i64 %98, i32 2) #7, !dbg !303
  call void @llvm.dbg.value(metadata i8* %99, metadata !139, metadata !DIExpression()), !dbg !190
  br label %176, !dbg !304

100:                                              ; preds = %53
  br i1 %31, label %101, label %103, !dbg !305

101:                                              ; preds = %100
  %102 = call i8* @halide_double_to_string(i8* %54, i8* %1, double 0.000000e+00, i32 0) #7, !dbg !306
  br label %176, !dbg !309

103:                                              ; preds = %100
  %104 = or i64 %12, 4503599627370496, !dbg !310
  call void @llvm.dbg.value(metadata i64 %104, metadata !159, metadata !DIExpression()), !dbg !311
  %105 = add nsw i32 %15, -1075, !dbg !312
  call void @llvm.dbg.value(metadata i32 %105, metadata !161, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i64 %104, metadata !162, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i32 %105, metadata !163, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i64 0, metadata !164, metadata !DIExpression()), !dbg !311
  %106 = icmp ult i32 %15, 1075, !dbg !313
  br i1 %106, label %107, label %137, !dbg !314

107:                                              ; preds = %103
  %108 = icmp ult i32 %15, 1023, !dbg !315
  br i1 %108, label %115, label %109, !dbg !317

109:                                              ; preds = %107
  %110 = sub nuw nsw i32 1075, %15, !dbg !318
  %111 = zext i32 %110 to i64, !dbg !320
  %112 = lshr i64 %104, %111, !dbg !320
  call void @llvm.dbg.value(metadata i64 %112, metadata !162, metadata !DIExpression()), !dbg !311
  %113 = shl i64 %112, %111, !dbg !321
  %114 = sub i64 %104, %113, !dbg !322
  call void @llvm.dbg.value(metadata double undef, metadata !165, metadata !DIExpression()), !dbg !323
  br label %115

115:                                              ; preds = %107, %109
  %116 = phi i64 [ %112, %109 ], [ 0, %107 ], !dbg !324
  %117 = phi i64 [ %114, %109 ], [ %104, %107 ]
  %118 = uitofp i64 %117 to double, !dbg !324
  call void @llvm.dbg.value(metadata double %118, metadata !165, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i64 %116, metadata !162, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i32 0, metadata !163, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i64 4696837146684686336, metadata !168, metadata !DIExpression()), !dbg !323
  %119 = zext i32 %105 to i64, !dbg !325
  %120 = shl i64 %119, 52, !dbg !326
  %121 = add i64 %120, 4696837146684686336, !dbg !327
  call void @llvm.dbg.value(metadata i64 %121, metadata !168, metadata !DIExpression()), !dbg !323
  %122 = bitcast i64 %121 to double, !dbg !328
  %123 = fmul double %122, %118, !dbg !329
  %124 = fadd double %123, 5.000000e-01, !dbg !330
  call void @llvm.dbg.value(metadata double %124, metadata !165, metadata !DIExpression()), !dbg !323
  %125 = fptoui double %124 to i64, !dbg !331
  call void @llvm.dbg.value(metadata i64 %125, metadata !164, metadata !DIExpression()), !dbg !311
  %126 = uitofp i64 %125 to double, !dbg !332
  %127 = fcmp oeq double %124, %126, !dbg !334
  %128 = and i64 %125, 1
  %129 = icmp ne i64 %128, 0
  %130 = and i1 %127, %129, !dbg !335
  %131 = sext i1 %130 to i64, !dbg !335
  %132 = add i64 %131, %125, !dbg !335
  call void @llvm.dbg.value(metadata i64 %132, metadata !164, metadata !DIExpression()), !dbg !311
  %133 = icmp eq i64 %132, 1000000, !dbg !336
  %134 = zext i1 %133 to i64, !dbg !338
  %135 = add nuw i64 %116, %134, !dbg !338
  %136 = select i1 %133, i64 0, i64 %132, !dbg !338
  call void @llvm.dbg.value(metadata i64 %136, metadata !164, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i64 %135, metadata !162, metadata !DIExpression()), !dbg !311
  br label %137, !dbg !339

137:                                              ; preds = %115, %103
  %138 = phi i64 [ %135, %115 ], [ %104, %103 ], !dbg !311
  %139 = phi i32 [ 0, %115 ], [ %105, %103 ], !dbg !311
  %140 = phi i64 [ %136, %115 ], [ 0, %103 ], !dbg !311
  call void @llvm.dbg.value(metadata i64 %140, metadata !164, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i32 %139, metadata !163, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i64 %138, metadata !162, metadata !DIExpression()), !dbg !311
  %141 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0, !dbg !340
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %141) #6, !dbg !340
  call void @llvm.dbg.declare(metadata [512 x i8]* %7, metadata !173, metadata !DIExpression()), !dbg !341
  %142 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 512, !dbg !342
  %143 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 480, !dbg !343
  call void @llvm.dbg.value(metadata i8* %143, metadata !177, metadata !DIExpression()), !dbg !311
  %144 = call i8* @halide_int64_to_string(i8* nonnull %143, i8* nonnull %142, i64 %138, i32 1) #7, !dbg !344
  call void @llvm.dbg.value(metadata i8* %144, metadata !178, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i32 0, metadata !179, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i8* %143, metadata !177, metadata !DIExpression()), !dbg !311
  %145 = icmp sgt i32 %139, 0, !dbg !346
  br i1 %145, label %146, label %151, !dbg !347

146:                                              ; preds = %137, %172
  %147 = phi i32 [ %174, %172 ], [ 0, %137 ]
  %148 = phi i8* [ %173, %172 ], [ %143, %137 ]
  call void @llvm.dbg.value(metadata i32 %147, metadata !179, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i8* %148, metadata !177, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i8* %144, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !348
  call void @llvm.dbg.value(metadata i32 0, metadata !181, metadata !DIExpression()), !dbg !349
  %149 = getelementptr inbounds i8, i8* %148, i32 -1, !dbg !350
  %150 = icmp eq i8* %144, %148, !dbg !351
  br i1 %150, label %172, label %157, !dbg !352

151:                                              ; preds = %172, %137
  %152 = phi i8* [ %143, %137 ], [ %173, %172 ], !dbg !311
  %153 = call i8* @halide_string_to_string(i8* %54, i8* %1, i8* %152) #7, !dbg !353
  call void @llvm.dbg.value(metadata i8* %153, metadata !139, metadata !DIExpression()), !dbg !190
  %154 = call i8* @halide_string_to_string(i8* %153, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #7, !dbg !354
  call void @llvm.dbg.value(metadata i8* %154, metadata !139, metadata !DIExpression()), !dbg !190
  %155 = call i8* @halide_int64_to_string(i8* %154, i8* %1, i64 %140, i32 6) #7, !dbg !355
  call void @llvm.dbg.value(metadata i8* %155, metadata !139, metadata !DIExpression()), !dbg !190
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %141) #6, !dbg !356
  br label %176

156:                                              ; preds = %157
  br i1 %165, label %171, label %172, !dbg !357

157:                                              ; preds = %146, %157
  %158 = phi i8* [ %160, %157 ], [ %144, %146 ]
  %159 = phi i8 [ %167, %157 ], [ 0, %146 ]
  %160 = getelementptr inbounds i8, i8* %158, i32 -1
  call void @llvm.dbg.value(metadata i32 undef, metadata !181, metadata !DIExpression()), !dbg !349
  %161 = load i8, i8* %160, align 1, !dbg !358, !tbaa !51
  call void @llvm.dbg.value(metadata i8 %161, metadata !186, metadata !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value)), !dbg !359
  %162 = shl i8 %161, 1, !dbg !360
  %163 = add i8 %162, -96, !dbg !360
  %164 = or i8 %163, %159, !dbg !361
  call void @llvm.dbg.value(metadata i8 %164, metadata !189, metadata !DIExpression()), !dbg !359
  %165 = icmp sgt i8 %164, 9, !dbg !362
  %166 = add i8 %164, -10, !dbg !364
  %167 = zext i1 %165 to i8, !dbg !364
  %168 = select i1 %165, i8 %166, i8 %164, !dbg !364
  call void @llvm.dbg.value(metadata i8 %168, metadata !189, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i1 %165, metadata !181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !349
  %169 = add i8 %168, 48, !dbg !365
  store i8 %169, i8* %160, align 1, !dbg !366, !tbaa !51
  call void @llvm.dbg.value(metadata i8* %160, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !348
  %170 = icmp eq i8* %160, %148, !dbg !351
  br i1 %170, label %156, label %157, !dbg !352, !llvm.loop !367

171:                                              ; preds = %156
  call void @llvm.dbg.value(metadata i8* %149, metadata !177, metadata !DIExpression()), !dbg !311
  store i8 49, i8* %149, align 1, !dbg !369, !tbaa !51
  br label %172, !dbg !372

172:                                              ; preds = %146, %171, %156
  %173 = phi i8* [ %149, %171 ], [ %148, %156 ], [ %148, %146 ], !dbg !311
  call void @llvm.dbg.value(metadata i8* %173, metadata !177, metadata !DIExpression()), !dbg !311
  %174 = add nuw nsw i32 %147, 1, !dbg !373
  call void @llvm.dbg.value(metadata i32 %174, metadata !179, metadata !DIExpression()), !dbg !345
  %175 = icmp slt i32 %174, %139, !dbg !346
  br i1 %175, label %146, label %151, !dbg !347, !llvm.loop !374

176:                                              ; preds = %101, %151, %95, %45, %43, %40, %38, %28, %26, %23, %21
  %177 = phi i8* [ %22, %21 ], [ %24, %23 ], [ %27, %26 ], [ %29, %28 ], [ %39, %38 ], [ %41, %40 ], [ %44, %43 ], [ %46, %45 ], [ %102, %101 ], [ %99, %95 ], [ %155, %151 ], !dbg !190
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #6, !dbg !376
  ret i8* %177, !dbg !376
}

declare !dbg !377 dso_local i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_pointer_to_string(i8* %0, i8* %1, i8* %2) local_unnamed_addr #2 !dbg !384 {
  %4 = alloca [20 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !388, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i8* %1, metadata !389, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i8* %2, metadata !390, metadata !DIExpression()), !dbg !400
  %5 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 0, !dbg !401
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %5) #6, !dbg !401
  call void @llvm.dbg.declare(metadata [20 x i8]* %4, metadata !392, metadata !DIExpression()), !dbg !402
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(20) %5, i8 0, i32 20, i1 false), !dbg !402
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 18, !dbg !403
  call void @llvm.dbg.value(metadata i8* %6, metadata !396, metadata !DIExpression()), !dbg !400
  %7 = ptrtoint i8* %2 to i32, !dbg !404
  call void @llvm.dbg.value(metadata i32 %7, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i32 0, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i8* %6, metadata !396, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i32 0, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 %7, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i8* %6, metadata !396, metadata !DIExpression()), !dbg !400
  %8 = and i32 %7, 15, !dbg !406
  %9 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i32 0, i32 %8, !dbg !406
  %10 = load i8, i8* %9, align 1, !dbg !406, !tbaa !51
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 17, !dbg !409
  call void @llvm.dbg.value(metadata i8* %11, metadata !396, metadata !DIExpression()), !dbg !400
  store i8 %10, i8* %6, align 1, !dbg !410, !tbaa !51
  %12 = lshr i32 %7, 4, !dbg !411
  call void @llvm.dbg.value(metadata i32 %12, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  %13 = icmp eq i32 %12, 0, !dbg !412
  call void @llvm.dbg.value(metadata i32 0, metadata !398, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !405
  br i1 %13, label %21, label %14, !dbg !414

14:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %12, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i32 1, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 0, metadata !398, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !405
  call void @llvm.dbg.value(metadata i32 %12, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i8* %11, metadata !396, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i32 1, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 %12, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i8* %11, metadata !396, metadata !DIExpression()), !dbg !400
  %15 = and i32 %12, 15, !dbg !406
  %16 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i32 0, i32 %15, !dbg !406
  %17 = load i8, i8* %16, align 1, !dbg !406, !tbaa !51
  %18 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 16, !dbg !409
  call void @llvm.dbg.value(metadata i8* %18, metadata !396, metadata !DIExpression()), !dbg !400
  store i8 %17, i8* %11, align 1, !dbg !410, !tbaa !51
  %19 = lshr i32 %7, 8, !dbg !411
  call void @llvm.dbg.value(metadata i32 %19, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  %20 = icmp eq i32 %19, 0, !dbg !412
  call void @llvm.dbg.value(metadata i32 1, metadata !398, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !405
  br i1 %20, label %21, label %26, !dbg !414

21:                                               ; preds = %61, %54, %47, %40, %33, %26, %14, %3
  %22 = phi i8* [ %6, %3 ], [ %11, %14 ], [ %18, %26 ], [ %30, %33 ], [ %37, %40 ], [ %44, %47 ], [ %51, %54 ], [ %58, %61 ]
  %23 = phi i8* [ %11, %3 ], [ %18, %14 ], [ %30, %26 ], [ %37, %33 ], [ %44, %40 ], [ %51, %47 ], [ %58, %54 ], [ %64, %61 ], !dbg !409
  call void @llvm.dbg.value(metadata i8* %23, metadata !396, metadata !DIExpression()), !dbg !400
  %24 = getelementptr inbounds i8, i8* %22, i32 -2, !dbg !415
  call void @llvm.dbg.value(metadata i8* %24, metadata !396, metadata !DIExpression()), !dbg !400
  store i8 120, i8* %23, align 1, !dbg !416, !tbaa !51
  store i8 48, i8* %24, align 1, !dbg !417, !tbaa !51
  %25 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* nonnull %24) #7, !dbg !418
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %5) #6, !dbg !419
  ret i8* %25, !dbg !420

26:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 %19, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i32 2, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 1, metadata !398, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !405
  call void @llvm.dbg.value(metadata i32 %19, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i8* %18, metadata !396, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i32 2, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 %19, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i8* %18, metadata !396, metadata !DIExpression()), !dbg !400
  %27 = and i32 %19, 15, !dbg !406
  %28 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i32 0, i32 %27, !dbg !406
  %29 = load i8, i8* %28, align 1, !dbg !406, !tbaa !51
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 15, !dbg !409
  call void @llvm.dbg.value(metadata i8* %30, metadata !396, metadata !DIExpression()), !dbg !400
  store i8 %29, i8* %18, align 1, !dbg !410, !tbaa !51
  %31 = lshr i32 %7, 12, !dbg !411
  call void @llvm.dbg.value(metadata i32 %31, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  %32 = icmp eq i32 %31, 0, !dbg !412
  call void @llvm.dbg.value(metadata i32 2, metadata !398, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !405
  br i1 %32, label %21, label %33, !dbg !414

33:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 %31, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i32 3, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 2, metadata !398, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !405
  call void @llvm.dbg.value(metadata i32 %31, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i8* %30, metadata !396, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i32 3, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 %31, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i8* %30, metadata !396, metadata !DIExpression()), !dbg !400
  %34 = and i32 %31, 15, !dbg !406
  %35 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i32 0, i32 %34, !dbg !406
  %36 = load i8, i8* %35, align 1, !dbg !406, !tbaa !51
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 14, !dbg !409
  call void @llvm.dbg.value(metadata i8* %37, metadata !396, metadata !DIExpression()), !dbg !400
  store i8 %36, i8* %30, align 1, !dbg !410, !tbaa !51
  %38 = lshr i32 %7, 16, !dbg !411
  call void @llvm.dbg.value(metadata i32 %38, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  %39 = icmp eq i32 %38, 0, !dbg !412
  call void @llvm.dbg.value(metadata i32 3, metadata !398, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !405
  br i1 %39, label %21, label %40, !dbg !414

40:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 %38, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i32 4, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 3, metadata !398, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !405
  call void @llvm.dbg.value(metadata i32 %38, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i8* %37, metadata !396, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i32 4, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 %38, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i8* %37, metadata !396, metadata !DIExpression()), !dbg !400
  %41 = and i32 %38, 15, !dbg !406
  %42 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i32 0, i32 %41, !dbg !406
  %43 = load i8, i8* %42, align 1, !dbg !406, !tbaa !51
  %44 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 13, !dbg !409
  call void @llvm.dbg.value(metadata i8* %44, metadata !396, metadata !DIExpression()), !dbg !400
  store i8 %43, i8* %37, align 1, !dbg !410, !tbaa !51
  %45 = lshr i32 %7, 20, !dbg !411
  call void @llvm.dbg.value(metadata i32 %45, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  %46 = icmp eq i32 %45, 0, !dbg !412
  call void @llvm.dbg.value(metadata i32 4, metadata !398, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !405
  br i1 %46, label %21, label %47, !dbg !414

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 %45, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i32 5, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 4, metadata !398, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !405
  call void @llvm.dbg.value(metadata i32 %45, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i8* %44, metadata !396, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i32 5, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 %45, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i8* %44, metadata !396, metadata !DIExpression()), !dbg !400
  %48 = and i32 %45, 15, !dbg !406
  %49 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i32 0, i32 %48, !dbg !406
  %50 = load i8, i8* %49, align 1, !dbg !406, !tbaa !51
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 12, !dbg !409
  call void @llvm.dbg.value(metadata i8* %51, metadata !396, metadata !DIExpression()), !dbg !400
  store i8 %50, i8* %44, align 1, !dbg !410, !tbaa !51
  %52 = lshr i32 %7, 24, !dbg !411
  call void @llvm.dbg.value(metadata i32 %52, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  %53 = icmp eq i32 %52, 0, !dbg !412
  call void @llvm.dbg.value(metadata i32 5, metadata !398, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !405
  br i1 %53, label %21, label %54, !dbg !414

54:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %52, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i32 6, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 5, metadata !398, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !405
  call void @llvm.dbg.value(metadata i32 %52, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i8* %51, metadata !396, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i32 6, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 %52, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i8* %51, metadata !396, metadata !DIExpression()), !dbg !400
  %55 = and i32 %52, 15, !dbg !406
  %56 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i32 0, i32 %55, !dbg !406
  %57 = load i8, i8* %56, align 1, !dbg !406, !tbaa !51
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 11, !dbg !409
  call void @llvm.dbg.value(metadata i8* %58, metadata !396, metadata !DIExpression()), !dbg !400
  store i8 %57, i8* %51, align 1, !dbg !410, !tbaa !51
  %59 = lshr i32 %7, 28, !dbg !411
  call void @llvm.dbg.value(metadata i32 %7, metadata !397, metadata !DIExpression(DW_OP_constu, 28, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  %60 = icmp eq i32 %59, 0, !dbg !412
  call void @llvm.dbg.value(metadata i32 6, metadata !398, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !405
  br i1 %60, label %21, label %61, !dbg !414

61:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 7, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 %7, metadata !397, metadata !DIExpression(DW_OP_constu, 28, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !400
  call void @llvm.dbg.value(metadata i8* %58, metadata !396, metadata !DIExpression()), !dbg !400
  %62 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i32 0, i32 %59, !dbg !406
  %63 = load i8, i8* %62, align 1, !dbg !406, !tbaa !51
  %64 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 10, !dbg !409
  call void @llvm.dbg.value(metadata i8* %64, metadata !396, metadata !DIExpression()), !dbg !400
  store i8 %63, i8* %58, align 1, !dbg !410, !tbaa !51
  call void @llvm.dbg.value(metadata i64 0, metadata !397, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i32 7, metadata !398, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !405
  br label %21, !dbg !414
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_type_to_string(i8* %0, i8* %1, %struct.halide_type_t* %2) local_unnamed_addr #2 !dbg !421 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i8* %1, metadata !461, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %2, metadata !462, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i8* null, metadata !463, metadata !DIExpression()), !dbg !464
  %4 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %2, i32 0, i32 0, !dbg !465
  %5 = load i8, i8* %4, align 2, !dbg !465, !tbaa !466
  switch i8 %5, label %9 [
    i8 0, label %10
    i8 1, label %6
    i8 2, label %7
    i8 3, label %8
  ], !dbg !470

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), metadata !463, metadata !DIExpression()), !dbg !464
  br label %10, !dbg !471

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), metadata !463, metadata !DIExpression()), !dbg !464
  br label %10, !dbg !473

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), metadata !463, metadata !DIExpression()), !dbg !464
  br label %10, !dbg !474

9:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), metadata !463, metadata !DIExpression()), !dbg !464
  br label %10, !dbg !475

10:                                               ; preds = %3, %9, %8, %7, %6
  %11 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), %9 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %8 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %7 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), %6 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), %3 ], !dbg !476
  call void @llvm.dbg.value(metadata i8* %11, metadata !463, metadata !DIExpression()), !dbg !464
  %12 = tail call i8* @halide_string_to_string(i8* %0, i8* %1, i8* nonnull %11) #7, !dbg !477
  call void @llvm.dbg.value(metadata i8* %12, metadata !460, metadata !DIExpression()), !dbg !464
  %13 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %2, i32 0, i32 1, !dbg !478
  %14 = load i8, i8* %13, align 1, !dbg !478, !tbaa !479
  %15 = zext i8 %14 to i64, !dbg !480
  %16 = tail call i8* @halide_uint64_to_string(i8* %12, i8* %1, i64 %15, i32 1) #7, !dbg !481
  call void @llvm.dbg.value(metadata i8* %16, metadata !460, metadata !DIExpression()), !dbg !464
  %17 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %2, i32 0, i32 2, !dbg !482
  %18 = load i16, i16* %17, align 2, !dbg !482, !tbaa !484
  %19 = icmp eq i16 %18, 1, !dbg !485
  br i1 %19, label %25, label %20, !dbg !486

20:                                               ; preds = %10
  %21 = tail call i8* @halide_string_to_string(i8* %16, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #7, !dbg !487
  call void @llvm.dbg.value(metadata i8* %21, metadata !460, metadata !DIExpression()), !dbg !464
  %22 = load i16, i16* %17, align 2, !dbg !489, !tbaa !484
  %23 = zext i16 %22 to i64, !dbg !490
  %24 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %1, i64 %23, i32 1) #7, !dbg !491
  call void @llvm.dbg.value(metadata i8* %24, metadata !460, metadata !DIExpression()), !dbg !464
  br label %25, !dbg !492

25:                                               ; preds = %20, %10
  %26 = phi i8* [ %24, %20 ], [ %16, %10 ], !dbg !464
  call void @llvm.dbg.value(metadata i8* %26, metadata !460, metadata !DIExpression()), !dbg !464
  ret i8* %26, !dbg !493
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_buffer_to_string(i8* %0, i8* %1, %struct.halide_buffer_t* %2) local_unnamed_addr #2 !dbg !494 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !620, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i8* %1, metadata !621, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !622, metadata !DIExpression()), !dbg !625
  %4 = icmp eq %struct.halide_buffer_t* %2, null, !dbg !626
  br i1 %4, label %5, label %7, !dbg !628

5:                                                ; preds = %3
  %6 = tail call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !629
  br label %61, !dbg !631

7:                                                ; preds = %3
  %8 = tail call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)) #7, !dbg !632
  call void @llvm.dbg.value(metadata i8* %8, metadata !620, metadata !DIExpression()), !dbg !625
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 0, !dbg !633
  %10 = load i64, i64* %9, align 8, !dbg !633, !tbaa !634
  %11 = tail call i8* @halide_uint64_to_string(i8* %8, i8* %1, i64 %10, i32 1) #7, !dbg !638
  call void @llvm.dbg.value(metadata i8* %11, metadata !620, metadata !DIExpression()), !dbg !625
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)) #7, !dbg !639
  call void @llvm.dbg.value(metadata i8* %12, metadata !620, metadata !DIExpression()), !dbg !625
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 1, !dbg !640
  %14 = bitcast %struct.halide_device_interface_t** %13 to i8**, !dbg !640
  %15 = load i8*, i8** %14, align 8, !dbg !640, !tbaa !641
  %16 = tail call i8* @halide_pointer_to_string(i8* %12, i8* %1, i8* %15) #7, !dbg !642
  call void @llvm.dbg.value(metadata i8* %16, metadata !620, metadata !DIExpression()), !dbg !625
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)) #7, !dbg !643
  call void @llvm.dbg.value(metadata i8* %17, metadata !620, metadata !DIExpression()), !dbg !625
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 2, !dbg !644
  %19 = load i8*, i8** %18, align 4, !dbg !644, !tbaa !645
  %20 = tail call i8* @halide_pointer_to_string(i8* %17, i8* %1, i8* %19) #7, !dbg !646
  call void @llvm.dbg.value(metadata i8* %20, metadata !620, metadata !DIExpression()), !dbg !625
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)) #7, !dbg !647
  call void @llvm.dbg.value(metadata i8* %21, metadata !620, metadata !DIExpression()), !dbg !625
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 3, !dbg !648
  %23 = load i64, i64* %22, align 8, !dbg !648, !tbaa !649
  %24 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %1, i64 %23, i32 1) #7, !dbg !650
  call void @llvm.dbg.value(metadata i8* %24, metadata !620, metadata !DIExpression()), !dbg !625
  %25 = tail call i8* @halide_string_to_string(i8* %24, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)) #7, !dbg !651
  call void @llvm.dbg.value(metadata i8* %25, metadata !620, metadata !DIExpression()), !dbg !625
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 4, !dbg !652
  %27 = tail call i8* @halide_type_to_string(i8* %25, i8* %1, %struct.halide_type_t* nonnull %26) #7, !dbg !653
  call void @llvm.dbg.value(metadata i8* %27, metadata !620, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i32 0, metadata !623, metadata !DIExpression()), !dbg !654
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 5, !dbg !655
  %29 = load i32, i32* %28, align 4, !dbg !655, !tbaa !657
  %30 = icmp sgt i32 %29, 0, !dbg !658
  br i1 %30, label %31, label %33, !dbg !659

31:                                               ; preds = %7
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i32 0, i32 6
  br label %36, !dbg !659

33:                                               ; preds = %36, %7
  %34 = phi i8* [ %27, %7 ], [ %57, %36 ], !dbg !625
  %35 = tail call i8* @halide_string_to_string(i8* %34, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)) #7, !dbg !660
  call void @llvm.dbg.value(metadata i8* %35, metadata !620, metadata !DIExpression()), !dbg !625
  br label %61, !dbg !661

36:                                               ; preds = %31, %36
  %37 = phi i32 [ 0, %31 ], [ %58, %36 ]
  %38 = phi i8* [ %27, %31 ], [ %57, %36 ]
  call void @llvm.dbg.value(metadata i32 %37, metadata !623, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i8* %38, metadata !620, metadata !DIExpression()), !dbg !625
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0)) #7, !dbg !662
  call void @llvm.dbg.value(metadata i8* %39, metadata !620, metadata !DIExpression()), !dbg !625
  %40 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !664, !tbaa !665
  %41 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %40, i32 %37, i32 0, !dbg !666
  %42 = load i32, i32* %41, align 4, !dbg !666, !tbaa !667
  %43 = sext i32 %42 to i64, !dbg !669
  %44 = tail call i8* @halide_int64_to_string(i8* %39, i8* %1, i64 %43, i32 1) #7, !dbg !670
  call void @llvm.dbg.value(metadata i8* %44, metadata !620, metadata !DIExpression()), !dbg !625
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)) #7, !dbg !671
  call void @llvm.dbg.value(metadata i8* %45, metadata !620, metadata !DIExpression()), !dbg !625
  %46 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !672, !tbaa !665
  %47 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %46, i32 %37, i32 1, !dbg !673
  %48 = load i32, i32* %47, align 4, !dbg !673, !tbaa !674
  %49 = sext i32 %48 to i64, !dbg !675
  %50 = tail call i8* @halide_int64_to_string(i8* %45, i8* %1, i64 %49, i32 1) #7, !dbg !676
  call void @llvm.dbg.value(metadata i8* %50, metadata !620, metadata !DIExpression()), !dbg !625
  %51 = tail call i8* @halide_string_to_string(i8* %50, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)) #7, !dbg !677
  call void @llvm.dbg.value(metadata i8* %51, metadata !620, metadata !DIExpression()), !dbg !625
  %52 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !678, !tbaa !665
  %53 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %52, i32 %37, i32 2, !dbg !679
  %54 = load i32, i32* %53, align 4, !dbg !679, !tbaa !680
  %55 = sext i32 %54 to i64, !dbg !681
  %56 = tail call i8* @halide_int64_to_string(i8* %51, i8* %1, i64 %55, i32 1) #7, !dbg !682
  call void @llvm.dbg.value(metadata i8* %56, metadata !620, metadata !DIExpression()), !dbg !625
  %57 = tail call i8* @halide_string_to_string(i8* %56, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)) #7, !dbg !683
  call void @llvm.dbg.value(metadata i8* %57, metadata !620, metadata !DIExpression()), !dbg !625
  %58 = add nuw nsw i32 %37, 1, !dbg !684
  call void @llvm.dbg.value(metadata i32 %58, metadata !623, metadata !DIExpression()), !dbg !654
  %59 = load i32, i32* %28, align 4, !dbg !655, !tbaa !657
  %60 = icmp slt i32 %58, %59, !dbg !658
  br i1 %60, label %36, label %33, !dbg !659, !llvm.loop !685

61:                                               ; preds = %33, %5
  %62 = phi i8* [ %6, %5 ], [ %35, %33 ], !dbg !625
  ret i8* %62, !dbg !687
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, imports: !22, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/to_string.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
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
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 10, baseType: !21)
!21 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !{!23}
!23 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !24, file: !6, line: 225)
!24 = !DINamespace(name: "Internal", scope: !25)
!25 = !DINamespace(name: "Runtime", scope: !26)
!26 = !DINamespace(name: "Halide", scope: null)
!27 = !{i32 7, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!31 = distinct !DISubprogram(name: "halide_string_to_string", scope: !32, file: !32, line: 5, type: !33, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!32 = !DIFile(filename: "src/runtime/to_string.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!33 = !DISubroutineType(types: !34)
!34 = !{!35, !35, !35, !37}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!39 = !{!40, !41, !42}
!40 = !DILocalVariable(name: "dst", arg: 1, scope: !31, file: !32, line: 5, type: !35)
!41 = !DILocalVariable(name: "end", arg: 2, scope: !31, file: !32, line: 5, type: !35)
!42 = !DILocalVariable(name: "arg", arg: 3, scope: !31, file: !32, line: 5, type: !37)
!43 = !DILocation(line: 0, scope: !31)
!44 = !DILocation(line: 6, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !31, file: !32, line: 6, column: 9)
!46 = !DILocation(line: 6, column: 9, scope: !31)
!47 = !DILocation(line: 11, column: 21, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !32, line: 10, column: 25)
!49 = distinct !DILexicalBlock(scope: !50, file: !32, line: 10, column: 13)
!50 = distinct !DILexicalBlock(scope: !31, file: !32, line: 9, column: 18)
!51 = !{!52, !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C++ TBAA"}
!54 = !DILocation(line: 12, column: 13, scope: !48)
!55 = !DILocation(line: 14, column: 16, scope: !50)
!56 = !DILocation(line: 14, column: 14, scope: !50)
!57 = !DILocation(line: 15, column: 18, scope: !58)
!58 = distinct !DILexicalBlock(scope: !50, file: !32, line: 15, column: 13)
!59 = !DILocation(line: 15, column: 13, scope: !50)
!60 = !DILocation(line: 18, column: 12, scope: !50)
!61 = !DILocation(line: 19, column: 12, scope: !50)
!62 = !DILocation(line: 10, column: 17, scope: !49)
!63 = !DILocation(line: 10, column: 13, scope: !50)
!64 = distinct !{!64, !65, !66}
!65 = !DILocation(line: 9, column: 5, scope: !31)
!66 = !DILocation(line: 20, column: 5, scope: !31)
!67 = !DILocation(line: 21, column: 1, scope: !31)
!68 = distinct !DISubprogram(name: "halide_uint64_to_string", scope: !32, file: !32, line: 23, type: !69, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !72)
!69 = !DISubroutineType(types: !70)
!70 = !{!35, !35, !35, !20, !71}
!71 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!72 = !{!73, !74, !75, !76, !77, !81, !82, !84, !87}
!73 = !DILocalVariable(name: "dst", arg: 1, scope: !68, file: !32, line: 23, type: !35)
!74 = !DILocalVariable(name: "end", arg: 2, scope: !68, file: !32, line: 23, type: !35)
!75 = !DILocalVariable(name: "arg", arg: 3, scope: !68, file: !32, line: 23, type: !20)
!76 = !DILocalVariable(name: "min_digits", arg: 4, scope: !68, file: !32, line: 23, type: !71)
!77 = !DILocalVariable(name: "buf", scope: !68, file: !32, line: 25, type: !78)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 256, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 32)
!81 = !DILocalVariable(name: "digits", scope: !68, file: !32, line: 27, type: !35)
!82 = !DILocalVariable(name: "i", scope: !83, file: !32, line: 29, type: !71)
!83 = distinct !DILexicalBlock(scope: !68, file: !32, line: 29, column: 5)
!84 = !DILocalVariable(name: "top", scope: !85, file: !32, line: 30, type: !20)
!85 = distinct !DILexicalBlock(scope: !86, file: !32, line: 29, column: 49)
!86 = distinct !DILexicalBlock(scope: !83, file: !32, line: 29, column: 5)
!87 = !DILocalVariable(name: "bottom", scope: !85, file: !32, line: 31, type: !20)
!88 = !DILocation(line: 0, scope: !68)
!89 = !DILocation(line: 25, column: 5, scope: !68)
!90 = !DILocation(line: 25, column: 10, scope: !68)
!91 = !DILocation(line: 26, column: 5, scope: !68)
!92 = !DILocation(line: 26, column: 13, scope: !68)
!93 = !DILocation(line: 27, column: 24, scope: !68)
!94 = !DILocation(line: 0, scope: !83)
!95 = !DILocation(line: 29, column: 23, scope: !86)
!96 = !DILocation(line: 29, column: 36, scope: !86)
!97 = !DILocation(line: 29, column: 5, scope: !83)
!98 = !DILocation(line: 36, column: 11, scope: !68)
!99 = !DILocation(line: 38, column: 12, scope: !68)
!100 = !DILocation(line: 39, column: 1, scope: !68)
!101 = !DILocation(line: 38, column: 5, scope: !68)
!102 = !DILocation(line: 30, column: 28, scope: !85)
!103 = !DILocation(line: 0, scope: !85)
!104 = !DILocation(line: 31, column: 37, scope: !85)
!105 = !DILocation(line: 31, column: 31, scope: !85)
!106 = !DILocation(line: 32, column: 19, scope: !85)
!107 = !DILocation(line: 32, column: 17, scope: !85)
!108 = !DILocation(line: 33, column: 15, scope: !85)
!109 = !DILocation(line: 29, column: 45, scope: !86)
!110 = distinct !{!110, !97, !111, !112}
!111 = !DILocation(line: 35, column: 5, scope: !83)
!112 = !{!"llvm.loop.mustprogress"}
!113 = distinct !DISubprogram(name: "halide_int64_to_string", scope: !32, file: !32, line: 41, type: !114, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !118)
!114 = !DISubroutineType(types: !115)
!115 = !{!35, !35, !35, !116, !71}
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !6, line: 9, baseType: !117)
!117 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!118 = !{!119, !120, !121, !122}
!119 = !DILocalVariable(name: "dst", arg: 1, scope: !113, file: !32, line: 41, type: !35)
!120 = !DILocalVariable(name: "end", arg: 2, scope: !113, file: !32, line: 41, type: !35)
!121 = !DILocalVariable(name: "arg", arg: 3, scope: !113, file: !32, line: 41, type: !116)
!122 = !DILocalVariable(name: "min_digits", arg: 4, scope: !113, file: !32, line: 41, type: !71)
!123 = !DILocation(line: 0, scope: !113)
!124 = !DILocation(line: 42, column: 13, scope: !125)
!125 = distinct !DILexicalBlock(scope: !113, file: !32, line: 42, column: 9)
!126 = !DILocation(line: 42, column: 17, scope: !125)
!127 = !DILocation(line: 43, column: 13, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !32, line: 42, column: 31)
!129 = !DILocation(line: 43, column: 16, scope: !128)
!130 = !DILocation(line: 44, column: 15, scope: !128)
!131 = !DILocation(line: 45, column: 5, scope: !128)
!132 = !DILocation(line: 46, column: 12, scope: !113)
!133 = !DILocation(line: 46, column: 5, scope: !113)
!134 = distinct !DISubprogram(name: "halide_double_to_string", scope: !32, file: !32, line: 49, type: !135, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!135 = !DISubroutineType(types: !136)
!136 = !{!35, !35, !35, !137, !71}
!137 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !150, !152, !153, !156, !157, !158, !159, !161, !162, !163, !164, !165, !168, !173, !177, !178, !179, !181, !184, !186, !189}
!139 = !DILocalVariable(name: "dst", arg: 1, scope: !134, file: !32, line: 49, type: !35)
!140 = !DILocalVariable(name: "end", arg: 2, scope: !134, file: !32, line: 49, type: !35)
!141 = !DILocalVariable(name: "arg", arg: 3, scope: !134, file: !32, line: 49, type: !137)
!142 = !DILocalVariable(name: "scientific", arg: 4, scope: !134, file: !32, line: 49, type: !71)
!143 = !DILocalVariable(name: "bits", scope: !134, file: !32, line: 50, type: !20)
!144 = !DILocalVariable(name: "one", scope: !134, file: !32, line: 53, type: !20)
!145 = !DILocalVariable(name: "mantissa", scope: !134, file: !32, line: 54, type: !20)
!146 = !DILocalVariable(name: "biased_exponent", scope: !134, file: !32, line: 55, type: !71)
!147 = !DILocalVariable(name: "negative", scope: !134, file: !32, line: 56, type: !71)
!148 = !DILocalVariable(name: "decimal_places", scope: !134, file: !32, line: 95, type: !149)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!150 = !DILocalVariable(name: "scale", scope: !134, file: !32, line: 98, type: !151)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!152 = !DILocalVariable(name: "mantissa_bits", scope: !134, file: !32, line: 101, type: !149)
!153 = !DILocalVariable(name: "exponent_base_10", scope: !154, file: !32, line: 106, type: !71)
!154 = distinct !DILexicalBlock(scope: !155, file: !32, line: 103, column: 21)
!155 = distinct !DILexicalBlock(scope: !134, file: !32, line: 103, column: 9)
!156 = !DILocalVariable(name: "fixed", scope: !154, file: !32, line: 118, type: !20)
!157 = !DILocalVariable(name: "top_digit", scope: !154, file: !32, line: 119, type: !20)
!158 = !DILocalVariable(name: "other_digits", scope: !154, file: !32, line: 120, type: !20)
!159 = !DILocalVariable(name: "n", scope: !160, file: !32, line: 142, type: !20)
!160 = distinct !DILexicalBlock(scope: !155, file: !32, line: 134, column: 12)
!161 = !DILocalVariable(name: "exponent", scope: !160, file: !32, line: 143, type: !71)
!162 = !DILocalVariable(name: "integer_part", scope: !160, file: !32, line: 146, type: !20)
!163 = !DILocalVariable(name: "integer_exponent", scope: !160, file: !32, line: 147, type: !71)
!164 = !DILocalVariable(name: "fractional_part", scope: !160, file: !32, line: 149, type: !20)
!165 = !DILocalVariable(name: "f", scope: !166, file: !32, line: 153, type: !137)
!166 = distinct !DILexicalBlock(scope: !167, file: !32, line: 150, column: 27)
!167 = distinct !DILexicalBlock(scope: !160, file: !32, line: 150, column: 13)
!168 = !DILocalVariable(name: "multiplier", scope: !166, file: !32, line: 169, type: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !32, line: 166, size: 64, flags: DIFlagTypePassByValue, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !169, file: !32, line: 167, baseType: !20, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "as_double", scope: !169, file: !32, line: 168, baseType: !137, size: 64)
!173 = !DILocalVariable(name: "buf", scope: !160, file: !32, line: 198, type: !174)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 4096, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 512)
!177 = !DILocalVariable(name: "int_part_ptr", scope: !160, file: !32, line: 201, type: !35)
!178 = !DILocalVariable(name: "buf_end", scope: !160, file: !32, line: 202, type: !35)
!179 = !DILocalVariable(name: "i", scope: !180, file: !32, line: 203, type: !71)
!180 = distinct !DILexicalBlock(scope: !160, file: !32, line: 203, column: 9)
!181 = !DILocalVariable(name: "carry", scope: !182, file: !32, line: 205, type: !71)
!182 = distinct !DILexicalBlock(scope: !183, file: !32, line: 203, column: 52)
!183 = distinct !DILexicalBlock(scope: !180, file: !32, line: 203, column: 9)
!184 = !DILocalVariable(name: "p", scope: !185, file: !32, line: 206, type: !35)
!185 = distinct !DILexicalBlock(scope: !182, file: !32, line: 206, column: 13)
!186 = !DILocalVariable(name: "old_digit", scope: !187, file: !32, line: 207, type: !36)
!187 = distinct !DILexicalBlock(scope: !188, file: !32, line: 206, column: 69)
!188 = distinct !DILexicalBlock(scope: !185, file: !32, line: 206, column: 13)
!189 = !DILocalVariable(name: "new_digit", scope: !187, file: !32, line: 208, type: !36)
!190 = !DILocation(line: 0, scope: !134)
!191 = !{!192, !192, i64 0}
!192 = !{!"double", !52, i64 0}
!193 = !DILocation(line: 50, column: 5, scope: !134)
!194 = !DILocation(line: 50, column: 14, scope: !134)
!195 = !{!196, !196, i64 0}
!196 = !{!"long long", !52, i64 0}
!197 = !DILocation(line: 51, column: 19, scope: !134)
!198 = !DILocation(line: 51, column: 5, scope: !134)
!199 = !DILocation(line: 54, column: 25, scope: !134)
!200 = !DILocation(line: 54, column: 30, scope: !134)
!201 = !DILocation(line: 55, column: 33, scope: !134)
!202 = !DILocation(line: 55, column: 27, scope: !134)
!203 = !DILocation(line: 59, column: 25, scope: !204)
!204 = distinct !DILexicalBlock(scope: !134, file: !32, line: 59, column: 9)
!205 = !DILocation(line: 59, column: 9, scope: !134)
!206 = !DILocation(line: 60, column: 13, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !32, line: 60, column: 13)
!208 = distinct !DILexicalBlock(scope: !204, file: !32, line: 59, column: 34)
!209 = !DILocation(line: 0, scope: !207)
!210 = !DILocation(line: 60, column: 13, scope: !208)
!211 = !DILocation(line: 61, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !207, file: !32, line: 60, column: 23)
!213 = !DILocation(line: 62, column: 24, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !32, line: 61, column: 27)
!215 = distinct !DILexicalBlock(scope: !212, file: !32, line: 61, column: 17)
!216 = !DILocation(line: 62, column: 17, scope: !214)
!217 = !DILocation(line: 64, column: 24, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !32, line: 63, column: 20)
!219 = !DILocation(line: 64, column: 17, scope: !218)
!220 = !DILocation(line: 67, column: 17, scope: !221)
!221 = distinct !DILexicalBlock(scope: !207, file: !32, line: 66, column: 16)
!222 = !DILocation(line: 68, column: 24, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !32, line: 67, column: 27)
!224 = distinct !DILexicalBlock(scope: !221, file: !32, line: 67, column: 17)
!225 = !DILocation(line: 68, column: 17, scope: !223)
!226 = !DILocation(line: 70, column: 24, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !32, line: 69, column: 20)
!228 = !DILocation(line: 70, column: 17, scope: !227)
!229 = !DILocation(line: 73, column: 32, scope: !230)
!230 = distinct !DILexicalBlock(scope: !204, file: !32, line: 73, column: 16)
!231 = !DILocation(line: 73, column: 37, scope: !230)
!232 = !DILocation(line: 74, column: 13, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !32, line: 74, column: 13)
!234 = distinct !DILexicalBlock(scope: !230, file: !32, line: 73, column: 55)
!235 = !DILocation(line: 0, scope: !233)
!236 = !DILocation(line: 74, column: 13, scope: !234)
!237 = !DILocation(line: 75, column: 17, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !32, line: 74, column: 25)
!239 = !DILocation(line: 76, column: 24, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !32, line: 75, column: 27)
!241 = distinct !DILexicalBlock(scope: !238, file: !32, line: 75, column: 17)
!242 = !DILocation(line: 76, column: 17, scope: !240)
!243 = !DILocation(line: 78, column: 24, scope: !244)
!244 = distinct !DILexicalBlock(scope: !241, file: !32, line: 77, column: 20)
!245 = !DILocation(line: 78, column: 17, scope: !244)
!246 = !DILocation(line: 81, column: 17, scope: !247)
!247 = distinct !DILexicalBlock(scope: !233, file: !32, line: 80, column: 16)
!248 = !DILocation(line: 82, column: 24, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !32, line: 81, column: 27)
!250 = distinct !DILexicalBlock(scope: !247, file: !32, line: 81, column: 17)
!251 = !DILocation(line: 82, column: 17, scope: !249)
!252 = !DILocation(line: 84, column: 24, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !32, line: 83, column: 20)
!254 = !DILocation(line: 84, column: 17, scope: !253)
!255 = !DILocation(line: 89, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !134, file: !32, line: 89, column: 9)
!257 = !DILocation(line: 89, column: 9, scope: !134)
!258 = !DILocation(line: 90, column: 15, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !32, line: 89, column: 19)
!260 = !DILocation(line: 91, column: 16, scope: !259)
!261 = !DILocation(line: 91, column: 15, scope: !259)
!262 = !DILocation(line: 91, column: 13, scope: !259)
!263 = !DILocation(line: 92, column: 5, scope: !259)
!264 = !DILocation(line: 103, column: 9, scope: !155)
!265 = !DILocation(line: 103, column: 9, scope: !134)
!266 = !DILocation(line: 107, column: 16, scope: !154)
!267 = !DILocation(line: 0, scope: !154)
!268 = !DILocation(line: 107, column: 20, scope: !154)
!269 = !DILocation(line: 107, column: 9, scope: !154)
!270 = !DILocation(line: 108, column: 17, scope: !271)
!271 = distinct !DILexicalBlock(scope: !154, file: !32, line: 107, column: 25)
!272 = !DILocation(line: 109, column: 29, scope: !271)
!273 = distinct !{!273, !269, !274, !112}
!274 = !DILocation(line: 110, column: 9, scope: !154)
!275 = !DILocation(line: 112, column: 16, scope: !154)
!276 = !DILocation(line: 112, column: 20, scope: !154)
!277 = !DILocation(line: 112, column: 9, scope: !154)
!278 = !DILocation(line: 113, column: 17, scope: !279)
!279 = distinct !DILexicalBlock(scope: !154, file: !32, line: 112, column: 27)
!280 = !DILocation(line: 114, column: 29, scope: !279)
!281 = distinct !{!281, !277, !282, !112}
!282 = !DILocation(line: 115, column: 9, scope: !154)
!283 = !DILocation(line: 118, column: 41, scope: !154)
!284 = !DILocation(line: 118, column: 49, scope: !154)
!285 = !DILocation(line: 118, column: 36, scope: !154)
!286 = !DILocation(line: 119, column: 36, scope: !154)
!287 = !DILocation(line: 120, column: 51, scope: !154)
!288 = !DILocation(line: 120, column: 39, scope: !154)
!289 = !DILocation(line: 122, column: 15, scope: !154)
!290 = !DILocation(line: 123, column: 15, scope: !154)
!291 = !DILocation(line: 124, column: 15, scope: !154)
!292 = !DILocation(line: 126, column: 30, scope: !293)
!293 = distinct !DILexicalBlock(scope: !154, file: !32, line: 126, column: 13)
!294 = !DILocation(line: 126, column: 13, scope: !154)
!295 = !DILocation(line: 127, column: 19, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !32, line: 126, column: 36)
!297 = !DILocation(line: 128, column: 9, scope: !296)
!298 = !DILocation(line: 129, column: 19, scope: !299)
!299 = distinct !DILexicalBlock(scope: !293, file: !32, line: 128, column: 16)
!300 = !DILocation(line: 130, column: 32, scope: !299)
!301 = !DILocation(line: 0, scope: !293)
!302 = !DILocation(line: 132, column: 48, scope: !154)
!303 = !DILocation(line: 132, column: 15, scope: !154)
!304 = !DILocation(line: 134, column: 5, scope: !154)
!305 = !DILocation(line: 137, column: 13, scope: !160)
!306 = !DILocation(line: 138, column: 20, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !32, line: 137, column: 35)
!308 = distinct !DILexicalBlock(scope: !160, file: !32, line: 137, column: 13)
!309 = !DILocation(line: 138, column: 13, scope: !307)
!310 = !DILocation(line: 142, column: 31, scope: !160)
!311 = !DILocation(line: 0, scope: !160)
!312 = !DILocation(line: 143, column: 47, scope: !160)
!313 = !DILocation(line: 150, column: 22, scope: !167)
!314 = !DILocation(line: 150, column: 13, scope: !160)
!315 = !DILocation(line: 154, column: 26, scope: !316)
!316 = distinct !DILexicalBlock(scope: !166, file: !32, line: 154, column: 17)
!317 = !DILocation(line: 154, column: 17, scope: !166)
!318 = !DILocation(line: 159, column: 35, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !32, line: 158, column: 20)
!320 = !DILocation(line: 159, column: 30, scope: !319)
!321 = !DILocation(line: 160, column: 39, scope: !319)
!322 = !DILocation(line: 160, column: 23, scope: !319)
!323 = !DILocation(line: 0, scope: !166)
!324 = !DILocation(line: 0, scope: !316)
!325 = !DILocation(line: 171, column: 42, scope: !166)
!326 = !DILocation(line: 171, column: 53, scope: !166)
!327 = !DILocation(line: 171, column: 29, scope: !166)
!328 = !DILocation(line: 175, column: 32, scope: !166)
!329 = !DILocation(line: 175, column: 19, scope: !166)
!330 = !DILocation(line: 175, column: 42, scope: !166)
!331 = !DILocation(line: 178, column: 41, scope: !166)
!332 = !DILocation(line: 179, column: 17, scope: !333)
!333 = distinct !DILexicalBlock(scope: !166, file: !32, line: 179, column: 17)
!334 = !DILocation(line: 179, column: 33, scope: !333)
!335 = !DILocation(line: 179, column: 38, scope: !333)
!336 = !DILocation(line: 186, column: 33, scope: !337)
!337 = distinct !DILexicalBlock(scope: !166, file: !32, line: 186, column: 17)
!338 = !DILocation(line: 186, column: 17, scope: !166)
!339 = !DILocation(line: 190, column: 9, scope: !166)
!340 = !DILocation(line: 198, column: 9, scope: !160)
!341 = !DILocation(line: 198, column: 14, scope: !160)
!342 = !DILocation(line: 201, column: 34, scope: !160)
!343 = !DILocation(line: 201, column: 40, scope: !160)
!344 = !DILocation(line: 202, column: 25, scope: !160)
!345 = !DILocation(line: 0, scope: !180)
!346 = !DILocation(line: 203, column: 27, scope: !183)
!347 = !DILocation(line: 203, column: 9, scope: !180)
!348 = !DILocation(line: 0, scope: !185)
!349 = !DILocation(line: 0, scope: !182)
!350 = !DILocation(line: 206, column: 59, scope: !188)
!351 = !DILocation(line: 206, column: 43, scope: !188)
!352 = !DILocation(line: 206, column: 13, scope: !185)
!353 = !DILocation(line: 224, column: 15, scope: !160)
!354 = !DILocation(line: 225, column: 15, scope: !160)
!355 = !DILocation(line: 226, column: 15, scope: !160)
!356 = !DILocation(line: 227, column: 5, scope: !155)
!357 = !DILocation(line: 217, column: 17, scope: !182)
!358 = !DILocation(line: 207, column: 34, scope: !187)
!359 = !DILocation(line: 0, scope: !187)
!360 = !DILocation(line: 208, column: 44, scope: !187)
!361 = !DILocation(line: 208, column: 48, scope: !187)
!362 = !DILocation(line: 209, column: 31, scope: !363)
!363 = distinct !DILexicalBlock(scope: !187, file: !32, line: 209, column: 21)
!364 = !DILocation(line: 209, column: 21, scope: !187)
!365 = !DILocation(line: 215, column: 32, scope: !187)
!366 = !DILocation(line: 215, column: 20, scope: !187)
!367 = distinct !{!367, !352, !368, !112}
!368 = !DILocation(line: 216, column: 13, scope: !185)
!369 = !DILocation(line: 221, column: 31, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !32, line: 217, column: 24)
!371 = distinct !DILexicalBlock(scope: !182, file: !32, line: 217, column: 17)
!372 = !DILocation(line: 222, column: 13, scope: !370)
!373 = !DILocation(line: 203, column: 48, scope: !183)
!374 = distinct !{!374, !347, !375, !112}
!375 = !DILocation(line: 223, column: 9, scope: !180)
!376 = !DILocation(line: 230, column: 1, scope: !134)
!377 = !DISubprogram(name: "memcpy", scope: !6, file: !6, line: 94, type: !378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !383)
!378 = !DISubroutineType(types: !379)
!379 = !{!380, !380, !381, !15}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!383 = !{}
!384 = distinct !DISubprogram(name: "halide_pointer_to_string", scope: !32, file: !32, line: 232, type: !385, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{!35, !35, !35, !381}
!387 = !{!388, !389, !390, !391, !392, !396, !397, !398}
!388 = !DILocalVariable(name: "dst", arg: 1, scope: !384, file: !32, line: 232, type: !35)
!389 = !DILocalVariable(name: "end", arg: 2, scope: !384, file: !32, line: 232, type: !35)
!390 = !DILocalVariable(name: "arg", arg: 3, scope: !384, file: !32, line: 232, type: !381)
!391 = !DILocalVariable(name: "hex_digits", scope: !384, file: !32, line: 233, type: !37)
!392 = !DILocalVariable(name: "buf", scope: !384, file: !32, line: 234, type: !393)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 20)
!396 = !DILocalVariable(name: "buf_ptr", scope: !384, file: !32, line: 235, type: !35)
!397 = !DILocalVariable(name: "bits", scope: !384, file: !32, line: 236, type: !20)
!398 = !DILocalVariable(name: "i", scope: !399, file: !32, line: 237, type: !71)
!399 = distinct !DILexicalBlock(scope: !384, file: !32, line: 237, column: 5)
!400 = !DILocation(line: 0, scope: !384)
!401 = !DILocation(line: 234, column: 5, scope: !384)
!402 = !DILocation(line: 234, column: 10, scope: !384)
!403 = !DILocation(line: 235, column: 25, scope: !384)
!404 = !DILocation(line: 236, column: 21, scope: !384)
!405 = !DILocation(line: 0, scope: !399)
!406 = !DILocation(line: 238, column: 22, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !32, line: 237, column: 34)
!408 = distinct !DILexicalBlock(scope: !399, file: !32, line: 237, column: 5)
!409 = !DILocation(line: 238, column: 17, scope: !407)
!410 = !DILocation(line: 238, column: 20, scope: !407)
!411 = !DILocation(line: 239, column: 14, scope: !407)
!412 = !DILocation(line: 240, column: 14, scope: !413)
!413 = distinct !DILexicalBlock(scope: !407, file: !32, line: 240, column: 13)
!414 = !DILocation(line: 240, column: 13, scope: !407)
!415 = !DILocation(line: 244, column: 13, scope: !384)
!416 = !DILocation(line: 244, column: 16, scope: !384)
!417 = !DILocation(line: 245, column: 14, scope: !384)
!418 = !DILocation(line: 246, column: 12, scope: !384)
!419 = !DILocation(line: 247, column: 1, scope: !384)
!420 = !DILocation(line: 246, column: 5, scope: !384)
!421 = distinct !DISubprogram(name: "halide_type_to_string", scope: !32, file: !32, line: 249, type: !422, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !459)
!422 = !DISubroutineType(types: !423)
!423 = !{!35, !35, !35, !424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !4, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !427, identifier: "_ZTS13halide_type_t")
!427 = !{!428, !430, !431, !434, !438, !441, !445, !450, !451, !452, !455}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !426, file: !4, line: 434, baseType: !429, size: 8, align: 8)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !4, line: 413, baseType: !3)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !426, file: !4, line: 442, baseType: !5, size: 8, align: 8, offset: 8)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !426, file: !4, line: 446, baseType: !432, size: 16, align: 16, offset: 16)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !6, line: 14, baseType: !433)
!433 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!434 = !DISubprogram(name: "halide_type_t", scope: !426, file: !4, line: 453, type: !435, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !437, !429, !5, !432}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!438 = !DISubprogram(name: "halide_type_t", scope: !426, file: !4, line: 459, type: !439, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !437}
!441 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !426, file: !4, line: 463, type: !442, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = !DISubroutineType(types: !443)
!443 = !{!426, !444, !432}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!445 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !426, file: !4, line: 468, type: !446, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!446 = !DISubroutineType(types: !447)
!447 = !{!448, !444, !449}
!448 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!449 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !425, size: 32)
!450 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !426, file: !4, line: 472, type: !446, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!451 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !426, file: !4, line: 476, type: !446, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!452 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !426, file: !4, line: 481, type: !453, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!453 = !DISubroutineType(types: !454)
!454 = !{!71, !444}
!455 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !426, file: !4, line: 485, type: !456, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!456 = !DISubroutineType(types: !457)
!457 = !{!458, !444}
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 12, baseType: !15)
!459 = !{!460, !461, !462, !463}
!460 = !DILocalVariable(name: "dst", arg: 1, scope: !421, file: !32, line: 249, type: !35)
!461 = !DILocalVariable(name: "end", arg: 2, scope: !421, file: !32, line: 249, type: !35)
!462 = !DILocalVariable(name: "t", arg: 3, scope: !421, file: !32, line: 249, type: !424)
!463 = !DILocalVariable(name: "code_name", scope: !421, file: !32, line: 250, type: !37)
!464 = !DILocation(line: 0, scope: !421)
!465 = !DILocation(line: 251, column: 16, scope: !421)
!466 = !{!467, !468, i64 0}
!467 = !{!"_ZTS13halide_type_t", !468, i64 0, !52, i64 1, !469, i64 2}
!468 = !{!"_ZTS18halide_type_code_t", !52, i64 0}
!469 = !{!"short", !52, i64 0}
!470 = !DILocation(line: 251, column: 5, scope: !421)
!471 = !DILocation(line: 257, column: 9, scope: !472)
!472 = distinct !DILexicalBlock(scope: !421, file: !32, line: 251, column: 22)
!473 = !DILocation(line: 260, column: 9, scope: !472)
!474 = !DILocation(line: 263, column: 9, scope: !472)
!475 = !DILocation(line: 266, column: 9, scope: !472)
!476 = !DILocation(line: 0, scope: !472)
!477 = !DILocation(line: 268, column: 11, scope: !421)
!478 = !DILocation(line: 269, column: 48, scope: !421)
!479 = !{!467, !52, i64 1}
!480 = !DILocation(line: 269, column: 45, scope: !421)
!481 = !DILocation(line: 269, column: 11, scope: !421)
!482 = !DILocation(line: 270, column: 12, scope: !483)
!483 = distinct !DILexicalBlock(scope: !421, file: !32, line: 270, column: 9)
!484 = !{!467, !469, i64 2}
!485 = !DILocation(line: 270, column: 18, scope: !483)
!486 = !DILocation(line: 270, column: 9, scope: !421)
!487 = !DILocation(line: 271, column: 15, scope: !488)
!488 = distinct !DILexicalBlock(scope: !483, file: !32, line: 270, column: 24)
!489 = !DILocation(line: 272, column: 52, scope: !488)
!490 = !DILocation(line: 272, column: 49, scope: !488)
!491 = !DILocation(line: 272, column: 15, scope: !488)
!492 = !DILocation(line: 273, column: 5, scope: !488)
!493 = !DILocation(line: 274, column: 5, scope: !421)
!494 = distinct !DISubprogram(name: "halide_buffer_to_string", scope: !32, file: !32, line: 277, type: !495, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !619)
!495 = !DISubroutineType(types: !496)
!496 = !{!35, !35, !35, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !4, line: 1550, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !4, line: 1423, size: 320, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !501, identifier: "_ZTS15halide_buffer_t")
!501 = !{!502, !503, !555, !557, !558, !559, !561, !584, !585, !590, !594, !597, !598, !601, !602, !606, !609, !610, !611, !615, !618}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !500, file: !4, line: 1425, baseType: !20, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !500, file: !4, line: 1428, baseType: !504, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !4, line: 723, size: 512, flags: DIFlagTypePassByValue, elements: !507, identifier: "_ZTS25halide_device_interface_t")
!507 = !{!508, !513, !517, !518, !522, !523, !524, !525, !526, !530, !536, !540, !541, !545, !546, !551}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !506, file: !4, line: 724, baseType: !509, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 32)
!510 = !DISubroutineType(types: !511)
!511 = !{!71, !380, !512, !504}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !506, file: !4, line: 726, baseType: !514, size: 32, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 32)
!515 = !DISubroutineType(types: !516)
!516 = !{!71, !380, !512}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !506, file: !4, line: 727, baseType: !514, size: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !506, file: !4, line: 728, baseType: !519, size: 32, offset: 96)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 32)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !380, !504}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !506, file: !4, line: 730, baseType: !514, size: 32, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !506, file: !4, line: 731, baseType: !509, size: 32, offset: 160)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !506, file: !4, line: 733, baseType: !509, size: 32, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !506, file: !4, line: 735, baseType: !514, size: 32, offset: 224)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !506, file: !4, line: 736, baseType: !527, size: 32, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 32)
!528 = !DISubroutineType(types: !529)
!529 = !{!71, !380, !512, !504, !512}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !506, file: !4, line: 738, baseType: !531, size: 32, offset: 288)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 32)
!532 = !DISubroutineType(types: !533)
!533 = !{!71, !380, !534, !512}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !506, file: !4, line: 740, baseType: !537, size: 32, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 32)
!538 = !DISubroutineType(types: !539)
!539 = !{!71, !380, !534, !71, !71, !512}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !506, file: !4, line: 742, baseType: !514, size: 32, offset: 352)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !506, file: !4, line: 743, baseType: !542, size: 32, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 32)
!543 = !DISubroutineType(types: !544)
!544 = !{!71, !380, !512, !20, !504}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !506, file: !4, line: 745, baseType: !514, size: 32, offset: 416)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !506, file: !4, line: 746, baseType: !547, size: 32, offset: 448)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 32)
!548 = !DISubroutineType(types: !549)
!549 = !{!71, !380, !550, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !506, file: !4, line: 747, baseType: !552, size: 32, offset: 480)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !4, line: 707, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS30halide_device_interface_impl_t")
!555 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !500, file: !4, line: 1433, baseType: !556, size: 32, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !4, line: 1436, baseType: !20, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !500, file: !4, line: 1439, baseType: !426, size: 32, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !500, file: !4, line: 1442, baseType: !560, size: 32, offset: 224)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !6, line: 11, baseType: !71)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !500, file: !4, line: 1446, baseType: !562, size: 32, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !4, line: 1409, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !4, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !565, identifier: "_ZTS18halide_dimension_t")
!565 = !{!566, !567, !568, !569, !570, !574, !577, !583}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !564, file: !4, line: 1383, baseType: !560, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !564, file: !4, line: 1383, baseType: !560, size: 32, offset: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !564, file: !4, line: 1383, baseType: !560, size: 32, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !564, file: !4, line: 1386, baseType: !458, size: 32, offset: 96)
!570 = !DISubprogram(name: "halide_dimension_t", scope: !564, file: !4, line: 1388, type: !571, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !573}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!574 = !DISubprogram(name: "halide_dimension_t", scope: !564, file: !4, line: 1389, type: !575, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !573, !560, !560, !560, !458}
!577 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !564, file: !4, line: 1393, type: !578, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!578 = !DISubroutineType(types: !579)
!579 = !{!448, !580, !582}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!582 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !581, size: 32)
!583 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !564, file: !4, line: 1400, type: !578, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !500, file: !4, line: 1449, baseType: !380, size: 32, offset: 288)
!585 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !500, file: !4, line: 1454, type: !586, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!586 = !DISubroutineType(types: !587)
!587 = !{!448, !588, !589}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !4, line: 1416, baseType: !14)
!590 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !500, file: !4, line: 1458, type: !591, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !593, !589, !448}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!594 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !500, file: !4, line: 1466, type: !595, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!595 = !DISubroutineType(types: !596)
!596 = !{!448, !588}
!597 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !500, file: !4, line: 1470, type: !595, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!598 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !500, file: !4, line: 1474, type: !599, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !593, !448}
!601 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !500, file: !4, line: 1478, type: !599, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!602 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !500, file: !4, line: 1485, type: !603, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!603 = !DISubroutineType(types: !604)
!604 = !{!605, !588}
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 27, baseType: !15)
!606 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !500, file: !4, line: 1495, type: !607, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!607 = !DISubroutineType(types: !608)
!608 = !{!556, !588}
!609 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !500, file: !4, line: 1506, type: !607, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!610 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !500, file: !4, line: 1518, type: !603, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!611 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !500, file: !4, line: 1523, type: !612, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!612 = !DISubroutineType(types: !613)
!613 = !{!556, !588, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 32)
!615 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !500, file: !4, line: 1534, type: !616, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!616 = !DISubroutineType(types: !617)
!617 = !{!71, !593, !380}
!618 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !500, file: !4, line: 1545, type: !595, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!619 = !{!620, !621, !622, !623}
!620 = !DILocalVariable(name: "dst", arg: 1, scope: !494, file: !32, line: 277, type: !35)
!621 = !DILocalVariable(name: "end", arg: 2, scope: !494, file: !32, line: 277, type: !35)
!622 = !DILocalVariable(name: "buf", arg: 3, scope: !494, file: !32, line: 277, type: !497)
!623 = !DILocalVariable(name: "i", scope: !624, file: !32, line: 291, type: !71)
!624 = distinct !DILexicalBlock(scope: !494, file: !32, line: 291, column: 5)
!625 = !DILocation(line: 0, scope: !494)
!626 = !DILocation(line: 278, column: 13, scope: !627)
!627 = distinct !DILexicalBlock(scope: !494, file: !32, line: 278, column: 9)
!628 = !DILocation(line: 278, column: 9, scope: !494)
!629 = !DILocation(line: 279, column: 16, scope: !630)
!630 = distinct !DILexicalBlock(scope: !627, file: !32, line: 278, column: 25)
!631 = !DILocation(line: 279, column: 9, scope: !630)
!632 = !DILocation(line: 281, column: 11, scope: !494)
!633 = !DILocation(line: 282, column: 50, scope: !494)
!634 = !{!635, !196, i64 0}
!635 = !{!"_ZTS15halide_buffer_t", !196, i64 0, !636, i64 8, !636, i64 12, !196, i64 16, !467, i64 24, !637, i64 28, !636, i64 32, !636, i64 36}
!636 = !{!"any pointer", !52, i64 0}
!637 = !{!"int", !52, i64 0}
!638 = !DILocation(line: 282, column: 11, scope: !494)
!639 = !DILocation(line: 283, column: 11, scope: !494)
!640 = !DILocation(line: 284, column: 51, scope: !494)
!641 = !{!635, !636, i64 8}
!642 = !DILocation(line: 284, column: 11, scope: !494)
!643 = !DILocation(line: 285, column: 11, scope: !494)
!644 = !DILocation(line: 286, column: 51, scope: !494)
!645 = !{!635, !636, i64 12}
!646 = !DILocation(line: 286, column: 11, scope: !494)
!647 = !DILocation(line: 287, column: 11, scope: !494)
!648 = !DILocation(line: 288, column: 50, scope: !494)
!649 = !{!635, !196, i64 16}
!650 = !DILocation(line: 288, column: 11, scope: !494)
!651 = !DILocation(line: 289, column: 11, scope: !494)
!652 = !DILocation(line: 290, column: 50, scope: !494)
!653 = !DILocation(line: 290, column: 11, scope: !494)
!654 = !DILocation(line: 0, scope: !624)
!655 = !DILocation(line: 291, column: 30, scope: !656)
!656 = distinct !DILexicalBlock(scope: !624, file: !32, line: 291, column: 5)
!657 = !{!635, !637, i64 28}
!658 = !DILocation(line: 291, column: 23, scope: !656)
!659 = !DILocation(line: 291, column: 5, scope: !624)
!660 = !DILocation(line: 300, column: 11, scope: !494)
!661 = !DILocation(line: 301, column: 5, scope: !494)
!662 = !DILocation(line: 292, column: 15, scope: !663)
!663 = distinct !DILexicalBlock(scope: !656, file: !32, line: 291, column: 47)
!664 = !DILocation(line: 293, column: 53, scope: !663)
!665 = !{!635, !636, i64 32}
!666 = !DILocation(line: 293, column: 60, scope: !663)
!667 = !{!668, !637, i64 0}
!668 = !{!"_ZTS18halide_dimension_t", !637, i64 0, !637, i64 4, !637, i64 8, !637, i64 12}
!669 = !DILocation(line: 293, column: 48, scope: !663)
!670 = !DILocation(line: 293, column: 15, scope: !663)
!671 = !DILocation(line: 294, column: 15, scope: !663)
!672 = !DILocation(line: 295, column: 53, scope: !663)
!673 = !DILocation(line: 295, column: 60, scope: !663)
!674 = !{!668, !637, i64 4}
!675 = !DILocation(line: 295, column: 48, scope: !663)
!676 = !DILocation(line: 295, column: 15, scope: !663)
!677 = !DILocation(line: 296, column: 15, scope: !663)
!678 = !DILocation(line: 297, column: 53, scope: !663)
!679 = !DILocation(line: 297, column: 60, scope: !663)
!680 = !{!668, !637, i64 8}
!681 = !DILocation(line: 297, column: 48, scope: !663)
!682 = !DILocation(line: 297, column: 15, scope: !663)
!683 = !DILocation(line: 298, column: 15, scope: !663)
!684 = !DILocation(line: 291, column: 43, scope: !656)
!685 = distinct !{!685, !659, !686, !112}
!686 = !DILocation(line: 299, column: 5, scope: !624)
!687 = !DILocation(line: 302, column: 1, scope: !494)
