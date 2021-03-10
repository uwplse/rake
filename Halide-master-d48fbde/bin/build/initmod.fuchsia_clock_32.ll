; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fuchsia_clock.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fuchsia_clock.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@halide_reference_clock_inited = weak local_unnamed_addr global i8 0, align 1
@halide_reference_clock = weak local_unnamed_addr global i64 0, align 8

; Function Attrs: nounwind mustprogress
define weak i32 @halide_start_clock(i8* %0) local_unnamed_addr #0 {
  %2 = load i8, i8* @halide_reference_clock_inited, align 1, !tbaa !3, !range !7
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i64 @zx_clock_get_monotonic() #2
  store i64 %5, i64* @halide_reference_clock, align 8, !tbaa !8
  store i8 1, i8* @halide_reference_clock_inited, align 1, !tbaa !3
  br label %6

6:                                                ; preds = %4, %1
  ret i32 0
}

declare i64 @zx_clock_get_monotonic() local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak i64 @halide_current_time_ns(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i64 @zx_clock_get_monotonic() #2
  %3 = load i64, i64* @halide_reference_clock, align 8, !tbaa !8
  %4 = sub nsw i64 %2, %3
  ret i64 %4
}

; Function Attrs: nounwind mustprogress
define weak void @halide_sleep_ms(i8* %0, i32 %1) local_unnamed_addr #0 {
  %3 = mul nsw i32 %1, 1000
  %4 = sext i32 %3 to i64
  %5 = tail call i64 @zx_deadline_after(i64 %4) #2
  %6 = tail call i32 @zx_nanosleep(i64 %5) #2
  ret void
}

declare i32 @zx_nanosleep(i64) local_unnamed_addr #1

declare i64 @zx_deadline_after(i64) local_unnamed_addr #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"bool", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i8 0, i8 2}
!8 = !{!9, !9, i64 0}
!9 = !{!"long long", !5, i64 0}
