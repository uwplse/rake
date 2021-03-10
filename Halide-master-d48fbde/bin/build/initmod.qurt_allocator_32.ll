; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_allocator.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_allocator.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@_ZN6Halide7Runtime8Internal11buf_is_usedE = weak global [10 x i32] zeroinitializer, align 4
@_ZN6Halide7Runtime8Internal7mem_bufE = weak local_unnamed_addr global [10 x i8*] zeroinitializer, align 4
@_ZN6Halide7Runtime8Internal13custom_mallocE = weak local_unnamed_addr global i8* (i8*, i32)* @halide_default_malloc, align 4
@_ZN6Halide7Runtime8Internal11custom_freeE = weak local_unnamed_addr global void (i8*, i8*)* @halide_default_free, align 4
@.str = private unnamed_addr constant [45 x i8] c"custom allocators not supported on Hexagon.\0A\00", align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_ZN6Halide7Runtime8Internal24halide_allocator_cleanupEv, i8* null }]

; Function Attrs: nounwind mustprogress
define weak i8* @_ZN6Halide7Runtime8Internal14aligned_mallocEjj(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = add i32 %0, -1
  %4 = add i32 %3, %1
  %5 = sub i32 0, %0
  %6 = and i32 %4, %5
  %7 = add i32 %6, %0
  %8 = tail call i8* @malloc(i32 %7) #2
  %9 = icmp eq i8* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = ptrtoint i8* %8 to i32
  %12 = add i32 %0, 3
  %13 = add i32 %12, %11
  %14 = and i32 %13, %5
  %15 = inttoptr i32 %14 to i8*
  %16 = inttoptr i32 %14 to i8**
  %17 = getelementptr inbounds i8*, i8** %16, i32 -1
  store i8* %8, i8** %17, align 4, !tbaa !3
  br label %18

18:                                               ; preds = %2, %10
  %19 = phi i8* [ %15, %10 ], [ null, %2 ]
  ret i8* %19
}

declare i8* @malloc(i32) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %0) local_unnamed_addr #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i32 -4
  %5 = bitcast i8* %4 to i8**
  %6 = load i8*, i8** %5, align 4, !tbaa !3
  tail call void @free(i8* %6) #2
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

declare void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal24halide_allocator_cleanupEv() #0 {
  %1 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 0), align 4, !tbaa !3
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %1) #3
  %2 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 1), align 4, !tbaa !3
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %2) #3
  %3 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 2), align 4, !tbaa !3
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %3) #3
  %4 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 3), align 4, !tbaa !3
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %4) #3
  %5 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 4), align 4, !tbaa !3
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %5) #3
  %6 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 5), align 4, !tbaa !3
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %6) #3
  %7 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 6), align 4, !tbaa !3
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %7) #3
  %8 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 7), align 4, !tbaa !3
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %8) #3
  %9 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 8), align 4, !tbaa !3
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %9) #3
  %10 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 9), align 4, !tbaa !3
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %10) #3
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i8* @halide_default_malloc(i8* %0, i32 %1) #0 {
  %3 = icmp ult i32 %1, 65537
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i32 0, i32 0), i32 0, i32 1 seq_cst seq_cst
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %7, label %14

7:                                                ; preds = %42, %39, %36, %33, %30, %27, %24, %21, %14, %4
  %8 = phi i32 [ 0, %4 ], [ 1, %14 ], [ 2, %21 ], [ 3, %24 ], [ 4, %27 ], [ 5, %30 ], [ 6, %33 ], [ 7, %36 ], [ 8, %39 ], [ 9, %42 ]
  %9 = getelementptr inbounds [10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 %8
  %10 = load i8*, i8** %9, align 4, !tbaa !3
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = tail call i8* @_ZN6Halide7Runtime8Internal14aligned_mallocEjj(i32 128, i32 65536) #3
  store i8* %13, i8** %9, align 4, !tbaa !3
  br label %19

14:                                               ; preds = %4
  %15 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i32 0, i32 1), i32 0, i32 1 seq_cst seq_cst
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %7, label %21

17:                                               ; preds = %42, %2
  %18 = tail call i8* @_ZN6Halide7Runtime8Internal14aligned_mallocEjj(i32 128, i32 %1) #3
  br label %19

19:                                               ; preds = %12, %7, %17
  %20 = phi i8* [ %18, %17 ], [ %10, %7 ], [ %13, %12 ]
  ret i8* %20

21:                                               ; preds = %14
  %22 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i32 0, i32 2), i32 0, i32 1 seq_cst seq_cst
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %7, label %24

