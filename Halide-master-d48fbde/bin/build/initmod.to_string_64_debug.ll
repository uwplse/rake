; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/to_string.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/to_string.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

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
  %12 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !60
  call void @llvm.dbg.value(metadata i8* %12, metadata !40, metadata !DIExpression()), !dbg !43
  %13 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !61
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
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #6, !dbg !89
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !77, metadata !DIExpression()), !dbg !90
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 31, !dbg !91
  store i8 0, i8* %7, align 1, !dbg !92, !tbaa !51
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 30, !dbg !93
  call void @llvm.dbg.value(metadata i8* %8, metadata !81, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !82, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i64 %2, metadata !75, metadata !DIExpression()), !dbg !88
  %9 = icmp sgt i32 %3, 0, !dbg !95
  %10 = icmp ne i64 %2, 0, !dbg !96
  %11 = or i1 %9, %10, !dbg !96
  br i1 %11, label %16, label %12, !dbg !97

12:                                               ; preds = %16, %4
  %13 = phi i8* [ %8, %4 ], [ %25, %16 ], !dbg !88
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !98
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
  %25 = getelementptr inbounds i8, i8* %18, i64 -1, !dbg !108
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
  %9 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !127
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
  %10 = call i8* @memcpy(i8* nonnull %8, i8* nonnull %9, i64 8) #8, !dbg !198
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
  %22 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #7, !dbg !213
  br label %179, !dbg !216

23:                                               ; preds = %20
  %24 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !217
  br label %179, !dbg !219

25:                                               ; preds = %17
  br i1 %19, label %28, label %26, !dbg !220

26:                                               ; preds = %25
  %27 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !222
  br label %179, !dbg !225

28:                                               ; preds = %25
  %29 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !226
  br label %179, !dbg !228

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
  %39 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !239
  br label %179, !dbg !242

40:                                               ; preds = %37
  %41 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !243
  br label %179, !dbg !245

42:                                               ; preds = %34
  br i1 %36, label %45, label %43, !dbg !246

43:                                               ; preds = %42
  %44 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !248
  br label %179, !dbg !251

45:                                               ; preds = %42
  %46 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !252
  br label %179, !dbg !254

47:                                               ; preds = %30
  %48 = icmp sgt i64 %11, -1, !dbg !255
  br i1 %48, label %53, label %49, !dbg !257

