; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fake_get_symbol.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fake_get_symbol.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@.str = private unnamed_addr constant [60 x i8] c"halide_default_get_symbol not implemented on this platform.\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"halide_default_load_library not implemented on this platform.\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"halide_default_get_library_symbol not implemented on this platform.\00", align 1
@_ZN6Halide7Runtime8Internal17custom_get_symbolE = weak local_unnamed_addr global i8* (i8*)* @halide_default_get_symbol, align 4
@_ZN6Halide7Runtime8Internal19custom_load_libraryE = weak local_unnamed_addr global i8* (i8*)* @halide_default_load_library, align 4
@_ZN6Halide7Runtime8Internal25custom_get_library_symbolE = weak local_unnamed_addr global i8* (i8*, i8*)* @halide_default_get_library_symbol, align 4

; Function Attrs: nounwind mustprogress
define weak i8* @halide_default_get_symbol(i8* %0) #0 {
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i32 0, i32 0)) #3
  ret i8* null
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak i8* @halide_default_load_library(i8* %0) #0 {
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i32 0, i32 0)) #3
  ret i8* null
}

; Function Attrs: nounwind mustprogress
define weak i8* @halide_default_get_library_symbol(i8* %0, i8* %1) #0 {
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i32 0, i32 0)) #3
  ret i8* null
}

; Function Attrs: nounwind willreturn mustprogress
define weak i8* (i8*)* @halide_set_custom_get_symbol(i8* (i8*)* %0) local_unnamed_addr #2 {
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal17custom_get_symbolE, align 4, !tbaa !3
  store i8* (i8*)* %0, i8* (i8*)** @_ZN6Halide7Runtime8Internal17custom_get_symbolE, align 4, !tbaa !3
  ret i8* (i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak i8* (i8*)* @halide_set_custom_load_library(i8* (i8*)* %0) local_unnamed_addr #2 {
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal19custom_load_libraryE, align 4, !tbaa !3
  store i8* (i8*)* %0, i8* (i8*)** @_ZN6Halide7Runtime8Internal19custom_load_libraryE, align 4, !tbaa !3
  ret i8* (i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak i8* (i8*, i8*)* @halide_set_custom_get_library_symbol(i8* (i8*, i8*)* %0) local_unnamed_addr #2 {
  %2 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @_ZN6Halide7Runtime8Internal25custom_get_library_symbolE, align 4, !tbaa !3
  store i8* (i8*, i8*)* %0, i8* (i8*, i8*)** @_ZN6Halide7Runtime8Internal25custom_get_library_symbolE, align 4, !tbaa !3
  ret i8* (i8*, i8*)* %2
}

; Function Attrs: nounwind mustprogress
define weak i8* @halide_get_symbol(i8* %0) local_unnamed_addr #0 {
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal17custom_get_symbolE, align 4, !tbaa !3
  %3 = tail call i8* %2(i8* %0) #3
  ret i8* %3
}

; Function Attrs: nounwind mustprogress
define weak i8* @halide_load_library(i8* %0) local_unnamed_addr #0 {
  %2 = load i8* (i8*)*, i8* (i8*)** @_ZN6Halide7Runtime8Internal19custom_load_libraryE, align 4, !tbaa !3
  %3 = tail call i8* %2(i8* %0) #3
  ret i8* %3
}

; Function Attrs: nounwind mustprogress
define weak i8* @halide_get_library_symbol(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @_ZN6Halide7Runtime8Internal25custom_get_library_symbolE, align 4, !tbaa !3
  %4 = tail call i8* %3(i8* %0, i8* %1) #3
  ret i8* %4
}

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
