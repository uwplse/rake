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
define weak i8* @halide_string_to_string(i8* %0, i8* %1, i8* %2) local_unnamed_addr #0 {
  %4 = icmp ult i8* %0, %1
  br i1 %4, label %6, label %15

5:                                                ; preds = %11
  store i8 0, i8* %8, align 1, !tbaa !3
  br label %15

6:                                                ; preds = %3, %11
  %7 = phi i8* [ %13, %11 ], [ %2, %3 ]
  %8 = phi i8* [ %12, %11 ], [ %0, %3 ]
  %9 = load i8, i8* %7, align 1, !tbaa !3
  store i8 %9, i8* %8, align 1, !tbaa !3
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %8, i64 1
  %13 = getelementptr inbounds i8, i8* %7, i64 1
  %14 = icmp eq i8* %12, %1
  br i1 %14, label %5, label %6

15:                                               ; preds = %6, %3, %5
  %16 = phi i8* [ %1, %5 ], [ %0, %3 ], [ %8, %6 ]
  ret i8* %16
}

; Function Attrs: nounwind mustprogress
define weak i8* @halide_uint64_to_string(i8* %0, i8* %1, i64 %2, i32 %3) local_unnamed_addr #1 {
  %5 = alloca [32 x i8], align 1
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #5
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 31
  store i8 0, i8* %7, align 1, !tbaa !3
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 30
  %9 = icmp sgt i32 %3, 0
  %10 = icmp ne i64 %2, 0
  %11 = or i1 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %16, %4
  %13 = phi i8* [ %8, %4 ], [ %25, %16 ]
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* nonnull %14) #6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #5
  ret i8* %15

16:                                               ; preds = %4, %16
  %17 = phi i64 [ %20, %16 ], [ %2, %4 ]
  %18 = phi i8* [ %25, %16 ], [ %8, %4 ]
  %19 = phi i32 [ %26, %16 ], [ 0, %4 ]
  %20 = udiv i64 %17, 10
  %21 = mul i64 %20, -10
  %22 = add i64 %21, %17
  %23 = trunc i64 %22 to i8
  %24 = add i8 %23, 48
  store i8 %24, i8* %18, align 1, !tbaa !3
  %25 = getelementptr inbounds i8, i8* %18, i64 -1
  %26 = add nuw nsw i32 %19, 1
  %27 = icmp slt i32 %26, %3
  %28 = icmp ugt i64 %17, 9
  %29 = or i1 %27, %28
  br i1 %29, label %16, label %12, !llvm.loop !6
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak i8* @halide_int64_to_string(i8* %0, i8* %1, i64 %2, i32 %3) local_unnamed_addr #1 {
  %5 = icmp slt i64 %2, 0
  %6 = icmp ult i8* %0, %1
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 45, i8* %0, align 1, !tbaa !3
  %10 = sub nsw i64 0, %2
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i64 [ %10, %8 ], [ %2, %4 ]
  %13 = phi i8* [ %9, %8 ], [ %0, %4 ]
  %14 = tail call i8* @halide_uint64_to_string(i8* %13, i8* %1, i64 %12, i32 %3) #6
  ret i8* %14
}

; Function Attrs: nounwind mustprogress
define weak i8* @halide_double_to_string(i8* %0, i8* %1, double %2, i32 %3) local_unnamed_addr #1 {
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  %7 = alloca [512 x i8], align 1
  store double %2, double* %5, align 8, !tbaa !8
  %8 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5
  store i64 0, i64* %6, align 8, !tbaa !10
  %9 = bitcast double* %5 to i8*
  %10 = call i8* @memcpy(i8* nonnull %8, i8* nonnull %9, i64 8) #7
  %11 = load i64, i64* %6, align 8, !tbaa !10
  %12 = and i64 %11, 4503599627370495
  %13 = lshr i64 %11, 52
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 2047
  %16 = icmp eq i32 %15, 2047
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = icmp eq i64 %12, 0
  %19 = icmp sgt i64 %11, -1
  br i1 %18, label %25, label %20

20:                                               ; preds = %17
  br i1 %19, label %23, label %21

21:                                               ; preds = %20
  %22 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #6
  br label %179

23:                                               ; preds = %20
  %24 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %179

25:                                               ; preds = %17
  br i1 %19, label %28, label %26

