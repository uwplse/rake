; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/ssp.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/ssp.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@__stack_chk_guard = weak local_unnamed_addr global i8* inttoptr (i32 -559038737 to i8*), align 4
@.str = private unnamed_addr constant [49 x i8] c"Memory error: stack smashing protector changed!\0A\00", align 1

; Function Attrs: nounwind mustprogress
define weak void @__stack_chk_fail() local_unnamed_addr #0 {
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0)) #2
  tail call void @abort() #2
  ret void
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #1

declare void @abort() local_unnamed_addr #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
