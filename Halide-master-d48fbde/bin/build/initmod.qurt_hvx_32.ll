; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_hvx.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_hvx.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.hexagon_buffer_t_arg = type { i64, i8* }

@.str.4 = private unnamed_addr constant [22 x i8] c"qurt_hvx_lock failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"qurt_hvx_unlock failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1

; Function Attrs: nounwind
define weak i32 @halide_qurt_hvx_lock(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i32 @qurt_hvx_lock(i32 1) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = tail call i8* @malloc(i32 1024) #5
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i8* @halide_string_to_string(i8* %5, i8* null, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #5
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %5, i32 1023
  store i8 0, i8* %10, align 1, !tbaa !3
  %11 = tail call i8* @halide_string_to_string(i8* nonnull %5, i8* nonnull %10, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #5
  %12 = ptrtoint i8* %11 to i32
  %13 = ptrtoint i8* %5 to i32
  %14 = add i32 %12, 1
  %15 = sub i32 %14, %13
  %16 = sext i32 %15 to i64
  %17 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %16) #5
  tail call void @halide_error(i8* %0, i8* nonnull %5) #5
  br label %18

18:                                               ; preds = %9, %7
  tail call void @free(i8* %5) #5
  br label %19

19:                                               ; preds = %1, %18
  %20 = phi i32 [ -1, %18 ], [ 0, %1 ]
  ret i32 %20
}

declare i32 @qurt_hvx_lock(i32) local_unnamed_addr #1

; Function Attrs: nounwind
define weak i32 @halide_qurt_hvx_unlock(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i32 @qurt_hvx_unlock() #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = tail call i8* @malloc(i32 1024) #5
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i8* @halide_string_to_string(i8* %5, i8* null, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #5
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %5, i32 1023
  store i8 0, i8* %10, align 1, !tbaa !3
  %11 = tail call i8* @halide_string_to_string(i8* nonnull %5, i8* nonnull %10, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #5
  %12 = ptrtoint i8* %11 to i32
  %13 = ptrtoint i8* %5 to i32
  %14 = add i32 %12, 1
  %15 = sub i32 %14, %13
  %16 = sext i32 %15 to i64
  %17 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %5, i64 %16) #5
  tail call void @halide_error(i8* %0, i8* nonnull %5) #5
  br label %18

18:                                               ; preds = %9, %7
  tail call void @free(i8* %5) #5
  br label %19

19:                                               ; preds = %1, %18
  %20 = phi i32 [ -1, %18 ], [ 0, %1 ]
  ret i32 %20
}

declare i32 @qurt_hvx_unlock() local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak void @halide_qurt_hvx_unlock_as_destructor(i8* %0, i8* %1) local_unnamed_addr #2 {
  %3 = tail call i32 @halide_qurt_hvx_unlock(i8* %0) #6
  ret void
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak i32 @_halide_prefetch_2d(i8* %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #3 {
  %5 = zext i32 %3 to i64
  %6 = shl nuw i64 %5, 32
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 16
  %9 = sext i32 %2 to i64
  %10 = or i64 %8, %9
  %11 = or i64 %10, %6
  %12 = or i64 %11, 281474976710656
  tail call void asm sideeffect "l2fetch($0,$1)", "r,r"(i8* %0, i64 %12) #7, !srcloc !6
  ret i32 0
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak i32 @_halide_prefetch(i8* %0, i32 %1) local_unnamed_addr #3 {
  %3 = sext i32 %1 to i64
  %4 = shl nsw i64 %3, 16
  %5 = or i64 %4, 281479271677953
  tail call void asm sideeffect "l2fetch($0,$1)", "r,r"(i8* %0, i64 %5) #7, !srcloc !6
  ret i32 0
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak i8* @_halide_hexagon_buffer_get_host(%struct.hexagon_buffer_t_arg* %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.hexagon_buffer_t_arg, %struct.hexagon_buffer_t_arg* %0, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8, !tbaa !7
  ret i8* %3
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak i64 @_halide_hexagon_buffer_get_device(%struct.hexagon_buffer_t_arg* %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.hexagon_buffer_t_arg, %struct.hexagon_buffer_t_arg* %0, i32 0, i32 0
  %3 = load i64, i64* %2, align 8, !tbaa !11
  ret i64 %3
}

declare i8* @malloc(i32) local_unnamed_addr #1

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #1

declare void @free(i8*) local_unnamed_addr #1

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #1

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #1

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{i32 1974}
!7 = !{!8, !10, i64 8}
!8 = !{!"_ZTS20hexagon_buffer_t_arg", !9, i64 0, !10, i64 8}
!9 = !{!"long long", !4, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!8, !9, i64 0}
