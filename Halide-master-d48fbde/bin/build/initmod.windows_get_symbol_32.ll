; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_get_symbol.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_get_symbol.cpp"
target datalayout = "e-m:x-p:32:32-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i386-unknown-windows-msvc19.11.0"

@"?custom_get_symbol@Internal@Runtime@Halide@@3P6APAXPBD@ZA" = weak dso_local local_unnamed_addr global i8* (i8*)* @halide_default_get_symbol, align 4
@"?custom_load_library@Internal@Runtime@Halide@@3P6APAXPBD@ZA" = weak dso_local local_unnamed_addr global i8* (i8*)* @halide_default_load_library, align 4
@"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APAXPAXPBD@ZA" = weak dso_local local_unnamed_addr global i8* (i8*, i8*)* @halide_default_get_library_symbol, align 4

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_get_symbol(i8* %0) #0 {
  %2 = tail call x86_stdcallcc i8* @"\01_GetProcAddress@8"(i8* null, i8* %0) #3
  ret i8* %2
}

declare dso_local x86_stdcallcc i8* @"\01_GetProcAddress@8"(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_load_library(i8* %0) #0 {
  %2 = tail call x86_stdcallcc i32 @"\01_SetErrorMode@4"(i32 32769) #3
  %3 = tail call x86_stdcallcc i32 @"\01_MultiByteToWideChar@24"(i32 65001, i32 0, i8* %0, i32 -1, i16* null, i32 0) #3
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = shl nuw i32 %3, 1
  %7 = tail call i8* @malloc(i32 %6) #3
  %8 = bitcast i8* %7 to i16*
  %9 = tail call x86_stdcallcc i32 @"\01_MultiByteToWideChar@24"(i32 65001, i32 0, i8* %0, i32 -1, i16* %8, i32 %3) #3
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = tail call x86_stdcallcc i8* @"\01_LoadLibraryW@4"(i16* %8) #3
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i8* [ %12, %11 ], [ null, %5 ]
  tail call void @free(i8* %7) #3
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi i8* [ %14, %13 ], [ null, %1 ]
  %17 = tail call x86_stdcallcc i32 @"\01_SetErrorMode@4"(i32 %2) #3
  ret i8* %16
}

declare dso_local x86_stdcallcc i32 @"\01_SetErrorMode@4"(i32) local_unnamed_addr #1

declare dso_local x86_stdcallcc i32 @"\01_MultiByteToWideChar@24"(i32, i32, i8*, i32, i16*, i32) local_unnamed_addr #1

declare dso_local i8* @malloc(i32) local_unnamed_addr #1

declare dso_local x86_stdcallcc i8* @"\01_LoadLibraryW@4"(i16*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_get_library_symbol(i8* %0, i8* %1) #0 {
  %3 = tail call x86_stdcallcc i8* @"\01_GetProcAddress@8"(i8* %0, i8* %1) #3
  ret i8* %3
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*)* @halide_set_custom_get_symbol(i8* (i8*)* %0) local_unnamed_addr #2 {
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_get_symbol@Internal@Runtime@Halide@@3P6APAXPBD@ZA", align 4, !tbaa !3
  store i8* (i8*)* %0, i8* (i8*)** @"?custom_get_symbol@Internal@Runtime@Halide@@3P6APAXPBD@ZA", align 4, !tbaa !3
  ret i8* (i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*)* @halide_set_custom_load_library(i8* (i8*)* %0) local_unnamed_addr #2 {
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_load_library@Internal@Runtime@Halide@@3P6APAXPBD@ZA", align 4, !tbaa !3
  store i8* (i8*)* %0, i8* (i8*)** @"?custom_load_library@Internal@Runtime@Halide@@3P6APAXPBD@ZA", align 4, !tbaa !3
  ret i8* (i8*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*, i8*)* @halide_set_custom_get_library_symbol(i8* (i8*, i8*)* %0) local_unnamed_addr #2 {
  %2 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APAXPAXPBD@ZA", align 4, !tbaa !3
  store i8* (i8*, i8*)* %0, i8* (i8*, i8*)** @"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APAXPAXPBD@ZA", align 4, !tbaa !3
  ret i8* (i8*, i8*)* %2
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_get_symbol(i8* %0) local_unnamed_addr #0 {
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_get_symbol@Internal@Runtime@Halide@@3P6APAXPBD@ZA", align 4, !tbaa !3
  %3 = tail call i8* %2(i8* %0) #3
  ret i8* %3
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_load_library(i8* %0) local_unnamed_addr #0 {
  %2 = load i8* (i8*)*, i8* (i8*)** @"?custom_load_library@Internal@Runtime@Halide@@3P6APAXPBD@ZA", align 4, !tbaa !3
  %3 = tail call i8* %2(i8* %0) #3
  ret i8* %3
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_get_library_symbol(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** @"?custom_get_library_symbol@Internal@Runtime@Halide@@3P6APAXPAXPBD@ZA", align 4, !tbaa !3
  %4 = tail call i8* %3(i8* %0, i8* %1) #3
  ret i8* %4
}

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
