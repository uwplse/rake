; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_allocator.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_allocator.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@_ZN6Halide7Runtime8Internal13custom_mallocE = weak local_unnamed_addr global i8* (i8*, i32)* @halide_default_malloc, align 4
@_ZN6Halide7Runtime8Internal11custom_freeE = weak local_unnamed_addr global void (i8*, i8*)* @halide_default_free, align 4

; Function Attrs: nounwind mustprogress
define weak i8* @halide_default_malloc(i8* %0, i32 %1) #0 {
  %3 = tail call i32 @halide_malloc_alignment() #3
  %4 = add i32 %3, %1
  %5 = tail call i8* @malloc(i32 %4) #3
  %6 = icmp eq i8* %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = ptrtoint i8* %5 to i32
  %9 = add i32 %3, 3
  %10 = add i32 %9, %8
  %11 = sub i32 0, %3
  %12 = and i32 %10, %11
  %13 = inttoptr i32 %12 to i8*
  %14 = inttoptr i32 %12 to i8**
  %15 = getelementptr inbounds i8*, i8** %14, i32 -1
  store i8* %5, i8** %15, align 4, !tbaa !3
  br label %16

16:                                               ; preds = %2, %7
  %17 = phi i8* [ %13, %7 ], [ null, %2 ]
  ret i8* %17
}

declare extern_weak i32 @halide_malloc_alignment() local_unnamed_addr #1

declare i8* @malloc(i32) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak void @halide_default_free(i8* %0, i8* %1) #0 {
  %3 = getelementptr inbounds i8, i8* %1, i32 -4
  %4 = bitcast i8* %3 to i8**
  %5 = load i8*, i8** %4, align 4, !tbaa !3
  tail call void @free(i8* %5) #3
  ret void
}

declare void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind willreturn mustprogress
define weak i8* (i8*, i32)* @halide_set_custom_malloc(i8* (i8*, i32)* %0) local_unnamed_addr #2 {
  %2 = load i8* (i8*, i32)*, i8* (i8*, i32)** @_ZN6Halide7Runtime8Internal13custom_mallocE, align 4, !tbaa !3
  store i8* (i8*, i32)* %0, i8* (i8*, i32)** @_ZN6Halide7Runtime8Internal13custom_mallocE, align 4, !tbaa !3
  ret i8* (i8*, i32)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak void (i8*, i8*)* @halide_set_custom_free(void (i8*, i8*)* %0) local_unnamed_addr #2 {
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal11custom_freeE, align 4, !tbaa !3
  store void (i8*, i8*)* %0, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal11custom_freeE, align 4, !tbaa !3
  ret void (i8*, i8*)* %2
}

; Function Attrs: nounwind mustprogress
define weak i8* @halide_malloc(i8* %0, i32 %1) local_unnamed_addr #0 {
  %3 = load i8* (i8*, i32)*, i8* (i8*, i32)** @_ZN6Halide7Runtime8Internal13custom_mallocE, align 4, !tbaa !3
  %4 = tail call i8* %3(i8* %0, i32 %1) #3
  ret i8* %4
}

; Function Attrs: nounwind mustprogress
define weak void @halide_free(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load void (i8*, i8*)*, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal11custom_freeE, align 4, !tbaa !3
  tail call void %3(i8* %0, i8* %1) #3
  ret void
}

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
