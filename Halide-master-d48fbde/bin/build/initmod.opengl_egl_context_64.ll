; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opengl_egl_context.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opengl_egl_context.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>

@.str = private unnamed_addr constant [19 x i8] c"eglQueryDevicesEXT\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"eglGetPlatformDisplayEXT\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not initialize EGL display: \00", align 1
@__const.halide_opengl_create_context.attribs = private unnamed_addr constant [13 x i32] [i32 12339, i32 1, i32 12352, i32 4, i32 12324, i32 8, i32 12323, i32 8, i32 12322, i32 8, i32 12321, i32 8, i32 12344], align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"eglChooseConfig(): config not found: \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" result=\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" eglGetError=\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" numConfig=\00", align 1
@__const.halide_opengl_create_context.context_attribs = private unnamed_addr constant [3 x i32] [i32 12440, i32 2, i32 12344], align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Error: eglCreateContext failed: \00", align 1
@__const.halide_opengl_create_context.surface_attribs = private unnamed_addr constant [5 x i32] [i32 12375, i32 1, i32 12374, i32 1, i32 12344], align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"Error: Could not create EGL window surface: \00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"eglMakeCurrent fails: \00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1

; Function Attrs: nounwind
define weak i32 @halide_opengl_create_context(i8* %0) local_unnamed_addr #0 {
  %2 = alloca [32 x i8*], align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [13 x i32], align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca [5 x i32], align 4
  %12 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %13 = tail call i8* @eglGetCurrentContext() #4
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %240

15:                                               ; preds = %1
  %16 = tail call i8* @eglGetDisplay(i8* null) #4
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @eglInitialize(i8* nonnull %16, i32* null, i32* null) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %94

21:                                               ; preds = %18, %15
  %22 = tail call i8* @eglGetProcAddress(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #4
  %23 = bitcast i8* %22 to i32 (i32, i8**, i32*)*
  %24 = icmp eq i8* %22, null
  br i1 %24, label %240, label %25

25:                                               ; preds = %21
  %26 = tail call i8* @eglGetProcAddress(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #4
  %27 = bitcast i8* %26 to i8* (i32, i8*, i32*)*
  %28 = icmp eq i8* %26, null
  br i1 %28, label %240, label %29

29:                                               ; preds = %25
  %30 = bitcast [32 x i8*]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %30) #5
  %31 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #5
  store i32 0, i32* %3, align 4, !tbaa !3
  %32 = tail call i32 @eglGetError() #4
  %33 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 0
  %34 = call i32 %23(i32 32, i8** nonnull %33, i32* nonnull %3) #4
  %35 = icmp eq i32 %34, 0
  %36 = icmp ne i32 %32, 12288
  %37 = or i1 %36, %35
  br i1 %37, label %92, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %3, align 4, !tbaa !3
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = bitcast i32* %4 to i8*
  %43 = bitcast i32* %5 to i8*
  br label %44

44:                                               ; preds = %41, %60
  %45 = phi i64 [ 0, %41 ], [ %62, %60 ]
  %46 = phi i32 [ 0, %41 ], [ %61, %60 ]
  %47 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 %45
  %48 = load i8*, i8** %47, align 8, !tbaa !7
  %49 = call i8* %27(i32 12607, i8* %48, i32* null) #4
  %50 = call i32 @eglGetError() #4
  %51 = icmp eq i32 %50, 12288
  %52 = icmp ne i8* %49, null
  %53 = and i1 %52, %51
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %42) #5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %43) #5
  %55 = call i32 @eglInitialize(i8* nonnull %49, i32* nonnull %4, i32* nonnull %5) #4
  %56 = call i32 @eglGetError() #4
  %57 = icmp eq i32 %56, 12288
  %58 = icmp eq i32 %55, 1
  %59 = and i1 %58, %57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #5
  br i1 %59, label %66, label %60

60:                                               ; preds = %44, %54
  %61 = phi i32 [ %55, %54 ], [ %46, %44 ]
  %62 = add nuw nsw i64 %45, 1
  %63 = load i32, i32* %3, align 4, !tbaa !3
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %44, label %66, !llvm.loop !9

66:                                               ; preds = %54, %60, %38
  %67 = phi i32 [ 0, %38 ], [ %61, %60 ], [ 1, %54 ]
  %68 = phi i8* [ %16, %38 ], [ %49, %60 ], [ %49, %54 ]
  %69 = call i32 @eglGetError() #4
  %70 = icmp ne i32 %69, 12288
  %71 = icmp ne i32 %67, 1
  %72 = or i1 %71, %70
  br i1 %72, label %73, label %93

