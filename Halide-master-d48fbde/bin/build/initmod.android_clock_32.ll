; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/android_clock.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/android_clock.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.timespec = type { i32, i32 }

@halide_reference_clock_inited = weak local_unnamed_addr global i8 0, align 1
@halide_reference_clock = weak global %struct.timespec zeroinitializer, align 4

; Function Attrs: nounwind mustprogress
define weak i32 @halide_start_clock(i8* %0) local_unnamed_addr #0 {
  %2 = load i8, i8* @halide_reference_clock_inited, align 1, !tbaa !3, !range !7
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (i32, ...) @syscall(i32 263, i32 0, %struct.timespec* nonnull @halide_reference_clock) #3
  store i8 1, i8* @halide_reference_clock_inited, align 1, !tbaa !3
  br label %6

6:                                                ; preds = %4, %1
  ret i32 0
}

declare i32 @syscall(i32, ...) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak i64 @halide_current_time_ns(i8* %0) local_unnamed_addr #0 {
  %2 = alloca %struct.timespec, align 4
  %3 = bitcast %struct.timespec* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  %4 = call i32 (i32, ...) @syscall(i32 263, i32 0, %struct.timespec* nonnull %2) #3
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !8
  %7 = load i32, i32* getelementptr inbounds (%struct.timespec, %struct.timespec* @halide_reference_clock, i32 0, i32 0), align 4, !tbaa !8
  %8 = sub nsw i32 %6, %7
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 1000000000
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1
  %12 = load i32, i32* %11, align 4, !tbaa !11
  %13 = load i32, i32* getelementptr inbounds (%struct.timespec, %struct.timespec* @halide_reference_clock, i32 0, i32 1), align 4, !tbaa !11
  %14 = sub nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %10, %15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  ret i64 %16
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak void @halide_sleep_ms(i8* %0, i32 %1) local_unnamed_addr #0 {
  %3 = mul nsw i32 %1, 1000
  %4 = tail call i32 @usleep(i32 %3) #3
  ret void
}

declare i32 @usleep(i32) local_unnamed_addr #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS8timespec", !10, i64 0, !10, i64 4}
!10 = !{!"long", !5, i64 0}
!11 = !{!9, !10, i64 4}
