; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_allocator.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_allocator.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

@_ZN6Halide7Runtime8Internal11buf_is_usedE = weak dso_local global [10 x i32] zeroinitializer, align 4, !dbg !0
@_ZN6Halide7Runtime8Internal7mem_bufE = weak dso_local local_unnamed_addr global [10 x i8*] zeroinitializer, align 8, !dbg !10
@_ZN6Halide7Runtime8Internal13custom_mallocE = weak dso_local local_unnamed_addr global i8* (i8*, i64)* @halide_default_malloc, align 8, !dbg !14
@_ZN6Halide7Runtime8Internal11custom_freeE = weak dso_local local_unnamed_addr global void (i8*, i8*)* @halide_default_free, align 8, !dbg !24
@.str = private unnamed_addr constant [45 x i8] c"custom allocators not supported on Hexagon.\0A\00", align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_ZN6Halide7Runtime8Internal24halide_allocator_cleanupEv, i8* null }]

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime8Internal14aligned_mallocEmm(i64 %0, i64 %1) local_unnamed_addr #0 !dbg !47 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !51, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i64 %1, metadata !52, metadata !DIExpression()), !dbg !55
  %3 = add i64 %0, -1, !dbg !56
  %4 = add i64 %3, %1, !dbg !57
  %5 = sub i64 0, %0, !dbg !58
  %6 = and i64 %4, %5, !dbg !59
  call void @llvm.dbg.value(metadata i64 %6, metadata !52, metadata !DIExpression()), !dbg !55
  %7 = add i64 %6, %0, !dbg !60
  %8 = tail call i8* @malloc(i64 %7) #3, !dbg !61
  call void @llvm.dbg.value(metadata i8* %8, metadata !53, metadata !DIExpression()), !dbg !55
  %9 = icmp eq i8* %8, null, !dbg !62
  br i1 %9, label %18, label %10, !dbg !64

10:                                               ; preds = %2
  %11 = ptrtoint i8* %8 to i64, !dbg !65
  %12 = add i64 %0, 7, !dbg !66
  %13 = add i64 %12, %11, !dbg !67
  %14 = and i64 %13, %5, !dbg !68
  %15 = inttoptr i64 %14 to i8*, !dbg !69
  call void @llvm.dbg.value(metadata i8* %15, metadata !54, metadata !DIExpression()), !dbg !55
  %16 = inttoptr i64 %14 to i8**, !dbg !70
  %17 = getelementptr inbounds i8*, i8** %16, i64 -1, !dbg !71
  store i8* %8, i8** %17, align 8, !dbg !72, !tbaa !73
  br label %18

18:                                               ; preds = %2, %10
  %19 = phi i8* [ %15, %10 ], [ null, %2 ], !dbg !55
  ret i8* %19, !dbg !77
}

declare !dbg !78 dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %0) local_unnamed_addr #0 !dbg !81 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !85, metadata !DIExpression()), !dbg !86
  %2 = icmp eq i8* %0, null, !dbg !87
  br i1 %2, label %7, label %3, !dbg !89

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !90
  %5 = bitcast i8* %4 to i8**, !dbg !90
  %6 = load i8*, i8** %5, align 8, !dbg !90, !tbaa !73
  tail call void @free(i8* %6) #3, !dbg !92
  br label %7, !dbg !93

7:                                                ; preds = %3, %1
  ret void, !dbg !94
}