26:                                               ; preds = %25
  %27 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %179

28:                                               ; preds = %25
  %29 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %179

30:                                               ; preds = %4
  %31 = icmp eq i32 %15, 0
  %32 = icmp eq i64 %12, 0
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = icmp eq i32 %3, 0
  %36 = icmp sgt i64 %11, -1
  br i1 %35, label %42, label %37

37:                                               ; preds = %34
  br i1 %36, label %40, label %38

38:                                               ; preds = %37
  %39 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %179

40:                                               ; preds = %37
  %41 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)) #6
  br label %179

42:                                               ; preds = %34
  br i1 %36, label %45, label %43

43:                                               ; preds = %42
  %44 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #6
  br label %179

45:                                               ; preds = %42
  %46 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #6
  br label %179

47:                                               ; preds = %30
  %48 = icmp sgt i64 %11, -1
  br i1 %48, label %53, label %49

49:                                               ; preds = %47
  %50 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6
  %51 = load double, double* %5, align 8, !tbaa !8
  %52 = fneg double %51
  store double %52, double* %5, align 8, !tbaa !8
  br label %53

53:                                               ; preds = %49, %47
  %54 = phi i8* [ %50, %49 ], [ %0, %47 ]
  %55 = icmp eq i32 %3, 0
  br i1 %55, label %100, label %56

56:                                               ; preds = %53
  %57 = load double, double* %5, align 8, !tbaa !8
  %58 = fcmp olt double %57, 1.000000e+00
  br i1 %58, label %59, label %66

59:                                               ; preds = %56, %59
  %60 = phi i32 [ %63, %59 ], [ 0, %56 ]
  %61 = phi double [ %62, %59 ], [ %57, %56 ]
  %62 = fmul double %61, 1.000000e+01
  %63 = add nsw i32 %60, -1
  %64 = fcmp olt double %62, 1.000000e+00
  br i1 %64, label %59, label %65, !llvm.loop !12

65:                                               ; preds = %59
  store double %62, double* %5, align 8, !tbaa !8
  br label %66

66:                                               ; preds = %65, %56
  %67 = phi double [ %62, %65 ], [ %57, %56 ]
  %68 = phi i32 [ %63, %65 ], [ 0, %56 ]
  %69 = fcmp ult double %67, 1.000000e+01
  br i1 %69, label %77, label %70

70:                                               ; preds = %66, %70
  %71 = phi i32 [ %74, %70 ], [ %68, %66 ]
  %72 = phi double [ %73, %70 ], [ %67, %66 ]
  %73 = fdiv double %72, 1.000000e+01
  %74 = add nsw i32 %71, 1
  %75 = fcmp ult double %73, 1.000000e+01
  br i1 %75, label %76, label %70, !llvm.loop !13

76:                                               ; preds = %70
  store double %73, double* %5, align 8, !tbaa !8
  br label %77

