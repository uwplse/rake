; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/destructors.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/destructors.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

$call_destructor = comdat any

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, void (i8*, i8*)*, i8**, i1)* @call_destructor to i8*)], section "llvm.metadata"

; Function Attrs: alwaysinline nounwind mustprogress
define linkonce_odr void @call_destructor(i8* %0, void (i8*, i8*)* %1, i8** %2, i1 zeroext %3) #0 comdat {
  %5 = load i8*, i8** %2, align 4, !tbaa !3
  store i8* null, i8** %2, align 4, !tbaa !3
  %6 = icmp ne i8* %5, null
  %7 = and i1 %6, %3
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void %1(i8* %0, i8* nonnull %5) #1
  br label %9

9:                                                ; preds = %4, %8
  ret void
}

attributes #0 = { alwaysinline nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
