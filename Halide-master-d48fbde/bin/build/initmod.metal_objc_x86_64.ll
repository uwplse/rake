; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal_objc_x86.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/metal_objc_x86.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder" = type opaque
%struct.MTLSize = type { i64, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"NSAutoreleasePool\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alloc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"drain\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"retain\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"NSString\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"initWithBytesNoCopy:length:encoding:freeWhenDone:\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%@\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"dispatchThreadgroups:threadsPerThreadgroup:\00", align 1

; Function Attrs: nounwind mustprogress
define weak i8* @_ZN6Halide7Runtime8Internal23create_autorelease_poolEv() local_unnamed_addr #0 {
  %1 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #2
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #2
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %1, i8* %2) #2
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #2
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #2
  ret i8* %5
}

declare void @objc_msgSend() local_unnamed_addr #1

declare i8* @objc_getClass(i8*) local_unnamed_addr #1

declare i8* @sel_getUid(i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal22drain_autorelease_poolEPv(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #2
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #2
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal16retain_ns_objectEPv(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #2
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #2
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #2
  %3 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %0, i8* %2) #2
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %0, i64 %1) local_unnamed_addr #0 {
  %3 = tail call i8* @objc_getClass(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #2
  %4 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #2
  %5 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*)*)(i8* %3, i8* %4) #2
  %6 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0)) #2
  %7 = tail call i8* bitcast (void ()* @objc_msgSend to i8* (i8*, i8*, i8*, i64, i64, i8)*)(i8* %5, i8* %6, i8* %0, i64 %1, i64 4, i8 zeroext 0) #2
  ret i8* %7
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal18ns_log_utf8_stringEPKc(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 2) #3
  %3 = tail call i64 @strlen(i8* %0) #2
  %4 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* %0, i64 %3) #3
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %4) #2
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %4) #3
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #3
  ret void
}

declare i64 @strlen(i8*) local_unnamed_addr #1

declare void @NSLog(i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal13ns_log_objectEPv(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i8* @_ZN6Halide7Runtime8Internal24wrap_string_as_ns_stringEPKcm(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 2) #3
  tail call void (i8*, ...) @NSLog(i8* %2, i8* %0) #2
  tail call void @_ZN6Halide7Runtime8Internal17release_ns_objectEPv(i8* %2) #3
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal5Metal21dispatch_threadgroupsEPNS2_27mtl_compute_command_encoderEiiiiii(%"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %8 = alloca %struct.MTLSize, align 8
  %9 = alloca %struct.MTLSize, align 8
  %10 = sext i32 %1 to i64
  %11 = sext i32 %2 to i64
  %12 = sext i32 %3 to i64
  %13 = sext i32 %4 to i64
  %14 = sext i32 %5 to i64
  %15 = sext i32 %6 to i64
  %16 = bitcast %"struct.Halide::Runtime::Internal::Metal::mtl_compute_command_encoder"* %0 to i8*
  %17 = tail call i8* @sel_getUid(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0)) #2
  %18 = getelementptr inbounds %struct.MTLSize, %struct.MTLSize* %8, i64 0, i32 0
  store i64 %10, i64* %18, align 8, !tbaa.struct !3
  %19 = getelementptr inbounds %struct.MTLSize, %struct.MTLSize* %8, i64 0, i32 1
  store i64 %11, i64* %19, align 8, !tbaa.struct !8
  %20 = getelementptr inbounds %struct.MTLSize, %struct.MTLSize* %8, i64 0, i32 2
  store i64 %12, i64* %20, align 8, !tbaa.struct !9
  %21 = getelementptr inbounds %struct.MTLSize, %struct.MTLSize* %9, i64 0, i32 0
  store i64 %13, i64* %21, align 8, !tbaa.struct !3
  %22 = getelementptr inbounds %struct.MTLSize, %struct.MTLSize* %9, i64 0, i32 1
  store i64 %14, i64* %22, align 8, !tbaa.struct !8
  %23 = getelementptr inbounds %struct.MTLSize, %struct.MTLSize* %9, i64 0, i32 2
  store i64 %15, i64* %23, align 8, !tbaa.struct !9
  tail call void bitcast (void ()* @objc_msgSend to void (i8*, i8*, %struct.MTLSize*, %struct.MTLSize*)*)(i8* %16, i8* %17, %struct.MTLSize* nonnull byval(%struct.MTLSize) align 8 %8, %struct.MTLSize* nonnull byval(%struct.MTLSize) align 8 %9) #2
  ret void
}

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{i64 0, i64 8, !4, i64 8, i64 8, !4, i64 16, i64 8, !4}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{i64 0, i64 8, !4, i64 8, i64 8, !4}
!9 = !{i64 0, i64 8, !4}