49:                                               ; preds = %47
  %50 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !258
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
  %87 = call i8* @halide_string_to_string(i8* %86, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !290
  call void @llvm.dbg.value(metadata i8* %87, metadata !139, metadata !DIExpression()), !dbg !190
  %88 = call i8* @halide_int64_to_string(i8* %87, i8* %1, i64 %85, i32 6) #7, !dbg !291
  call void @llvm.dbg.value(metadata i8* %88, metadata !139, metadata !DIExpression()), !dbg !190
  %89 = icmp sgt i32 %79, -1, !dbg !292
  br i1 %89, label %90, label %92, !dbg !294

90:                                               ; preds = %77
  %91 = call i8* @halide_string_to_string(i8* %88, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !295
  call void @llvm.dbg.value(metadata i8* %91, metadata !139, metadata !DIExpression()), !dbg !190
  br label %95, !dbg !297

92:                                               ; preds = %77
  %93 = call i8* @halide_string_to_string(i8* %88, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !298
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
  br label %179, !dbg !304

100:                                              ; preds = %53
  br i1 %31, label %101, label %103, !dbg !305

101:                                              ; preds = %100
  %102 = call i8* @halide_double_to_string(i8* %54, i8* %1, double 0.000000e+00, i32 0) #7, !dbg !306
  br label %179, !dbg !309

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
  call void @llvm.dbg.value(metadata double 1.000000e+06, metadata !168, metadata !DIExpression()), !dbg !323
  %119 = zext i32 %105 to i64, !dbg !325
  %120 = shl i64 %119, 52, !dbg !326
  %121 = add i64 %120, 4696837146684686336, !dbg !327
  %122 = bitcast i64 %121 to double, !dbg !327
  call void @llvm.dbg.value(metadata double %122, metadata !168, metadata !DIExpression()), !dbg !323
  %123 = fmul double %122, %118, !dbg !328
  %124 = fadd double %123, 5.000000e-01, !dbg !329
  call void @llvm.dbg.value(metadata double %124, metadata !165, metadata !DIExpression()), !dbg !323
  %125 = fptoui double %124 to i64, !dbg !330
  call void @llvm.dbg.value(metadata i64 %125, metadata !164, metadata !DIExpression()), !dbg !311
  %126 = uitofp i64 %125 to double, !dbg !331
  %127 = fcmp oeq double %124, %126, !dbg !333
  %128 = and i64 %125, 1
  %129 = icmp ne i64 %128, 0
  %130 = and i1 %127, %129, !dbg !334
  %131 = sext i1 %130 to i64, !dbg !334
  %132 = add i64 %131, %125, !dbg !334
  call void @llvm.dbg.value(metadata i64 %132, metadata !164, metadata !DIExpression()), !dbg !311
  %133 = icmp eq i64 %132, 1000000, !dbg !335
  %134 = zext i1 %133 to i64, !dbg !337
  %135 = add nuw i64 %116, %134, !dbg !337
  %136 = select i1 %133, i64 0, i64 %132, !dbg !337
  call void @llvm.dbg.value(metadata i64 %136, metadata !164, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i64 %135, metadata !162, metadata !DIExpression()), !dbg !311
  br label %137, !dbg !338

137:                                              ; preds = %115, %103
  %138 = phi i64 [ %135, %115 ], [ %104, %103 ], !dbg !311
  %139 = phi i32 [ 0, %115 ], [ %105, %103 ], !dbg !311
  %140 = phi i64 [ %136, %115 ], [ 0, %103 ], !dbg !311
  call void @llvm.dbg.value(metadata i64 %140, metadata !164, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i32 %139, metadata !163, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i64 %138, metadata !162, metadata !DIExpression()), !dbg !311
  %141 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0, !dbg !339
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %141) #6, !dbg !339
  call void @llvm.dbg.declare(metadata [512 x i8]* %7, metadata !173, metadata !DIExpression()), !dbg !340
  %142 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 512, !dbg !341
  %143 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 480, !dbg !342
  call void @llvm.dbg.value(metadata i8* %143, metadata !177, metadata !DIExpression()), !dbg !311
  %144 = call i8* @halide_int64_to_string(i8* nonnull %143, i8* nonnull %142, i64 %138, i32 1) #7, !dbg !343
  call void @llvm.dbg.value(metadata i8* %144, metadata !178, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i32 0, metadata !179, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i8* %143, metadata !177, metadata !DIExpression()), !dbg !311
  %145 = icmp sgt i32 %139, 0, !dbg !345
  br i1 %145, label %146, label %150, !dbg !346

146:                                              ; preds = %137, %175
  %147 = phi i32 [ %177, %175 ], [ 0, %137 ]
  %148 = phi i8* [ %176, %175 ], [ %143, %137 ]
  call void @llvm.dbg.value(metadata i32 %147, metadata !179, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i8* %148, metadata !177, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i8* %144, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !347
  call void @llvm.dbg.value(metadata i32 0, metadata !181, metadata !DIExpression()), !dbg !348
  %149 = icmp eq i8* %144, %148, !dbg !349
  br i1 %149, label %175, label %156, !dbg !350

150:                                              ; preds = %175, %137
  %151 = phi i8* [ %143, %137 ], [ %176, %175 ], !dbg !311
  %152 = call i8* @halide_string_to_string(i8* %54, i8* %1, i8* %151) #7, !dbg !351
  call void @llvm.dbg.value(metadata i8* %152, metadata !139, metadata !DIExpression()), !dbg !190
  %153 = call i8* @halide_string_to_string(i8* %152, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !352
  call void @llvm.dbg.value(metadata i8* %153, metadata !139, metadata !DIExpression()), !dbg !190
  %154 = call i8* @halide_int64_to_string(i8* %153, i8* %1, i64 %140, i32 6) #7, !dbg !353
  call void @llvm.dbg.value(metadata i8* %154, metadata !139, metadata !DIExpression()), !dbg !190
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %141) #6, !dbg !354
  br label %179

155:                                              ; preds = %156
  br i1 %166, label %173, label %175, !dbg !355

156:                                              ; preds = %146, %156
  %157 = phi i8* [ %159, %156 ], [ %144, %146 ]
  %158 = phi i32 [ %168, %156 ], [ 0, %146 ]
  %159 = getelementptr inbounds i8, i8* %157, i64 -1
  call void @llvm.dbg.value(metadata i32 %158, metadata !181, metadata !DIExpression()), !dbg !348
  %160 = load i8, i8* %159, align 1, !dbg !356, !tbaa !51
  %161 = add i8 %160, -48, !dbg !357
  call void @llvm.dbg.value(metadata i8 %161, metadata !186, metadata !DIExpression()), !dbg !358
  %162 = sext i8 %161 to i32, !dbg !359
  %163 = shl nsw i32 %162, 1, !dbg !360
  %164 = or i32 %163, %158, !dbg !361
  call void @llvm.dbg.value(metadata i32 %164, metadata !189, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !358
  %165 = trunc i32 %164 to i8, !dbg !362
  %166 = icmp sgt i8 %165, 9, !dbg !362
  %167 = add nsw i32 %164, 246, !dbg !364
  %168 = zext i1 %166 to i32, !dbg !364
  %169 = select i1 %166, i32 %167, i32 %164, !dbg !364
  call void @llvm.dbg.value(metadata i32 undef, metadata !189, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !358
  call void @llvm.dbg.value(metadata i32 %168, metadata !181, metadata !DIExpression()), !dbg !348
  %170 = trunc i32 %169 to i8, !dbg !365
  %171 = add i8 %170, 48, !dbg !365
  store i8 %171, i8* %159, align 1, !dbg !366, !tbaa !51
  call void @llvm.dbg.value(metadata i8* %159, metadata !184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !347
  %172 = icmp eq i8* %159, %148, !dbg !349
  br i1 %172, label %155, label %156, !dbg !350, !llvm.loop !367

173:                                              ; preds = %155
  %174 = getelementptr inbounds i8, i8* %148, i64 -1, !dbg !369
  call void @llvm.dbg.value(metadata i8* %174, metadata !177, metadata !DIExpression()), !dbg !311
  store i8 49, i8* %174, align 1, !dbg !372, !tbaa !51
  br label %175, !dbg !373

175:                                              ; preds = %146, %173, %155
  %176 = phi i8* [ %174, %173 ], [ %148, %155 ], [ %148, %146 ], !dbg !311
  call void @llvm.dbg.value(metadata i8* %176, metadata !177, metadata !DIExpression()), !dbg !311
  %177 = add nuw nsw i32 %147, 1, !dbg !374
  call void @llvm.dbg.value(metadata i32 %177, metadata !179, metadata !DIExpression()), !dbg !344
  %178 = icmp eq i32 %177, %139, !dbg !345
  br i1 %178, label %150, label %146, !dbg !346, !llvm.loop !375

179:                                              ; preds = %101, %150, %95, %45, %43, %40, %38, %28, %26, %23, %21
  %180 = phi i8* [ %22, %21 ], [ %24, %23 ], [ %27, %26 ], [ %29, %28 ], [ %39, %38 ], [ %41, %40 ], [ %44, %43 ], [ %46, %45 ], [ %102, %101 ], [ %99, %95 ], [ %154, %150 ], !dbg !190
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #6, !dbg !377
  ret i8* %180, !dbg !377
}

declare !dbg !378 dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_pointer_to_string(i8* %0, i8* %1, i8* %2) local_unnamed_addr #2 !dbg !386 {
  %4 = alloca [20 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !390, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %1, metadata !391, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %2, metadata !392, metadata !DIExpression()), !dbg !402
  %5 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !403
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %5) #6, !dbg !403
  call void @llvm.dbg.declare(metadata [20 x i8]* %4, metadata !394, metadata !DIExpression()), !dbg !404
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(20) %5, i8 0, i64 20, i1 false), !dbg !404
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 18, !dbg !405
  call void @llvm.dbg.value(metadata i8* %6, metadata !398, metadata !DIExpression()), !dbg !402
  %7 = ptrtoint i8* %2 to i64, !dbg !406
  call void @llvm.dbg.value(metadata i64 %7, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 0, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i8* %6, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 0, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %7, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %6, metadata !398, metadata !DIExpression()), !dbg !402
  %8 = and i64 %7, 15, !dbg !408
  %9 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %8, !dbg !411
  %10 = load i8, i8* %9, align 1, !dbg !411, !tbaa !51
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 17, !dbg !412
  call void @llvm.dbg.value(metadata i8* %11, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %10, i8* %6, align 1, !dbg !413, !tbaa !51
  %12 = lshr i64 %7, 4, !dbg !414
  call void @llvm.dbg.value(metadata i64 %12, metadata !399, metadata !DIExpression()), !dbg !402
  %13 = icmp eq i64 %12, 0, !dbg !415
  call void @llvm.dbg.value(metadata i32 0, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br i1 %13, label %21, label %14, !dbg !417

14:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 1, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 0, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  call void @llvm.dbg.value(metadata i64 %12, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %11, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 1, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %12, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %11, metadata !398, metadata !DIExpression()), !dbg !402
  %15 = and i64 %12, 15, !dbg !408
  %16 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %15, !dbg !411
  %17 = load i8, i8* %16, align 1, !dbg !411, !tbaa !51
  %18 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 16, !dbg !412
  call void @llvm.dbg.value(metadata i8* %18, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %17, i8* %11, align 1, !dbg !413, !tbaa !51
  %19 = lshr i64 %7, 8, !dbg !414
  call void @llvm.dbg.value(metadata i64 %19, metadata !399, metadata !DIExpression()), !dbg !402
  %20 = icmp eq i64 %19, 0, !dbg !415
  call void @llvm.dbg.value(metadata i32 1, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br i1 %20, label %21, label %26, !dbg !417

21:                                               ; preds = %117, %110, %103, %96, %89, %82, %75, %68, %61, %54, %47, %40, %33, %26, %14, %3
  %22 = phi i8* [ %6, %3 ], [ %11, %14 ], [ %18, %26 ], [ %30, %33 ], [ %37, %40 ], [ %44, %47 ], [ %51, %54 ], [ %58, %61 ], [ %65, %68 ], [ %72, %75 ], [ %79, %82 ], [ %86, %89 ], [ %93, %96 ], [ %100, %103 ], [ %107, %110 ], [ %114, %117 ]
  %23 = phi i8* [ %11, %3 ], [ %18, %14 ], [ %30, %26 ], [ %37, %33 ], [ %44, %40 ], [ %51, %47 ], [ %58, %54 ], [ %65, %61 ], [ %72, %68 ], [ %79, %75 ], [ %86, %82 ], [ %93, %89 ], [ %100, %96 ], [ %107, %103 ], [ %114, %110 ], [ %120, %117 ], !dbg !412
  call void @llvm.dbg.value(metadata i8* %23, metadata !398, metadata !DIExpression()), !dbg !402
  %24 = getelementptr inbounds i8, i8* %22, i64 -2, !dbg !418
  call void @llvm.dbg.value(metadata i8* %24, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 120, i8* %23, align 1, !dbg !419, !tbaa !51
  store i8 48, i8* %24, align 1, !dbg !420, !tbaa !51
  %25 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* nonnull %24) #7, !dbg !421
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %5) #6, !dbg !422
  ret i8* %25, !dbg !423

26:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 2, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 1, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  call void @llvm.dbg.value(metadata i64 %19, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %18, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 2, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %19, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %18, metadata !398, metadata !DIExpression()), !dbg !402
  %27 = and i64 %19, 15, !dbg !408
  %28 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %27, !dbg !411
  %29 = load i8, i8* %28, align 1, !dbg !411, !tbaa !51
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 15, !dbg !412
  call void @llvm.dbg.value(metadata i8* %30, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %29, i8* %18, align 1, !dbg !413, !tbaa !51
  %31 = lshr i64 %7, 12, !dbg !414
  call void @llvm.dbg.value(metadata i64 %31, metadata !399, metadata !DIExpression()), !dbg !402
  %32 = icmp eq i64 %31, 0, !dbg !415
  call void @llvm.dbg.value(metadata i32 2, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br i1 %32, label %21, label %33, !dbg !417

33:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 3, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 2, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  call void @llvm.dbg.value(metadata i64 %31, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %30, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 3, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %31, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %30, metadata !398, metadata !DIExpression()), !dbg !402
  %34 = and i64 %31, 15, !dbg !408
  %35 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %34, !dbg !411
  %36 = load i8, i8* %35, align 1, !dbg !411, !tbaa !51
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 14, !dbg !412
  call void @llvm.dbg.value(metadata i8* %37, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %36, i8* %30, align 1, !dbg !413, !tbaa !51
  %38 = lshr i64 %7, 16, !dbg !414
  call void @llvm.dbg.value(metadata i64 %38, metadata !399, metadata !DIExpression()), !dbg !402
  %39 = icmp eq i64 %38, 0, !dbg !415
  call void @llvm.dbg.value(metadata i32 3, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br i1 %39, label %21, label %40, !dbg !417

40:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 4, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 3, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  call void @llvm.dbg.value(metadata i64 %38, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %37, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 4, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %38, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %37, metadata !398, metadata !DIExpression()), !dbg !402
  %41 = and i64 %38, 15, !dbg !408
  %42 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %41, !dbg !411
  %43 = load i8, i8* %42, align 1, !dbg !411, !tbaa !51
  %44 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 13, !dbg !412
  call void @llvm.dbg.value(metadata i8* %44, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %43, i8* %37, align 1, !dbg !413, !tbaa !51
  %45 = lshr i64 %7, 20, !dbg !414
  call void @llvm.dbg.value(metadata i64 %45, metadata !399, metadata !DIExpression()), !dbg !402
  %46 = icmp eq i64 %45, 0, !dbg !415
  call void @llvm.dbg.value(metadata i32 4, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br i1 %46, label %21, label %47, !dbg !417

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 5, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 4, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  call void @llvm.dbg.value(metadata i64 %45, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %44, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 5, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %45, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %44, metadata !398, metadata !DIExpression()), !dbg !402
  %48 = and i64 %45, 15, !dbg !408
  %49 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %48, !dbg !411
  %50 = load i8, i8* %49, align 1, !dbg !411, !tbaa !51
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 12, !dbg !412
  call void @llvm.dbg.value(metadata i8* %51, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %50, i8* %44, align 1, !dbg !413, !tbaa !51
  %52 = lshr i64 %7, 24, !dbg !414
  call void @llvm.dbg.value(metadata i64 %52, metadata !399, metadata !DIExpression()), !dbg !402
  %53 = icmp eq i64 %52, 0, !dbg !415
  call void @llvm.dbg.value(metadata i32 5, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br i1 %53, label %21, label %54, !dbg !417

54:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 6, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 5, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  call void @llvm.dbg.value(metadata i64 %52, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %51, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 6, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %52, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %51, metadata !398, metadata !DIExpression()), !dbg !402
  %55 = and i64 %52, 15, !dbg !408
  %56 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %55, !dbg !411
  %57 = load i8, i8* %56, align 1, !dbg !411, !tbaa !51
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 11, !dbg !412
  call void @llvm.dbg.value(metadata i8* %58, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %57, i8* %51, align 1, !dbg !413, !tbaa !51
  %59 = lshr i64 %7, 28, !dbg !414
  call void @llvm.dbg.value(metadata i64 %59, metadata !399, metadata !DIExpression()), !dbg !402
  %60 = icmp eq i64 %59, 0, !dbg !415
  call void @llvm.dbg.value(metadata i32 6, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br i1 %60, label %21, label %61, !dbg !417

61:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 7, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 6, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  call void @llvm.dbg.value(metadata i64 %59, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %58, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 7, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %59, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %58, metadata !398, metadata !DIExpression()), !dbg !402
  %62 = and i64 %59, 15, !dbg !408
  %63 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %62, !dbg !411
  %64 = load i8, i8* %63, align 1, !dbg !411, !tbaa !51
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 10, !dbg !412
  call void @llvm.dbg.value(metadata i8* %65, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %64, i8* %58, align 1, !dbg !413, !tbaa !51
  %66 = lshr i64 %7, 32, !dbg !414
  call void @llvm.dbg.value(metadata i64 %66, metadata !399, metadata !DIExpression()), !dbg !402
  %67 = icmp eq i64 %66, 0, !dbg !415
  call void @llvm.dbg.value(metadata i32 7, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br i1 %67, label %21, label %68, !dbg !417

68:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i32 8, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 7, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  call void @llvm.dbg.value(metadata i64 %66, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %65, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 8, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %66, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %65, metadata !398, metadata !DIExpression()), !dbg !402
  %69 = and i64 %66, 15, !dbg !408
  %70 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %69, !dbg !411
  %71 = load i8, i8* %70, align 1, !dbg !411, !tbaa !51
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 9, !dbg !412
  call void @llvm.dbg.value(metadata i8* %72, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %71, i8* %65, align 1, !dbg !413, !tbaa !51
  %73 = lshr i64 %7, 36, !dbg !414
  call void @llvm.dbg.value(metadata i64 %73, metadata !399, metadata !DIExpression()), !dbg !402
  %74 = icmp eq i64 %73, 0, !dbg !415
  call void @llvm.dbg.value(metadata i32 8, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br i1 %74, label %21, label %75, !dbg !417

75:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 9, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 8, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  call void @llvm.dbg.value(metadata i64 %73, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %72, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 9, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %73, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %72, metadata !398, metadata !DIExpression()), !dbg !402
  %76 = and i64 %73, 15, !dbg !408
  %77 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %76, !dbg !411
  %78 = load i8, i8* %77, align 1, !dbg !411, !tbaa !51
  %79 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 8, !dbg !412
  call void @llvm.dbg.value(metadata i8* %79, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %78, i8* %72, align 1, !dbg !413, !tbaa !51
  %80 = lshr i64 %7, 40, !dbg !414
  call void @llvm.dbg.value(metadata i64 %80, metadata !399, metadata !DIExpression()), !dbg !402
  %81 = icmp eq i64 %80, 0, !dbg !415
  call void @llvm.dbg.value(metadata i32 9, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br i1 %81, label %21, label %82, !dbg !417

82:                                               ; preds = %75
  call void @llvm.dbg.value(metadata i32 10, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 9, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  call void @llvm.dbg.value(metadata i64 %80, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %79, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 10, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %80, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %79, metadata !398, metadata !DIExpression()), !dbg !402
  %83 = and i64 %80, 15, !dbg !408
  %84 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %83, !dbg !411
  %85 = load i8, i8* %84, align 1, !dbg !411, !tbaa !51
  %86 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 7, !dbg !412
  call void @llvm.dbg.value(metadata i8* %86, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %85, i8* %79, align 1, !dbg !413, !tbaa !51
  %87 = lshr i64 %7, 44, !dbg !414
  call void @llvm.dbg.value(metadata i64 %87, metadata !399, metadata !DIExpression()), !dbg !402
  %88 = icmp eq i64 %87, 0, !dbg !415
  call void @llvm.dbg.value(metadata i32 10, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br i1 %88, label %21, label %89, !dbg !417

89:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i32 11, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 10, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  call void @llvm.dbg.value(metadata i64 %87, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %86, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 11, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %87, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %86, metadata !398, metadata !DIExpression()), !dbg !402
  %90 = and i64 %87, 15, !dbg !408
  %91 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %90, !dbg !411
  %92 = load i8, i8* %91, align 1, !dbg !411, !tbaa !51
  %93 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 6, !dbg !412
  call void @llvm.dbg.value(metadata i8* %93, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %92, i8* %86, align 1, !dbg !413, !tbaa !51
  %94 = lshr i64 %7, 48, !dbg !414
  call void @llvm.dbg.value(metadata i64 %94, metadata !399, metadata !DIExpression()), !dbg !402
  %95 = icmp eq i64 %94, 0, !dbg !415
  call void @llvm.dbg.value(metadata i32 11, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br i1 %95, label %21, label %96, !dbg !417

96:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i32 12, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 11, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  call void @llvm.dbg.value(metadata i64 %94, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %93, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 12, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %94, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %93, metadata !398, metadata !DIExpression()), !dbg !402
  %97 = and i64 %94, 15, !dbg !408
  %98 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %97, !dbg !411
  %99 = load i8, i8* %98, align 1, !dbg !411, !tbaa !51
  %100 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 5, !dbg !412
  call void @llvm.dbg.value(metadata i8* %100, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %99, i8* %93, align 1, !dbg !413, !tbaa !51
  %101 = lshr i64 %7, 52, !dbg !414
  call void @llvm.dbg.value(metadata i64 %101, metadata !399, metadata !DIExpression()), !dbg !402
  %102 = icmp eq i64 %101, 0, !dbg !415
  call void @llvm.dbg.value(metadata i32 12, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br i1 %102, label %21, label %103, !dbg !417

103:                                              ; preds = %96
  call void @llvm.dbg.value(metadata i32 13, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 12, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  call void @llvm.dbg.value(metadata i64 %101, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %100, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 13, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %101, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %100, metadata !398, metadata !DIExpression()), !dbg !402
  %104 = and i64 %101, 15, !dbg !408
  %105 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %104, !dbg !411
  %106 = load i8, i8* %105, align 1, !dbg !411, !tbaa !51
  %107 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 4, !dbg !412
  call void @llvm.dbg.value(metadata i8* %107, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %106, i8* %100, align 1, !dbg !413, !tbaa !51
  %108 = lshr i64 %7, 56, !dbg !414
  call void @llvm.dbg.value(metadata i64 %108, metadata !399, metadata !DIExpression()), !dbg !402
  %109 = icmp eq i64 %108, 0, !dbg !415
  call void @llvm.dbg.value(metadata i32 13, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br i1 %109, label %21, label %110, !dbg !417

110:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i32 14, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 13, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  call void @llvm.dbg.value(metadata i64 %108, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %107, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 14, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %108, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %107, metadata !398, metadata !DIExpression()), !dbg !402
  %111 = and i64 %108, 15, !dbg !408
  %112 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %111, !dbg !411
  %113 = load i8, i8* %112, align 1, !dbg !411, !tbaa !51
  %114 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 3, !dbg !412
  call void @llvm.dbg.value(metadata i8* %114, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %113, i8* %107, align 1, !dbg !413, !tbaa !51
  %115 = lshr i64 %7, 60, !dbg !414
  call void @llvm.dbg.value(metadata i64 %115, metadata !399, metadata !DIExpression()), !dbg !402
  %116 = icmp eq i64 %115, 0, !dbg !415
  call void @llvm.dbg.value(metadata i32 14, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br i1 %116, label %21, label %117, !dbg !417

117:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i32 15, metadata !400, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %115, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %114, metadata !398, metadata !DIExpression()), !dbg !402
  %118 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %115, !dbg !411
  %119 = load i8, i8* %118, align 1, !dbg !411, !tbaa !51
  %120 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 2, !dbg !412
  call void @llvm.dbg.value(metadata i8* %120, metadata !398, metadata !DIExpression()), !dbg !402
  store i8 %119, i8* %114, align 1, !dbg !413, !tbaa !51
  call void @llvm.dbg.value(metadata i64 0, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 15, metadata !400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !407
  br label %21, !dbg !417
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_type_to_string(i8* %0, i8* %1, %struct.halide_type_t* %2) local_unnamed_addr #2 !dbg !424 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !463, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i8* %1, metadata !464, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %2, metadata !465, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i8* null, metadata !466, metadata !DIExpression()), !dbg !467
  %4 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %2, i64 0, i32 0, !dbg !468
  %5 = load i8, i8* %4, align 2, !dbg !468, !tbaa !469
  switch i8 %5, label %9 [
    i8 0, label %10
    i8 1, label %6
    i8 2, label %7
    i8 3, label %8
  ], !dbg !473

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), metadata !466, metadata !DIExpression()), !dbg !467
  br label %10, !dbg !474

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), metadata !466, metadata !DIExpression()), !dbg !467
  br label %10, !dbg !476

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), metadata !466, metadata !DIExpression()), !dbg !467
  br label %10, !dbg !477

9:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), metadata !466, metadata !DIExpression()), !dbg !467
  br label %10, !dbg !478

10:                                               ; preds = %3, %9, %8, %7, %6
  %11 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), %9 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %8 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), %7 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %6 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), %3 ], !dbg !479
  call void @llvm.dbg.value(metadata i8* %11, metadata !466, metadata !DIExpression()), !dbg !467
  %12 = tail call i8* @halide_string_to_string(i8* %0, i8* %1, i8* nonnull %11) #7, !dbg !480
  call void @llvm.dbg.value(metadata i8* %12, metadata !463, metadata !DIExpression()), !dbg !467
  %13 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %2, i64 0, i32 1, !dbg !481
  %14 = load i8, i8* %13, align 1, !dbg !481, !tbaa !482
  %15 = zext i8 %14 to i64, !dbg !483
  %16 = tail call i8* @halide_uint64_to_string(i8* %12, i8* %1, i64 %15, i32 1) #7, !dbg !484
  call void @llvm.dbg.value(metadata i8* %16, metadata !463, metadata !DIExpression()), !dbg !467
  %17 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %2, i64 0, i32 2, !dbg !485
  %18 = load i16, i16* %17, align 2, !dbg !485, !tbaa !487
  %19 = icmp eq i16 %18, 1, !dbg !488
  br i1 %19, label %25, label %20, !dbg !489

20:                                               ; preds = %10
  %21 = tail call i8* @halide_string_to_string(i8* %16, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !490
  call void @llvm.dbg.value(metadata i8* %21, metadata !463, metadata !DIExpression()), !dbg !467
  %22 = load i16, i16* %17, align 2, !dbg !492, !tbaa !487
  %23 = zext i16 %22 to i64, !dbg !493
  %24 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %1, i64 %23, i32 1) #7, !dbg !494
  call void @llvm.dbg.value(metadata i8* %24, metadata !463, metadata !DIExpression()), !dbg !467
  br label %25, !dbg !495

25:                                               ; preds = %20, %10
  %26 = phi i8* [ %24, %20 ], [ %16, %10 ], !dbg !467
  call void @llvm.dbg.value(metadata i8* %26, metadata !463, metadata !DIExpression()), !dbg !467
  ret i8* %26, !dbg !496
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_buffer_to_string(i8* %0, i8* %1, %struct.halide_buffer_t* %2) local_unnamed_addr #2 !dbg !497 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !623, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i8* %1, metadata !624, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %2, metadata !625, metadata !DIExpression()), !dbg !628
  %4 = icmp eq %struct.halide_buffer_t* %2, null, !dbg !629
  br i1 %4, label %5, label %7, !dbg !631

5:                                                ; preds = %3
  %6 = tail call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !632
  br label %62, !dbg !634

7:                                                ; preds = %3
  %8 = tail call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !635
  call void @llvm.dbg.value(metadata i8* %8, metadata !623, metadata !DIExpression()), !dbg !628
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 0, !dbg !636
  %10 = load i64, i64* %9, align 8, !dbg !636, !tbaa !637
  %11 = tail call i8* @halide_uint64_to_string(i8* %8, i8* %1, i64 %10, i32 1) #7, !dbg !641
  call void @llvm.dbg.value(metadata i8* %11, metadata !623, metadata !DIExpression()), !dbg !628
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !642
  call void @llvm.dbg.value(metadata i8* %12, metadata !623, metadata !DIExpression()), !dbg !628
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 1, !dbg !643
  %14 = bitcast %struct.halide_device_interface_t** %13 to i8**, !dbg !643
  %15 = load i8*, i8** %14, align 8, !dbg !643, !tbaa !644
  %16 = tail call i8* @halide_pointer_to_string(i8* %12, i8* %1, i8* %15) #7, !dbg !645
  call void @llvm.dbg.value(metadata i8* %16, metadata !623, metadata !DIExpression()), !dbg !628
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !646
  call void @llvm.dbg.value(metadata i8* %17, metadata !623, metadata !DIExpression()), !dbg !628
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 2, !dbg !647
  %19 = load i8*, i8** %18, align 8, !dbg !647, !tbaa !648
  %20 = tail call i8* @halide_pointer_to_string(i8* %17, i8* %1, i8* %19) #7, !dbg !649
  call void @llvm.dbg.value(metadata i8* %20, metadata !623, metadata !DIExpression()), !dbg !628
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !650
  call void @llvm.dbg.value(metadata i8* %21, metadata !623, metadata !DIExpression()), !dbg !628
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 3, !dbg !651
  %23 = load i64, i64* %22, align 8, !dbg !651, !tbaa !652
  %24 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %1, i64 %23, i32 1) #7, !dbg !653
  call void @llvm.dbg.value(metadata i8* %24, metadata !623, metadata !DIExpression()), !dbg !628
  %25 = tail call i8* @halide_string_to_string(i8* %24, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !654
  call void @llvm.dbg.value(metadata i8* %25, metadata !623, metadata !DIExpression()), !dbg !628
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 4, !dbg !655
  %27 = tail call i8* @halide_type_to_string(i8* %25, i8* %1, %struct.halide_type_t* nonnull %26) #7, !dbg !656
  call void @llvm.dbg.value(metadata i8* %27, metadata !623, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i32 0, metadata !626, metadata !DIExpression()), !dbg !657
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 5, !dbg !658
  %29 = load i32, i32* %28, align 4, !dbg !658, !tbaa !660
  %30 = icmp sgt i32 %29, 0, !dbg !661
  br i1 %30, label %31, label %33, !dbg !662

31:                                               ; preds = %7
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 6
  br label %36, !dbg !662

33:                                               ; preds = %36, %7
  %34 = phi i8* [ %27, %7 ], [ %57, %36 ], !dbg !628
  %35 = tail call i8* @halide_string_to_string(i8* %34, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)) #7, !dbg !663
  call void @llvm.dbg.value(metadata i8* %35, metadata !623, metadata !DIExpression()), !dbg !628
  br label %62, !dbg !664

36:                                               ; preds = %31, %36
  %37 = phi i64 [ 0, %31 ], [ %58, %36 ]
  %38 = phi i8* [ %27, %31 ], [ %57, %36 ]
  call void @llvm.dbg.value(metadata i64 %37, metadata !626, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata i8* %38, metadata !623, metadata !DIExpression()), !dbg !628
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !665
  call void @llvm.dbg.value(metadata i8* %39, metadata !623, metadata !DIExpression()), !dbg !628
  %40 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !667, !tbaa !668
  %41 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %40, i64 %37, i32 0, !dbg !669
  %42 = load i32, i32* %41, align 4, !dbg !669, !tbaa !670
  %43 = sext i32 %42 to i64, !dbg !672
  %44 = tail call i8* @halide_int64_to_string(i8* %39, i8* %1, i64 %43, i32 1) #7, !dbg !673
  call void @llvm.dbg.value(metadata i8* %44, metadata !623, metadata !DIExpression()), !dbg !628
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !674
  call void @llvm.dbg.value(metadata i8* %45, metadata !623, metadata !DIExpression()), !dbg !628
  %46 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !675, !tbaa !668
  %47 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %46, i64 %37, i32 1, !dbg !676
  %48 = load i32, i32* %47, align 4, !dbg !676, !tbaa !677
  %49 = sext i32 %48 to i64, !dbg !678
  %50 = tail call i8* @halide_int64_to_string(i8* %45, i8* %1, i64 %49, i32 1) #7, !dbg !679
  call void @llvm.dbg.value(metadata i8* %50, metadata !623, metadata !DIExpression()), !dbg !628
  %51 = tail call i8* @halide_string_to_string(i8* %50, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !680
  call void @llvm.dbg.value(metadata i8* %51, metadata !623, metadata !DIExpression()), !dbg !628
  %52 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !dbg !681, !tbaa !668
  %53 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %52, i64 %37, i32 2, !dbg !682
  %54 = load i32, i32* %53, align 4, !dbg !682, !tbaa !683
  %55 = sext i32 %54 to i64, !dbg !684
  %56 = tail call i8* @halide_int64_to_string(i8* %51, i8* %1, i64 %55, i32 1) #7, !dbg !685
  call void @llvm.dbg.value(metadata i8* %56, metadata !623, metadata !DIExpression()), !dbg !628
  %57 = tail call i8* @halide_string_to_string(i8* %56, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)) #7, !dbg !686
  call void @llvm.dbg.value(metadata i8* %57, metadata !623, metadata !DIExpression()), !dbg !628
  %58 = add nuw nsw i64 %37, 1, !dbg !687
  call void @llvm.dbg.value(metadata i64 %58, metadata !626, metadata !DIExpression()), !dbg !657
  %59 = load i32, i32* %28, align 4, !dbg !658, !tbaa !660
  %60 = sext i32 %59 to i64, !dbg !661
  %61 = icmp slt i64 %58, %60, !dbg !661
  br i1 %61, label %36, label %33, !dbg !662, !llvm.loop !688

62:                                               ; preds = %33, %5
  %63 = phi i8* [ %6, %5 ], [ %35, %33 ], !dbg !628
  ret i8* %63, !dbg !690
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
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
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
!328 = !DILocation(line: 175, column: 19, scope: !166)
!329 = !DILocation(line: 175, column: 42, scope: !166)
!330 = !DILocation(line: 178, column: 41, scope: !166)
!331 = !DILocation(line: 179, column: 17, scope: !332)
!332 = distinct !DILexicalBlock(scope: !166, file: !32, line: 179, column: 17)
!333 = !DILocation(line: 179, column: 33, scope: !332)
!334 = !DILocation(line: 179, column: 38, scope: !332)
!335 = !DILocation(line: 186, column: 33, scope: !336)
!336 = distinct !DILexicalBlock(scope: !166, file: !32, line: 186, column: 17)
!337 = !DILocation(line: 186, column: 17, scope: !166)
!338 = !DILocation(line: 190, column: 9, scope: !166)
!339 = !DILocation(line: 198, column: 9, scope: !160)
!340 = !DILocation(line: 198, column: 14, scope: !160)
!341 = !DILocation(line: 201, column: 34, scope: !160)
!342 = !DILocation(line: 201, column: 40, scope: !160)
!343 = !DILocation(line: 202, column: 25, scope: !160)
!344 = !DILocation(line: 0, scope: !180)
!345 = !DILocation(line: 203, column: 27, scope: !183)
!346 = !DILocation(line: 203, column: 9, scope: !180)
!347 = !DILocation(line: 0, scope: !185)
!348 = !DILocation(line: 0, scope: !182)
!349 = !DILocation(line: 206, column: 43, scope: !188)
!350 = !DILocation(line: 206, column: 13, scope: !185)
!351 = !DILocation(line: 224, column: 15, scope: !160)
!352 = !DILocation(line: 225, column: 15, scope: !160)
!353 = !DILocation(line: 226, column: 15, scope: !160)
!354 = !DILocation(line: 227, column: 5, scope: !155)
!355 = !DILocation(line: 217, column: 17, scope: !182)
!356 = !DILocation(line: 207, column: 34, scope: !187)
!357 = !DILocation(line: 207, column: 37, scope: !187)
!358 = !DILocation(line: 0, scope: !187)
!359 = !DILocation(line: 208, column: 34, scope: !187)
!360 = !DILocation(line: 208, column: 44, scope: !187)
!361 = !DILocation(line: 208, column: 48, scope: !187)
!362 = !DILocation(line: 209, column: 31, scope: !363)
!363 = distinct !DILexicalBlock(scope: !187, file: !32, line: 209, column: 21)
!364 = !DILocation(line: 209, column: 21, scope: !187)
!365 = !DILocation(line: 215, column: 22, scope: !187)
!366 = !DILocation(line: 215, column: 20, scope: !187)
!367 = distinct !{!367, !350, !368, !112}
!368 = !DILocation(line: 216, column: 13, scope: !185)
!369 = !DILocation(line: 220, column: 29, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !32, line: 217, column: 24)
!371 = distinct !DILexicalBlock(scope: !182, file: !32, line: 217, column: 17)
!372 = !DILocation(line: 221, column: 31, scope: !370)
!373 = !DILocation(line: 222, column: 13, scope: !370)
!374 = !DILocation(line: 203, column: 48, scope: !183)
!375 = distinct !{!375, !346, !376, !112}
!376 = !DILocation(line: 223, column: 9, scope: !180)
!377 = !DILocation(line: 230, column: 1, scope: !134)
!378 = !DISubprogram(name: "memcpy", scope: !6, file: !6, line: 94, type: !379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !385)
!379 = !DISubroutineType(types: !380)
!380 = !{!381, !381, !382, !384}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!384 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!385 = !{}
!386 = distinct !DISubprogram(name: "halide_pointer_to_string", scope: !32, file: !32, line: 232, type: !387, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !389)
!387 = !DISubroutineType(types: !388)
!388 = !{!35, !35, !35, !382}
!389 = !{!390, !391, !392, !393, !394, !398, !399, !400}
!390 = !DILocalVariable(name: "dst", arg: 1, scope: !386, file: !32, line: 232, type: !35)
!391 = !DILocalVariable(name: "end", arg: 2, scope: !386, file: !32, line: 232, type: !35)
!392 = !DILocalVariable(name: "arg", arg: 3, scope: !386, file: !32, line: 232, type: !382)
!393 = !DILocalVariable(name: "hex_digits", scope: !386, file: !32, line: 233, type: !37)
!394 = !DILocalVariable(name: "buf", scope: !386, file: !32, line: 234, type: !395)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 20)
!398 = !DILocalVariable(name: "buf_ptr", scope: !386, file: !32, line: 235, type: !35)
!399 = !DILocalVariable(name: "bits", scope: !386, file: !32, line: 236, type: !20)
!400 = !DILocalVariable(name: "i", scope: !401, file: !32, line: 237, type: !71)
!401 = distinct !DILexicalBlock(scope: !386, file: !32, line: 237, column: 5)
!402 = !DILocation(line: 0, scope: !386)
!403 = !DILocation(line: 234, column: 5, scope: !386)
!404 = !DILocation(line: 234, column: 10, scope: !386)
!405 = !DILocation(line: 235, column: 25, scope: !386)
!406 = !DILocation(line: 236, column: 21, scope: !386)
!407 = !DILocation(line: 0, scope: !401)
!408 = !DILocation(line: 238, column: 38, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !32, line: 237, column: 34)
!410 = distinct !DILexicalBlock(scope: !401, file: !32, line: 237, column: 5)
!411 = !DILocation(line: 238, column: 22, scope: !409)
!412 = !DILocation(line: 238, column: 17, scope: !409)
!413 = !DILocation(line: 238, column: 20, scope: !409)
!414 = !DILocation(line: 239, column: 14, scope: !409)
!415 = !DILocation(line: 240, column: 14, scope: !416)
!416 = distinct !DILexicalBlock(scope: !409, file: !32, line: 240, column: 13)
!417 = !DILocation(line: 240, column: 13, scope: !409)
!418 = !DILocation(line: 244, column: 13, scope: !386)
!419 = !DILocation(line: 244, column: 16, scope: !386)
!420 = !DILocation(line: 245, column: 14, scope: !386)
!421 = !DILocation(line: 246, column: 12, scope: !386)
!422 = !DILocation(line: 247, column: 1, scope: !386)
!423 = !DILocation(line: 246, column: 5, scope: !386)
!424 = distinct !DISubprogram(name: "halide_type_to_string", scope: !32, file: !32, line: 249, type: !425, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !462)
!425 = !DISubroutineType(types: !426)
!426 = !{!35, !35, !35, !427}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !4, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !430, identifier: "_ZTS13halide_type_t")
!430 = !{!431, !433, !434, !437, !441, !444, !448, !453, !454, !455, !458}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !429, file: !4, line: 434, baseType: !432, size: 8, align: 8)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !4, line: 413, baseType: !3)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !429, file: !4, line: 442, baseType: !5, size: 8, align: 8, offset: 8)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !429, file: !4, line: 446, baseType: !435, size: 16, align: 16, offset: 16)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !6, line: 14, baseType: !436)
!436 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!437 = !DISubprogram(name: "halide_type_t", scope: !429, file: !4, line: 453, type: !438, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !440, !432, !5, !435}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!441 = !DISubprogram(name: "halide_type_t", scope: !429, file: !4, line: 459, type: !442, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !440}
!444 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !429, file: !4, line: 463, type: !445, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!445 = !DISubroutineType(types: !446)
!446 = !{!429, !447, !435}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!448 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !429, file: !4, line: 468, type: !449, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!449 = !DISubroutineType(types: !450)
!450 = !{!451, !447, !452}
!451 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!452 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !428, size: 64)
!453 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !429, file: !4, line: 472, type: !449, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !429, file: !4, line: 476, type: !449, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !429, file: !4, line: 481, type: !456, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!456 = !DISubroutineType(types: !457)
!457 = !{!71, !447}
!458 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !429, file: !4, line: 485, type: !459, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !447}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 12, baseType: !15)
!462 = !{!463, !464, !465, !466}
!463 = !DILocalVariable(name: "dst", arg: 1, scope: !424, file: !32, line: 249, type: !35)
!464 = !DILocalVariable(name: "end", arg: 2, scope: !424, file: !32, line: 249, type: !35)
!465 = !DILocalVariable(name: "t", arg: 3, scope: !424, file: !32, line: 249, type: !427)
!466 = !DILocalVariable(name: "code_name", scope: !424, file: !32, line: 250, type: !37)
!467 = !DILocation(line: 0, scope: !424)
!468 = !DILocation(line: 251, column: 16, scope: !424)
!469 = !{!470, !471, i64 0}
!470 = !{!"_ZTS13halide_type_t", !471, i64 0, !52, i64 1, !472, i64 2}
!471 = !{!"_ZTS18halide_type_code_t", !52, i64 0}
!472 = !{!"short", !52, i64 0}
!473 = !DILocation(line: 251, column: 5, scope: !424)
!474 = !DILocation(line: 257, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !424, file: !32, line: 251, column: 22)
!476 = !DILocation(line: 260, column: 9, scope: !475)
!477 = !DILocation(line: 263, column: 9, scope: !475)
!478 = !DILocation(line: 266, column: 9, scope: !475)
!479 = !DILocation(line: 0, scope: !475)
!480 = !DILocation(line: 268, column: 11, scope: !424)
!481 = !DILocation(line: 269, column: 48, scope: !424)
!482 = !{!470, !52, i64 1}
!483 = !DILocation(line: 269, column: 45, scope: !424)
!484 = !DILocation(line: 269, column: 11, scope: !424)
!485 = !DILocation(line: 270, column: 12, scope: !486)
!486 = distinct !DILexicalBlock(scope: !424, file: !32, line: 270, column: 9)
!487 = !{!470, !472, i64 2}
!488 = !DILocation(line: 270, column: 18, scope: !486)
!489 = !DILocation(line: 270, column: 9, scope: !424)
!490 = !DILocation(line: 271, column: 15, scope: !491)
!491 = distinct !DILexicalBlock(scope: !486, file: !32, line: 270, column: 24)
!492 = !DILocation(line: 272, column: 52, scope: !491)
!493 = !DILocation(line: 272, column: 49, scope: !491)
!494 = !DILocation(line: 272, column: 15, scope: !491)
!495 = !DILocation(line: 273, column: 5, scope: !491)
!496 = !DILocation(line: 274, column: 5, scope: !424)
!497 = distinct !DISubprogram(name: "halide_buffer_to_string", scope: !32, file: !32, line: 277, type: !498, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !622)
!498 = !DISubroutineType(types: !499)
!499 = !{!35, !35, !35, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !4, line: 1550, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !4, line: 1423, size: 448, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !504, identifier: "_ZTS15halide_buffer_t")
!504 = !{!505, !506, !558, !560, !561, !562, !564, !587, !588, !593, !597, !600, !601, !604, !605, !609, !612, !613, !614, !618, !621}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !503, file: !4, line: 1425, baseType: !20, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !503, file: !4, line: 1428, baseType: !507, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !4, line: 723, size: 1024, flags: DIFlagTypePassByValue, elements: !510, identifier: "_ZTS25halide_device_interface_t")
!510 = !{!511, !516, !520, !521, !525, !526, !527, !528, !529, !533, !539, !543, !544, !548, !549, !554}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !509, file: !4, line: 724, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!71, !381, !515, !507}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !509, file: !4, line: 726, baseType: !517, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!71, !381, !515}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !509, file: !4, line: 727, baseType: !517, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !509, file: !4, line: 728, baseType: !522, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !381, !507}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !509, file: !4, line: 730, baseType: !517, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !509, file: !4, line: 731, baseType: !512, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !509, file: !4, line: 733, baseType: !512, size: 64, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !509, file: !4, line: 735, baseType: !517, size: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !509, file: !4, line: 736, baseType: !530, size: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!71, !381, !515, !507, !515}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !509, file: !4, line: 738, baseType: !534, size: 64, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!71, !381, !537, !515}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !509, file: !4, line: 740, baseType: !540, size: 64, offset: 640)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!71, !381, !537, !71, !71, !515}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !509, file: !4, line: 742, baseType: !517, size: 64, offset: 704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !509, file: !4, line: 743, baseType: !545, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!71, !381, !515, !20, !507}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !509, file: !4, line: 745, baseType: !517, size: 64, offset: 832)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !509, file: !4, line: 746, baseType: !550, size: 64, offset: 896)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!71, !381, !553, !553}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !509, file: !4, line: 747, baseType: !555, size: 64, offset: 960)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !4, line: 707, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS30halide_device_interface_impl_t")
!558 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !503, file: !4, line: 1433, baseType: !559, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !503, file: !4, line: 1436, baseType: !20, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !503, file: !4, line: 1439, baseType: !429, size: 32, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !503, file: !4, line: 1442, baseType: !563, size: 32, offset: 288)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !6, line: 11, baseType: !71)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !503, file: !4, line: 1446, baseType: !565, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !4, line: 1409, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !4, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !568, identifier: "_ZTS18halide_dimension_t")
!568 = !{!569, !570, !571, !572, !573, !577, !580, !586}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !567, file: !4, line: 1383, baseType: !563, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !567, file: !4, line: 1383, baseType: !563, size: 32, offset: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !567, file: !4, line: 1383, baseType: !563, size: 32, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !567, file: !4, line: 1386, baseType: !461, size: 32, offset: 96)
!573 = !DISubprogram(name: "halide_dimension_t", scope: !567, file: !4, line: 1388, type: !574, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!577 = !DISubprogram(name: "halide_dimension_t", scope: !567, file: !4, line: 1389, type: !578, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !576, !563, !563, !563, !461}
!580 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !567, file: !4, line: 1393, type: !581, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!581 = !DISubroutineType(types: !582)
!582 = !{!451, !583, !585}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!585 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !584, size: 64)
!586 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !567, file: !4, line: 1400, type: !581, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !503, file: !4, line: 1449, baseType: !381, size: 64, offset: 384)
!588 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !503, file: !4, line: 1454, type: !589, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!589 = !DISubroutineType(types: !590)
!590 = !{!451, !591, !592}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !4, line: 1416, baseType: !14)
!593 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !503, file: !4, line: 1458, type: !594, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !596, !592, !451}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!597 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !503, file: !4, line: 1466, type: !598, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!598 = !DISubroutineType(types: !599)
!599 = !{!451, !591}
!600 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !503, file: !4, line: 1470, type: !598, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!601 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !503, file: !4, line: 1474, type: !602, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !596, !451}
!604 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !503, file: !4, line: 1478, type: !602, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!605 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !503, file: !4, line: 1485, type: !606, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!606 = !DISubroutineType(types: !607)
!607 = !{!608, !591}
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 27, baseType: !384)
!609 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !503, file: !4, line: 1495, type: !610, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!610 = !DISubroutineType(types: !611)
!611 = !{!559, !591}
!612 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !503, file: !4, line: 1506, type: !610, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!613 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !503, file: !4, line: 1518, type: !606, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!614 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !503, file: !4, line: 1523, type: !615, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!615 = !DISubroutineType(types: !616)
!616 = !{!559, !591, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!618 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !503, file: !4, line: 1534, type: !619, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!619 = !DISubroutineType(types: !620)
!620 = !{!71, !596, !381}
!621 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !503, file: !4, line: 1545, type: !598, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!622 = !{!623, !624, !625, !626}
!623 = !DILocalVariable(name: "dst", arg: 1, scope: !497, file: !32, line: 277, type: !35)
!624 = !DILocalVariable(name: "end", arg: 2, scope: !497, file: !32, line: 277, type: !35)
!625 = !DILocalVariable(name: "buf", arg: 3, scope: !497, file: !32, line: 277, type: !500)
!626 = !DILocalVariable(name: "i", scope: !627, file: !32, line: 291, type: !71)
!627 = distinct !DILexicalBlock(scope: !497, file: !32, line: 291, column: 5)
!628 = !DILocation(line: 0, scope: !497)
!629 = !DILocation(line: 278, column: 13, scope: !630)
!630 = distinct !DILexicalBlock(scope: !497, file: !32, line: 278, column: 9)
!631 = !DILocation(line: 278, column: 9, scope: !497)
!632 = !DILocation(line: 279, column: 16, scope: !633)
!633 = distinct !DILexicalBlock(scope: !630, file: !32, line: 278, column: 25)
!634 = !DILocation(line: 279, column: 9, scope: !633)
!635 = !DILocation(line: 281, column: 11, scope: !497)
!636 = !DILocation(line: 282, column: 50, scope: !497)
!637 = !{!638, !196, i64 0}
!638 = !{!"_ZTS15halide_buffer_t", !196, i64 0, !639, i64 8, !639, i64 16, !196, i64 24, !470, i64 32, !640, i64 36, !639, i64 40, !639, i64 48}
!639 = !{!"any pointer", !52, i64 0}
!640 = !{!"int", !52, i64 0}
!641 = !DILocation(line: 282, column: 11, scope: !497)
!642 = !DILocation(line: 283, column: 11, scope: !497)
!643 = !DILocation(line: 284, column: 51, scope: !497)
!644 = !{!638, !639, i64 8}
!645 = !DILocation(line: 284, column: 11, scope: !497)
!646 = !DILocation(line: 285, column: 11, scope: !497)
!647 = !DILocation(line: 286, column: 51, scope: !497)
!648 = !{!638, !639, i64 16}
!649 = !DILocation(line: 286, column: 11, scope: !497)
!650 = !DILocation(line: 287, column: 11, scope: !497)
!651 = !DILocation(line: 288, column: 50, scope: !497)
!652 = !{!638, !196, i64 24}
!653 = !DILocation(line: 288, column: 11, scope: !497)
!654 = !DILocation(line: 289, column: 11, scope: !497)
!655 = !DILocation(line: 290, column: 50, scope: !497)
!656 = !DILocation(line: 290, column: 11, scope: !497)
!657 = !DILocation(line: 0, scope: !627)
!658 = !DILocation(line: 291, column: 30, scope: !659)
!659 = distinct !DILexicalBlock(scope: !627, file: !32, line: 291, column: 5)
!660 = !{!638, !640, i64 36}
!661 = !DILocation(line: 291, column: 23, scope: !659)
!662 = !DILocation(line: 291, column: 5, scope: !627)
!663 = !DILocation(line: 300, column: 11, scope: !497)
!664 = !DILocation(line: 301, column: 5, scope: !497)
!665 = !DILocation(line: 292, column: 15, scope: !666)
!666 = distinct !DILexicalBlock(scope: !659, file: !32, line: 291, column: 47)
!667 = !DILocation(line: 293, column: 53, scope: !666)
!668 = !{!638, !639, i64 40}
!669 = !DILocation(line: 293, column: 60, scope: !666)
!670 = !{!671, !640, i64 0}
!671 = !{!"_ZTS18halide_dimension_t", !640, i64 0, !640, i64 4, !640, i64 8, !640, i64 12}
!672 = !DILocation(line: 293, column: 48, scope: !666)
!673 = !DILocation(line: 293, column: 15, scope: !666)
!674 = !DILocation(line: 294, column: 15, scope: !666)
!675 = !DILocation(line: 295, column: 53, scope: !666)
!676 = !DILocation(line: 295, column: 60, scope: !666)
!677 = !{!671, !640, i64 4}
!678 = !DILocation(line: 295, column: 48, scope: !666)
!679 = !DILocation(line: 295, column: 15, scope: !666)
!680 = !DILocation(line: 296, column: 15, scope: !666)
!681 = !DILocation(line: 297, column: 53, scope: !666)
!682 = !DILocation(line: 297, column: 60, scope: !666)
!683 = !{!671, !640, i64 8}
!684 = !DILocation(line: 297, column: 48, scope: !666)
!685 = !DILocation(line: 297, column: 15, scope: !666)
!686 = !DILocation(line: 298, column: 15, scope: !666)
!687 = !DILocation(line: 291, column: 43, scope: !659)
!688 = distinct !{!688, !662, !689, !112}
!689 = !DILocation(line: 299, column: 5, scope: !627)
!690 = !DILocation(line: 302, column: 1, scope: !497)
