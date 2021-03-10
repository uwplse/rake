; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_clock.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_clock.cpp"
target datalayout = "e-m:x-p:32:32-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i386-unknown-windows-msvc19.11.0"

@halide_reference_clock_inited = weak dso_local local_unnamed_addr global i8 0, align 1
@halide_reference_clock = weak dso_local global i64 0, align 8
@halide_clock_frequency = weak dso_local global i64 1, align 8

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_start_clock(i8* %0) local_unnamed_addr #0 {
  %2 = load i8, i8* @halide_reference_clock_inited, align 1, !tbaa !3, !range !7
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call x86_stdcallcc zeroext i1 @"\01_QueryPerformanceCounter@4"(i64* nonnull @halide_reference_clock) #3
  %6 = tail call x86_stdcallcc zeroext i1 @"\01_QueryPerformanceFrequency@4"(i64* nonnull @halide_clock_frequency) #3
  store i8 1, i8* @halide_reference_clock_inited, align 1, !tbaa !3
  br label %7

7:                                                ; preds = %4, %1
  ret i32 0
}

declare dso_local x86_stdcallcc zeroext i1 @"\01_QueryPerformanceCounter@4"(i64*) local_unnamed_addr #1

declare dso_local x86_stdcallcc zeroext i1 @"\01_QueryPerformanceFrequency@4"(i64*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @halide_current_time_ns(i8* %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  %4 = call x86_stdcallcc zeroext i1 @"\01_QueryPerformanceCounter@4"(i64* nonnull %2) #3
  %5 = load i64, i64* @halide_reference_clock, align 8, !tbaa !8
  %6 = load i64, i64* %2, align 8, !tbaa !8
  %7 = sub nsw i64 %6, %5
  %8 = load i64, i64* @halide_clock_frequency, align 8, !tbaa !8
  %9 = sitofp i64 %8 to double
  %10 = fdiv double 1.000000e+09, %9
  %11 = sitofp i64 %7 to double
  %12 = fmul double %10, %11
  %13 = fptosi double %12 to i64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  ret i64 %13
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_sleep_ms(i8* %0, i32 %1) local_unnamed_addr #0 {
  tail call x86_stdcallcc void @"\01_Sleep@4"(i32 %1) #3
  ret void
}

declare dso_local x86_stdcallcc void @"\01_Sleep@4"(i32) local_unnamed_addr #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"bool", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i8 0, i8 2}
!8 = !{!9, !9, i64 0}
!9 = !{!"long long", !5, i64 0}