77:                                               ; preds = %76, %66
  %78 = phi double [ %73, %76 ], [ %67, %66 ]
  %79 = phi i32 [ %74, %76 ], [ %68, %66 ]
  %80 = fmul double %78, 1.000000e+06
  %81 = fadd double %80, 5.000000e-01
  %82 = fptoui double %81 to i64
  %83 = udiv i64 %82, 1000000
  %84 = mul i64 %83, -1000000
  %85 = add i64 %84, %82
  %86 = call i8* @halide_int64_to_string(i8* %54, i8* %1, i64 %83, i32 1) #6
  %87 = call i8* @halide_string_to_string(i8* %86, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6
  %88 = call i8* @halide_int64_to_string(i8* %87, i8* %1, i64 %85, i32 6) #6
  %89 = icmp sgt i32 %79, -1
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = call i8* @halide_string_to_string(i8* %88, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #6
  br label %95

92:                                               ; preds = %77
  %93 = call i8* @halide_string_to_string(i8* %88, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #6
  %94 = sub nsw i32 0, %79
  br label %95

95:                                               ; preds = %92, %90
  %96 = phi i32 [ %79, %90 ], [ %94, %92 ]
  %97 = phi i8* [ %91, %90 ], [ %93, %92 ]
  %98 = zext i32 %96 to i64
  %99 = call i8* @halide_int64_to_string(i8* %97, i8* %1, i64 %98, i32 2) #6
  br label %179

100:                                              ; preds = %53
  br i1 %31, label %101, label %103

101:                                              ; preds = %100
  %102 = call i8* @halide_double_to_string(i8* %54, i8* %1, double 0.000000e+00, i32 0) #6
  br label %179

103:                                              ; preds = %100
  %104 = or i64 %12, 4503599627370496
  %105 = add nsw i32 %15, -1075
  %106 = icmp ult i32 %15, 1075
  br i1 %106, label %107, label %137

107:                                              ; preds = %103
  %108 = icmp ult i32 %15, 1023
  br i1 %108, label %115, label %109

109:                                              ; preds = %107
  %110 = sub nuw nsw i32 1075, %15
  %111 = zext i32 %110 to i64
  %112 = lshr i64 %104, %111
  %113 = shl i64 %112, %111
  %114 = sub i64 %104, %113
  br label %115

115:                                              ; preds = %107, %109
  %116 = phi i64 [ %112, %109 ], [ 0, %107 ]
  %117 = phi i64 [ %114, %109 ], [ %104, %107 ]
  %118 = uitofp i64 %117 to double
  %119 = zext i32 %105 to i64
  %120 = shl i64 %119, 52
  %121 = add i64 %120, 4696837146684686336
  %122 = bitcast i64 %121 to double
  %123 = fmul double %122, %118
  %124 = fadd double %123, 5.000000e-01
  %125 = fptoui double %124 to i64
  %126 = uitofp i64 %125 to double
  %127 = fcmp oeq double %124, %126
  %128 = and i64 %125, 1
  %129 = icmp ne i64 %128, 0
  %130 = and i1 %127, %129
  %131 = sext i1 %130 to i64
  %132 = add i64 %131, %125
  %133 = icmp eq i64 %132, 1000000
  %134 = zext i1 %133 to i64
  %135 = add nuw i64 %116, %134
  %136 = select i1 %133, i64 0, i64 %132
  br label %137

137:                                              ; preds = %115, %103
  %138 = phi i64 [ %135, %115 ], [ %104, %103 ]
  %139 = phi i32 [ 0, %115 ], [ %105, %103 ]
  %140 = phi i64 [ %136, %115 ], [ 0, %103 ]
  %141 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %141) #5
  %142 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 512
  %143 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 480
  %144 = call i8* @halide_int64_to_string(i8* nonnull %143, i8* nonnull %142, i64 %138, i32 1) #6
  %145 = icmp sgt i32 %139, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %137, %175
  %147 = phi i32 [ %177, %175 ], [ 0, %137 ]
  %148 = phi i8* [ %176, %175 ], [ %143, %137 ]
  %149 = icmp eq i8* %144, %148
  br i1 %149, label %175, label %156

150:                                              ; preds = %175, %137
  %151 = phi i8* [ %143, %137 ], [ %176, %175 ]
  %152 = call i8* @halide_string_to_string(i8* %54, i8* %1, i8* %151) #6
  %153 = call i8* @halide_string_to_string(i8* %152, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6
  %154 = call i8* @halide_int64_to_string(i8* %153, i8* %1, i64 %140, i32 6) #6
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %141) #5
  br label %179

155:                                              ; preds = %156
  br i1 %166, label %173, label %175

156:                                              ; preds = %146, %156
  %157 = phi i8* [ %159, %156 ], [ %144, %146 ]
  %158 = phi i32 [ %168, %156 ], [ 0, %146 ]
  %159 = getelementptr inbounds i8, i8* %157, i64 -1
  %160 = load i8, i8* %159, align 1, !tbaa !3
  %161 = add i8 %160, -48
  %162 = sext i8 %161 to i32
  %163 = shl nsw i32 %162, 1
  %164 = or i32 %163, %158
  %165 = trunc i32 %164 to i8
  %166 = icmp sgt i8 %165, 9
  %167 = add nsw i32 %164, 246
  %168 = zext i1 %166 to i32
  %169 = select i1 %166, i32 %167, i32 %164
  %170 = trunc i32 %169 to i8
  %171 = add i8 %170, 48
  store i8 %171, i8* %159, align 1, !tbaa !3
  %172 = icmp eq i8* %159, %148
  br i1 %172, label %155, label %156, !llvm.loop !14

173:                                              ; preds = %155
  %174 = getelementptr inbounds i8, i8* %148, i64 -1
  store i8 49, i8* %174, align 1, !tbaa !3
  br label %175

175:                                              ; preds = %146, %173, %155
  %176 = phi i8* [ %174, %173 ], [ %148, %155 ], [ %148, %146 ]
  %177 = add nuw nsw i32 %147, 1
  %178 = icmp eq i32 %177, %139
  br i1 %178, label %150, label %146, !llvm.loop !15

179:                                              ; preds = %101, %150, %95, %45, %43, %40, %38, %28, %26, %23, %21
  %180 = phi i8* [ %22, %21 ], [ %24, %23 ], [ %27, %26 ], [ %29, %28 ], [ %39, %38 ], [ %41, %40 ], [ %44, %43 ], [ %46, %45 ], [ %102, %101 ], [ %99, %95 ], [ %154, %150 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5
  ret i8* %180
}

declare i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak i8* @halide_pointer_to_string(i8* %0, i8* %1, i8* %2) local_unnamed_addr #1 {
  %4 = alloca [20 x i8], align 1
  %5 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %5) #5
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 18
  %7 = ptrtoint i8* %2 to i64
  %8 = and i64 %7, 15
  %9 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1, !tbaa !3
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 17
  store i8 %10, i8* %6, align 1, !tbaa !3
  %12 = lshr i64 %7, 4
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = and i64 %12, 15
  %16 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1, !tbaa !3
  %18 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 16
  store i8 %17, i8* %11, align 1, !tbaa !3
  %19 = lshr i64 %7, 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %117, %110, %103, %96, %89, %82, %75, %68, %61, %54, %47, %40, %33, %26, %14, %3
  %22 = phi i8* [ %6, %3 ], [ %11, %14 ], [ %18, %26 ], [ %30, %33 ], [ %37, %40 ], [ %44, %47 ], [ %51, %54 ], [ %58, %61 ], [ %65, %68 ], [ %72, %75 ], [ %79, %82 ], [ %86, %89 ], [ %93, %96 ], [ %100, %103 ], [ %107, %110 ], [ %114, %117 ]
  %23 = phi i8* [ %11, %3 ], [ %18, %14 ], [ %30, %26 ], [ %37, %33 ], [ %44, %40 ], [ %51, %47 ], [ %58, %54 ], [ %65, %61 ], [ %72, %68 ], [ %79, %75 ], [ %86, %82 ], [ %93, %89 ], [ %100, %96 ], [ %107, %103 ], [ %114, %110 ], [ %120, %117 ]
  %24 = getelementptr inbounds i8, i8* %22, i64 -2
  store i8 120, i8* %23, align 1, !tbaa !3
  store i8 48, i8* %24, align 1, !tbaa !3
  %25 = call i8* @halide_string_to_string(i8* %0, i8* %1, i8* nonnull %24) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %5) #5
  ret i8* %25

