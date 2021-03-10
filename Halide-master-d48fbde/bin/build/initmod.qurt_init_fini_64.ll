; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_init_fini.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_init_fini.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

@__DTOR_LIST__ = external local_unnamed_addr global i64, align 8
@__CTOR_END__ = external local_unnamed_addr global i64, align 8

; Function Attrs: nounwind
define void @run_dtors() local_unnamed_addr #0 section ".fini.halide" {
  %1 = load i64, i64* @__DTOR_LIST__, align 8, !tbaa !3
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0, %3
  %4 = phi i64 [ %8, %3 ], [ %1, %0 ]
  %5 = phi i64* [ %7, %3 ], [ @__DTOR_LIST__, %0 ]
  %6 = inttoptr i64 %4 to void ()*
  tail call void %6() #1
  %7 = getelementptr inbounds i64, i64* %5, i64 1
  %8 = load i64, i64* %7, align 8, !tbaa !3
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %3

10:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind
define void @run_ctors() local_unnamed_addr #0 section ".init.halide" {
  %1 = load i64, i64* getelementptr (i64, i64* @__CTOR_END__, i64 -1), align 8, !tbaa !3
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0, %3
  %4 = phi i64 [ %8, %3 ], [ %1, %0 ]
  %5 = phi i64* [ %7, %3 ], [ getelementptr (i64, i64* @__CTOR_END__, i64 -1), %0 ]
  %6 = inttoptr i64 %4 to void ()*
  tail call void %6() #1
  %7 = getelementptr inbounds i64, i64* %5, i64 -1
  %8 = load i64, i64* %7, align 8, !tbaa !3
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %3

10:                                               ; preds = %3, %0
  ret void
}

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
