; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opengl_egl_context.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opengl_egl_context.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>

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
  %2 = alloca [32 x i8*], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [13 x i32], align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca [5 x i32], align 4
  %12 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %13 = tail call i8* @eglGetCurrentContext() #4
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %244

15:                                               ; preds = %1
  %16 = tail call i8* @eglGetDisplay(i8* null) #4
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @eglInitialize(i8* nonnull %16, i32* null, i32* null) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %94

21:                                               ; preds = %18, %15
  %22 = tail call i8* @eglGetProcAddress(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #4
  %23 = bitcast i8* %22 to i32 (i32, i8**, i32*)*
  %24 = icmp eq i8* %22, null
  br i1 %24, label %244, label %25

25:                                               ; preds = %21
  %26 = tail call i8* @eglGetProcAddress(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0)) #4
  %27 = bitcast i8* %26 to i8* (i32, i8*, i32*)*
  %28 = icmp eq i8* %26, null
  br i1 %28, label %244, label %29

29:                                               ; preds = %25
  %30 = bitcast [32 x i8*]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %30) #5
  %31 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #5
  store i32 0, i32* %3, align 4, !tbaa !3
  %32 = tail call i32 @eglGetError() #4
  %33 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i32 0, i32 0
  %34 = call i32 %23(i32 32, i8** nonnull %33, i32* nonnull %3) #4
  %35 = icmp eq i32 %34, 0
  %36 = icmp ne i32 %32, 12288
  %37 = or i1 %36, %35
  br i1 %37, label %92, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %3, align 4, !tbaa !3
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %38
  %42 = bitcast i32* %4 to i8*
  %43 = bitcast i32* %5 to i8*
  br label %44

44:                                               ; preds = %41, %60
  %45 = phi i32 [ 0, %41 ], [ %62, %60 ]
  %46 = phi i32 [ 0, %41 ], [ %61, %60 ]
  %47 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i32 0, i32 %45
  %48 = load i8*, i8** %47, align 4, !tbaa !7
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
  br i1 %59, label %65, label %60

60:                                               ; preds = %44, %54
  %61 = phi i32 [ %55, %54 ], [ %46, %44 ]
  %62 = add nuw nsw i32 %45, 1
  %63 = load i32, i32* %3, align 4, !tbaa !3
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %44, label %65, !llvm.loop !9

65:                                               ; preds = %54, %60, %38
  %66 = phi i32 [ 0, %38 ], [ %61, %60 ], [ 1, %54 ]
  %67 = phi i8* [ %16, %38 ], [ %49, %60 ], [ %49, %54 ]
  %68 = call i32 @eglGetError() #4
  %69 = icmp ne i32 %68, 12288
  %70 = icmp ne i32 %66, 1
  %71 = or i1 %70, %69
  br i1 %71, label %72, label %93

72:                                               ; preds = %65
  %73 = call i8* @malloc(i32 1024) #4
  %74 = icmp eq i8* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds i8, i8* %73, i32 1023
  store i8 0, i8* %76, align 1, !tbaa !11
  br label %77

77:                                               ; preds = %72, %75
  %78 = phi i8* [ %76, %75 ], [ null, %72 ]
  %79 = call i8* @halide_string_to_string(i8* %73, i8* %78, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0)) #4
  %80 = call i32 @eglGetError() #4
  %81 = sext i32 %80 to i64
  %82 = call i8* @halide_int64_to_string(i8* %79, i8* %78, i64 %81, i32 1) #4
  br i1 %74, label %83, label %84

83:                                               ; preds = %77
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)) #4
  br label %91

84:                                               ; preds = %77
  %85 = ptrtoint i8* %82 to i32
  %86 = ptrtoint i8* %73 to i32
  %87 = add i32 %85, 1
  %88 = sub i32 %87, %86
  %89 = sext i32 %88 to i64
  %90 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %73, i64 %89) #4
  call void @halide_error(i8* %0, i8* nonnull %73) #4
  br label %91

