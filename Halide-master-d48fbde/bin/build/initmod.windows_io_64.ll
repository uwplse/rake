; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_io.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_io.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-windows-msvc19.11.0"

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_default_print(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* %1) #2
  %4 = tail call i64 @write(i32 1, i8* %1, i64 %3) #2
  ret void
}

declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #1

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