73:                                               ; preds = %66
  %74 = call i8* @malloc(i64 1024) #4
  %75 = icmp eq i8* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds i8, i8* %74, i64 1023
  store i8 0, i8* %77, align 1, !tbaa !11
  br label %78

78:                                               ; preds = %73, %76
  %79 = phi i8* [ %77, %76 ], [ null, %73 ]
  %80 = call i8* @halide_string_to_string(i8* %74, i8* %79, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0)) #4
  %81 = call i32 @eglGetError() #4
  %82 = sext i32 %81 to i64
  %83 = call i8* @halide_int64_to_string(i8* %80, i8* %79, i64 %82, i32 1) #4
  br i1 %75, label %84, label %85

84:                                               ; preds = %78
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #4
  br label %91

85:                                               ; preds = %78
  %86 = ptrtoint i8* %83 to i64
  %87 = ptrtoint i8* %74 to i64
  %88 = add i64 %86, 1
  %89 = sub i64 %88, %87
  %90 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %74, i64 %89) #4
  call void @halide_error(i8* %0, i8* nonnull %74) #4
  br label %91

91:                                               ; preds = %85, %84
  call void @free(i8* %74) #4
  br label %92

92:                                               ; preds = %29, %91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #5
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %30) #5
  br label %240

93:                                               ; preds = %66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #5
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %30) #5
  br label %94

94:                                               ; preds = %93, %18
  %95 = phi i8* [ %68, %93 ], [ %16, %18 ]
  %96 = bitcast [13 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %96) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %96, i8* nonnull align 4 dereferenceable(52) bitcast ([13 x i32]* @__const.halide_opengl_create_context.attribs to i8*), i64 52, i1 false)
  %97 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %97) #5
  %98 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %98) #5
  %99 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 0
  %100 = call i32 @eglChooseConfig(i8* %95, i32* nonnull %99, i8** nonnull %7, i32 1, i32* nonnull %8) #4
  %101 = icmp ne i32 %100, 1
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 1
  %104 = or i1 %101, %103
  br i1 %104, label %105, label %145

105:                                              ; preds = %94
  %106 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %106) #5
  %107 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 3
  store i8* %0, i8** %107, align 8, !tbaa !12
  %108 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 4
  store i8 1, i8* %108, align 8, !tbaa !15
  %109 = call i8* @malloc(i64 1024) #4
  %110 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 0
  store i8* %109, i8** %110, align 8, !tbaa !16
  %111 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 1
  %112 = icmp eq i8* %109, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %105
  %114 = getelementptr inbounds i8, i8* %109, i64 1023
  store i8 0, i8* %114, align 1, !tbaa !11
  br label %115

115:                                              ; preds = %105, %113
  %116 = phi i8* [ %114, %113 ], [ null, %105 ]
  %117 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 2
  store i8* %116, i8** %117, align 8
  %118 = call i8* @halide_string_to_string(i8* %109, i8* %116, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0)) #4
  %119 = call i8* @halide_string_to_string(i8* %118, i8* %116, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #4
  %120 = sext i32 %100 to i64
  %121 = call i8* @halide_int64_to_string(i8* %119, i8* %116, i64 %120, i32 1) #4
  store i8* %121, i8** %111, align 8, !tbaa !17
  %122 = call i8* @halide_string_to_string(i8* %121, i8* %116, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #4
  %123 = call i32 @eglGetError() #4
  %124 = sext i32 %123 to i64
  %125 = call i8* @halide_int64_to_string(i8* %122, i8* %116, i64 %124, i32 1) #4
  %126 = call i8* @halide_string_to_string(i8* %125, i8* %116, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)) #4
  %127 = load i32, i32* %8, align 4, !tbaa !3
  %128 = sext i32 %127 to i64
  %129 = call i8* @halide_int64_to_string(i8* %126, i8* %116, i64 %128, i32 1) #4
  br i1 %112, label %130, label %131

130:                                              ; preds = %115
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #4
  br label %139

131:                                              ; preds = %115
  %132 = ptrtoint i8* %129 to i64
  %133 = ptrtoint i8* %109 to i64
  %134 = add i64 %132, 1
  %135 = sub i64 %134, %133
  %136 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %109, i64 %135) #4
  %137 = load i8*, i8** %107, align 8, !tbaa !12
  %138 = load i8*, i8** %110, align 8, !tbaa !16
  call void @halide_error(i8* %137, i8* %138) #4
  br label %139

