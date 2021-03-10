; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/osx_clock.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/osx_clock.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.mach_timebase_info = type { i32, i32 }

@_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE = weak local_unnamed_addr global i8 0, align 1
@_ZN6Halide7Runtime8Internal22halide_reference_clockE = weak local_unnamed_addr global i64 0, align 8
@_ZN6Halide7Runtime8Internal20halide_timebase_infoE = weak global %struct.mach_timebase_info zeroinitializer, align 4

; Function Attrs: nounwind mustprogress
define weak i32 @halide_start_clock(i8* %0) local_unnamed_addr #0 {
  %2 = load i8, i8* @_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE, align 1, !tbaa !3, !range !7
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call i32 @mach_timebase_info(%struct.mach_timebase_info* nonnull @_ZN6Halide7Runtime8Internal20halide_timebase_infoE) #2
  %6 = tail call i64 @mach_absolute_time() #2
  store i64 %6, i64* @_ZN6Halide7Runtime8Internal22halide_reference_clockE, align 8, !tbaa !8
  store i8 1, i8* @_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE, align 1, !tbaa !3
  br label %7

7:                                                ; preds = %4, %1
  ret i32 0
}

declare i32 @mach_timebase_info(%struct.mach_timebase_info*) local_unnamed_addr #1

declare i64 @mach_absolute_time() local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak i64 @halide_current_time_ns(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i64 @mach_absolute_time() #2
  %3 = load i64, i64* @_ZN6Halide7Runtime8Internal22halide_reference_clockE, align 8, !tbaa !8
  %4 = sub i64 %2, %3
  %5 = load i32, i32* getelementptr inbounds (%struct.mach_timebase_info, %struct.mach_timebase_info* @_ZN6Halide7Runtime8Internal20halide_timebase_infoE, i64 0, i32 0), align 4, !tbaa !10
  %6 = zext i32 %5 to i64
  %7 = mul i64 %4, %6
  %8 = load i32, i32* getelementptr inbounds (%struct.mach_timebase_info, %struct.mach_timebase_info* @_ZN6Halide7Runtime8Internal20halide_timebase_infoE, i64 0, i32 1), align 4, !tbaa !13
  %9 = zext i32 %8 to i64
  %10 = udiv i64 %7, %9
  ret i64 %10
}

; Function Attrs: nounwind mustprogress
define weak void @halide_sleep_ms(i8* %0, i32 %1) local_unnamed_addr #0 {
  %3 = mul nsw i32 %1, 1000
  %4 = tail call i32 @usleep(i32 %3) #2
  ret void
}

declare i32 @usleep(i32) local_unnamed_addr #1

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
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTS18mach_timebase_info", !12, i64 0, !12, i64 4}
!12 = !{!"int", !5, i64 0}
!13 = !{!11, !12, i64 4}