24:                                               ; preds = %21
  %25 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i32 0, i32 3), i32 0, i32 1 seq_cst seq_cst
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %7, label %27

27:                                               ; preds = %24
  %28 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i32 0, i32 4), i32 0, i32 1 seq_cst seq_cst
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %7, label %30

30:                                               ; preds = %27
  %31 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i32 0, i32 5), i32 0, i32 1 seq_cst seq_cst
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %7, label %33

33:                                               ; preds = %30
  %34 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i32 0, i32 6), i32 0, i32 1 seq_cst seq_cst
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %7, label %36

36:                                               ; preds = %33
  %37 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i32 0, i32 7), i32 0, i32 1 seq_cst seq_cst
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %7, label %39

39:                                               ; preds = %36
  %40 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i32 0, i32 8), i32 0, i32 1 seq_cst seq_cst
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %7, label %42

42:                                               ; preds = %39
  %43 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i32 0, i32 9), i32 0, i32 1 seq_cst seq_cst
  %44 = extractvalue { i32, i1 } %43, 1
  br i1 %44, label %7, label %17
}

; Function Attrs: nounwind mustprogress
define weak void @halide_default_free(i8* %0, i8* %1) #0 {
  %3 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 0), align 4, !tbaa !3
  %4 = icmp eq i8* %3, %1
  br i1 %4, label %5, label %8

5:                                                ; preds = %33, %30, %27, %24, %21, %18, %15, %12, %8, %2
  %6 = phi i32 [ 0, %2 ], [ 1, %8 ], [ 2, %12 ], [ 3, %15 ], [ 4, %18 ], [ 5, %21 ], [ 6, %24 ], [ 7, %27 ], [ 8, %30 ], [ 9, %33 ]
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i32 0, i32 %6
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %11

8:                                                ; preds = %2
  %9 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 1), align 4, !tbaa !3
  %10 = icmp eq i8* %9, %1
  br i1 %10, label %5, label %12

11:                                               ; preds = %5, %36
  ret void

12:                                               ; preds = %8
  %13 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 2), align 4, !tbaa !3
  %14 = icmp eq i8* %13, %1
  br i1 %14, label %5, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 3), align 4, !tbaa !3
  %17 = icmp eq i8* %16, %1
  br i1 %17, label %5, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 4), align 4, !tbaa !3
  %20 = icmp eq i8* %19, %1
  br i1 %20, label %5, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 5), align 4, !tbaa !3
  %23 = icmp eq i8* %22, %1
  br i1 %23, label %5, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 6), align 4, !tbaa !3
  %26 = icmp eq i8* %25, %1
  br i1 %26, label %5, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 7), align 4, !tbaa !3
  %29 = icmp eq i8* %28, %1
  br i1 %29, label %5, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 8), align 4, !tbaa !3
  %32 = icmp eq i8* %31, %1
  br i1 %32, label %5, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i32 0, i32 9), align 4, !tbaa !3
  %35 = icmp eq i8* %34, %1
  br i1 %35, label %5, label %36

36:                                               ; preds = %33
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %1) #3
  br label %11
}

; Function Attrs: nounwind mustprogress
define weak i8* (i8*, i32)* @halide_set_custom_malloc(i8* (i8*, i32)* %0) local_unnamed_addr #0 {
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0)) #2
  %2 = load i8* (i8*, i32)*, i8* (i8*, i32)** @_ZN6Halide7Runtime8Internal13custom_mallocE, align 4, !tbaa !3
  store i8* (i8*, i32)* %0, i8* (i8*, i32)** @_ZN6Halide7Runtime8Internal13custom_mallocE, align 4, !tbaa !3
  ret i8* (i8*, i32)* %2
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak void (i8*, i8*)* @halide_set_custom_free(void (i8*, i8*)* %0) local_unnamed_addr #0 {
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0)) #2
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal11custom_freeE, align 4, !tbaa !3
  store void (i8*, i8*)* %0, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal11custom_freeE, align 4, !tbaa !3
  ret void (i8*, i8*)* %2
}

; Function Attrs: nounwind mustprogress
define weak i8* @halide_malloc(i8* %0, i32 %1) local_unnamed_addr #0 {
  %3 = tail call i8* @halide_default_malloc(i8* %0, i32 %1) #3
  ret i8* %3
}

; Function Attrs: nounwind mustprogress
define weak void @halide_free(i8* %0, i8* %1) local_unnamed_addr #0 {
  tail call void @halide_default_free(i8* %0, i8* %1) #3
  ret void
}

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
