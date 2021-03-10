; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fake_thread_pool.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fake_thread_pool.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_parallel_task_t = type { i32 (i8*, i32, i32, i8*, i8*)*, i8*, i8*, %struct.halide_semaphore_acquire_t*, i32, i32, i32, i32, i8, [7 x i8] }
%struct.halide_semaphore_acquire_t = type { %struct.halide_semaphore_t*, i32, [4 x i8] }
%struct.halide_semaphore_t = type { [2 x i64] }
%struct.halide_mutex_array = type { %struct.halide_mutex* }
%struct.halide_mutex = type { [1 x i64] }
%struct.halide_thread = type opaque

@.str = private unnamed_addr constant [67 x i8] c"halide_default_do_parallel_tasks not implemented on this platform.\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"halide_default_semaphore_init not implemented on this platform.\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"halide_default_semaphore_release not implemented on this platform.\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"halide_default_semaphore_try_acquire not implemented on this platform.\00", align 1
@_ZN6Halide7Runtime8Internal14custom_do_taskE = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_default_do_task, align 8, !dbg !0
@_ZN6Halide7Runtime8Internal19custom_do_loop_taskE = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_default_do_loop_task, align 8, !dbg !21
@_ZN6Halide7Runtime8Internal17custom_do_par_forE = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_default_do_par_for, align 8, !dbg !31
@_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE = weak dso_local local_unnamed_addr global i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* @halide_default_do_parallel_tasks, align 8, !dbg !37
@_ZN6Halide7Runtime8Internal21custom_semaphore_initE = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_init, align 8, !dbg !45
@_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE = weak dso_local local_unnamed_addr global i1 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_try_acquire, align 8, !dbg !53
@_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_release, align 8, !dbg !60
@_ZN6Halide7Runtime8Internal23halide_fake_mutex_arrayE = weak dso_local global %struct.halide_mutex_array zeroinitializer, align 8, !dbg !63
@.str.4 = private unnamed_addr constant [54 x i8] c"halide_spawn_thread not implemented on this platform.\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"halide_join_thread not implemented on this platform.\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"halide_set_num_threads: only supports a value of 1 on this platform.\00", align 1

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #0 !dbg !88 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !90, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !91, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32 %2, metadata !92, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i8* %3, metadata !93, metadata !DIExpression()), !dbg !94
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #4, !dbg !95
  ret i32 %5, !dbg !96
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 !dbg !97 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !99, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !100, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i32 %2, metadata !101, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i32 %3, metadata !102, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i8* %4, metadata !103, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i8* %5, metadata !104, metadata !DIExpression()), !dbg !105
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #4, !dbg !106
  ret i32 %7, !dbg !107
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #0 !dbg !108 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !110, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !111, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32 %2, metadata !112, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32 %3, metadata !113, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i8* %4, metadata !114, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32 %2, metadata !115, metadata !DIExpression()), !dbg !121
  %6 = add nsw i32 %3, %2, !dbg !122
  %7 = icmp sgt i32 %3, 0, !dbg !123
  br i1 %7, label %10, label %15, !dbg !124

8:                                                ; preds = %10
  call void @llvm.dbg.value(metadata i32 %14, metadata !115, metadata !DIExpression()), !dbg !121
  %9 = icmp slt i32 %14, %6, !dbg !123
  br i1 %9, label %10, label %15, !dbg !124, !llvm.loop !125

10:                                               ; preds = %5, %8
  %11 = phi i32 [ %14, %8 ], [ %2, %5 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !115, metadata !DIExpression()), !dbg !121
  %12 = tail call i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %11, i8* %4) #5, !dbg !128
  call void @llvm.dbg.value(metadata i32 %12, metadata !117, metadata !DIExpression()), !dbg !129
  %13 = icmp eq i32 %12, 0, !dbg !130
  %14 = add nsw i32 %11, 1, !dbg !132
  call void @llvm.dbg.value(metadata i32 %14, metadata !115, metadata !DIExpression()), !dbg !121
  br i1 %13, label %8, label %15