26:                                               ; preds = %14
  %27 = and i64 %19, 15
  %28 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1, !tbaa !3
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 15
  store i8 %29, i8* %18, align 1, !tbaa !3
  %31 = lshr i64 %7, 12
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %21, label %33

33:                                               ; preds = %26
  %34 = and i64 %31, 15
  %35 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !3
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 14
  store i8 %36, i8* %30, align 1, !tbaa !3
  %38 = lshr i64 %7, 16
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %21, label %40

40:                                               ; preds = %33
  %41 = and i64 %38, 15
  %42 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1, !tbaa !3
  %44 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 13
  store i8 %43, i8* %37, align 1, !tbaa !3
  %45 = lshr i64 %7, 20
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %21, label %47

47:                                               ; preds = %40
  %48 = and i64 %45, 15
  %49 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1, !tbaa !3
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 12
  store i8 %50, i8* %44, align 1, !tbaa !3
  %52 = lshr i64 %7, 24
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %21, label %54

54:                                               ; preds = %47
  %55 = and i64 %52, 15
  %56 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1, !tbaa !3
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 11
  store i8 %57, i8* %51, align 1, !tbaa !3
  %59 = lshr i64 %7, 28
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %21, label %61

61:                                               ; preds = %54
  %62 = and i64 %59, 15
  %63 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1, !tbaa !3
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 10
  store i8 %64, i8* %58, align 1, !tbaa !3
  %66 = lshr i64 %7, 32
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %21, label %68