139:                                              ; preds = %131, %130
  %140 = load i8, i8* %108, align 8, !tbaa !15, !range !18
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %139
  %143 = load i8*, i8** %110, align 8, !tbaa !16
  call void @free(i8* %143) #4
  br label %144

144:                                              ; preds = %139, %142
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %106) #5
  br label %238

145:                                              ; preds = %94
  %146 = bitcast [3 x i32]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %146) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %146, i8* nonnull align 4 dereferenceable(12) bitcast ([3 x i32]* @__const.halide_opengl_create_context.context_attribs to i8*), i64 12, i1 false)
  %147 = load i8*, i8** %7, align 8, !tbaa !7
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %149 = call i8* @eglCreateContext(i8* %95, i8* %147, i8* null, i32* nonnull %148) #4
  %150 = icmp eq i8* %149, null
  br i1 %150, label %151, label %170

151:                                              ; preds = %145
  %152 = call i8* @malloc(i64 1024) #4
  %153 = icmp eq i8* %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds i8, i8* %152, i64 1023
  store i8 0, i8* %155, align 1, !tbaa !11
  br label %156

156:                                              ; preds = %151, %154
  %157 = phi i8* [ %155, %154 ], [ null, %151 ]
  %158 = call i8* @halide_string_to_string(i8* %152, i8* %157, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0)) #4
  %159 = call i32 @eglGetError() #4
  %160 = sext i32 %159 to i64
  %161 = call i8* @halide_int64_to_string(i8* %158, i8* %157, i64 %160, i32 1) #4
  br i1 %153, label %162, label %163

162:                                              ; preds = %156
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #4
  br label %169

163:                                              ; preds = %156
  %164 = ptrtoint i8* %161 to i64
  %165 = ptrtoint i8* %152 to i64
  %166 = add i64 %164, 1
  %167 = sub i64 %166, %165
  %168 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %152, i64 %167) #4
  call void @halide_error(i8* %0, i8* nonnull %152) #4
  br label %169

169:                                              ; preds = %163, %162
  call void @free(i8* %152) #4
  br label %236

170:                                              ; preds = %145
  %171 = bitcast [5 x i32]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %171) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(20) %171, i8* nonnull align 4 dereferenceable(20) bitcast ([5 x i32]* @__const.halide_opengl_create_context.surface_attribs to i8*), i64 20, i1 false)
  %172 = load i8*, i8** %7, align 8, !tbaa !7
  %173 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %174 = call i8* @eglCreatePbufferSurface(i8* %95, i8* %172, i32* nonnull %173) #4
  %175 = icmp eq i8* %174, null
  br i1 %175, label %176, label %195

176:                                              ; preds = %170
  %177 = call i8* @malloc(i64 1024) #4
  %178 = icmp eq i8* %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %177, i64 1023
  store i8 0, i8* %180, align 1, !tbaa !11
  br label %181

181:                                              ; preds = %176, %179
  %182 = phi i8* [ %180, %179 ], [ null, %176 ]
  %183 = call i8* @halide_string_to_string(i8* %177, i8* %182, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0)) #4
  %184 = call i32 @eglGetError() #4
  %185 = sext i32 %184 to i64
  %186 = call i8* @halide_int64_to_string(i8* %183, i8* %182, i64 %185, i32 1) #4
  br i1 %178, label %187, label %188

187:                                              ; preds = %181
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #4
  br label %194

188:                                              ; preds = %181
  %189 = ptrtoint i8* %186 to i64
  %190 = ptrtoint i8* %177 to i64
  %191 = add i64 %189, 1
  %192 = sub i64 %191, %190
  %193 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %177, i64 %192) #4
  call void @halide_error(i8* %0, i8* nonnull %177) #4
  br label %194

194:                                              ; preds = %188, %187
  call void @free(i8* %177) #4
  br label %234

195:                                              ; preds = %170
  %196 = call i32 @eglMakeCurrent(i8* %95, i8* nonnull %174, i8* nonnull %174, i8* nonnull %149) #4
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %234, label %198