91:                                               ; preds = %84, %83
  call void @free(i8* %73) #4
  br label %92

92:                                               ; preds = %29, %91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #5
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %30) #5
  br label %244

93:                                               ; preds = %65
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #5
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %30) #5
  br label %94

94:                                               ; preds = %93, %18
  %95 = phi i8* [ %67, %93 ], [ %16, %18 ]
  %96 = bitcast [13 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %96) #5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(52) %96, i8* nonnull align 4 dereferenceable(52) bitcast ([13 x i32]* @__const.halide_opengl_create_context.attribs to i8*), i32 52, i1 false)
  %97 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %97) #5
  %98 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %98) #5
  %99 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i32 0, i32 0
  %100 = call i32 @eglChooseConfig(i8* %95, i32* nonnull %99, i8** nonnull %7, i32 1, i32* nonnull %8) #4
  %101 = icmp ne i32 %100, 1
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 1
  %104 = or i1 %101, %103
  br i1 %104, label %105, label %146

105:                                              ; preds = %94
  %106 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %106) #5
  %107 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 3
  store i8* %0, i8** %107, align 4, !tbaa !12
  %108 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 4
  store i8 1, i8* %108, align 4, !tbaa !15
  %109 = call i8* @malloc(i32 1024) #4
  %110 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 0
  store i8* %109, i8** %110, align 4, !tbaa !16
  %111 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 1
  %112 = icmp eq i8* %109, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %105
  %114 = getelementptr inbounds i8, i8* %109, i32 1023
  store i8 0, i8* %114, align 1, !tbaa !11
  br label %115

115:                                              ; preds = %105, %113
  %116 = phi i8* [ %114, %113 ], [ null, %105 ]
  %117 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 2
  store i8* %116, i8** %117, align 4
  %118 = call i8* @halide_string_to_string(i8* %109, i8* %116, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0)) #4
  %119 = call i8* @halide_string_to_string(i8* %118, i8* %116, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #4
  %120 = sext i32 %100 to i64
  %121 = call i8* @halide_int64_to_string(i8* %119, i8* %116, i64 %120, i32 1) #4
  store i8* %121, i8** %111, align 4, !tbaa !17
  %122 = call i8* @halide_string_to_string(i8* %121, i8* %116, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)) #4
  %123 = call i32 @eglGetError() #4
  %124 = sext i32 %123 to i64
  %125 = call i8* @halide_int64_to_string(i8* %122, i8* %116, i64 %124, i32 1) #4
  %126 = call i8* @halide_string_to_string(i8* %125, i8* %116, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0)) #4
  %127 = load i32, i32* %8, align 4, !tbaa !3
  %128 = sext i32 %127 to i64
  %129 = call i8* @halide_int64_to_string(i8* %126, i8* %116, i64 %128, i32 1) #4
  br i1 %112, label %130, label %131

130:                                              ; preds = %115
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)) #4
  br label %140

131:                                              ; preds = %115
  %132 = ptrtoint i8* %129 to i32
  %133 = ptrtoint i8* %109 to i32
  %134 = add i32 %132, 1
  %135 = sub i32 %134, %133
  %136 = sext i32 %135 to i64
  %137 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %109, i64 %136) #4
  %138 = load i8*, i8** %107, align 4, !tbaa !12
  %139 = load i8*, i8** %110, align 4, !tbaa !16
  call void @halide_error(i8* %138, i8* %139) #4
  br label %140

140:                                              ; preds = %131, %130
  %141 = load i8, i8* %108, align 4, !tbaa !15, !range !18
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = load i8*, i8** %110, align 4, !tbaa !16
  call void @free(i8* %144) #4
  br label %145

145:                                              ; preds = %140, %143
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %106) #5
  br label %242

