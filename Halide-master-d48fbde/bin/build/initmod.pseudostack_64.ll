; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/pseudostack.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/pseudostack.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_pseudostack_slot_t = type { i8*, i64 }

@llvm.used = appending global [2 x i8*] [i8* bitcast (i8* (i8*, %struct.halide_pseudostack_slot_t*, i64)* @pseudostack_alloc to i8*), i8* bitcast (void (i8*, i8*)* @pseudostack_free to i8*)], section "llvm.metadata"

; Function Attrs: alwaysinline nounwind mustprogress
define weak i8* @pseudostack_alloc(i8* %0, %struct.halide_pseudostack_slot_t* %1, i64 %2) #0 {
  %4 = getelementptr inbounds %struct.halide_pseudostack_slot_t, %struct.halide_pseudostack_slot_t* %1, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !3
  %6 = icmp ult i64 %5, %2
  %7 = getelementptr inbounds %struct.halide_pseudostack_slot_t, %struct.halide_pseudostack_slot_t* %1, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !9
  br i1 %6, label %9, label %14, !prof !10

9:                                                ; preds = %3
  %10 = icmp eq i8* %8, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @halide_free(i8* %0, i8* nonnull %8) #2
  br label %12

12:                                               ; preds = %11, %9
  %13 = tail call i8* @halide_malloc(i8* %0, i64 %2) #2
  store i8* %13, i8** %7, align 8, !tbaa !9
  store i64 %2, i64* %4, align 8, !tbaa !3
  br label %14

14:                                               ; preds = %3, %12
  %15 = phi i8* [ %13, %12 ], [ %8, %3 ]
  ret i8* %15
}

declare void @halide_free(i8*, i8*) local_unnamed_addr #1

declare i8* @halide_malloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: alwaysinline nounwind mustprogress
define weak void @pseudostack_free(i8* %0, i8* %1) #0 {
  %3 = getelementptr inbounds i8, i8* %1, i64 8
  %4 = bitcast i8* %3 to i64*
  store i64 0, i64* %4, align 8, !tbaa !3
  %5 = bitcast i8* %1 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !9
  %7 = icmp eq i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @halide_free(i8* %0, i8* nonnull %6) #2
  br label %9

9:                                                ; preds = %8, %2
  store i8* null, i8** %5, align 8, !tbaa !9
  ret void
}

attributes #0 = { alwaysinline nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !8, i64 8}
!4 = !{!"_ZTS25halide_pseudostack_slot_t", !5, i64 0, !8, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"long", !6, i64 0}
!9 = !{!4, !5, i64 0}
!10 = !{!"branch_weights", i32 1, i32 2000}
