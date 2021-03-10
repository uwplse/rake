; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_error_handler.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_error_handler.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@.str = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@_ZN6Halide7Runtime8Internal13error_handlerE = weak local_unnamed_addr global void (i8*, i8*)* @halide_default_error, align 4

; Function Attrs: nounwind mustprogress
define weak void @halide_default_error(i8* %0, i8* %1) #0 {
  %3 = alloca [4096 x i8], align 1
  %4 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %4) #4
  %5 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 4094
  %6 = call i8* @halide_string_to_string(i8* nonnull %4, i8* nonnull %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #5
  %7 = getelementptr inbounds i8, i8* %6, i32 4094
  %8 = call i8* @halide_string_to_string(i8* %6, i8* nonnull %7, i8* %1) #5
  %9 = getelementptr inbounds i8, i8* %8, i32 -1
  %10 = load i8, i8* %9, align 1, !tbaa !3
  %11 = icmp eq i8 %10, 10
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  store i8 10, i8* %8, align 1, !tbaa !3
  %13 = getelementptr inbounds i8, i8* %8, i32 1
  store i8 0, i8* %13, align 1, !tbaa !3
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i8* [ %13, %12 ], [ %8, %2 ]
  %16 = ptrtoint i8* %15 to i32
  %17 = ptrtoint [4096 x i8]* %3 to i32
  %18 = sub i32 1, %17
  %19 = add i32 %18, %16
  %20 = sext i32 %19 to i64
  %21 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %20) #5
  call void @halide_print(i8* %0, i8* nonnull %4) #5
  call void @abort() #5
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %4) #4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind mustprogress
define weak void @halide_error(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load void (i8*, i8*)*, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal13error_handlerE, align 4, !tbaa !6
  tail call void %3(i8* %0, i8* %1) #5
  ret void
}

; Function Attrs: nounwind willreturn mustprogress
define weak void (i8*, i8*)* @halide_set_error_handler(void (i8*, i8*)* %0) local_unnamed_addr #3 {
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal13error_handlerE, align 4, !tbaa !6
  store void (i8*, i8*)* %0, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal13error_handlerE, align 4, !tbaa !6
  ret void (i8*, i8*)* %2
}

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
