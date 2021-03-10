; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/float16_t.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/float16_t.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

; Function Attrs: nounwind willreturn mustprogress
define weak float @halide_float16_bits_to_float(i16 zeroext %0) local_unnamed_addr #0 {
  %2 = zext i16 %0 to i32
  %3 = and i32 %2, 1023
  %4 = lshr i32 %2, 10
  %5 = and i32 %4, 31
  %6 = icmp eq i32 %5, 0
  %7 = icmp ne i32 %3, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 true), !range !3
  %11 = xor i32 %10, 31
  %12 = shl nuw i32 1, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %3, %13
  %15 = sub nsw i32 23, %11
  %16 = shl i32 %14, %15
  %17 = mul nsw i32 %10, -8388608
  %18 = add i32 %17, 1124073472
  br label %26

19:                                               ; preds = %1
  %20 = shl nuw nsw i32 %3, 13
  br i1 %6, label %26, label %21

21:                                               ; preds = %19
  %22 = icmp eq i32 %5, 31
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = shl nuw nsw i32 %5, 23
  %25 = add nuw nsw i32 %24, 939524096
  br label %26

26:                                               ; preds = %23, %19, %21, %9
  %27 = phi i32 [ %18, %9 ], [ %20, %21 ], [ %20, %19 ], [ %20, %23 ]
  %28 = phi i32 [ %16, %9 ], [ 2139095040, %21 ], [ 0, %19 ], [ %25, %23 ]
  %29 = sext i16 %0 to i32
  %30 = and i32 %29, -2147483648
  %31 = or i32 %27, %30
  %32 = or i32 %31, %28
  %33 = bitcast i32 %32 to float
  ret float %33
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nounwind willreturn mustprogress
define weak double @halide_float16_bits_to_double(i16 zeroext %0) local_unnamed_addr #0 {
  %2 = tail call float @halide_float16_bits_to_float(i16 zeroext %0) #2
  %3 = fpext float %2 to double
  ret double %3
}

attributes #0 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{i32 22, i32 33}