146:                                              ; preds = %94
  %147 = bitcast [3 x i32]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %147) #5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(12) %147, i8* nonnull align 4 dereferenceable(12) bitcast ([3 x i32]* @__const.halide_opengl_create_context.context_attribs to i8*), i32 12, i1 false)
  %148 = load i8*, i8** %7, align 4, !tbaa !7
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i32 0, i32 0
  %150 = call i8* @eglCreateContext(i8* %95, i8* %148, i8* null, i32* nonnull %149) #4
  %151 = icmp eq i8* %150, null
  br i1 %151, label %152, label %172

152:                                              ; preds = %146
  %153 = call i8* @malloc(i32 1024) #4
  %154 = icmp eq i8* %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds i8, i8* %153, i32 1023
  store i8 0, i8* %156, align 1, !tbaa !11
  br label %157

157:                                              ; preds = %152, %155
  %158 = phi i8* [ %156, %155 ], [ null, %152 ]
  %159 = call i8* @halide_string_to_string(i8* %153, i8* %158, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0)) #4
  %160 = call i32 @eglGetError() #4
  %161 = sext i32 %160 to i64
  %162 = call i8* @halide_int64_to_string(i8* %159, i8* %158, i64 %161, i32 1) #4
  br i1 %154, label %163, label %164

163:                                              ; preds = %157
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)) #4
  br label %171

164:                                              ; preds = %157
  %165 = ptrtoint i8* %162 to i32
  %166 = ptrtoint i8* %153 to i32
  %167 = add i32 %165, 1
  %168 = sub i32 %167, %166
  %169 = sext i32 %168 to i64
  %170 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %153, i64 %169) #4
  call void @halide_error(i8* %0, i8* nonnull %153) #4
  br label %171

171:                                              ; preds = %164, %163
  call void @free(i8* %153) #4
  br label %240

172:                                              ; preds = %146
  %173 = bitcast [5 x i32]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %173) #5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(20) %173, i8* nonnull align 4 dereferenceable(20) bitcast ([5 x i32]* @__const.halide_opengl_create_context.surface_attribs to i8*), i32 20, i1 false)
  %174 = load i8*, i8** %7, align 4, !tbaa !7
  %175 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i32 0, i32 0
  %176 = call i8* @eglCreatePbufferSurface(i8* %95, i8* %174, i32* nonnull %175) #4
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %198

178:                                              ; preds = %172
  %179 = call i8* @malloc(i32 1024) #4
  %180 = icmp eq i8* %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds i8, i8* %179, i32 1023
  store i8 0, i8* %182, align 1, !tbaa !11
  br label %183

183:                                              ; preds = %178, %181
  %184 = phi i8* [ %182, %181 ], [ null, %178 ]
  %185 = call i8* @halide_string_to_string(i8* %179, i8* %184, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0)) #4
  %186 = call i32 @eglGetError() #4
  %187 = sext i32 %186 to i64
  %188 = call i8* @halide_int64_to_string(i8* %185, i8* %184, i64 %187, i32 1) #4
  br i1 %180, label %189, label %190

189:                                              ; preds = %183
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)) #4
  br label %197

190:                                              ; preds = %183
  %191 = ptrtoint i8* %188 to i32
  %192 = ptrtoint i8* %179 to i32
  %193 = add i32 %191, 1
  %194 = sub i32 %193, %192
  %195 = sext i32 %194 to i64
  %196 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %179, i64 %195) #4
  call void @halide_error(i8* %0, i8* nonnull %179) #4
  br label %197

197:                                              ; preds = %190, %189
  call void @free(i8* %179) #4
  br label %238

198:                                              ; preds = %172
  %199 = call i32 @eglMakeCurrent(i8* %95, i8* nonnull %176, i8* nonnull %176, i8* nonnull %150) #4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %238, label %201

