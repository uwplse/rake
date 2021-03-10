; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_get_symbol.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_get_symbol.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-windows-msvc19.11.0"

@"?custom_get_symbol@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA" = weak dso_local local_unnamed_addr global i8* (i8*)* @halide_default_get_symbol, align 8
@"?custom_load_library@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA" = weak dso_local local_unnamed_addr global i8* (i8*)* @halide_default_load_library, align 8
@"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APEAXPEAXPEBD@ZEA" = weak dso_local local_unnamed_addr global i8* (i8*, i8*)* @halide_default_get_library_symbol, align 8

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_get_symbol(i8* %0) #0 {
  %2 = tail call i8* @GetProcAddress(i8* null, i8* %0) #3
  ret i8* %2
}

declare dso_local i8* @GetProcAddress(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_load_library(i8* %0) #0 {
  %2 = tail call i32 @SetErrorMode(i32 32769) #3
  %3 = tail call i32 @MultiByteToWideChar(i32 65001, i64 0, i8* %0, i32 -1, i16* null, i32 0) #3
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = zext i32 %3 to i64
  %7 = shl nuw nsw i64 %6, 1
  %8 = tail call i8* @malloc(i64 %7) #3
  %9 = bitcast i8* %8 to i16*
  %10 = tail call i32 @MultiByteToWideChar(i32 65001, i64 0, i8* %0, i32 -1, i16* %9, i32 %3) #3
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = tail call i8* @LoadLibraryW(i16* %9) #3
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i8* [ %13, %12 ], [ null, %5 ]
  tail call void @free(i8* %8) #3
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi i8* [ %15, %14 ], [ null, %1 ]
  %18 = tail call i32 @SetErrorMode(i32 %2) #3
  ret i8* %17
}

declare dso_local i32 @SetErrorMode(i32) local_unnamed_addr #1

declare dso_local i32 @MultiByteToWideChar(i32, i64, i8*, i32, i16*, i32) local_unnamed_addr #1

declare dso_local i8* @malloc(i64) local_unnamed_addr #1

declare dso_local i8* @LoadLibraryW(i16*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_get_library_symbol(i8* %0, i8* %1) #0 {
  %3 = tail call i8* @GetProcAddress(i8* %0, i8* %1) #3
  ret i8* %3
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*)* @halide_set_custom_get_symbol(i8* (i8*)* %0) local_unnamed_addr #2 {
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_get_symbol@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA", align 8, !tbaa !2
  store i8* (i8*)* %0, i8* (i8*)** @"?custom_get_symbol@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA", align 8, !tbaa !2
  ret i8* (i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*)* @halide_set_custom_load_library(i8* (i8*)* %0) local_unnamed_addr #2 {
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_load_library@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA", align 8, !tbaa !2
  store i8* (i8*)* %0, i8* (i8*)** @"?custom_load_library@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA", align 8, !tbaa !2
  ret i8* (i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*, i8*)* @halide_set_custom_get_library_symbol(i8* (i8*, i8*)* %0) local_unnamed_addr #2 {
  %2 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APEAXPEAXPEBD@ZEA", align 8, !tbaa !2
  store i8* (i8*, i8*)* %0, i8* (i8*, i8*)** @"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APEAXPEAXPEBD@ZEA", align 8, !tbaa !2
  ret i8* (i8*, i8*)* %2
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_get_symbol(i8* %0) local_unnamed_addr #0 {
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_get_symbol@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA", align 8, !tbaa !2
  %3 = tail call i8* %2(i8* %0) #3
  ret i8* %3
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_load_library(i8* %0) local_unnamed_addr #0 {
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_load_library@Internal@Runtime@Halide@@3P6APEAXPEBD@ZEA", align 8, !tbaa !2
  %3 = tail call i8* %2(i8* %0) #3
  ret i8* %3
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_get_library_symbol(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APEAXPEAXPEBD@ZEA", align 8, !tbaa !2
  %4 = tail call i8* %3(i8* %0, i8* %1) #3
  ret i8* %4
}

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