198:                                              ; preds = %195
  %199 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %199) #5
  %200 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 3
  store i8* %0, i8** %200, align 8, !tbaa !12
  %201 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 4
  store i8 1, i8* %201, align 8, !tbaa !15
  %202 = call i8* @malloc(i64 1024) #4
  %203 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 0
  store i8* %202, i8** %203, align 8, !tbaa !16
  %204 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 1
  %205 = icmp eq i8* %202, null
  br i1 %205, label %208, label %206

206:                                              ; preds = %198
  %207 = getelementptr inbounds i8, i8* %202, i64 1023
  store i8 0, i8* %207, align 1, !tbaa !11
  br label %208

208:                                              ; preds = %198, %206
  %209 = phi i8* [ %207, %206 ], [ null, %198 ]
  %210 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 2
  store i8* %209, i8** %210, align 8
  %211 = call i8* @halide_string_to_string(i8* %202, i8* %209, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0)) #4
  store i8* %211, i8** %204, align 8, !tbaa !17
  %212 = call i8* @halide_string_to_string(i8* %211, i8* %209, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #4
  %213 = sext i32 %196 to i64
  %214 = call i8* @halide_int64_to_string(i8* %212, i8* %209, i64 %213, i32 1) #4
  %215 = call i8* @halide_string_to_string(i8* %214, i8* %209, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #4
  %216 = call i32 @eglGetError() #4
  %217 = sext i32 %216 to i64
  %218 = call i8* @halide_int64_to_string(i8* %215, i8* %209, i64 %217, i32 1) #4
  br i1 %205, label %219, label %220

219:                                              ; preds = %208
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #4
  br label %228

220:                                              ; preds = %208
  %221 = ptrtoint i8* %218 to i64
  %222 = ptrtoint i8* %202 to i64
  %223 = add i64 %221, 1
  %224 = sub i64 %223, %222
  %225 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %202, i64 %224) #4
  %226 = load i8*, i8** %200, align 8, !tbaa !12
  %227 = load i8*, i8** %203, align 8, !tbaa !16
  call void @halide_error(i8* %226, i8* %227) #4
  br label %228

228:                                              ; preds = %220, %219
  %229 = load i8, i8* %201, align 8, !tbaa !15, !range !18
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %228
  %232 = load i8*, i8** %203, align 8, !tbaa !16
  call void @free(i8* %232) #4
  br label %233

233:                                              ; preds = %228, %231
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %199) #5
  br label %234

234:                                              ; preds = %195, %233, %194
  %235 = phi i32 [ -1, %194 ], [ -1, %233 ], [ 0, %195 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %171) #5
  br label %236

236:                                              ; preds = %234, %169
  %237 = phi i32 [ -1, %169 ], [ %235, %234 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %146) #5
  br label %238

238:                                              ; preds = %236, %144
  %239 = phi i32 [ -1, %144 ], [ %237, %236 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %98) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %97) #5
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %96) #5
  br label %240

240:                                              ; preds = %25, %21, %92, %238, %1
  %241 = phi i32 [ 0, %1 ], [ %239, %238 ], [ 1, %92 ], [ 1, %21 ], [ 1, %25 ]
  ret i32 %241
}

declare i8* @eglGetCurrentContext() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @eglGetDisplay(i8*) local_unnamed_addr #1

declare i32 @eglInitialize(i8*, i32*, i32*) local_unnamed_addr #1

declare i8* @eglGetProcAddress(i8*) local_unnamed_addr #1

declare i32 @eglGetError() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @eglChooseConfig(i8*, i32*, i8**, i32, i32*) local_unnamed_addr #1

declare i8* @eglCreateContext(i8*, i8*, i8*, i32*) local_unnamed_addr #1

declare i8* @eglCreatePbufferSurface(i8*, i8*, i32*) local_unnamed_addr #1

declare i32 @eglMakeCurrent(i8*, i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak i8* @halide_opengl_get_proc_address(i8* %0, i8* %1) local_unnamed_addr #3 {
  %3 = tail call i8* @eglGetProcAddress(i8* %1) #4
  ret i8* %3
}

declare i8* @malloc(i64) local_unnamed_addr #1

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #1

declare void @free(i8*) local_unnamed_addr #1

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #1

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #1

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #1

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !8, i64 24}
!13 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEE", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !14, i64 32, !5, i64 33}
!14 = !{!"bool", !5, i64 0}
!15 = !{!13, !14, i64 32}
!16 = !{!13, !8, i64 0}
!17 = !{!13, !8, i64 8}
!18 = !{i8 0, i8 2}