declare !dbg !95 dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24halide_allocator_cleanupEv() #0 !dbg !96 {
  call void @llvm.dbg.value(metadata i32 0, metadata !100, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 0, metadata !100, metadata !DIExpression()), !dbg !102
  %1 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 0), align 8, !dbg !103, !tbaa !73
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %1) #4, !dbg !106
  call void @llvm.dbg.value(metadata i64 1, metadata !100, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 1, metadata !100, metadata !DIExpression()), !dbg !102
  %2 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 1), align 8, !dbg !103, !tbaa !73
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %2) #4, !dbg !106
  call void @llvm.dbg.value(metadata i64 2, metadata !100, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 2, metadata !100, metadata !DIExpression()), !dbg !102
  %3 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 2), align 8, !dbg !103, !tbaa !73
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %3) #4, !dbg !106
  call void @llvm.dbg.value(metadata i64 3, metadata !100, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 3, metadata !100, metadata !DIExpression()), !dbg !102
  %4 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 3), align 8, !dbg !103, !tbaa !73
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %4) #4, !dbg !106
  call void @llvm.dbg.value(metadata i64 4, metadata !100, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 4, metadata !100, metadata !DIExpression()), !dbg !102
  %5 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 4), align 8, !dbg !103, !tbaa !73
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %5) #4, !dbg !106
  call void @llvm.dbg.value(metadata i64 5, metadata !100, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 5, metadata !100, metadata !DIExpression()), !dbg !102
  %6 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 5), align 8, !dbg !103, !tbaa !73
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %6) #4, !dbg !106
  call void @llvm.dbg.value(metadata i64 6, metadata !100, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 6, metadata !100, metadata !DIExpression()), !dbg !102
  %7 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 6), align 8, !dbg !103, !tbaa !73
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %7) #4, !dbg !106
  call void @llvm.dbg.value(metadata i64 7, metadata !100, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 7, metadata !100, metadata !DIExpression()), !dbg !102
  %8 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 7), align 8, !dbg !103, !tbaa !73
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %8) #4, !dbg !106
  call void @llvm.dbg.value(metadata i64 8, metadata !100, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 8, metadata !100, metadata !DIExpression()), !dbg !102
  %9 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 8), align 8, !dbg !103, !tbaa !73
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %9) #4, !dbg !106
  call void @llvm.dbg.value(metadata i64 9, metadata !100, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 9, metadata !100, metadata !DIExpression()), !dbg !102
  %10 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 9), align 8, !dbg !103, !tbaa !73
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %10) #4, !dbg !106
  call void @llvm.dbg.value(metadata i64 10, metadata !100, metadata !DIExpression()), !dbg !102
  ret void, !dbg !107
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_malloc(i8* %0, i64 %1) #0 !dbg !108 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !110, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.value(metadata i64 %1, metadata !111, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.value(metadata i64 128, metadata !112, metadata !DIExpression()), !dbg !118
  %3 = icmp ult i64 %1, 65537, !dbg !119
  br i1 %3, label %4, label %17, !dbg !120

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 0, metadata !114, metadata !DIExpression()), !dbg !121
  %5 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i64 0, i64 0), i32 0, i32 1 seq_cst seq_cst, !dbg !122
  %6 = extractvalue { i32, i1 } %5, 1, !dbg !126
  call void @llvm.dbg.value(metadata i64 0, metadata !114, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !121
  br i1 %6, label %10, label %7, !dbg !127

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 1, metadata !114, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata i64 0, metadata !114, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !121
  call void @llvm.dbg.value(metadata i64 1, metadata !114, metadata !DIExpression()), !dbg !121
  %8 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i64 0, i64 1), i32 0, i32 1 seq_cst seq_cst, !dbg !122
  %9 = extractvalue { i32, i1 } %8, 1, !dbg !126
  call void @llvm.dbg.value(metadata i64 1, metadata !114, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !121
  br i1 %9, label %10, label %21, !dbg !127

10:                                               ; preds = %42, %39, %36, %33, %30, %27, %24, %21, %7, %4
  %11 = phi i64 [ 0, %4 ], [ 1, %7 ], [ 2, %21 ], [ 3, %24 ], [ 4, %27 ], [ 5, %30 ], [ 6, %33 ], [ 7, %36 ], [ 8, %39 ], [ 9, %42 ], !dbg !128
  %12 = getelementptr inbounds [10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 %11, !dbg !129
  %13 = load i8*, i8** %12, align 8, !dbg !129, !tbaa !73
  %14 = icmp eq i8* %13, null, !dbg !132
  br i1 %14, label %15, label %19, !dbg !133

15:                                               ; preds = %10
  %16 = tail call i8* @_ZN6Halide7Runtime8Internal14aligned_mallocEmm(i64 128, i64 65536) #4, !dbg !134
  store i8* %16, i8** %12, align 8, !dbg !136, !tbaa !73
  br label %19, !dbg !137

17:                                               ; preds = %42, %2
  %18 = tail call i8* @_ZN6Halide7Runtime8Internal14aligned_mallocEmm(i64 128, i64 %1) #4, !dbg !138
  br label %19, !dbg !139

19:                                               ; preds = %15, %10, %17
  %20 = phi i8* [ %18, %17 ], [ %13, %10 ], [ %16, %15 ], !dbg !118
  ret i8* %20, !dbg !140

21:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i64 2, metadata !114, metadata !DIExpression()), !dbg !121
  %22 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i64 0, i64 2), i32 0, i32 1 seq_cst seq_cst, !dbg !122
  %23 = extractvalue { i32, i1 } %22, 1, !dbg !126
  call void @llvm.dbg.value(metadata i64 2, metadata !114, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !121
  br i1 %23, label %10, label %24, !dbg !127

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 3, metadata !114, metadata !DIExpression()), !dbg !121
  %25 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i64 0, i64 3), i32 0, i32 1 seq_cst seq_cst, !dbg !122
  %26 = extractvalue { i32, i1 } %25, 1, !dbg !126
  call void @llvm.dbg.value(metadata i64 3, metadata !114, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !121
  br i1 %26, label %10, label %27, !dbg !127

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 4, metadata !114, metadata !DIExpression()), !dbg !121
  %28 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i64 0, i64 4), i32 0, i32 1 seq_cst seq_cst, !dbg !122
  %29 = extractvalue { i32, i1 } %28, 1, !dbg !126
  call void @llvm.dbg.value(metadata i64 4, metadata !114, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !121
  br i1 %29, label %10, label %30, !dbg !127

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i64 5, metadata !114, metadata !DIExpression()), !dbg !121
  %31 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i64 0, i64 5), i32 0, i32 1 seq_cst seq_cst, !dbg !122
  %32 = extractvalue { i32, i1 } %31, 1, !dbg !126
  call void @llvm.dbg.value(metadata i64 5, metadata !114, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !121
  br i1 %32, label %10, label %33, !dbg !127

33:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i64 6, metadata !114, metadata !DIExpression()), !dbg !121
  %34 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i64 0, i64 6), i32 0, i32 1 seq_cst seq_cst, !dbg !122
  %35 = extractvalue { i32, i1 } %34, 1, !dbg !126
  call void @llvm.dbg.value(metadata i64 6, metadata !114, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !121
  br i1 %35, label %10, label %36, !dbg !127

36:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i64 7, metadata !114, metadata !DIExpression()), !dbg !121
  %37 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i64 0, i64 7), i32 0, i32 1 seq_cst seq_cst, !dbg !122
  %38 = extractvalue { i32, i1 } %37, 1, !dbg !126
  call void @llvm.dbg.value(metadata i64 7, metadata !114, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !121
  br i1 %38, label %10, label %39, !dbg !127

39:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i64 8, metadata !114, metadata !DIExpression()), !dbg !121
  %40 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i64 0, i64 8), i32 0, i32 1 seq_cst seq_cst, !dbg !122
  %41 = extractvalue { i32, i1 } %40, 1, !dbg !126
  call void @llvm.dbg.value(metadata i64 8, metadata !114, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !121
  br i1 %41, label %10, label %42, !dbg !127

42:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i64 9, metadata !114, metadata !DIExpression()), !dbg !121
  %43 = cmpxchg i32* getelementptr inbounds ([10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i64 0, i64 9), i32 0, i32 1 seq_cst seq_cst, !dbg !122
  %44 = extractvalue { i32, i1 } %43, 1, !dbg !126
  call void @llvm.dbg.value(metadata i64 9, metadata !114, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !121
  br i1 %44, label %10, label %17, !dbg !127
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_default_free(i8* %0, i8* %1) #0 !dbg !141 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !143, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i8* %1, metadata !144, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 0, metadata !145, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i64 0, metadata !145, metadata !DIExpression()), !dbg !148
  %3 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 0), align 8, !dbg !149, !tbaa !73
  %4 = icmp eq i8* %3, %1, !dbg !153
  call void @llvm.dbg.value(metadata i64 0, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br i1 %4, label %8, label %5, !dbg !154

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 1, metadata !145, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i64 0, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  call void @llvm.dbg.value(metadata i64 1, metadata !145, metadata !DIExpression()), !dbg !148
  %6 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 1), align 8, !dbg !149, !tbaa !73
  %7 = icmp eq i8* %6, %1, !dbg !153
  call void @llvm.dbg.value(metadata i64 1, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br i1 %7, label %8, label %12, !dbg !154

8:                                                ; preds = %33, %30, %27, %24, %21, %18, %15, %12, %5, %2
  %9 = phi i64 [ 0, %2 ], [ 1, %5 ], [ 2, %12 ], [ 3, %15 ], [ 4, %18 ], [ 5, %21 ], [ 6, %24 ], [ 7, %27 ], [ 8, %30 ], [ 9, %33 ], !dbg !149
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* @_ZN6Halide7Runtime8Internal11buf_is_usedE, i64 0, i64 %9, !dbg !155
  store i32 0, i32* %10, align 4, !dbg !157, !tbaa !158
  br label %11

11:                                               ; preds = %8, %36
  ret void, !dbg !160

12:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64 2, metadata !145, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i64 1, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  call void @llvm.dbg.value(metadata i64 2, metadata !145, metadata !DIExpression()), !dbg !148
  %13 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 2), align 8, !dbg !149, !tbaa !73
  %14 = icmp eq i8* %13, %1, !dbg !153
  call void @llvm.dbg.value(metadata i64 2, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br i1 %14, label %8, label %15, !dbg !154

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 3, metadata !145, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i64 2, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  call void @llvm.dbg.value(metadata i64 3, metadata !145, metadata !DIExpression()), !dbg !148
  %16 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 3), align 8, !dbg !149, !tbaa !73
  %17 = icmp eq i8* %16, %1, !dbg !153
  call void @llvm.dbg.value(metadata i64 3, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br i1 %17, label %8, label %18, !dbg !154

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 4, metadata !145, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i64 3, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  call void @llvm.dbg.value(metadata i64 4, metadata !145, metadata !DIExpression()), !dbg !148
  %19 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 4), align 8, !dbg !149, !tbaa !73
  %20 = icmp eq i8* %19, %1, !dbg !153
  call void @llvm.dbg.value(metadata i64 4, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br i1 %20, label %8, label %21, !dbg !154

21:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i64 5, metadata !145, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i64 4, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  call void @llvm.dbg.value(metadata i64 5, metadata !145, metadata !DIExpression()), !dbg !148
  %22 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 5), align 8, !dbg !149, !tbaa !73
  %23 = icmp eq i8* %22, %1, !dbg !153
  call void @llvm.dbg.value(metadata i64 5, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br i1 %23, label %8, label %24, !dbg !154

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 6, metadata !145, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i64 5, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  call void @llvm.dbg.value(metadata i64 6, metadata !145, metadata !DIExpression()), !dbg !148
  %25 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 6), align 8, !dbg !149, !tbaa !73
  %26 = icmp eq i8* %25, %1, !dbg !153
  call void @llvm.dbg.value(metadata i64 6, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br i1 %26, label %8, label %27, !dbg !154

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 7, metadata !145, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i64 6, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  call void @llvm.dbg.value(metadata i64 7, metadata !145, metadata !DIExpression()), !dbg !148
  %28 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 7), align 8, !dbg !149, !tbaa !73
  %29 = icmp eq i8* %28, %1, !dbg !153
  call void @llvm.dbg.value(metadata i64 7, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br i1 %29, label %8, label %30, !dbg !154

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i64 8, metadata !145, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i64 7, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  call void @llvm.dbg.value(metadata i64 8, metadata !145, metadata !DIExpression()), !dbg !148
  %31 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 8), align 8, !dbg !149, !tbaa !73
  %32 = icmp eq i8* %31, %1, !dbg !153
  call void @llvm.dbg.value(metadata i64 8, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br i1 %32, label %8, label %33, !dbg !154

33:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i64 9, metadata !145, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i64 8, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  call void @llvm.dbg.value(metadata i64 9, metadata !145, metadata !DIExpression()), !dbg !148
  %34 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZN6Halide7Runtime8Internal7mem_bufE, i64 0, i64 9), align 8, !dbg !149, !tbaa !73
  %35 = icmp eq i8* %34, %1, !dbg !153
  call void @llvm.dbg.value(metadata i64 9, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br i1 %35, label %8, label %36, !dbg !154

36:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i64 10, metadata !145, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i64 9, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  tail call void @_ZN6Halide7Runtime8Internal12aligned_freeEPv(i8* %1) #4, !dbg !161
  br label %11, !dbg !160
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* (i8*, i64)* @halide_set_custom_malloc(i8* (i8*, i64)* %0) local_unnamed_addr #0 !dbg !162 {
  call void @llvm.dbg.value(metadata i8* (i8*, i64)* %0, metadata !166, metadata !DIExpression()), !dbg !168
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0)) #3, !dbg !169
  %2 = load i8* (i8*, i64)*, i8* (i8*, i64)** @_ZN6Halide7Runtime8Internal13custom_mallocE, align 8, !dbg !170, !tbaa !73
  call void @llvm.dbg.value(metadata i8* (i8*, i64)* %2, metadata !167, metadata !DIExpression()), !dbg !168
  store i8* (i8*, i64)* %0, i8* (i8*, i64)** @_ZN6Halide7Runtime8Internal13custom_mallocE, align 8, !dbg !171, !tbaa !73
  ret i8* (i8*, i64)* %2, !dbg !172
}