15:                                               ; preds = %10, %8, %5
  %16 = phi i32 [ 0, %5 ], [ 0, %8 ], [ %12, %10 ]
  ret i32 %16, !dbg !133
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #0 !dbg !134 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !136, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !137, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i32 %2, metadata !138, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i8* %3, metadata !139, metadata !DIExpression()), !dbg !140
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !141, !tbaa !142
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #4, !dbg !146
  ret i32 %6, !dbg !147
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #0 !dbg !148 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !150, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i32 %1, metadata !151, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !152, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i8* %3, metadata !153, metadata !DIExpression()), !dbg !154
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0)) #4, !dbg !155
  ret i32 -1, !dbg !156
}

declare !dbg !157 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !163 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !165, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata i32 %1, metadata !166, metadata !DIExpression()), !dbg !167
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !168
  ret i32 0, !dbg !169
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !170 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !172, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i32 %1, metadata !173, metadata !DIExpression()), !dbg !174
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !175
  ret i32 0, !dbg !176
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !177 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !179, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i32 %1, metadata !180, metadata !DIExpression()), !dbg !181
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !182
  ret i1 false, !dbg !183
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #0 !dbg !184 {
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !193, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata i8* %1, metadata !194, metadata !DIExpression()), !dbg !195
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !196
  ret %struct.halide_thread* null, !dbg !197
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #0 !dbg !198 {
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !202, metadata !DIExpression()), !dbg !203
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !204
  ret void, !dbg !205
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #2 !dbg !206 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !210, metadata !DIExpression()), !dbg !211
  ret void, !dbg !212
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #2 !dbg !213 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !215, metadata !DIExpression()), !dbg !216
  ret void, !dbg !217
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #2 !dbg !218 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !223, metadata !DIExpression()), !dbg !224
  ret %struct.halide_mutex_array* @_ZN6Halide7Runtime8Internal23halide_fake_mutex_arrayE, !dbg !225
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #2 !dbg !226 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !230, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i8* %1, metadata !231, metadata !DIExpression()), !dbg !232
  ret void, !dbg !233
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #2 !dbg !234 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !238, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i32 %1, metadata !239, metadata !DIExpression()), !dbg !240
  ret i32 0, !dbg !241
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #2 !dbg !242 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !244, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i32 %1, metadata !245, metadata !DIExpression()), !dbg !246
  ret i32 0, !dbg !247
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_shutdown_thread_pool() local_unnamed_addr #2 !dbg !248 {
  ret void, !dbg !251
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #0 !dbg !252 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !256, metadata !DIExpression()), !dbg !257
  %2 = icmp eq i32 %0, 1, !dbg !258
  br i1 %2, label %4, label %3, !dbg !260

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !261
  br label %4, !dbg !263