201:                                              ; preds = %198
  %202 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %202) #5
  %203 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 3
  store i8* %0, i8** %203, align 4, !tbaa !12
  %204 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 4
  store i8 1, i8* %204, align 4, !tbaa !15
  %205 = call i8* @malloc(i32 1024) #4
  %206 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 0
  store i8* %205, i8** %206, align 4, !tbaa !16
  %207 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 1
  %208 = icmp eq i8* %205, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %201
  %210 = getelementptr inbounds i8, i8* %205, i32 1023
  store i8 0, i8* %210, align 1, !tbaa !11
  br label %211

211:                                              ; preds = %201, %209
  %212 = phi i8* [ %210, %209 ], [ null, %201 ]
  %213 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 2
  store i8* %212, i8** %213, align 4
  %214 = call i8* @halide_string_to_string(i8* %205, i8* %212, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0)) #4
  store i8* %214, i8** %207, align 4, !tbaa !17
  %215 = call i8* @halide_string_to_string(i8* %214, i8* %212, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #4
  %216 = sext i32 %199 to i64
  %217 = call i8* @halide_int64_to_string(i8* %215, i8* %212, i64 %216, i32 1) #4
  %218 = call i8* @halide_string_to_string(i8* %217, i8* %212, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)) #4
  %219 = call i32 @eglGetError() #4
  %220 = sext i32 %219 to i64
  %221 = call i8* @halide_int64_to_string(i8* %218, i8* %212, i64 %220, i32 1) #4
  br i1 %208, label %222, label %223

222:                                              ; preds = %211
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)) #4
  br label %232

223:                                              ; preds = %211
  %224 = ptrtoint i8* %221 to i32
  %225 = ptrtoint i8* %205 to i32
  %226 = add i32 %224, 1
  %227 = sub i32 %226, %225
  %228 = sext i32 %227 to i64
  %229 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %205, i64 %228) #4
  %230 = load i8*, i8** %203, align 4, !tbaa !12
  %231 = load i8*, i8** %206, align 4, !tbaa !16
  call void @halide_error(i8* %230, i8* %231) #4
  br label %232

232:                                              ; preds = %223, %222
  %233 = load i8, i8* %204, align 4, !tbaa !15, !range !18
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %232
  %236 = load i8*, i8** %206, align 4, !tbaa !16
  call void @free(i8* %236) #4
  br label %237

237:                                              ; preds = %232, %235
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %202) #5
  br label %238

238:                                              ; preds = %198, %237, %197
  %239 = phi i32 [ -1, %197 ], [ -1, %237 ], [ 0, %198 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %173) #5
  br label %240

240:                                              ; preds = %238, %171
  %241 = phi i32 [ -1, %171 ], [ %239, %238 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %147) #5
  br label %242

242:                                              ; preds = %240, %145
  %243 = phi i32 [ -1, %145 ], [ %241, %240 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %98) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %97) #5
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %96) #5
  br label %244

244:                                              ; preds = %25, %21, %92, %242, %1
  %245 = phi i32 [ 0, %1 ], [ %243, %242 ], [ 1, %92 ], [ 1, %21 ], [ 1, %25 ]
  ret i32 %245
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
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

declare i32 @eglChooseConfig(i8*, i32*, i8**, i32, i32*) local_unnamed_addr #1

declare i8* @eglCreateContext(i8*, i8*, i8*, i32*) local_unnamed_addr #1

declare i8* @eglCreatePbufferSurface(i8*, i8*, i32*) local_unnamed_addr #1

declare i32 @eglMakeCurrent(i8*, i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak i8* @halide_opengl_get_proc_address(i8* %0, i8* %1) local_unnamed_addr #3 {
  %3 = tail call i8* @eglGetProcAddress(i8* %1) #4
  ret i8* %3
}

declare i8* @malloc(i32) local_unnamed_addr #1

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
!12 = !{!13, !8, i64 12}
!13 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !14, i64 16, !5, i64 17}
!14 = !{!"bool", !5, i64 0}
!15 = !{!13, !14, i64 16}
!16 = !{!13, !8, i64 0}
!17 = !{!13, !8, i64 4}
!18 = !{i8 0, i8 2}