declare !dbg !173 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local void (i8*, i8*)* @halide_set_custom_free(void (i8*, i8*)* %0) local_unnamed_addr #0 !dbg !179 {
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %0, metadata !183, metadata !DIExpression()), !dbg !185
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0)) #3, !dbg !186
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal11custom_freeE, align 8, !dbg !187, !tbaa !73
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %2, metadata !184, metadata !DIExpression()), !dbg !185
  store void (i8*, i8*)* %0, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal11custom_freeE, align 8, !dbg !188, !tbaa !73
  ret void (i8*, i8*)* %2, !dbg !189
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_malloc(i8* %0, i64 %1) local_unnamed_addr #0 !dbg !190 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !192, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i64 %1, metadata !193, metadata !DIExpression()), !dbg !194
  %3 = tail call i8* @halide_default_malloc(i8* %0, i64 %1) #4, !dbg !195
  ret i8* %3, !dbg !196
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_free(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !197 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !199, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i8* %1, metadata !200, metadata !DIExpression()), !dbg !201
  tail call void @halide_default_free(i8* %0, i8* %1) #4, !dbg !202
  ret void, !dbg !203
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!30}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "buf_is_used", linkageName: "_ZN6Halide7Runtime8Internal11buf_is_usedE", scope: !2, file: !5, line: 46, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/qurt_allocator.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320, elements: !8)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9}
!9 = !DISubrange(count: 10)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "mem_buf", linkageName: "_ZN6Halide7Runtime8Internal7mem_bufE", scope: !2, file: !5, line: 47, type: !12, isLocal: false, isDefinition: true)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 640, elements: !8)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "custom_malloc", linkageName: "_ZN6Halide7Runtime8Internal13custom_mallocE", scope: !2, file: !5, line: 94, type: !16, isLocal: false, isDefinition: true)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_malloc_t", file: !17, line: 358, baseType: !18)
!17 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DISubroutineType(types: !20)
!20 = !{!13, !13, !21}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 27, baseType: !23)
!22 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "custom_free", linkageName: "_ZN6Halide7Runtime8Internal11custom_freeE", scope: !2, file: !5, line: 95, type: !26, isLocal: false, isDefinition: true)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_free_t", file: !17, line: 359, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !13, !13}
!30 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !31, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !32, retainedTypes: !33, globals: !35, imports: !41, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_allocator.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!32 = !{}
!33 = !{!13, !21, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!35 = !{!0, !10, !36, !39, !14, !24}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression(DW_OP_constu, 10, DW_OP_stack_value))
!37 = distinct !DIGlobalVariable(name: "num_buffers", scope: !2, file: !5, line: 43, type: !38, isLocal: true, isDefinition: true)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression(DW_OP_constu, 65536, DW_OP_stack_value))
!40 = distinct !DIGlobalVariable(name: "buffer_size", scope: !2, file: !5, line: 44, type: !38, isLocal: true, isDefinition: true)
!41 = !{!42}
!42 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !30, entity: !2, file: !22, line: 225)
!43 = !{i32 7, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!47 = distinct !DISubprogram(name: "aligned_malloc", linkageName: "_ZN6Halide7Runtime8Internal14aligned_mallocEmm", scope: !2, file: !5, line: 13, type: !48, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{!13, !21, !21}
!50 = !{!51, !52, !53, !54}
!51 = !DILocalVariable(name: "alignment", arg: 1, scope: !47, file: !5, line: 13, type: !21)
!52 = !DILocalVariable(name: "size", arg: 2, scope: !47, file: !5, line: 13, type: !21)
!53 = !DILocalVariable(name: "orig", scope: !47, file: !5, line: 18, type: !13)
!54 = !DILocalVariable(name: "ptr", scope: !47, file: !5, line: 24, type: !13)
!55 = !DILocation(line: 0, scope: !47)
!56 = !DILocation(line: 15, column: 18, scope: !47)
!57 = !DILocation(line: 15, column: 30, scope: !47)
!58 = !DILocation(line: 15, column: 37, scope: !47)
!59 = !DILocation(line: 15, column: 35, scope: !47)
!60 = !DILocation(line: 18, column: 30, scope: !47)
!61 = !DILocation(line: 18, column: 18, scope: !47)
!62 = !DILocation(line: 19, column: 14, scope: !63)
!63 = distinct !DILexicalBlock(scope: !47, file: !5, line: 19, column: 9)
!64 = !DILocation(line: 19, column: 9, scope: !47)
!65 = !DILocation(line: 24, column: 27, scope: !47)
!66 = !DILocation(line: 24, column: 40, scope: !47)
!67 = !DILocation(line: 24, column: 69, scope: !47)
!68 = !DILocation(line: 24, column: 74, scope: !47)
!69 = !DILocation(line: 24, column: 17, scope: !47)
!70 = !DILocation(line: 25, column: 6, scope: !47)
!71 = !DILocation(line: 25, column: 5, scope: !47)
!72 = !DILocation(line: 25, column: 24, scope: !47)
!73 = !{!74, !74, i64 0}
!74 = !{!"any pointer", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C++ TBAA"}
!77 = !DILocation(line: 27, column: 1, scope: !47)
!78 = !DISubprogram(name: "malloc", scope: !5, file: !5, line: 5, type: !79, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !32)
!79 = !DISubroutineType(types: !80)
!80 = !{!13, !23}
!81 = distinct !DISubprogram(name: "aligned_free", linkageName: "_ZN6Halide7Runtime8Internal12aligned_freeEPv", scope: !2, file: !5, line: 29, type: !82, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !13}
!84 = !{!85}
!85 = !DILocalVariable(name: "ptr", arg: 1, scope: !81, file: !5, line: 29, type: !13)
!86 = !DILocation(line: 0, scope: !81)
!87 = !DILocation(line: 30, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !81, file: !5, line: 30, column: 9)
!89 = !DILocation(line: 30, column: 9, scope: !81)
!90 = !DILocation(line: 31, column: 14, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !5, line: 30, column: 14)
!92 = !DILocation(line: 31, column: 9, scope: !91)
!93 = !DILocation(line: 32, column: 5, scope: !91)
!94 = !DILocation(line: 33, column: 1, scope: !81)
!95 = !DISubprogram(name: "free", scope: !5, file: !5, line: 6, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !32)
!96 = distinct !DISubprogram(name: "halide_allocator_cleanup", linkageName: "_ZN6Halide7Runtime8Internal24halide_allocator_cleanupEv", scope: !2, file: !5, line: 51, type: !97, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !99)
!97 = !DISubroutineType(types: !98)
!98 = !{null}
!99 = !{!100}
!100 = !DILocalVariable(name: "i", scope: !101, file: !5, line: 52, type: !7)
!101 = distinct !DILexicalBlock(scope: !96, file: !5, line: 52, column: 5)
!102 = !DILocation(line: 0, scope: !101)
!103 = !DILocation(line: 53, column: 22, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !5, line: 52, column: 43)
!105 = distinct !DILexicalBlock(scope: !101, file: !5, line: 52, column: 5)
!106 = !DILocation(line: 53, column: 9, scope: !104)
!107 = !DILocation(line: 55, column: 1, scope: !96)
!108 = distinct !DISubprogram(name: "halide_default_malloc", scope: !5, file: !5, line: 61, type: !19, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !109)
!109 = !{!110, !111, !112, !114}
!110 = !DILocalVariable(name: "user_context", arg: 1, scope: !108, file: !5, line: 61, type: !13)
!111 = !DILocalVariable(name: "x", arg: 2, scope: !108, file: !5, line: 61, type: !21)
!112 = !DILocalVariable(name: "alignment", scope: !108, file: !5, line: 63, type: !113)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!114 = !DILocalVariable(name: "i", scope: !115, file: !5, line: 66, type: !7)
!115 = distinct !DILexicalBlock(scope: !116, file: !5, line: 66, column: 9)
!116 = distinct !DILexicalBlock(scope: !117, file: !5, line: 65, column: 27)
!117 = distinct !DILexicalBlock(scope: !108, file: !5, line: 65, column: 9)
!118 = !DILocation(line: 0, scope: !108)
!119 = !DILocation(line: 65, column: 11, scope: !117)
!120 = !DILocation(line: 65, column: 9, scope: !108)
!121 = !DILocation(line: 0, scope: !115)
!122 = !DILocation(line: 67, column: 17, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !5, line: 67, column: 17)
!124 = distinct !DILexicalBlock(scope: !125, file: !5, line: 66, column: 47)
!125 = distinct !DILexicalBlock(scope: !115, file: !5, line: 66, column: 9)
!126 = !DILocation(line: 67, column: 68, scope: !123)
!127 = !DILocation(line: 67, column: 17, scope: !124)
!128 = !DILocation(line: 67, column: 57, scope: !123)
!129 = !DILocation(line: 68, column: 21, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !5, line: 68, column: 21)
!131 = distinct !DILexicalBlock(scope: !123, file: !5, line: 67, column: 74)
!132 = !DILocation(line: 68, column: 32, scope: !130)
!133 = !DILocation(line: 68, column: 21, scope: !131)
!134 = !DILocation(line: 69, column: 34, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !5, line: 68, column: 44)
!136 = !DILocation(line: 69, column: 32, scope: !135)
!137 = !DILocation(line: 70, column: 17, scope: !135)
!138 = !DILocation(line: 76, column: 12, scope: !108)
!139 = !DILocation(line: 76, column: 5, scope: !108)
!140 = !DILocation(line: 77, column: 1, scope: !108)
!141 = distinct !DISubprogram(name: "halide_default_free", scope: !5, file: !5, line: 79, type: !28, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !142)
!142 = !{!143, !144, !145}
!143 = !DILocalVariable(name: "user_context", arg: 1, scope: !141, file: !5, line: 79, type: !13)
!144 = !DILocalVariable(name: "ptr", arg: 2, scope: !141, file: !5, line: 79, type: !13)
!145 = !DILocalVariable(name: "i", scope: !146, file: !5, line: 80, type: !7)
!146 = distinct !DILexicalBlock(scope: !141, file: !5, line: 80, column: 5)
!147 = !DILocation(line: 0, scope: !141)
!148 = !DILocation(line: 0, scope: !146)
!149 = !DILocation(line: 81, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !5, line: 81, column: 13)
!151 = distinct !DILexicalBlock(scope: !152, file: !5, line: 80, column: 43)
!152 = distinct !DILexicalBlock(scope: !146, file: !5, line: 80, column: 5)
!153 = !DILocation(line: 81, column: 24, scope: !150)
!154 = !DILocation(line: 81, column: 13, scope: !151)
!155 = !DILocation(line: 82, column: 13, scope: !156)
!156 = distinct !DILexicalBlock(scope: !150, file: !5, line: 81, column: 32)
!157 = !DILocation(line: 82, column: 28, scope: !156)
!158 = !{!159, !159, i64 0}
!159 = !{!"int", !75, i64 0}
!160 = !DILocation(line: 88, column: 1, scope: !141)
!161 = !DILocation(line: 87, column: 5, scope: !141)
!162 = distinct !DISubprogram(name: "halide_set_custom_malloc", scope: !5, file: !5, line: 103, type: !163, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{!16, !16}
!165 = !{!166, !167}
!166 = !DILocalVariable(name: "user_malloc", arg: 1, scope: !162, file: !5, line: 103, type: !16)
!167 = !DILocalVariable(name: "result", scope: !162, file: !5, line: 106, type: !16)
!168 = !DILocation(line: 0, scope: !162)
!169 = !DILocation(line: 105, column: 5, scope: !162)
!170 = !DILocation(line: 106, column: 30, scope: !162)
!171 = !DILocation(line: 107, column: 19, scope: !162)
!172 = !DILocation(line: 108, column: 5, scope: !162)
!173 = !DISubprogram(name: "halide_print", scope: !17, file: !17, line: 97, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !32)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !13, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!179 = distinct !DISubprogram(name: "halide_set_custom_free", scope: !5, file: !5, line: 111, type: !180, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !182)
!180 = !DISubroutineType(types: !181)
!181 = !{!26, !26}
!182 = !{!183, !184}
!183 = !DILocalVariable(name: "user_free", arg: 1, scope: !179, file: !5, line: 111, type: !26)
!184 = !DILocalVariable(name: "result", scope: !179, file: !5, line: 114, type: !26)
!185 = !DILocation(line: 0, scope: !179)
!186 = !DILocation(line: 113, column: 5, scope: !179)
!187 = !DILocation(line: 114, column: 28, scope: !179)
!188 = !DILocation(line: 115, column: 17, scope: !179)
!189 = !DILocation(line: 116, column: 5, scope: !179)
!190 = distinct !DISubprogram(name: "halide_malloc", scope: !5, file: !5, line: 122, type: !19, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !191)
!191 = !{!192, !193}
!192 = !DILocalVariable(name: "user_context", arg: 1, scope: !190, file: !5, line: 122, type: !13)
!193 = !DILocalVariable(name: "x", arg: 2, scope: !190, file: !5, line: 122, type: !21)
!194 = !DILocation(line: 0, scope: !190)
!195 = !DILocation(line: 123, column: 12, scope: !190)
!196 = !DILocation(line: 123, column: 5, scope: !190)
!197 = distinct !DISubprogram(name: "halide_free", scope: !5, file: !5, line: 126, type: !28, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !198)
!198 = !{!199, !200}
!199 = !DILocalVariable(name: "user_context", arg: 1, scope: !197, file: !5, line: 126, type: !13)
!200 = !DILocalVariable(name: "ptr", arg: 2, scope: !197, file: !5, line: 126, type: !13)
!201 = !DILocation(line: 0, scope: !197)
!202 = !DILocation(line: 127, column: 5, scope: !197)
!203 = !DILocation(line: 128, column: 1, scope: !197)
