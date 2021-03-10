; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/trace_helper.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/trace_helper.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.halide_trace_event_t = type { i8*, i8*, i32*, i8*, %struct.halide_type_t, i32, i32, i32, i32 }
%struct.halide_type_t = type { i8, i8, i16 }

; Function Attrs: nounwind
define weak i32 @halide_trace_helper(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i8* %11) local_unnamed_addr #0 {
  %13 = alloca %struct.halide_trace_event_t, align 4
  %14 = bitcast %struct.halide_trace_event_t* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %14) #3
  %15 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 4, i32 0
  %16 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 4, i32 1
  %17 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 4, i32 2
  %18 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 0
  store i8* %1, i8** %18, align 4, !tbaa !3
  %19 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 1
  store i8* %2, i8** %19, align 4, !tbaa !13
  %20 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 2
  store i32* %3, i32** %20, align 4, !tbaa !14
  %21 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 3
  store i8* %11, i8** %21, align 4, !tbaa !15
  %22 = trunc i32 %4 to i8
  store i8 %22, i8* %15, align 4, !tbaa !16
  %23 = trunc i32 %5 to i8
  store i8 %23, i8* %16, align 1, !tbaa !17
  %24 = trunc i32 %6 to i16
  store i16 %24, i16* %17, align 2, !tbaa !18
  %25 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 5
  store i32 %7, i32* %25, align 4, !tbaa !19
  %26 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 6
  store i32 %8, i32* %26, align 4, !tbaa !20
  %27 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 7
  store i32 %9, i32* %27, align 4, !tbaa !21
  %28 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %13, i32 0, i32 8
  store i32 %10, i32* %28, align 4, !tbaa !22
  %29 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %14, i64 36) #4
  %30 = add nsw i32 %5, 7
  %31 = sdiv i32 %30, 8
  %32 = mul nsw i32 %31, %6
  %33 = sext i32 %32 to i64
  %34 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* %2, i64 %33) #4
  %35 = bitcast i32* %3 to i8*
  %36 = shl i32 %10, 2
  %37 = zext i32 %36 to i64
  %38 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* %35, i64 %37) #4
  %39 = call i32 @halide_trace(i8* %0, %struct.halide_trace_event_t* nonnull %13) #4
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %14) #3
  ret i32 %39
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare i32 @halide_trace(i8*, %struct.halide_trace_event_t*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !5, i64 0}
!4 = !{!"_ZTS20halide_trace_event_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !8, i64 16, !11, i64 20, !12, i64 24, !12, i64 28, !12, i64 32}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"_ZTS13halide_type_t", !9, i64 0, !6, i64 1, !10, i64 2}
!9 = !{!"_ZTS18halide_type_code_t", !6, i64 0}
!10 = !{!"short", !6, i64 0}
!11 = !{!"_ZTS25halide_trace_event_code_t", !6, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!4, !5, i64 4}
!14 = !{!4, !5, i64 8}
!15 = !{!4, !5, i64 12}
!16 = !{!4, !9, i64 16}
!17 = !{!4, !6, i64 17}
!18 = !{!4, !10, i64 18}
!19 = !{!4, !11, i64 20}
!20 = !{!4, !12, i64 24}
!21 = !{!4, !12, i64 28}
!22 = !{!4, !12, i64 32}
