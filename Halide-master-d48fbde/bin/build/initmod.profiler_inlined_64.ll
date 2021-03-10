; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler_inlined.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/profiler_inlined.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_profiler_state = type { %struct.halide_mutex, i32, i32, i32, i32, %struct.halide_profiler_pipeline_stats*, void (i32*, i32*)*, %struct.halide_thread* }
%struct.halide_mutex = type { [1 x i64] }
%struct.halide_profiler_pipeline_stats = type { i64, i64, i64, i64, i64, i64, i8*, %struct.halide_profiler_func_stats*, i8*, i32, i32, i32, i32, i32, [4 x i8] }
%struct.halide_profiler_func_stats = type { i64, i64, i64, i64, i64, i64, i64, i8*, i32, [4 x i8] }
%struct.halide_thread = type opaque

; Function Attrs: alwaysinline nounwind mustprogress
define weak i32 @halide_profiler_set_current_func(%struct.halide_profiler_state* %0, i32 %1, i32 %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i64 0, i32 3
  tail call void asm sideeffect "", ""() #1, !srcloc !3
  %5 = add nsw i32 %2, %1
  store volatile i32 %5, i32* %4, align 4, !tbaa !4
  tail call void asm sideeffect "", ""() #1, !srcloc !8
  ret i32 0
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak i32 @halide_profiler_incr_active_threads(%struct.halide_profiler_state* %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i64 0, i32 4
  tail call void asm sideeffect "", ""() #1, !srcloc !9
  %3 = atomicrmw add i32* %2, i32 1 seq_cst
  tail call void asm sideeffect "", ""() #1, !srcloc !10
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak i32 @halide_profiler_decr_active_threads(%struct.halide_profiler_state* %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.halide_profiler_state, %struct.halide_profiler_state* %0, i64 0, i32 4
  tail call void asm sideeffect "", ""() #1, !srcloc !11
  %3 = atomicrmw sub i32* %2, i32 1 seq_cst
  tail call void asm sideeffect "", ""() #1, !srcloc !12
  ret i32 %3
}

attributes #0 = { alwaysinline nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{i32 345}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{i32 391}
!9 = !{i32 615}
!10 = !{i32 685}
!11 = !{i32 911}
!12 = !{i32 981}