68:                                               ; preds = %61
  %69 = and i64 %66, 15
  %70 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1, !tbaa !3
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 9
  store i8 %71, i8* %65, align 1, !tbaa !3
  %73 = lshr i64 %7, 36
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %21, label %75

75:                                               ; preds = %68
  %76 = and i64 %73, 15
  %77 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1, !tbaa !3
  %79 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 8
  store i8 %78, i8* %72, align 1, !tbaa !3
  %80 = lshr i64 %7, 40
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %21, label %82

82:                                               ; preds = %75
  %83 = and i64 %80, 15
  %84 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1, !tbaa !3
  %86 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 7
  store i8 %85, i8* %79, align 1, !tbaa !3
  %87 = lshr i64 %7, 44
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %21, label %89

89:                                               ; preds = %82
  %90 = and i64 %87, 15
  %91 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1, !tbaa !3
  %93 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 6
  store i8 %92, i8* %86, align 1, !tbaa !3
  %94 = lshr i64 %7, 48
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %21, label %96

96:                                               ; preds = %89
  %97 = and i64 %94, 15
  %98 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1, !tbaa !3
  %100 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 5
  store i8 %99, i8* %93, align 1, !tbaa !3
  %101 = lshr i64 %7, 52
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %21, label %103

103:                                              ; preds = %96
  %104 = and i64 %101, 15
  %105 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %104
  %106 = load i8, i8* %105, align 1, !tbaa !3
  %107 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 4
  store i8 %106, i8* %100, align 1, !tbaa !3
  %108 = lshr i64 %7, 56
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %21, label %110

110:                                              ; preds = %103
  %111 = and i64 %108, 15
  %112 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1, !tbaa !3
  %114 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 3
  store i8 %113, i8* %107, align 1, !tbaa !3
  %115 = lshr i64 %7, 60
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %21, label %117

117:                                              ; preds = %110
  %118 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.12, i64 0, i64 %115
  %119 = load i8, i8* %118, align 1, !tbaa !3
  %120 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 2
  store i8 %119, i8* %114, align 1, !tbaa !3
  br label %21
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind mustprogress
define weak i8* @halide_type_to_string(i8* %0, i8* %1, %struct.halide_type_t* %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %2, i64 0, i32 0
  %5 = load i8, i8* %4, align 2, !tbaa !16
  switch i8 %5, label %9 [
    i8 0, label %10
    i8 1, label %6
    i8 2, label %7
    i8 3, label %8
  ]

6:                                                ; preds = %3
  br label %10

7:                                                ; preds = %3
  br label %10

8:                                                ; preds = %3
  br label %10

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %3, %9, %8, %7, %6
  %11 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), %9 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %8 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), %7 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %6 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), %3 ]
  %12 = tail call i8* @halide_string_to_string(i8* %0, i8* %1, i8* nonnull %11) #6
  %13 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %2, i64 0, i32 1
  %14 = load i8, i8* %13, align 1, !tbaa !20
  %15 = zext i8 %14 to i64
  %16 = tail call i8* @halide_uint64_to_string(i8* %12, i8* %1, i64 %15, i32 1) #6
  %17 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %2, i64 0, i32 2
  %18 = load i16, i16* %17, align 2, !tbaa !21
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %25, label %20

20:                                               ; preds = %10
  %21 = tail call i8* @halide_string_to_string(i8* %16, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #6
  %22 = load i16, i16* %17, align 2, !tbaa !21
  %23 = zext i16 %22 to i64
  %24 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %1, i64 %23, i32 1) #6
  br label %25

25:                                               ; preds = %20, %10
  %26 = phi i8* [ %24, %20 ], [ %16, %10 ]
  ret i8* %26
}

; Function Attrs: nounwind mustprogress
define weak i8* @halide_buffer_to_string(i8* %0, i8* %1, %struct.halide_buffer_t* %2) local_unnamed_addr #1 {
  %4 = icmp eq %struct.halide_buffer_t* %2, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0)) #6
  br label %62

