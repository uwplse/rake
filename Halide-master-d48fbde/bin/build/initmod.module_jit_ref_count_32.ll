; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/module_jit_ref_count.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/module_jit_ref_count.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@halide_jit_module_argument = weak local_unnamed_addr global i8* null, align 4
@halide_jit_module_adjust_ref_count = weak local_unnamed_addr global void (i8*, i32)* null, align 4

; Function Attrs: nounwind mustprogress
define weak void @halide_use_jit_module() local_unnamed_addr #0 {
  %1 = load void (i8*, i32)*, void (i8*, i32)** @halide_jit_module_adjust_ref_count, align 4, !tbaa !3
  %2 = icmp eq void (i8*, i32)* %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load i8*, i8** @halide_jit_module_argument, align 4, !tbaa !3
  tail call void %1(i8* %4, i32 1) #1
  br label %5

5:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @halide_release_jit_module() local_unnamed_addr #0 {
  %1 = load void (i8*, i32)*, void (i8*, i32)** @halide_jit_module_adjust_ref_count, align 4, !tbaa !3
  %2 = icmp eq void (i8*, i32)* %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load i8*, i8** @halide_jit_module_argument, align 4, !tbaa !3
  tail call void %1(i8* %4, i32 -1) #1
  br label %5

5:                                                ; preds = %0, %3
  ret void
}

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