4:                                                ; preds = %3, %1
  ret i32 1, !dbg !264
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #2 !dbg !265 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, metadata !269, metadata !DIExpression()), !dbg !271
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !272, !tbaa !142
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, metadata !270, metadata !DIExpression()), !dbg !271
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !273, !tbaa !142
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, !dbg !274
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #2 !dbg !275 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !279, metadata !DIExpression()), !dbg !281
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !282, !tbaa !142
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, metadata !280, metadata !DIExpression()), !dbg !281
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !283, !tbaa !142
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, !dbg !284
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #0 !dbg !285 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !287, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !288, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 %2, metadata !289, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 %3, metadata !290, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i8* %4, metadata !291, metadata !DIExpression()), !dbg !292
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !293, !tbaa !142
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #4, !dbg !294
  ret i32 %7, !dbg !295
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #0 !dbg !296 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !298, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !299, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i32 %2, metadata !300, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i32 %3, metadata !301, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i8* %4, metadata !302, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i8* %5, metadata !303, metadata !DIExpression()), !dbg !304
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !305, !tbaa !142
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #4, !dbg !305
  ret i32 %8, !dbg !306
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #0 !dbg !307 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !309, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i32 %1, metadata !310, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !311, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i8* %3, metadata !312, metadata !DIExpression()), !dbg !313
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 8, !dbg !314, !tbaa !142
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #4, !dbg !314
  ret i32 %6, !dbg !315
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !316 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !318, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata i32 %1, metadata !319, metadata !DIExpression()), !dbg !320
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 8, !dbg !321, !tbaa !142
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #4, !dbg !321
  ret i32 %4, !dbg !322
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !323 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !325, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i32 %1, metadata !326, metadata !DIExpression()), !dbg !327
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 8, !dbg !328, !tbaa !142
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #4, !dbg !328
  ret i32 %4, !dbg !329
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !330 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !332, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i32 %1, metadata !333, metadata !DIExpression()), !dbg !334
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 8, !dbg !335, !tbaa !142
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #4, !dbg !335
  ret i1 %4, !dbg !336
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!78}
!llvm.module.flags = !{!84, !85, !86}
!llvm.ident = !{!87}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "custom_do_task", linkageName: "_ZN6Halide7Runtime8Internal14custom_do_taskE", scope: !2, file: !5, line: 61, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/fake_thread_pool.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_task_t", file: !7, line: 259, baseType: !8)
!7 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12, !13, !11, !17}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_task_t", file: !7, line: 158, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{!11, !12, !11, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !19, line: 16, baseType: !20)
!19 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "custom_do_loop_task", linkageName: "_ZN6Halide7Runtime8Internal19custom_do_loop_taskE", scope: !2, file: !5, line: 62, type: !23, isLocal: false, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_loop_task_t", file: !7, line: 268, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DISubroutineType(types: !26)
!26 = !{!11, !12, !27, !11, !11, !17, !12}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_loop_task_t", file: !7, line: 192, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{!11, !12, !11, !11, !17, !12}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "custom_do_par_for", linkageName: "_ZN6Halide7Runtime8Internal17custom_do_par_forE", scope: !2, file: !5, line: 63, type: !33, isLocal: false, isDefinition: true)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_par_for_t", file: !7, line: 167, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!11, !12, !13, !11, !11, !17}
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "custom_do_parallel_tasks", linkageName: "_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE", scope: !2, file: !5, line: 64, type: !39, isLocal: false, isDefinition: true)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_parallel_tasks_t", file: !7, line: 281, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!11, !12, !11, !43, !12}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_parallel_task_t", file: !7, line: 201, size: 448, flags: DIFlagFwdDecl, identifier: "_ZTS22halide_parallel_task_t")
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "custom_semaphore_init", linkageName: "_ZN6Halide7Runtime8Internal21custom_semaphore_initE", scope: !2, file: !5, line: 65, type: !47, isLocal: false, isDefinition: true)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_init_t", file: !7, line: 184, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!11, !51, !11}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_t", file: !7, line: 171, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS18halide_semaphore_t")
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "custom_semaphore_try_acquire", linkageName: "_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE", scope: !2, file: !5, line: 66, type: !55, isLocal: false, isDefinition: true)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_try_acquire_t", file: !7, line: 186, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !51, !11}
!59 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "custom_semaphore_release", linkageName: "_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE", scope: !2, file: !5, line: 67, type: !62, isLocal: false, isDefinition: true)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_release_t", file: !7, line: 185, baseType: !48)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "halide_fake_mutex_array", linkageName: "_ZN6Halide7Runtime8Internal23halide_fake_mutex_arrayE", scope: !2, file: !5, line: 68, type: !65, isLocal: false, isDefinition: true)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex_array", file: !5, line: 7, size: 64, flags: DIFlagTypePassByValue, elements: !66, identifier: "_ZTS18halide_mutex_array")
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !65, file: !5, line: 8, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !7, line: 120, size: 64, flags: DIFlagTypePassByValue, elements: !70, identifier: "_ZTS12halide_mutex")
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !69, file: !7, line: 121, baseType: !72, size: 64)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !76)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !19, line: 61, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !19, line: 10, baseType: !75)
!75 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !{!77}
!77 = !DISubrange(count: 1)
!78 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !79, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !80, globals: !81, imports: !82, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/fake_thread_pool.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!80 = !{}
!81 = !{!0, !21, !31, !37, !45, !53, !60, !63}
!82 = !{!83}
!83 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !78, entity: !2, file: !19, line: 225)
!84 = !{i32 7, !"Dwarf Version", i32 4}
!85 = !{i32 2, !"Debug Info Version", i32 3}
!86 = !{i32 1, !"wchar_size", i32 4}
!87 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!88 = distinct !DISubprogram(name: "halide_default_do_task", scope: !5, file: !5, line: 11, type: !9, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !89)
!89 = !{!90, !91, !92, !93}
!90 = !DILocalVariable(name: "user_context", arg: 1, scope: !88, file: !5, line: 11, type: !12)
!91 = !DILocalVariable(name: "f", arg: 2, scope: !88, file: !5, line: 11, type: !13)
!92 = !DILocalVariable(name: "idx", arg: 3, scope: !88, file: !5, line: 11, type: !11)
!93 = !DILocalVariable(name: "closure", arg: 4, scope: !88, file: !5, line: 12, type: !17)
!94 = !DILocation(line: 0, scope: !88)
!95 = !DILocation(line: 13, column: 12, scope: !88)
!96 = !DILocation(line: 13, column: 5, scope: !88)
!97 = distinct !DISubprogram(name: "halide_default_do_loop_task", scope: !5, file: !5, line: 16, type: !25, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !98)
!98 = !{!99, !100, !101, !102, !103, !104}
!99 = !DILocalVariable(name: "user_context", arg: 1, scope: !97, file: !5, line: 16, type: !12)
!100 = !DILocalVariable(name: "f", arg: 2, scope: !97, file: !5, line: 16, type: !27)
!101 = !DILocalVariable(name: "min", arg: 3, scope: !97, file: !5, line: 17, type: !11)
!102 = !DILocalVariable(name: "extent", arg: 4, scope: !97, file: !5, line: 17, type: !11)
!103 = !DILocalVariable(name: "closure", arg: 5, scope: !97, file: !5, line: 17, type: !17)
!104 = !DILocalVariable(name: "task_parent", arg: 6, scope: !97, file: !5, line: 18, type: !12)
!105 = !DILocation(line: 0, scope: !97)
!106 = !DILocation(line: 19, column: 12, scope: !97)
!107 = !DILocation(line: 19, column: 5, scope: !97)
!108 = distinct !DISubprogram(name: "halide_default_do_par_for", scope: !5, file: !5, line: 22, type: !35, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !109)
!109 = !{!110, !111, !112, !113, !114, !115, !117}
!110 = !DILocalVariable(name: "user_context", arg: 1, scope: !108, file: !5, line: 22, type: !12)
!111 = !DILocalVariable(name: "f", arg: 2, scope: !108, file: !5, line: 22, type: !13)
!112 = !DILocalVariable(name: "min", arg: 3, scope: !108, file: !5, line: 23, type: !11)
!113 = !DILocalVariable(name: "size", arg: 4, scope: !108, file: !5, line: 23, type: !11)
!114 = !DILocalVariable(name: "closure", arg: 5, scope: !108, file: !5, line: 23, type: !17)
!115 = !DILocalVariable(name: "x", scope: !116, file: !5, line: 24, type: !11)
!116 = distinct !DILexicalBlock(scope: !108, file: !5, line: 24, column: 5)
!117 = !DILocalVariable(name: "result", scope: !118, file: !5, line: 25, type: !11)
!118 = distinct !DILexicalBlock(scope: !119, file: !5, line: 24, column: 44)
!119 = distinct !DILexicalBlock(scope: !116, file: !5, line: 24, column: 5)
!120 = !DILocation(line: 0, scope: !108)
!121 = !DILocation(line: 0, scope: !116)
!122 = !DILocation(line: 24, column: 31, scope: !119)
!123 = !DILocation(line: 24, column: 25, scope: !119)
!124 = !DILocation(line: 24, column: 5, scope: !116)
!125 = distinct !{!125, !124, !126, !127}
!126 = !DILocation(line: 29, column: 5, scope: !116)
!127 = !{!"llvm.loop.mustprogress"}
!128 = !DILocation(line: 25, column: 22, scope: !118)
!129 = !DILocation(line: 0, scope: !118)
!130 = !DILocation(line: 26, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !118, file: !5, line: 26, column: 13)
!132 = !DILocation(line: 24, column: 40, scope: !119)
!133 = !DILocation(line: 31, column: 1, scope: !108)
!134 = distinct !DISubprogram(name: "halide_do_task", scope: !5, file: !5, line: 136, type: !9, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !135)
!135 = !{!136, !137, !138, !139}
!136 = !DILocalVariable(name: "user_context", arg: 1, scope: !134, file: !5, line: 136, type: !12)
!137 = !DILocalVariable(name: "f", arg: 2, scope: !134, file: !5, line: 136, type: !13)
!138 = !DILocalVariable(name: "idx", arg: 3, scope: !134, file: !5, line: 136, type: !11)
!139 = !DILocalVariable(name: "closure", arg: 4, scope: !134, file: !5, line: 137, type: !17)
!140 = !DILocation(line: 0, scope: !134)
!141 = !DILocation(line: 138, column: 14, scope: !134)
!142 = !{!143, !143, i64 0}
!143 = !{!"any pointer", !144, i64 0}
!144 = !{!"omnipotent char", !145, i64 0}
!145 = !{!"Simple C++ TBAA"}
!146 = !DILocation(line: 138, column: 12, scope: !134)
!147 = !DILocation(line: 138, column: 5, scope: !134)
!148 = distinct !DISubprogram(name: "halide_default_do_parallel_tasks", scope: !5, file: !5, line: 33, type: !41, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !149)
!149 = !{!150, !151, !152, !153}
!150 = !DILocalVariable(name: "user_context", arg: 1, scope: !148, file: !5, line: 33, type: !12)
!151 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !148, file: !5, line: 33, type: !11)
!152 = !DILocalVariable(name: "tasks", arg: 3, scope: !148, file: !5, line: 34, type: !43)
!153 = !DILocalVariable(name: "task_parent", arg: 4, scope: !148, file: !5, line: 35, type: !12)
!154 = !DILocation(line: 0, scope: !148)
!155 = !DILocation(line: 36, column: 5, scope: !148)
!156 = !DILocation(line: 37, column: 5, scope: !148)
!157 = !DISubprogram(name: "halide_error", scope: !7, file: !7, line: 111, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !80)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !12, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!163 = distinct !DISubprogram(name: "halide_default_semaphore_init", scope: !5, file: !5, line: 40, type: !49, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !164)
!164 = !{!165, !166}
!165 = !DILocalVariable(name: "s", arg: 1, scope: !163, file: !5, line: 40, type: !51)
!166 = !DILocalVariable(name: "n", arg: 2, scope: !163, file: !5, line: 40, type: !11)
!167 = !DILocation(line: 0, scope: !163)
!168 = !DILocation(line: 41, column: 5, scope: !163)
!169 = !DILocation(line: 42, column: 5, scope: !163)
!170 = distinct !DISubprogram(name: "halide_default_semaphore_release", scope: !5, file: !5, line: 45, type: !49, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !171)
!171 = !{!172, !173}
!172 = !DILocalVariable(name: "s", arg: 1, scope: !170, file: !5, line: 45, type: !51)
!173 = !DILocalVariable(name: "n", arg: 2, scope: !170, file: !5, line: 45, type: !11)
!174 = !DILocation(line: 0, scope: !170)
!175 = !DILocation(line: 46, column: 5, scope: !170)
!176 = !DILocation(line: 47, column: 5, scope: !170)
!177 = distinct !DISubprogram(name: "halide_default_semaphore_try_acquire", scope: !5, file: !5, line: 50, type: !57, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !178)
!178 = !{!179, !180}
!179 = !DILocalVariable(name: "s", arg: 1, scope: !177, file: !5, line: 50, type: !51)
!180 = !DILocalVariable(name: "n", arg: 2, scope: !177, file: !5, line: 50, type: !11)
!181 = !DILocation(line: 0, scope: !177)
!182 = !DILocation(line: 51, column: 5, scope: !177)
!183 = !DILocation(line: 52, column: 5, scope: !177)
!184 = distinct !DISubprogram(name: "halide_spawn_thread", scope: !5, file: !5, line: 76, type: !185, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !192)
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !189, !12}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_thread", file: !7, line: 312, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS13halide_thread")
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !12}
!192 = !{!193, !194}
!193 = !DILocalVariable(name: "f", arg: 1, scope: !184, file: !5, line: 76, type: !189)
!194 = !DILocalVariable(name: "closure", arg: 2, scope: !184, file: !5, line: 76, type: !12)
!195 = !DILocation(line: 0, scope: !184)
!196 = !DILocation(line: 78, column: 5, scope: !184)
!197 = !DILocation(line: 79, column: 5, scope: !184)
!198 = distinct !DISubprogram(name: "halide_join_thread", scope: !5, file: !5, line: 82, type: !199, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !201)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !187}
!201 = !{!202}
!202 = !DILocalVariable(name: "thread_arg", arg: 1, scope: !198, file: !5, line: 82, type: !187)
!203 = !DILocation(line: 0, scope: !198)
!204 = !DILocation(line: 83, column: 5, scope: !198)
!205 = !DILocation(line: 84, column: 1, scope: !198)
!206 = distinct !DISubprogram(name: "halide_mutex_lock", scope: !5, file: !5, line: 87, type: !207, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !209)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !68}
!209 = !{!210}
!210 = !DILocalVariable(name: "mutex", arg: 1, scope: !206, file: !5, line: 87, type: !68)
!211 = !DILocation(line: 0, scope: !206)
!212 = !DILocation(line: 88, column: 1, scope: !206)
!213 = distinct !DISubprogram(name: "halide_mutex_unlock", scope: !5, file: !5, line: 90, type: !207, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !214)
!214 = !{!215}
!215 = !DILocalVariable(name: "mutex", arg: 1, scope: !213, file: !5, line: 90, type: !68)
!216 = !DILocation(line: 0, scope: !213)
!217 = !DILocation(line: 91, column: 1, scope: !213)
!218 = distinct !DISubprogram(name: "halide_mutex_array_create", scope: !5, file: !5, line: 98, type: !219, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !222)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !11}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!222 = !{!223}
!223 = !DILocalVariable(name: "sz", arg: 1, scope: !218, file: !5, line: 98, type: !11)
!224 = !DILocation(line: 0, scope: !218)
!225 = !DILocation(line: 99, column: 5, scope: !218)
!226 = distinct !DISubprogram(name: "halide_mutex_array_destroy", scope: !5, file: !5, line: 102, type: !227, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !229)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !12, !12}
!229 = !{!230, !231}
!230 = !DILocalVariable(name: "user_context", arg: 1, scope: !226, file: !5, line: 102, type: !12)
!231 = !DILocalVariable(name: "array", arg: 2, scope: !226, file: !5, line: 102, type: !12)
!232 = !DILocation(line: 0, scope: !226)
!233 = !DILocation(line: 104, column: 1, scope: !226)
!234 = distinct !DISubprogram(name: "halide_mutex_array_lock", scope: !5, file: !5, line: 106, type: !235, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !237)
!235 = !DISubroutineType(types: !236)
!236 = !{!11, !221, !11}
!237 = !{!238, !239}
!238 = !DILocalVariable(name: "array", arg: 1, scope: !234, file: !5, line: 106, type: !221)
!239 = !DILocalVariable(name: "entry", arg: 2, scope: !234, file: !5, line: 106, type: !11)
!240 = !DILocation(line: 0, scope: !234)
!241 = !DILocation(line: 107, column: 5, scope: !234)
!242 = distinct !DISubprogram(name: "halide_mutex_array_unlock", scope: !5, file: !5, line: 110, type: !235, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !243)
!243 = !{!244, !245}
!244 = !DILocalVariable(name: "array", arg: 1, scope: !242, file: !5, line: 110, type: !221)
!245 = !DILocalVariable(name: "entry", arg: 2, scope: !242, file: !5, line: 110, type: !11)
!246 = !DILocation(line: 0, scope: !242)
!247 = !DILocation(line: 111, column: 5, scope: !242)
!248 = distinct !DISubprogram(name: "halide_shutdown_thread_pool", scope: !5, file: !5, line: 114, type: !249, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !80)
!249 = !DISubroutineType(types: !250)
!250 = !{null}
!251 = !DILocation(line: 115, column: 1, scope: !248)
!252 = distinct !DISubprogram(name: "halide_set_num_threads", scope: !5, file: !5, line: 117, type: !253, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{!11, !11}
!255 = !{!256}
!256 = !DILocalVariable(name: "n", arg: 1, scope: !252, file: !5, line: 117, type: !11)
!257 = !DILocation(line: 0, scope: !252)
!258 = !DILocation(line: 118, column: 11, scope: !259)
!259 = distinct !DILexicalBlock(scope: !252, file: !5, line: 118, column: 9)
!260 = !DILocation(line: 118, column: 9, scope: !252)
!261 = !DILocation(line: 119, column: 9, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !5, line: 118, column: 17)
!263 = !DILocation(line: 120, column: 5, scope: !262)
!264 = !DILocation(line: 121, column: 5, scope: !252)
!265 = distinct !DISubprogram(name: "halide_set_custom_do_task", scope: !5, file: !5, line: 124, type: !266, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !268)
!266 = !DISubroutineType(types: !267)
!267 = !{!6, !6}
!268 = !{!269, !270}
!269 = !DILocalVariable(name: "f", arg: 1, scope: !265, file: !5, line: 124, type: !6)
!270 = !DILocalVariable(name: "result", scope: !265, file: !5, line: 125, type: !6)
!271 = !DILocation(line: 0, scope: !265)
!272 = !DILocation(line: 125, column: 31, scope: !265)
!273 = !DILocation(line: 126, column: 20, scope: !265)
!274 = !DILocation(line: 127, column: 5, scope: !265)
!275 = distinct !DISubprogram(name: "halide_set_custom_do_par_for", scope: !5, file: !5, line: 130, type: !276, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{!33, !33}
!278 = !{!279, !280}
!279 = !DILocalVariable(name: "f", arg: 1, scope: !275, file: !5, line: 130, type: !33)
!280 = !DILocalVariable(name: "result", scope: !275, file: !5, line: 131, type: !33)
!281 = !DILocation(line: 0, scope: !275)
!282 = !DILocation(line: 131, column: 34, scope: !275)
!283 = !DILocation(line: 132, column: 23, scope: !275)
!284 = !DILocation(line: 133, column: 5, scope: !275)
!285 = distinct !DISubprogram(name: "halide_do_par_for", scope: !5, file: !5, line: 141, type: !35, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !286)
!286 = !{!287, !288, !289, !290, !291}
!287 = !DILocalVariable(name: "user_context", arg: 1, scope: !285, file: !5, line: 141, type: !12)
!288 = !DILocalVariable(name: "f", arg: 2, scope: !285, file: !5, line: 141, type: !13)
!289 = !DILocalVariable(name: "min", arg: 3, scope: !285, file: !5, line: 142, type: !11)
!290 = !DILocalVariable(name: "size", arg: 4, scope: !285, file: !5, line: 142, type: !11)
!291 = !DILocalVariable(name: "closure", arg: 5, scope: !285, file: !5, line: 142, type: !17)
!292 = !DILocation(line: 0, scope: !285)
!293 = !DILocation(line: 143, column: 14, scope: !285)
!294 = !DILocation(line: 143, column: 12, scope: !285)
!295 = !DILocation(line: 143, column: 5, scope: !285)
!296 = distinct !DISubprogram(name: "halide_do_loop_task", scope: !5, file: !5, line: 146, type: !25, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !297)
!297 = !{!298, !299, !300, !301, !302, !303}
!298 = !DILocalVariable(name: "user_context", arg: 1, scope: !296, file: !5, line: 146, type: !12)
!299 = !DILocalVariable(name: "f", arg: 2, scope: !296, file: !5, line: 146, type: !27)
!300 = !DILocalVariable(name: "min", arg: 3, scope: !296, file: !5, line: 147, type: !11)
!301 = !DILocalVariable(name: "size", arg: 4, scope: !296, file: !5, line: 147, type: !11)
!302 = !DILocalVariable(name: "closure", arg: 5, scope: !296, file: !5, line: 147, type: !17)
!303 = !DILocalVariable(name: "task_parent", arg: 6, scope: !296, file: !5, line: 147, type: !12)
!304 = !DILocation(line: 0, scope: !296)
!305 = !DILocation(line: 148, column: 12, scope: !296)
!306 = !DILocation(line: 148, column: 5, scope: !296)
!307 = distinct !DISubprogram(name: "halide_do_parallel_tasks", scope: !5, file: !5, line: 151, type: !41, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !308)
!308 = !{!309, !310, !311, !312}
!309 = !DILocalVariable(name: "user_context", arg: 1, scope: !307, file: !5, line: 151, type: !12)
!310 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !307, file: !5, line: 151, type: !11)
!311 = !DILocalVariable(name: "tasks", arg: 3, scope: !307, file: !5, line: 152, type: !43)
!312 = !DILocalVariable(name: "task_parent", arg: 4, scope: !307, file: !5, line: 153, type: !12)
!313 = !DILocation(line: 0, scope: !307)
!314 = !DILocation(line: 154, column: 12, scope: !307)
!315 = !DILocation(line: 154, column: 5, scope: !307)
!316 = distinct !DISubprogram(name: "halide_semaphore_init", scope: !5, file: !5, line: 157, type: !49, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !317)
!317 = !{!318, !319}
!318 = !DILocalVariable(name: "sema", arg: 1, scope: !316, file: !5, line: 157, type: !51)
!319 = !DILocalVariable(name: "count", arg: 2, scope: !316, file: !5, line: 157, type: !11)
!320 = !DILocation(line: 0, scope: !316)
!321 = !DILocation(line: 158, column: 12, scope: !316)
!322 = !DILocation(line: 158, column: 5, scope: !316)
!323 = distinct !DISubprogram(name: "halide_semaphore_release", scope: !5, file: !5, line: 161, type: !49, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !324)
!324 = !{!325, !326}
!325 = !DILocalVariable(name: "sema", arg: 1, scope: !323, file: !5, line: 161, type: !51)
!326 = !DILocalVariable(name: "count", arg: 2, scope: !323, file: !5, line: 161, type: !11)
!327 = !DILocation(line: 0, scope: !323)
!328 = !DILocation(line: 162, column: 12, scope: !323)
!329 = !DILocation(line: 162, column: 5, scope: !323)
!330 = distinct !DISubprogram(name: "halide_semaphore_try_acquire", scope: !5, file: !5, line: 165, type: !57, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !331)
!331 = !{!332, !333}
!332 = !DILocalVariable(name: "sema", arg: 1, scope: !330, file: !5, line: 165, type: !51)
!333 = !DILocalVariable(name: "count", arg: 2, scope: !330, file: !5, line: 165, type: !11)
!334 = !DILocation(line: 0, scope: !330)
!335 = !DILocation(line: 166, column: 12, scope: !330)
!336 = !DILocation(line: 166, column: 5, scope: !330)