7:                                                ; preds = %3
  %8 = tail call i8* @halide_string_to_string(i8* %0, i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0)) #6
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !22
  %11 = tail call i8* @halide_uint64_to_string(i8* %8, i8* %1, i64 %10, i32 1) #6
  %12 = tail call i8* @halide_string_to_string(i8* %11, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #6
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 1
  %14 = bitcast %struct.halide_device_interface_t** %13 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !26
  %16 = tail call i8* @halide_pointer_to_string(i8* %12, i8* %1, i8* %15) #6
  %17 = tail call i8* @halide_string_to_string(i8* %16, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #6
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8, !tbaa !27
  %20 = tail call i8* @halide_pointer_to_string(i8* %17, i8* %1, i8* %19) #6
  %21 = tail call i8* @halide_string_to_string(i8* %20, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #6
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 3
  %23 = load i64, i64* %22, align 8, !tbaa !28
  %24 = tail call i8* @halide_uint64_to_string(i8* %21, i8* %1, i64 %23, i32 1) #6
  %25 = tail call i8* @halide_string_to_string(i8* %24, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #6
  %26 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 4
  %27 = tail call i8* @halide_type_to_string(i8* %25, i8* %1, %struct.halide_type_t* nonnull %26) #6
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 5
  %29 = load i32, i32* %28, align 4, !tbaa !29
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %7
  %32 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 6
  br label %36

33:                                               ; preds = %36, %7
  %34 = phi i8* [ %27, %7 ], [ %57, %36 ]
  %35 = tail call i8* @halide_string_to_string(i8* %34, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)) #6
  br label %62

36:                                               ; preds = %31, %36
  %37 = phi i64 [ 0, %31 ], [ %58, %36 ]
  %38 = phi i8* [ %27, %31 ], [ %57, %36 ]
  %39 = tail call i8* @halide_string_to_string(i8* %38, i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #6
  %40 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !tbaa !30
  %41 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %40, i64 %37, i32 0
  %42 = load i32, i32* %41, align 4, !tbaa !31
  %43 = sext i32 %42 to i64
  %44 = tail call i8* @halide_int64_to_string(i8* %39, i8* %1, i64 %43, i32 1) #6
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #6
  %46 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !tbaa !30
  %47 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %46, i64 %37, i32 1
  %48 = load i32, i32* %47, align 4, !tbaa !33
  %49 = sext i32 %48 to i64
  %50 = tail call i8* @halide_int64_to_string(i8* %45, i8* %1, i64 %49, i32 1) #6
  %51 = tail call i8* @halide_string_to_string(i8* %50, i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #6
  %52 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %32, align 8, !tbaa !30
  %53 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %52, i64 %37, i32 2
  %54 = load i32, i32* %53, align 4, !tbaa !34
  %55 = sext i32 %54 to i64
  %56 = tail call i8* @halide_int64_to_string(i8* %51, i8* %1, i64 %55, i32 1) #6
  %57 = tail call i8* @halide_string_to_string(i8* %56, i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)) #6
  %58 = add nuw nsw i64 %37, 1
  %59 = load i32, i32* %28, align 4, !tbaa !29
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %36, label %33, !llvm.loop !35

62:                                               ; preds = %33, %5
  %63 = phi i8* [ %6, %5 ], [ %35, %33 ]
  ret i8* %63
}

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long long", !4, i64 0}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTS13halide_type_t", !18, i64 0, !4, i64 1, !19, i64 2}
!18 = !{!"_ZTS18halide_type_code_t", !4, i64 0}
!19 = !{!"short", !4, i64 0}
!20 = !{!17, !4, i64 1}
!21 = !{!17, !19, i64 2}
!22 = !{!23, !11, i64 0}
!23 = !{!"_ZTS15halide_buffer_t", !11, i64 0, !24, i64 8, !24, i64 16, !11, i64 24, !17, i64 32, !25, i64 36, !24, i64 40, !24, i64 48}
!24 = !{!"any pointer", !4, i64 0}
!25 = !{!"int", !4, i64 0}
!26 = !{!23, !24, i64 8}
!27 = !{!23, !24, i64 16}
!28 = !{!23, !11, i64 24}
!29 = !{!23, !25, i64 36}
!30 = !{!23, !24, i64 40}
!31 = !{!32, !25, i64 0}
!32 = !{!"_ZTS18halide_dimension_t", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12}
!33 = !{!32, !25, i64 4}
!34 = !{!32, !25, i64 8}
!35 = distinct !{!35, !7}
