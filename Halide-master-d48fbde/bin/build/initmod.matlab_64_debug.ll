; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/matlab.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/matlab.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.mxArray = type opaque
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%struct.halide_filter_metadata_t = type { i32, i32, %struct.halide_filter_argument_t*, i8*, i8* }
%struct.halide_filter_argument_t = type { i8*, i32, i32, %struct.halide_type_t, %struct.halide_scalar_value_t*, %struct.halide_scalar_value_t*, %struct.halide_scalar_value_t*, %struct.halide_scalar_value_t*, i64** }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_scalar_value_t = type { %union.anon }
%union.anon = type { double }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type opaque
%struct.halide_dimension_t = type { i32, i32, i32, i32 }

@_ZN6Halide7Runtime3mex13mexWarnMsgTxtE = dso_local local_unnamed_addr global void (i8*)* null, align 8, !dbg !0
@_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E = dso_local local_unnamed_addr global i64 (%struct.mxArray*)* null, align 8, !dbg !12
@_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E = dso_local local_unnamed_addr global i32 (%struct.mxArray*)* null, align 8, !dbg !23
@_ZN6Halide7Runtime3mex19mxGetDimensions_730E = dso_local local_unnamed_addr global i64* (%struct.mxArray*)* null, align 8, !dbg !29
@_ZN6Halide7Runtime3mex19mxGetDimensions_700E = dso_local local_unnamed_addr global i32* (%struct.mxArray*)* null, align 8, !dbg !36
@_ZN6Halide7Runtime3mex12mxGetClassIDE = dso_local local_unnamed_addr global i32 (%struct.mxArray*)* null, align 8, !dbg !43
@_ZN6Halide7Runtime3mex9mxGetDataE = dso_local local_unnamed_addr global i8* (%struct.mxArray*)* null, align 8, !dbg !73
@_ZN6Halide7Runtime3mex11mxIsNumericE = dso_local local_unnamed_addr global i1 (%struct.mxArray*)* null, align 8, !dbg !79
@_ZN6Halide7Runtime3mex11mxIsLogicalE = dso_local local_unnamed_addr global i1 (%struct.mxArray*)* null, align 8, !dbg !85
@_ZN6Halide7Runtime3mex11mxIsComplexE = dso_local local_unnamed_addr global i1 (%struct.mxArray*)* null, align 8, !dbg !87
@_ZN6Halide7Runtime3mex11mxGetScalarE = dso_local local_unnamed_addr global double (%struct.mxArray*)* null, align 8, !dbg !89
@_ZN6Halide7Runtime3mex16mxGetElementSizeE = dso_local local_unnamed_addr global i64 (%struct.mxArray*)* null, align 8, !dbg !95
@_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_730E = dso_local local_unnamed_addr global %struct.mxArray* (i64, i64, i32, i32)* null, align 8, !dbg !97
@_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_700E = dso_local local_unnamed_addr global %struct.mxArray* (i32, i32, i32, i32)* null, align 8, !dbg !107
@.str = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"int8\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"uint8\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"int16\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"uint16\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"int32\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"uint32\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"int64\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"uint64\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"int \00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"out \00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"d \00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"scalar \00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c" '\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Note pipeline definition:\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"\0AHalide Error: \00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"mexWarnMsgTxt\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"mxGetNumberOfDimensions_730\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"mxGetNumberOfDimensions\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"mxGetDimensions_730\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"mxGetDimensions\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"mxGetClassID\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"mxGetData\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"mxIsNumeric\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"mxIsLogical\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"mxIsComplex\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"mxGetScalar\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"mxGetElementSize\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"mxCreateNumericMatrix_730\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"mxCreateNumericMatrix\00", align 1
@.str.44 = private unnamed_addr constant [46 x i8] c"Complex argument not supported for parameter \00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"Expected type of class \00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c" for argument \00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c", got class \00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"Expected array of rank \00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c", got array of rank \00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"Expected scalar argument for parameter \00", align 1
@.str.52 = private unnamed_addr constant [48 x i8] c"Expected numeric argument for scalar parameter \00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c", got \00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"Parameter \00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c" is of a type not supported by Matlab.\0A\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"Halide metadata for \00", align 1
@.str.57 = private unnamed_addr constant [54 x i8] c" contained invalid or unrecognized type description.\0A\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"Expected \00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c" arguments for Halide pipeline \00", align 1
@.str.60 = private unnamed_addr constant [55 x i8] c"Expected zero or one return value for Halide pipeline \00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"mex API not found: \00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime3mex12get_class_idEii(i32 %0, i32 %1) local_unnamed_addr #0 !dbg !453 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !457, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 %1, metadata !458, metadata !DIExpression()), !dbg !459
  switch i32 %0, label %20 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %15
  ], !dbg !460

3:                                                ; preds = %2
  switch i32 %1, label %8 [
    i32 1, label %20
    i32 8, label %4
    i32 16, label %5
    i32 32, label %6
    i32 64, label %7
  ], !dbg !461

4:                                                ; preds = %3
  br label %20, !dbg !463

5:                                                ; preds = %3
  br label %20, !dbg !465

6:                                                ; preds = %3
  br label %20, !dbg !466

7:                                                ; preds = %3
  br label %20, !dbg !467

8:                                                ; preds = %3
  br label %20, !dbg !468

9:                                                ; preds = %2
  switch i32 %1, label %14 [
    i32 1, label %20
    i32 8, label %10
    i32 16, label %11
    i32 32, label %12
    i32 64, label %13
  ], !dbg !469

10:                                               ; preds = %9
  br label %20, !dbg !470

11:                                               ; preds = %9
  br label %20, !dbg !472

12:                                               ; preds = %9
  br label %20, !dbg !473

13:                                               ; preds = %9
  br label %20, !dbg !474

14:                                               ; preds = %9
  br label %20, !dbg !475

15:                                               ; preds = %2
  %16 = icmp eq i32 %1, 64, !dbg !476
  %17 = select i1 %16, i32 6, i32 0, !dbg !476
  %18 = icmp eq i32 %1, 32, !dbg !476
  %19 = select i1 %18, i32 7, i32 %17, !dbg !476
  br label %20, !dbg !476

20:                                               ; preds = %2, %15, %9, %3, %14, %13, %12, %11, %10, %8, %7, %6, %5, %4
  %21 = phi i32 [ 0, %14 ], [ 15, %13 ], [ 13, %12 ], [ 11, %11 ], [ 9, %10 ], [ 0, %8 ], [ 14, %7 ], [ 12, %6 ], [ 10, %5 ], [ 8, %4 ], [ 3, %3 ], [ 3, %9 ], [ %19, %15 ], [ 0, %2 ], !dbg !459
  ret i32 %21, !dbg !477
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %0) local_unnamed_addr #0 !dbg !478 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !482, metadata !DIExpression()), !dbg !483
  switch i32 %0, label %19 [
    i32 1, label %20
    i32 2, label %2
    i32 3, label %3
    i32 4, label %4
    i32 5, label %5
    i32 6, label %6
    i32 7, label %7
    i32 8, label %8
    i32 9, label %9
    i32 10, label %10
    i32 11, label %11
    i32 12, label %12
    i32 13, label %13
    i32 14, label %14
    i32 15, label %15
    i32 16, label %16
    i32 17, label %17
    i32 18, label %18
  ], !dbg !484

2:                                                ; preds = %1
  br label %20, !dbg !485

3:                                                ; preds = %1
  br label %20, !dbg !487

4:                                                ; preds = %1
  br label %20, !dbg !488

5:                                                ; preds = %1
  br label %20, !dbg !489

6:                                                ; preds = %1
  br label %20, !dbg !490

7:                                                ; preds = %1
  br label %20, !dbg !491

8:                                                ; preds = %1
  br label %20, !dbg !492

9:                                                ; preds = %1
  br label %20, !dbg !493

10:                                               ; preds = %1
  br label %20, !dbg !494

11:                                               ; preds = %1
  br label %20, !dbg !495

12:                                               ; preds = %1
  br label %20, !dbg !496

13:                                               ; preds = %1
  br label %20, !dbg !497

14:                                               ; preds = %1
  br label %20, !dbg !498

15:                                               ; preds = %1
  br label %20, !dbg !499

16:                                               ; preds = %1
  br label %20, !dbg !500

17:                                               ; preds = %1
  br label %20, !dbg !501

18:                                               ; preds = %1
  br label %20, !dbg !502

19:                                               ; preds = %1
  br label %20, !dbg !503

20:                                               ; preds = %1, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %21 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), %19 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), %18 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %17 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), %16 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), %15 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), %14 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), %13 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %12 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), %11 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), %10 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), %9 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %8 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %7 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %6 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %5 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %4 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %3 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %2 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %1 ], !dbg !504
  ret i8* %21, !dbg !505
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_matlab_describe_pipeline(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(34) %0, %struct.halide_filter_metadata_t* %1) local_unnamed_addr #2 !dbg !506 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !609, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.value(metadata %struct.halide_filter_metadata_t* %1, metadata !610, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !622
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !622
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i64 0, i32 1, !dbg !624
  %4 = load i8*, i8** %3, align 8, !dbg !624, !tbaa !627
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i64 0, i32 2, !dbg !633
  %6 = load i8*, i8** %5, align 8, !dbg !633, !tbaa !634
  %7 = tail call i8* @halide_string_to_string(i8* %4, i8* %6, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !635
  store i8* %7, i8** %3, align 8, !dbg !636, !tbaa !627
  %8 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %1, i64 0, i32 4, !dbg !637
  %9 = load i8*, i8** %8, align 8, !dbg !637, !tbaa !638
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !641
  call void @llvm.dbg.value(metadata i8* %9, metadata !620, metadata !DIExpression()) #6, !dbg !641
  %10 = icmp eq i8* %9, null, !dbg !643
  %11 = load i8*, i8** %5, align 8, !dbg !644, !tbaa !634
  br i1 %10, label %12, label %14, !dbg !645

12:                                               ; preds = %2
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !646
  br label %16, !dbg !648

14:                                               ; preds = %2
  %15 = tail call i8* @halide_string_to_string(i8* %7, i8* %11, i8* nonnull %9) #7, !dbg !649
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ], !dbg !644
  store i8* %17, i8** %3, align 8, !dbg !644, !tbaa !627
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !650
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !650
  %18 = load i8*, i8** %5, align 8, !dbg !652, !tbaa !634
  %19 = tail call i8* @halide_string_to_string(i8* %17, i8* %18, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !653
  store i8* %19, i8** %3, align 8, !dbg !654, !tbaa !627
  call void @llvm.dbg.value(metadata i32 0, metadata !611, metadata !DIExpression()), !dbg !655
  %20 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %1, i64 0, i32 1, !dbg !656
  %21 = load i32, i32* %20, align 4, !dbg !656, !tbaa !657
  %22 = icmp sgt i32 %21, 0, !dbg !658
  br i1 %22, label %23, label %84, !dbg !659

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %1, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !611, metadata !DIExpression()), !dbg !655
  %25 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %24, align 8, !dbg !660, !tbaa !661
  call void @llvm.dbg.value(metadata %struct.halide_filter_argument_t* undef, metadata !613, metadata !DIExpression()), !dbg !662
  %26 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i64 0, i32 1
  %27 = load i32, i32* %26, align 8, !dbg !663, !tbaa !665
  %28 = icmp eq i32 %27, 2, !dbg !670
  br i1 %28, label %29, label %34, !dbg !671

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i64 0, i32 1, !dbg !663
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !672
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !672
  %31 = load i8*, i8** %5, align 8, !dbg !675, !tbaa !634
  %32 = tail call i8* @halide_string_to_string(i8* %19, i8* %31, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !676
  store i8* %32, i8** %3, align 8, !dbg !677, !tbaa !627
  %33 = load i32, i32* %30, align 8, !dbg !678, !tbaa !665
  br label %34, !dbg !680

34:                                               ; preds = %29, %23
  %35 = phi i8* [ %32, %29 ], [ %19, %23 ]
  %36 = phi i32 [ %33, %29 ], [ %27, %23 ], !dbg !678
  switch i32 %36, label %50 [
    i32 2, label %40
    i32 1, label %40
    i32 0, label %37
  ], !dbg !681

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !682
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !682
  %38 = load i8*, i8** %5, align 8, !dbg !686, !tbaa !634
  %39 = tail call i8* @halide_string_to_string(i8* %35, i8* %38, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #7, !dbg !687
  br label %48, !dbg !688

40:                                               ; preds = %34, %34
  %41 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i64 0, i32 2, !dbg !689
  %42 = load i32, i32* %41, align 4, !dbg !689, !tbaa !691
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !692, metadata !DIExpression()) #6, !dbg !696
  call void @llvm.dbg.value(metadata i32 %42, metadata !695, metadata !DIExpression()) #6, !dbg !696
  %43 = load i8*, i8** %5, align 8, !dbg !698, !tbaa !634
  %44 = sext i32 %42 to i64, !dbg !699
  %45 = tail call i8* @halide_int64_to_string(i8* %35, i8* %43, i64 %44, i32 1) #7, !dbg !700
  store i8* %45, i8** %3, align 8, !dbg !701, !tbaa !627
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !702
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !702
  %46 = load i8*, i8** %5, align 8, !dbg !704, !tbaa !634
  %47 = tail call i8* @halide_string_to_string(i8* %45, i8* %46, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #7, !dbg !705
  br label %48, !dbg !706

48:                                               ; preds = %37, %40
  %49 = phi i8* [ %47, %40 ], [ %39, %37 ]
  store i8* %49, i8** %3, align 8, !dbg !707, !tbaa !627
  br label %50, !dbg !708

50:                                               ; preds = %48, %34
  %51 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i64 0, i32 3, i32 0, !dbg !708
  %52 = load i8, i8* %51, align 8, !dbg !708, !tbaa !709
  %53 = zext i8 %52 to i32, !dbg !710
  %54 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i64 0, i32 3, i32 1, !dbg !711
  %55 = load i8, i8* %54, align 1, !dbg !711, !tbaa !712
  %56 = zext i8 %55 to i32, !dbg !713
  %57 = tail call i32 @_ZN6Halide7Runtime3mex12get_class_idEii(i32 %53, i32 %56) #8, !dbg !714
  %58 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %57) #8, !dbg !715
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !716
  call void @llvm.dbg.value(metadata i8* %58, metadata !620, metadata !DIExpression()) #6, !dbg !716
  %59 = icmp eq i8* %58, null, !dbg !718
  %60 = load i8*, i8** %3, align 8, !dbg !719, !tbaa !627
  %61 = load i8*, i8** %5, align 8, !dbg !719, !tbaa !634
  br i1 %59, label %64, label %62, !dbg !720

62:                                               ; preds = %50
  %63 = tail call i8* @halide_string_to_string(i8* %60, i8* %61, i8* nonnull %58) #7, !dbg !721
  br label %66

64:                                               ; preds = %50
  %65 = tail call i8* @halide_string_to_string(i8* %60, i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !722
  br label %66, !dbg !723

66:                                               ; preds = %64, %62
  %67 = phi i8* [ %63, %62 ], [ %65, %64 ], !dbg !719
  store i8* %67, i8** %3, align 8, !dbg !719, !tbaa !627
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !724
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !724
  %68 = load i8*, i8** %5, align 8, !dbg !726, !tbaa !634
  %69 = tail call i8* @halide_string_to_string(i8* %67, i8* %68, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !727
  store i8* %69, i8** %3, align 8, !dbg !728, !tbaa !627
  %70 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i64 0, i32 0, !dbg !729
  %71 = load i8*, i8** %70, align 8, !dbg !729, !tbaa !730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !731
  call void @llvm.dbg.value(metadata i8* %71, metadata !620, metadata !DIExpression()) #6, !dbg !731
  %72 = icmp eq i8* %71, null, !dbg !733
  %73 = load i8*, i8** %5, align 8, !dbg !734, !tbaa !634
  br i1 %72, label %76, label %74, !dbg !735

74:                                               ; preds = %66
  %75 = tail call i8* @halide_string_to_string(i8* %69, i8* %73, i8* nonnull %71) #7, !dbg !736
  br label %78

76:                                               ; preds = %66
  %77 = tail call i8* @halide_string_to_string(i8* %69, i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !737
  br label %78, !dbg !738

78:                                               ; preds = %76, %74
  %79 = phi i8* [ %75, %74 ], [ %77, %76 ], !dbg !734
  store i8* %79, i8** %3, align 8, !dbg !734, !tbaa !627
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !739
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !739
  %80 = load i8*, i8** %5, align 8, !dbg !741, !tbaa !634
  %81 = tail call i8* @halide_string_to_string(i8* %79, i8* %80, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !742
  store i8* %81, i8** %3, align 8, !dbg !743, !tbaa !627
  call void @llvm.dbg.value(metadata i64 1, metadata !611, metadata !DIExpression()), !dbg !655
  %82 = load i32, i32* %20, align 4, !dbg !656, !tbaa !657
  %83 = icmp sgt i32 %82, 1, !dbg !658
  br i1 %83, label %88, label %84, !dbg !659

84:                                               ; preds = %145, %78, %16
  %85 = phi i8* [ %19, %16 ], [ %81, %78 ], [ %148, %145 ], !dbg !744
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !746
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !746
  %86 = load i8*, i8** %5, align 8, !dbg !747, !tbaa !634
  %87 = tail call i8* @halide_string_to_string(i8* %85, i8* %86, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !748
  store i8* %87, i8** %3, align 8, !dbg !749, !tbaa !627
  ret void, !dbg !750

88:                                               ; preds = %78, %145
  %89 = phi i8* [ %148, %145 ], [ %81, %78 ]
  %90 = phi i64 [ %149, %145 ], [ 1, %78 ]
  call void @llvm.dbg.value(metadata i64 %90, metadata !611, metadata !DIExpression()), !dbg !655
  %91 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %24, align 8, !dbg !660, !tbaa !661
  call void @llvm.dbg.value(metadata %struct.halide_filter_argument_t* undef, metadata !613, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !751
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !751
  %92 = load i8*, i8** %5, align 8, !dbg !755, !tbaa !634
  %93 = tail call i8* @halide_string_to_string(i8* %89, i8* %92, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !756
  store i8* %93, i8** %3, align 8, !dbg !757, !tbaa !627
  %94 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i64 %90, i32 1, !dbg !663
  %95 = load i32, i32* %94, align 8, !dbg !663, !tbaa !665
  %96 = icmp eq i32 %95, 2, !dbg !670
  br i1 %96, label %97, label %101, !dbg !671

97:                                               ; preds = %88
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !672
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !672
  %98 = load i8*, i8** %5, align 8, !dbg !675, !tbaa !634
  %99 = tail call i8* @halide_string_to_string(i8* %93, i8* %98, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !676
  store i8* %99, i8** %3, align 8, !dbg !677, !tbaa !627
  %100 = load i32, i32* %94, align 8, !dbg !678, !tbaa !665
  br label %101, !dbg !680

101:                                              ; preds = %97, %88
  %102 = phi i8* [ %99, %97 ], [ %93, %88 ]
  %103 = phi i32 [ %100, %97 ], [ %95, %88 ], !dbg !678
  switch i32 %103, label %117 [
    i32 2, label %104
    i32 1, label %104
    i32 0, label %112
  ], !dbg !681

104:                                              ; preds = %101, %101
  %105 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i64 %90, i32 2, !dbg !689
  %106 = load i32, i32* %105, align 4, !dbg !689, !tbaa !691
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !692, metadata !DIExpression()) #6, !dbg !696
  call void @llvm.dbg.value(metadata i32 %106, metadata !695, metadata !DIExpression()) #6, !dbg !696
  %107 = load i8*, i8** %5, align 8, !dbg !698, !tbaa !634
  %108 = sext i32 %106 to i64, !dbg !699
  %109 = tail call i8* @halide_int64_to_string(i8* %102, i8* %107, i64 %108, i32 1) #7, !dbg !700
  store i8* %109, i8** %3, align 8, !dbg !701, !tbaa !627
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !702
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !702
  %110 = load i8*, i8** %5, align 8, !dbg !704, !tbaa !634
  %111 = tail call i8* @halide_string_to_string(i8* %109, i8* %110, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #7, !dbg !705
  br label %115, !dbg !706

112:                                              ; preds = %101
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !682
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !682
  %113 = load i8*, i8** %5, align 8, !dbg !686, !tbaa !634
  %114 = tail call i8* @halide_string_to_string(i8* %102, i8* %113, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #7, !dbg !687
  br label %115, !dbg !688

115:                                              ; preds = %104, %112
  %116 = phi i8* [ %114, %112 ], [ %111, %104 ]
  store i8* %116, i8** %3, align 8, !dbg !707, !tbaa !627
  br label %117, !dbg !708

117:                                              ; preds = %115, %101
  %118 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i64 %90, i32 3, i32 0, !dbg !708
  %119 = load i8, i8* %118, align 8, !dbg !708, !tbaa !709
  %120 = zext i8 %119 to i32, !dbg !710
  %121 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i64 %90, i32 3, i32 1, !dbg !711
  %122 = load i8, i8* %121, align 1, !dbg !711, !tbaa !712
  %123 = zext i8 %122 to i32, !dbg !713
  %124 = tail call i32 @_ZN6Halide7Runtime3mex12get_class_idEii(i32 %120, i32 %123) #8, !dbg !714
  %125 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %124) #8, !dbg !715
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !716
  call void @llvm.dbg.value(metadata i8* %125, metadata !620, metadata !DIExpression()) #6, !dbg !716
  %126 = icmp eq i8* %125, null, !dbg !718
  %127 = load i8*, i8** %3, align 8, !dbg !719, !tbaa !627
  %128 = load i8*, i8** %5, align 8, !dbg !719, !tbaa !634
  br i1 %126, label %129, label %131, !dbg !720

129:                                              ; preds = %117
  %130 = tail call i8* @halide_string_to_string(i8* %127, i8* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !722
  br label %133, !dbg !723

131:                                              ; preds = %117
  %132 = tail call i8* @halide_string_to_string(i8* %127, i8* %128, i8* nonnull %125) #7, !dbg !721
  br label %133

133:                                              ; preds = %129, %131
  %134 = phi i8* [ %132, %131 ], [ %130, %129 ], !dbg !719
  store i8* %134, i8** %3, align 8, !dbg !719, !tbaa !627
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !724
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !724
  %135 = load i8*, i8** %5, align 8, !dbg !726, !tbaa !634
  %136 = tail call i8* @halide_string_to_string(i8* %134, i8* %135, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !727
  store i8* %136, i8** %3, align 8, !dbg !728, !tbaa !627
  %137 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i64 %90, i32 0, !dbg !729
  %138 = load i8*, i8** %137, align 8, !dbg !729, !tbaa !730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !731
  call void @llvm.dbg.value(metadata i8* %138, metadata !620, metadata !DIExpression()) #6, !dbg !731
  %139 = icmp eq i8* %138, null, !dbg !733
  %140 = load i8*, i8** %5, align 8, !dbg !734, !tbaa !634
  br i1 %139, label %141, label %143, !dbg !735

141:                                              ; preds = %133
  %142 = tail call i8* @halide_string_to_string(i8* %136, i8* %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !737
  br label %145, !dbg !738

143:                                              ; preds = %133
  %144 = tail call i8* @halide_string_to_string(i8* %136, i8* %140, i8* nonnull %138) #7, !dbg !736
  br label %145

145:                                              ; preds = %141, %143
  %146 = phi i8* [ %144, %143 ], [ %142, %141 ], !dbg !734
  store i8* %146, i8** %3, align 8, !dbg !734, !tbaa !627
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !617, metadata !DIExpression()) #6, !dbg !739
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !739
  %147 = load i8*, i8** %5, align 8, !dbg !741, !tbaa !634
  %148 = tail call i8* @halide_string_to_string(i8* %146, i8* %147, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !742
  store i8* %148, i8** %3, align 8, !dbg !743, !tbaa !627
  %149 = add nuw nsw i64 %90, 1, !dbg !758
  call void @llvm.dbg.value(metadata i64 %149, metadata !611, metadata !DIExpression()), !dbg !655
  %150 = load i32, i32* %20, align 4, !dbg !656, !tbaa !657
  %151 = sext i32 %150 to i64, !dbg !658
  %152 = icmp slt i64 %149, %151, !dbg !658
  br i1 %152, label %88, label %84, !dbg !659, !llvm.loop !759
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
define weak dso_local void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* %1) local_unnamed_addr #4 !dbg !763 {
  %3 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !767, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata %struct.halide_filter_metadata_t* %1, metadata !768, metadata !DIExpression()), !dbg !770
  %4 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3 to i8*, !dbg !771
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #6, !dbg !771
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !769, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !773, metadata !DIExpression()) #6, !dbg !778
  call void @llvm.dbg.value(metadata i8* %0, metadata !776, metadata !DIExpression()) #6, !dbg !778
  call void @llvm.dbg.value(metadata i8* null, metadata !777, metadata !DIExpression()) #6, !dbg !778
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 3, !dbg !780
  store i8* %0, i8** %5, align 8, !dbg !780, !tbaa !781
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 4, !dbg !782
  store i8 1, i8* %6, align 8, !dbg !782, !tbaa !783
  %7 = tail call i8* @malloc(i64 1024) #7, !dbg !784
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 0, !dbg !789
  store i8* %7, i8** %8, align 8, !dbg !790, !tbaa !791
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 1, !dbg !792
  %10 = icmp eq i8* %7, null, !dbg !793
  br i1 %10, label %13, label %11, !dbg !795

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, i8* %7, i64 1023, !dbg !796
  store i8 0, i8* %12, align 1, !dbg !798, !tbaa !799
  br label %13, !dbg !800

13:                                               ; preds = %2, %11
  %14 = phi i8* [ %12, %11 ], [ null, %2 ], !dbg !801
  %15 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 2, !dbg !802
  store i8* %14, i8** %15, align 8, !dbg !804
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !617, metadata !DIExpression()) #6, !dbg !805
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !805
  %16 = tail call i8* @halide_string_to_string(i8* %7, i8* %14, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !807
  store i8* %16, i8** %9, align 8, !dbg !808, !tbaa !627
  call void @halide_matlab_describe_pipeline(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(34) %3, %struct.halide_filter_metadata_t* %1) #8, !dbg !809
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !810, metadata !DIExpression()) #6, !dbg !813
  %17 = load i8*, i8** %8, align 8, !dbg !815, !tbaa !791
  %18 = icmp eq i8* %17, null, !dbg !815
  br i1 %18, label %28, label %19, !dbg !817

19:                                               ; preds = %13
  %20 = load i8*, i8** %9, align 8, !dbg !818, !tbaa !627
  %21 = load i8*, i8** %5, align 8, !dbg !818, !tbaa !781
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !822, metadata !DIExpression()) #6, !dbg !825
  %22 = ptrtoint i8* %20 to i64, !dbg !827
  %23 = ptrtoint i8* %17 to i64, !dbg !827
  %24 = sub i64 1, %23, !dbg !827
  %25 = add i64 %24, %22, !dbg !828
  %26 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %21, i8* nonnull %17, i64 %25) #7, !dbg !829
  %27 = load i8*, i8** %8, align 8, !dbg !830, !tbaa !791
  br label %28, !dbg !831

28:                                               ; preds = %13, %19
  %29 = phi i8* [ %27, %19 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0), %13 ], !dbg !832
  call void @halide_print(i8* %0, i8* %29) #7, !dbg !833
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !834, metadata !DIExpression()) #6, !dbg !837
  %30 = load i8*, i8** %8, align 8, !dbg !839, !tbaa !791
  %31 = icmp eq i8* %30, null, !dbg !839
  br i1 %31, label %32, label %34, !dbg !842

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8, !dbg !843, !tbaa !781
  call void @halide_error(i8* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !845
  br label %42, !dbg !846

34:                                               ; preds = %28
  %35 = load i8*, i8** %9, align 8, !dbg !847, !tbaa !627
  %36 = load i8*, i8** %5, align 8, !dbg !847, !tbaa !781
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !822, metadata !DIExpression()) #6, !dbg !849
  %37 = ptrtoint i8* %35 to i64, !dbg !851
  %38 = ptrtoint i8* %30 to i64, !dbg !851
  %39 = sub i64 1, %38, !dbg !851
  %40 = add i64 %39, %37, !dbg !852
  %41 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %36, i8* nonnull %30, i64 %40) #7, !dbg !853
  br label %42

42:                                               ; preds = %34, %32
  %43 = load i8, i8* %6, align 8, !dbg !854, !tbaa !783, !range !856
  %44 = icmp eq i8 %43, 0, !dbg !854
  br i1 %44, label %50, label %45, !dbg !857

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8, !dbg !858, !tbaa !791
  %47 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 5, i64 0, !dbg !859
  %48 = icmp eq i8* %46, %47, !dbg !860
  br i1 %48, label %50, label %49, !dbg !861

49:                                               ; preds = %45
  call void @free(i8* %46) #7, !dbg !862
  br label %50, !dbg !864

50:                                               ; preds = %42, %45, %49
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #6, !dbg !865
  ret void, !dbg !865
}

declare !dbg !866 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
define weak dso_local void @halide_matlab_error(i8* %0, i8* %1) #4 !dbg !870 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !872, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i8* %1, metadata !873, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !773, metadata !DIExpression()) #6, !dbg !876
  call void @llvm.dbg.value(metadata i8* %0, metadata !776, metadata !DIExpression()) #6, !dbg !876
  call void @llvm.dbg.value(metadata i8* null, metadata !777, metadata !DIExpression()) #6, !dbg !876
  call void @llvm.dbg.value(metadata i8* undef, metadata !874, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i8 undef, metadata !874, metadata !DIExpression()), !dbg !875
  %3 = tail call i8* @malloc(i64 1024) #7, !dbg !878
  call void @llvm.dbg.value(metadata i8* undef, metadata !874, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i8* undef, metadata !874, metadata !DIExpression()), !dbg !875
  %4 = icmp eq i8* %3, null, !dbg !879
  br i1 %4, label %7, label %5, !dbg !880

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !881
  store i8 0, i8* %6, align 1, !dbg !882, !tbaa !799
  br label %7, !dbg !883

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !884
  call void @llvm.dbg.value(metadata i8* undef, metadata !874, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !617, metadata !DIExpression()) #6, !dbg !885
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), metadata !620, metadata !DIExpression()) #6, !dbg !885
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !887
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !617, metadata !DIExpression()) #6, !dbg !888
  call void @llvm.dbg.value(metadata i8* %1, metadata !620, metadata !DIExpression()) #6, !dbg !888
  %10 = icmp eq i8* %1, null, !dbg !890
  br i1 %10, label %11, label %13, !dbg !891

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !892
  br label %15, !dbg !893

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #7, !dbg !894
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ], !dbg !895
  call void @llvm.dbg.value(metadata i8* undef, metadata !874, metadata !DIExpression()), !dbg !875
  %17 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 8, !dbg !896, !tbaa !897
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !810, metadata !DIExpression()) #6, !dbg !898
  br i1 %4, label %18, label %19, !dbg !900

18:                                               ; preds = %15
  tail call void %17(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !896
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !834, metadata !DIExpression()) #6, !dbg !901
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !903
  br label %30, !dbg !904

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !822, metadata !DIExpression()) #6, !dbg !905
  %20 = ptrtoint i8* %16 to i64, !dbg !907
  %21 = ptrtoint i8* %3 to i64, !dbg !907
  %22 = sub i64 1, %21, !dbg !907
  %23 = add i64 %22, %20, !dbg !908
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %23) #7, !dbg !909
  tail call void %17(i8* nonnull %3) #7, !dbg !896
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !834, metadata !DIExpression()) #6, !dbg !901
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !822, metadata !DIExpression()) #6, !dbg !910
  %25 = ptrtoint i8* %16 to i64, !dbg !912
  %26 = ptrtoint i8* %3 to i64, !dbg !912
  %27 = sub i64 1, %26, !dbg !912
  %28 = add i64 %27, %25, !dbg !913
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %28) #7, !dbg !914
  br label %30

30:                                               ; preds = %18, %19
  call void @free(i8* %3) #7, !dbg !915
  ret void, !dbg !916
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_matlab_print(i8* %0, i8* %1) #2 !dbg !917 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !919, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i8* %1, metadata !920, metadata !DIExpression()), !dbg !921
  %3 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 8, !dbg !922, !tbaa !897
  tail call void %3(i8* %1) #7, !dbg !922
  ret void, !dbg !923
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_matlab_init(i8* %0) local_unnamed_addr #4 !dbg !924 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !928, metadata !DIExpression()), !dbg !929
  %2 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 8, !dbg !930, !tbaa !897
  %3 = icmp eq void (i8*)* %2, null, !dbg !932
  br i1 %3, label %4, label %208, !dbg !933

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %0, metadata !934, metadata !DIExpression()) #6, !dbg !944
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), metadata !939, metadata !DIExpression()) #6, !dbg !944
  call void @llvm.dbg.value(metadata i1 true, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !944
  %5 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !947
  call void @llvm.dbg.value(metadata i8* %5, metadata !941, metadata !DIExpression()) #6, !dbg !944
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %25, !dbg !948

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !956
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !956
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !956
  %8 = tail call i8* @malloc(i64 1024) #7, !dbg !959
  %9 = icmp eq i8* %8, null, !dbg !964
  br i1 %9, label %12, label %10, !dbg !966

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023, !dbg !967
  store i8 0, i8* %11, align 1, !dbg !969, !tbaa !799
  br label %12, !dbg !970

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !971
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !976
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !976
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #7, !dbg !978
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !981
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !981
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !983
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !984
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !984
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #7, !dbg !986
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !990
  br i1 %9, label %17, label %18, !dbg !992

17:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !994
  br label %24, !dbg !997

18:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !1001
  %19 = ptrtoint i8* %16 to i64, !dbg !1004
  %20 = ptrtoint i8* %8 to i64, !dbg !1004
  %21 = sub i64 1, %20, !dbg !1004
  %22 = add i64 %21, %19, !dbg !1005
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %22) #7, !dbg !1006
  tail call void @halide_error(i8* %0, i8* nonnull %8) #7, !dbg !1007
  br label %24

24:                                               ; preds = %18, %17
  tail call void @free(i8* %8) #7, !dbg !1010
  br label %27, !dbg !1013

25:                                               ; preds = %4
  %26 = bitcast i8* %5 to void (i8*)*, !dbg !1014
  call void @llvm.dbg.value(metadata void (i8*)* %26, metadata !941, metadata !DIExpression()) #6, !dbg !944
  br label %27, !dbg !1015

27:                                               ; preds = %24, %25
  %28 = phi void (i8*)* [ null, %24 ], [ %26, %25 ], !dbg !944
  store void (i8*)* %28, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 8, !dbg !1016, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %0, metadata !1017, metadata !DIExpression()) #6, !dbg !1027
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0), metadata !1022, metadata !DIExpression()) #6, !dbg !1027
  call void @llvm.dbg.value(metadata i1 false, metadata !1023, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1027
  %29 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0)) #7, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %29, metadata !1024, metadata !DIExpression()) #6, !dbg !1027
  call void @llvm.dbg.value(metadata i8* %29, metadata !1024, metadata !DIExpression()) #6, !dbg !1027
  store i8* %29, i8** bitcast (i64 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E to i8**), align 8, !dbg !1030, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %0, metadata !1031, metadata !DIExpression()) #6, !dbg !1041
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), metadata !1036, metadata !DIExpression()) #6, !dbg !1041
  call void @llvm.dbg.value(metadata i1 false, metadata !1037, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1041
  %30 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0)) #7, !dbg !1043
  call void @llvm.dbg.value(metadata i8* %30, metadata !1038, metadata !DIExpression()) #6, !dbg !1041
  call void @llvm.dbg.value(metadata i8* %30, metadata !1038, metadata !DIExpression()) #6, !dbg !1041
  store i8* %30, i8** bitcast (i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E to i8**), align 8, !dbg !1044, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %0, metadata !1045, metadata !DIExpression()) #6, !dbg !1055
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), metadata !1050, metadata !DIExpression()) #6, !dbg !1055
  call void @llvm.dbg.value(metadata i1 false, metadata !1051, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1055
  %31 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0)) #7, !dbg !1057
  call void @llvm.dbg.value(metadata i8* %31, metadata !1052, metadata !DIExpression()) #6, !dbg !1055
  call void @llvm.dbg.value(metadata i8* %31, metadata !1052, metadata !DIExpression()) #6, !dbg !1055
  store i8* %31, i8** bitcast (i64* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E to i8**), align 8, !dbg !1058, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %0, metadata !1059, metadata !DIExpression()) #6, !dbg !1069
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), metadata !1064, metadata !DIExpression()) #6, !dbg !1069
  call void @llvm.dbg.value(metadata i1 false, metadata !1065, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1069
  %32 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0)) #7, !dbg !1071
  call void @llvm.dbg.value(metadata i8* %32, metadata !1066, metadata !DIExpression()) #6, !dbg !1069
  call void @llvm.dbg.value(metadata i8* %32, metadata !1066, metadata !DIExpression()) #6, !dbg !1069
  store i8* %32, i8** bitcast (i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E to i8**), align 8, !dbg !1072, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %0, metadata !1073, metadata !DIExpression()) #6, !dbg !1083
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), metadata !1078, metadata !DIExpression()) #6, !dbg !1083
  call void @llvm.dbg.value(metadata i1 true, metadata !1079, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1083
  %33 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0)) #7, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %33, metadata !1080, metadata !DIExpression()) #6, !dbg !1083
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %53, !dbg !1086

35:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !1088
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !1088
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !1088
  %36 = tail call i8* @malloc(i64 1024) #7, !dbg !1091
  %37 = icmp eq i8* %36, null, !dbg !1092
  br i1 %37, label %40, label %38, !dbg !1093

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, i8* %36, i64 1023, !dbg !1094
  store i8 0, i8* %39, align 1, !dbg !1095, !tbaa !799
  br label %40, !dbg !1096

40:                                               ; preds = %38, %35
  %41 = phi i8* [ %39, %38 ], [ null, %35 ], !dbg !1097
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1098
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1098
  %42 = tail call i8* @halide_string_to_string(i8* %36, i8* %41, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #7, !dbg !1100
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1101
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1101
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %41, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0)) #7, !dbg !1103
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1104
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1104
  %44 = tail call i8* @halide_string_to_string(i8* %43, i8* %41, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #7, !dbg !1106
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !1107
  br i1 %37, label %45, label %46, !dbg !1109

45:                                               ; preds = %40
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1110
  br label %52, !dbg !1111

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !1112
  %47 = ptrtoint i8* %44 to i64, !dbg !1114
  %48 = ptrtoint i8* %36 to i64, !dbg !1114
  %49 = sub i64 1, %48, !dbg !1114
  %50 = add i64 %49, %47, !dbg !1115
  %51 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %36, i64 %50) #7, !dbg !1116
  tail call void @halide_error(i8* %0, i8* nonnull %36) #7, !dbg !1117
  br label %52

52:                                               ; preds = %46, %45
  tail call void @free(i8* %36) #7, !dbg !1118
  br label %55, !dbg !1119

53:                                               ; preds = %27
  %54 = bitcast i8* %33 to i32 (%struct.mxArray*)*, !dbg !1120
  call void @llvm.dbg.value(metadata i32 (%struct.mxArray*)* %54, metadata !1080, metadata !DIExpression()) #6, !dbg !1083
  br label %55, !dbg !1121

55:                                               ; preds = %52, %53
  %56 = phi i32 (%struct.mxArray*)* [ null, %52 ], [ %54, %53 ], !dbg !1083
  store i32 (%struct.mxArray*)* %56, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex12mxGetClassIDE, align 8, !dbg !1122, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %0, metadata !1123, metadata !DIExpression()) #6, !dbg !1133
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), metadata !1128, metadata !DIExpression()) #6, !dbg !1133
  call void @llvm.dbg.value(metadata i1 true, metadata !1129, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1133
  %57 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0)) #7, !dbg !1135
  call void @llvm.dbg.value(metadata i8* %57, metadata !1130, metadata !DIExpression()) #6, !dbg !1133
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %77, !dbg !1136

59:                                               ; preds = %55
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !1138
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !1138
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !1138
  %60 = tail call i8* @malloc(i64 1024) #7, !dbg !1141
  %61 = icmp eq i8* %60, null, !dbg !1142
  br i1 %61, label %64, label %62, !dbg !1143

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %60, i64 1023, !dbg !1144
  store i8 0, i8* %63, align 1, !dbg !1145, !tbaa !799
  br label %64, !dbg !1146

64:                                               ; preds = %62, %59
  %65 = phi i8* [ %63, %62 ], [ null, %59 ], !dbg !1147
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1148
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1148
  %66 = tail call i8* @halide_string_to_string(i8* %60, i8* %65, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #7, !dbg !1150
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1151
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1151
  %67 = tail call i8* @halide_string_to_string(i8* %66, i8* %65, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0)) #7, !dbg !1153
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1154
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1154
  %68 = tail call i8* @halide_string_to_string(i8* %67, i8* %65, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #7, !dbg !1156
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !1157
  br i1 %61, label %69, label %70, !dbg !1159

69:                                               ; preds = %64
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1160
  br label %76, !dbg !1161

70:                                               ; preds = %64
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !1162
  %71 = ptrtoint i8* %68 to i64, !dbg !1164
  %72 = ptrtoint i8* %60 to i64, !dbg !1164
  %73 = sub i64 1, %72, !dbg !1164
  %74 = add i64 %73, %71, !dbg !1165
  %75 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %60, i64 %74) #7, !dbg !1166
  tail call void @halide_error(i8* %0, i8* nonnull %60) #7, !dbg !1167
  br label %76

76:                                               ; preds = %70, %69
  tail call void @free(i8* %60) #7, !dbg !1168
  br label %79, !dbg !1169

77:                                               ; preds = %55
  %78 = bitcast i8* %57 to i8* (%struct.mxArray*)*, !dbg !1170
  call void @llvm.dbg.value(metadata i8* (%struct.mxArray*)* %78, metadata !1130, metadata !DIExpression()) #6, !dbg !1133
  br label %79, !dbg !1171

79:                                               ; preds = %76, %77
  %80 = phi i8* (%struct.mxArray*)* [ null, %76 ], [ %78, %77 ], !dbg !1133
  store i8* (%struct.mxArray*)* %80, i8* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex9mxGetDataE, align 8, !dbg !1172, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %0, metadata !1173, metadata !DIExpression()) #6, !dbg !1183
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), metadata !1178, metadata !DIExpression()) #6, !dbg !1183
  call void @llvm.dbg.value(metadata i1 true, metadata !1179, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1183
  %81 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #7, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %81, metadata !1180, metadata !DIExpression()) #6, !dbg !1183
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %101, !dbg !1186

83:                                               ; preds = %79
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !1188
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !1188
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !1188
  %84 = tail call i8* @malloc(i64 1024) #7, !dbg !1191
  %85 = icmp eq i8* %84, null, !dbg !1192
  br i1 %85, label %88, label %86, !dbg !1193

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, i8* %84, i64 1023, !dbg !1194
  store i8 0, i8* %87, align 1, !dbg !1195, !tbaa !799
  br label %88, !dbg !1196

88:                                               ; preds = %86, %83
  %89 = phi i8* [ %87, %86 ], [ null, %83 ], !dbg !1197
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1198
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1198
  %90 = tail call i8* @halide_string_to_string(i8* %84, i8* %89, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #7, !dbg !1200
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1201
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1201
  %91 = tail call i8* @halide_string_to_string(i8* %90, i8* %89, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #7, !dbg !1203
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1204
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1204
  %92 = tail call i8* @halide_string_to_string(i8* %91, i8* %89, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #7, !dbg !1206
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !1207
  br i1 %85, label %93, label %94, !dbg !1209

93:                                               ; preds = %88
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1210
  br label %100, !dbg !1211

94:                                               ; preds = %88
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !1212
  %95 = ptrtoint i8* %92 to i64, !dbg !1214
  %96 = ptrtoint i8* %84 to i64, !dbg !1214
  %97 = sub i64 1, %96, !dbg !1214
  %98 = add i64 %97, %95, !dbg !1215
  %99 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %84, i64 %98) #7, !dbg !1216
  tail call void @halide_error(i8* %0, i8* nonnull %84) #7, !dbg !1217
  br label %100

100:                                              ; preds = %94, %93
  tail call void @free(i8* %84) #7, !dbg !1218
  br label %103, !dbg !1219

101:                                              ; preds = %79
  %102 = bitcast i8* %81 to i1 (%struct.mxArray*)*, !dbg !1220
  call void @llvm.dbg.value(metadata i1 (%struct.mxArray*)* %102, metadata !1180, metadata !DIExpression()) #6, !dbg !1183
  br label %103, !dbg !1221

103:                                              ; preds = %100, %101
  %104 = phi i1 (%struct.mxArray*)* [ null, %100 ], [ %102, %101 ], !dbg !1183
  store i1 (%struct.mxArray*)* %104, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsNumericE, align 8, !dbg !1222, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %0, metadata !1173, metadata !DIExpression()) #6, !dbg !1223
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), metadata !1178, metadata !DIExpression()) #6, !dbg !1223
  call void @llvm.dbg.value(metadata i1 true, metadata !1179, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1223
  %105 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0)) #7, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %105, metadata !1180, metadata !DIExpression()) #6, !dbg !1223
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %125, !dbg !1226

107:                                              ; preds = %103
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !1227
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !1227
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !1227
  %108 = tail call i8* @malloc(i64 1024) #7, !dbg !1229
  %109 = icmp eq i8* %108, null, !dbg !1230
  br i1 %109, label %112, label %110, !dbg !1231

110:                                              ; preds = %107
  %111 = getelementptr inbounds i8, i8* %108, i64 1023, !dbg !1232
  store i8 0, i8* %111, align 1, !dbg !1233, !tbaa !799
  br label %112, !dbg !1234

112:                                              ; preds = %110, %107
  %113 = phi i8* [ %111, %110 ], [ null, %107 ], !dbg !1235
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1236
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1236
  %114 = tail call i8* @halide_string_to_string(i8* %108, i8* %113, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #7, !dbg !1238
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1239
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1239
  %115 = tail call i8* @halide_string_to_string(i8* %114, i8* %113, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0)) #7, !dbg !1241
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1242
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1242
  %116 = tail call i8* @halide_string_to_string(i8* %115, i8* %113, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #7, !dbg !1244
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !1245
  br i1 %109, label %117, label %118, !dbg !1247

117:                                              ; preds = %112
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1248
  br label %124, !dbg !1249

118:                                              ; preds = %112
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !1250
  %119 = ptrtoint i8* %116 to i64, !dbg !1252
  %120 = ptrtoint i8* %108 to i64, !dbg !1252
  %121 = sub i64 1, %120, !dbg !1252
  %122 = add i64 %121, %119, !dbg !1253
  %123 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %108, i64 %122) #7, !dbg !1254
  tail call void @halide_error(i8* %0, i8* nonnull %108) #7, !dbg !1255
  br label %124

124:                                              ; preds = %118, %117
  tail call void @free(i8* %108) #7, !dbg !1256
  br label %127, !dbg !1257

125:                                              ; preds = %103
  %126 = bitcast i8* %105 to i1 (%struct.mxArray*)*, !dbg !1258
  call void @llvm.dbg.value(metadata i1 (%struct.mxArray*)* %126, metadata !1180, metadata !DIExpression()) #6, !dbg !1223
  br label %127, !dbg !1259

127:                                              ; preds = %124, %125
  %128 = phi i1 (%struct.mxArray*)* [ null, %124 ], [ %126, %125 ], !dbg !1223
  store i1 (%struct.mxArray*)* %128, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsLogicalE, align 8, !dbg !1260, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %0, metadata !1173, metadata !DIExpression()) #6, !dbg !1261
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), metadata !1178, metadata !DIExpression()) #6, !dbg !1261
  call void @llvm.dbg.value(metadata i1 true, metadata !1179, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1261
  %129 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0)) #7, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %129, metadata !1180, metadata !DIExpression()) #6, !dbg !1261
  %130 = icmp eq i8* %129, null
  br i1 %130, label %131, label %149, !dbg !1264

131:                                              ; preds = %127
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !1265
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !1265
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !1265
  %132 = tail call i8* @malloc(i64 1024) #7, !dbg !1267
  %133 = icmp eq i8* %132, null, !dbg !1268
  br i1 %133, label %136, label %134, !dbg !1269

134:                                              ; preds = %131
  %135 = getelementptr inbounds i8, i8* %132, i64 1023, !dbg !1270
  store i8 0, i8* %135, align 1, !dbg !1271, !tbaa !799
  br label %136, !dbg !1272

136:                                              ; preds = %134, %131
  %137 = phi i8* [ %135, %134 ], [ null, %131 ], !dbg !1273
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1274
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1274
  %138 = tail call i8* @halide_string_to_string(i8* %132, i8* %137, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #7, !dbg !1276
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1277
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1277
  %139 = tail call i8* @halide_string_to_string(i8* %138, i8* %137, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0)) #7, !dbg !1279
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1280
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1280
  %140 = tail call i8* @halide_string_to_string(i8* %139, i8* %137, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #7, !dbg !1282
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !1283
  br i1 %133, label %141, label %142, !dbg !1285

141:                                              ; preds = %136
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1286
  br label %148, !dbg !1287

142:                                              ; preds = %136
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !1288
  %143 = ptrtoint i8* %140 to i64, !dbg !1290
  %144 = ptrtoint i8* %132 to i64, !dbg !1290
  %145 = sub i64 1, %144, !dbg !1290
  %146 = add i64 %145, %143, !dbg !1291
  %147 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %132, i64 %146) #7, !dbg !1292
  tail call void @halide_error(i8* %0, i8* nonnull %132) #7, !dbg !1293
  br label %148

148:                                              ; preds = %142, %141
  tail call void @free(i8* %132) #7, !dbg !1294
  br label %151, !dbg !1295

149:                                              ; preds = %127
  %150 = bitcast i8* %129 to i1 (%struct.mxArray*)*, !dbg !1296
  call void @llvm.dbg.value(metadata i1 (%struct.mxArray*)* %150, metadata !1180, metadata !DIExpression()) #6, !dbg !1261
  br label %151, !dbg !1297

151:                                              ; preds = %148, %149
  %152 = phi i1 (%struct.mxArray*)* [ null, %148 ], [ %150, %149 ], !dbg !1261
  store i1 (%struct.mxArray*)* %152, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsComplexE, align 8, !dbg !1298, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %0, metadata !1299, metadata !DIExpression()) #6, !dbg !1309
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), metadata !1304, metadata !DIExpression()) #6, !dbg !1309
  call void @llvm.dbg.value(metadata i1 true, metadata !1305, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1309
  %153 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)) #7, !dbg !1311
  call void @llvm.dbg.value(metadata i8* %153, metadata !1306, metadata !DIExpression()) #6, !dbg !1309
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %173, !dbg !1312

155:                                              ; preds = %151
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !1314
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !1314
  %156 = tail call i8* @malloc(i64 1024) #7, !dbg !1317
  %157 = icmp eq i8* %156, null, !dbg !1318
  br i1 %157, label %160, label %158, !dbg !1319

158:                                              ; preds = %155
  %159 = getelementptr inbounds i8, i8* %156, i64 1023, !dbg !1320
  store i8 0, i8* %159, align 1, !dbg !1321, !tbaa !799
  br label %160, !dbg !1322

160:                                              ; preds = %158, %155
  %161 = phi i8* [ %159, %158 ], [ null, %155 ], !dbg !1323
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1324
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1324
  %162 = tail call i8* @halide_string_to_string(i8* %156, i8* %161, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #7, !dbg !1326
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1327
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1327
  %163 = tail call i8* @halide_string_to_string(i8* %162, i8* %161, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)) #7, !dbg !1329
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1330
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1330
  %164 = tail call i8* @halide_string_to_string(i8* %163, i8* %161, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #7, !dbg !1332
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !1333
  br i1 %157, label %165, label %166, !dbg !1335

165:                                              ; preds = %160
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1336
  br label %172, !dbg !1337

166:                                              ; preds = %160
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !1338
  %167 = ptrtoint i8* %164 to i64, !dbg !1340
  %168 = ptrtoint i8* %156 to i64, !dbg !1340
  %169 = sub i64 1, %168, !dbg !1340
  %170 = add i64 %169, %167, !dbg !1341
  %171 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %156, i64 %170) #7, !dbg !1342
  tail call void @halide_error(i8* %0, i8* nonnull %156) #7, !dbg !1343
  br label %172

172:                                              ; preds = %166, %165
  tail call void @free(i8* %156) #7, !dbg !1344
  br label %175, !dbg !1345

173:                                              ; preds = %151
  %174 = bitcast i8* %153 to double (%struct.mxArray*)*, !dbg !1346
  call void @llvm.dbg.value(metadata double (%struct.mxArray*)* %174, metadata !1306, metadata !DIExpression()) #6, !dbg !1309
  br label %175, !dbg !1347

175:                                              ; preds = %172, %173
  %176 = phi double (%struct.mxArray*)* [ null, %172 ], [ %174, %173 ], !dbg !1309
  store double (%struct.mxArray*)* %176, double (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxGetScalarE, align 8, !dbg !1348, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %0, metadata !1017, metadata !DIExpression()) #6, !dbg !1349
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), metadata !1022, metadata !DIExpression()) #6, !dbg !1349
  call void @llvm.dbg.value(metadata i1 true, metadata !1023, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1349
  %177 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0)) #7, !dbg !1351
  call void @llvm.dbg.value(metadata i8* %177, metadata !1024, metadata !DIExpression()) #6, !dbg !1349
  %178 = icmp eq i8* %177, null
  br i1 %178, label %179, label %197, !dbg !1352

179:                                              ; preds = %175
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !1354
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !1354
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !1354
  %180 = tail call i8* @malloc(i64 1024) #7, !dbg !1357
  %181 = icmp eq i8* %180, null, !dbg !1358
  br i1 %181, label %184, label %182, !dbg !1359

182:                                              ; preds = %179
  %183 = getelementptr inbounds i8, i8* %180, i64 1023, !dbg !1360
  store i8 0, i8* %183, align 1, !dbg !1361, !tbaa !799
  br label %184, !dbg !1362

184:                                              ; preds = %182, %179
  %185 = phi i8* [ %183, %182 ], [ null, %179 ], !dbg !1363
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1364
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1364
  %186 = tail call i8* @halide_string_to_string(i8* %180, i8* %185, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #7, !dbg !1366
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1367
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1367
  %187 = tail call i8* @halide_string_to_string(i8* %186, i8* %185, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0)) #7, !dbg !1369
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1370
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1370
  %188 = tail call i8* @halide_string_to_string(i8* %187, i8* %185, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #7, !dbg !1372
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !1373
  br i1 %181, label %189, label %190, !dbg !1375

189:                                              ; preds = %184
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1376
  br label %196, !dbg !1377

190:                                              ; preds = %184
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !1378
  %191 = ptrtoint i8* %188 to i64, !dbg !1380
  %192 = ptrtoint i8* %180 to i64, !dbg !1380
  %193 = sub i64 1, %192, !dbg !1380
  %194 = add i64 %193, %191, !dbg !1381
  %195 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %180, i64 %194) #7, !dbg !1382
  tail call void @halide_error(i8* %0, i8* nonnull %180) #7, !dbg !1383
  br label %196

196:                                              ; preds = %190, %189
  tail call void @free(i8* %180) #7, !dbg !1384
  br label %199, !dbg !1385

197:                                              ; preds = %175
  %198 = bitcast i8* %177 to i64 (%struct.mxArray*)*, !dbg !1386
  call void @llvm.dbg.value(metadata i64 (%struct.mxArray*)* %198, metadata !1024, metadata !DIExpression()) #6, !dbg !1349
  br label %199, !dbg !1387

199:                                              ; preds = %196, %197
  %200 = phi i64 (%struct.mxArray*)* [ null, %196 ], [ %198, %197 ], !dbg !1349
  store i64 (%struct.mxArray*)* %200, i64 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex16mxGetElementSizeE, align 8, !dbg !1388, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %0, metadata !1389, metadata !DIExpression()) #6, !dbg !1399
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0), metadata !1394, metadata !DIExpression()) #6, !dbg !1399
  call void @llvm.dbg.value(metadata i1 false, metadata !1395, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1399
  %201 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0)) #7, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %201, metadata !1396, metadata !DIExpression()) #6, !dbg !1399
  call void @llvm.dbg.value(metadata i8* %201, metadata !1396, metadata !DIExpression()) #6, !dbg !1399
  store i8* %201, i8** bitcast (%struct.mxArray* (i64, i64, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_730E to i8**), align 8, !dbg !1402, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %0, metadata !1403, metadata !DIExpression()) #6, !dbg !1413
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i64 0, i64 0), metadata !1408, metadata !DIExpression()) #6, !dbg !1413
  call void @llvm.dbg.value(metadata i1 false, metadata !1409, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1413
  %202 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i64 0, i64 0)) #7, !dbg !1415
  call void @llvm.dbg.value(metadata i8* %202, metadata !1410, metadata !DIExpression()) #6, !dbg !1413
  call void @llvm.dbg.value(metadata i8* %202, metadata !1410, metadata !DIExpression()) #6, !dbg !1413
  store i8* %202, i8** bitcast (%struct.mxArray* (i32, i32, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_700E to i8**), align 8, !dbg !1416, !tbaa !897
  %203 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 8, !dbg !1417, !tbaa !897
  %204 = icmp eq void (i8*)* %203, null, !dbg !1417
  br i1 %204, label %208, label %205, !dbg !1420

205:                                              ; preds = %199
  %206 = tail call void (i8*, i8*)* @halide_set_custom_print(void (i8*, i8*)* nonnull @halide_matlab_print) #7, !dbg !1421
  %207 = tail call void (i8*, i8*)* @halide_set_error_handler(void (i8*, i8*)* nonnull @halide_matlab_error) #7, !dbg !1422
  br label %208, !dbg !1423

208:                                              ; preds = %199, %1, %205
  %209 = phi i32 [ 0, %205 ], [ 0, %1 ], [ -20, %199 ], !dbg !929
  ret i32 %209, !dbg !1424
}

declare !dbg !1425 extern_weak dso_local void (i8*, i8*)* @halide_set_custom_print(void (i8*, i8*)*) local_unnamed_addr #5

declare !dbg !1429 extern_weak dso_local void (i8*, i8*)* @halide_set_error_handler(void (i8*, i8*)*) local_unnamed_addr #5

; Function Attrs: nounwind
define weak dso_local i32 @halide_matlab_array_to_halide_buffer_t(i8* %0, %struct.mxArray* %1, %struct.halide_filter_argument_t* %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 !dbg !1430 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1434, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata %struct.mxArray* %1, metadata !1435, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata %struct.halide_filter_argument_t* %2, metadata !1436, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1437, metadata !DIExpression()), !dbg !1448
  %5 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsComplexE, align 8, !dbg !1449, !tbaa !897
  %6 = tail call zeroext i1 %5(%struct.mxArray* %1) #7, !dbg !1449
  br i1 %6, label %7, label %33, !dbg !1451

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !1452
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !1452
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !1452
  %8 = tail call i8* @malloc(i64 1024) #7, !dbg !1455
  %9 = icmp eq i8* %8, null, !dbg !1456
  br i1 %9, label %12, label %10, !dbg !1457

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023, !dbg !1458
  store i8 0, i8* %11, align 1, !dbg !1459, !tbaa !799
  br label %12, !dbg !1460

12:                                               ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !1461
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1462
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1462
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i64 0, i64 0)) #7, !dbg !1464
  %15 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0, !dbg !1465
  %16 = load i8*, i8** %15, align 8, !dbg !1465, !tbaa !730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1466
  call void @llvm.dbg.value(metadata i8* %16, metadata !975, metadata !DIExpression()) #6, !dbg !1466
  %17 = icmp eq i8* %16, null, !dbg !1468
  br i1 %17, label %18, label %20, !dbg !1469

18:                                               ; preds = %12
  %19 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !1470
  br label %22, !dbg !1472

20:                                               ; preds = %12
  %21 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull %16) #7, !dbg !1473
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i8* [ %21, %20 ], [ %19, %18 ], !dbg !1474
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1475
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1475
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %13, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !1477
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !1478
  br i1 %9, label %25, label %26, !dbg !1480

25:                                               ; preds = %22
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1481
  br label %32, !dbg !1482

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !1483
  %27 = ptrtoint i8* %24 to i64, !dbg !1485
  %28 = ptrtoint i8* %8 to i64, !dbg !1485
  %29 = add i64 %27, 1, !dbg !1485
  %30 = sub i64 %29, %28, !dbg !1486
  %31 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %30) #7, !dbg !1487
  tail call void @halide_error(i8* %0, i8* nonnull %8) #7, !dbg !1488
  br label %32

32:                                               ; preds = %26, %25
  tail call void @free(i8* %8) #7, !dbg !1489
  br label %238, !dbg !1490

33:                                               ; preds = %4
  call void @llvm.dbg.value(metadata %struct.mxArray* %1, metadata !1491, metadata !DIExpression()) #6, !dbg !1494
  %34 = load i64 (%struct.mxArray*)*, i64 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E, align 8, !dbg !1496, !tbaa !897
  %35 = icmp eq i64 (%struct.mxArray*)* %34, null, !dbg !1496
  br i1 %35, label %38, label %36, !dbg !1498

36:                                               ; preds = %33
  %37 = tail call i64 %34(%struct.mxArray* %1) #7, !dbg !1499
  br label %42, !dbg !1501

38:                                               ; preds = %33
  %39 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E, align 8, !dbg !1502, !tbaa !897
  %40 = tail call i32 %39(%struct.mxArray* %1) #7, !dbg !1502
  %41 = zext i32 %40 to i64, !dbg !1502
  br label %42, !dbg !1504

42:                                               ; preds = %36, %38
  %43 = phi i64 [ %37, %36 ], [ %41, %38 ], !dbg !1505
  %44 = trunc i64 %43 to i32, !dbg !1506
  call void @llvm.dbg.value(metadata i32 %44, metadata !1438, metadata !DIExpression()), !dbg !1448
  %45 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 2, !dbg !1507
  %46 = load i32, i32* %45, align 4, !dbg !1507, !tbaa !691
  call void @llvm.dbg.value(metadata i32 %46, metadata !1439, metadata !DIExpression()), !dbg !1448
  %47 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 3, !dbg !1508
  %48 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %47, i64 0, i32 0, !dbg !1509
  %49 = load i8, i8* %48, align 8, !dbg !1509, !tbaa !709
  %50 = zext i8 %49 to i32, !dbg !1510
  %51 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 3, i32 1, !dbg !1511
  %52 = load i8, i8* %51, align 1, !dbg !1511, !tbaa !712
  %53 = zext i8 %52 to i32, !dbg !1512
  %54 = tail call i32 @_ZN6Halide7Runtime3mex12get_class_idEii(i32 %50, i32 %53) #8, !dbg !1513
  call void @llvm.dbg.value(metadata i32 %54, metadata !1440, metadata !DIExpression()), !dbg !1448
  %55 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex12mxGetClassIDE, align 8, !dbg !1514, !tbaa !897
  %56 = tail call i32 %55(%struct.mxArray* %1) #7, !dbg !1514
  call void @llvm.dbg.value(metadata i32 %56, metadata !1441, metadata !DIExpression()), !dbg !1448
  %57 = icmp eq i32 %56, %54, !dbg !1515
  br i1 %57, label %58, label %62, !dbg !1517

58:                                               ; preds = %42
  %59 = and i64 %43, 4294967295, !dbg !1518
  %60 = icmp slt i32 %44, 0, !dbg !1518
  %61 = select i1 %60, i32 %44, i32 0, !dbg !1518
  br label %106, !dbg !1518

62:                                               ; preds = %42
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !1519
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !1519
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !1519
  %63 = tail call i8* @malloc(i64 1024) #7, !dbg !1522
  %64 = icmp eq i8* %63, null, !dbg !1523
  br i1 %64, label %67, label %65, !dbg !1524

65:                                               ; preds = %62
  %66 = getelementptr inbounds i8, i8* %63, i64 1023, !dbg !1525
  store i8 0, i8* %66, align 1, !dbg !1526, !tbaa !799
  br label %67, !dbg !1527

67:                                               ; preds = %62, %65
  %68 = phi i8* [ %66, %65 ], [ null, %62 ], !dbg !1528
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1529
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1529
  %69 = tail call i8* @halide_string_to_string(i8* %63, i8* %68, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i64 0, i64 0)) #7, !dbg !1531
  %70 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %54) #8, !dbg !1532
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1533
  call void @llvm.dbg.value(metadata i8* %70, metadata !975, metadata !DIExpression()) #6, !dbg !1533
  %71 = icmp eq i8* %70, null, !dbg !1535
  br i1 %71, label %72, label %74, !dbg !1536

72:                                               ; preds = %67
  %73 = tail call i8* @halide_string_to_string(i8* %69, i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !1537
  br label %76, !dbg !1538

74:                                               ; preds = %67
  %75 = tail call i8* @halide_string_to_string(i8* %69, i8* %68, i8* nonnull %70) #7, !dbg !1539
  br label %76

76:                                               ; preds = %72, %74
  %77 = phi i8* [ %75, %74 ], [ %73, %72 ], !dbg !1540
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1541
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1541
  %78 = tail call i8* @halide_string_to_string(i8* %77, i8* %68, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0)) #7, !dbg !1543
  %79 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0, !dbg !1544
  %80 = load i8*, i8** %79, align 8, !dbg !1544, !tbaa !730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %80, metadata !975, metadata !DIExpression()) #6, !dbg !1545
  %81 = icmp eq i8* %80, null, !dbg !1547
  br i1 %81, label %82, label %84, !dbg !1548

82:                                               ; preds = %76
  %83 = tail call i8* @halide_string_to_string(i8* %78, i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !1549
  br label %86, !dbg !1550

84:                                               ; preds = %76
  %85 = tail call i8* @halide_string_to_string(i8* %78, i8* %68, i8* nonnull %80) #7, !dbg !1551
  br label %86

86:                                               ; preds = %82, %84
  %87 = phi i8* [ %85, %84 ], [ %83, %82 ], !dbg !1552
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1553
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1553
  %88 = tail call i8* @halide_string_to_string(i8* %87, i8* %68, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0)) #7, !dbg !1555
  %89 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %56) #8, !dbg !1556
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1557
  call void @llvm.dbg.value(metadata i8* %89, metadata !975, metadata !DIExpression()) #6, !dbg !1557
  %90 = icmp eq i8* %89, null, !dbg !1559
  br i1 %90, label %91, label %93, !dbg !1560

91:                                               ; preds = %86
  %92 = tail call i8* @halide_string_to_string(i8* %88, i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !1561
  br label %95, !dbg !1562

93:                                               ; preds = %86
  %94 = tail call i8* @halide_string_to_string(i8* %88, i8* %68, i8* nonnull %89) #7, !dbg !1563
  br label %95

95:                                               ; preds = %91, %93
  %96 = phi i8* [ %94, %93 ], [ %92, %91 ], !dbg !1564
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1565
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1565
  %97 = tail call i8* @halide_string_to_string(i8* %96, i8* %68, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !1567
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !1568
  br i1 %64, label %98, label %99, !dbg !1570

98:                                               ; preds = %95
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1571
  br label %105, !dbg !1572

99:                                               ; preds = %95
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !1573
  %100 = ptrtoint i8* %97 to i64, !dbg !1575
  %101 = ptrtoint i8* %63 to i64, !dbg !1575
  %102 = add i64 %100, 1, !dbg !1575
  %103 = sub i64 %102, %101, !dbg !1576
  %104 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %63, i64 %103) #7, !dbg !1577
  tail call void @halide_error(i8* %0, i8* nonnull %63) #7, !dbg !1578
  br label %105

105:                                              ; preds = %98, %99
  call void @free(i8* %63) #7, !dbg !1579
  br label %238, !dbg !1580

106:                                              ; preds = %58, %124
  %107 = phi i64 [ %59, %58 ], [ %111, %124 ], !dbg !1448
  call void @llvm.dbg.value(metadata i64 %107, metadata !1438, metadata !DIExpression()), !dbg !1448
  %108 = trunc i64 %107 to i32, !dbg !1581
  %109 = icmp sgt i32 %108, 0, !dbg !1581
  br i1 %109, label %110, label %129, !dbg !1582

110:                                              ; preds = %106
  %111 = add nsw i64 %107, -1, !dbg !1583
  call void @llvm.dbg.value(metadata %struct.mxArray* %1, metadata !1584, metadata !DIExpression()) #6, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %111, metadata !1589, metadata !DIExpression()) #6, !dbg !1590
  %112 = load i64* (%struct.mxArray*)*, i64* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E, align 8, !dbg !1592, !tbaa !897
  %113 = icmp eq i64* (%struct.mxArray*)* %112, null, !dbg !1592
  br i1 %113, label %118, label %114, !dbg !1594

114:                                              ; preds = %110
  %115 = tail call i64* %112(%struct.mxArray* %1) #7, !dbg !1595
  %116 = getelementptr inbounds i64, i64* %115, i64 %111, !dbg !1595
  %117 = load i64, i64* %116, align 8, !dbg !1595, !tbaa !1597
  br label %124, !dbg !1599

118:                                              ; preds = %110
  %119 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E, align 8, !dbg !1600, !tbaa !897
  %120 = tail call i32* %119(%struct.mxArray* %1) #7, !dbg !1600
  %121 = getelementptr inbounds i32, i32* %120, i64 %111, !dbg !1600
  %122 = load i32, i32* %121, align 4, !dbg !1600, !tbaa !1602
  %123 = sext i32 %122 to i64, !dbg !1600
  br label %124, !dbg !1603

124:                                              ; preds = %114, %118
  %125 = phi i64 [ %117, %114 ], [ %123, %118 ], !dbg !1604
  %126 = icmp eq i64 %125, 1, !dbg !1605
  br i1 %126, label %106, label %127, !dbg !1518, !llvm.loop !1606

127:                                              ; preds = %124
  %128 = trunc i64 %107 to i32, !dbg !1581
  br label %129, !dbg !1608

129:                                              ; preds = %106, %127
  %130 = phi i32 [ %128, %127 ], [ %61, %106 ], !dbg !1448
  %131 = icmp sgt i32 %130, %46, !dbg !1608
  br i1 %131, label %132, label %164, !dbg !1610

132:                                              ; preds = %129
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !1611
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !1611
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !1611
  %133 = tail call i8* @malloc(i64 1024) #7, !dbg !1614
  %134 = icmp eq i8* %133, null, !dbg !1615
  br i1 %134, label %137, label %135, !dbg !1616

135:                                              ; preds = %132
  %136 = getelementptr inbounds i8, i8* %133, i64 1023, !dbg !1617
  store i8 0, i8* %136, align 1, !dbg !1618, !tbaa !799
  br label %137, !dbg !1619

137:                                              ; preds = %132, %135
  %138 = phi i8* [ %136, %135 ], [ null, %132 ], !dbg !1620
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1621
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1621
  %139 = tail call i8* @halide_string_to_string(i8* %133, i8* %138, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0)) #7, !dbg !1623
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1624, metadata !DIExpression()) #6, !dbg !1628
  call void @llvm.dbg.value(metadata i32 %46, metadata !1627, metadata !DIExpression()) #6, !dbg !1628
  %140 = sext i32 %46 to i64, !dbg !1630
  %141 = tail call i8* @halide_int64_to_string(i8* %139, i8* %138, i64 %140, i32 1) #7, !dbg !1631
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1632
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1632
  %142 = tail call i8* @halide_string_to_string(i8* %141, i8* %138, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0)) #7, !dbg !1634
  %143 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0, !dbg !1635
  %144 = load i8*, i8** %143, align 8, !dbg !1635, !tbaa !730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1636
  call void @llvm.dbg.value(metadata i8* %144, metadata !975, metadata !DIExpression()) #6, !dbg !1636
  %145 = icmp eq i8* %144, null, !dbg !1638
  br i1 %145, label %146, label %148, !dbg !1639

146:                                              ; preds = %137
  %147 = tail call i8* @halide_string_to_string(i8* %142, i8* %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !1640
  br label %150, !dbg !1641

148:                                              ; preds = %137
  %149 = tail call i8* @halide_string_to_string(i8* %142, i8* %138, i8* nonnull %144) #7, !dbg !1642
  br label %150

150:                                              ; preds = %146, %148
  %151 = phi i8* [ %149, %148 ], [ %147, %146 ], !dbg !1643
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1644
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1644
  %152 = tail call i8* @halide_string_to_string(i8* %151, i8* %138, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0)) #7, !dbg !1646
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1624, metadata !DIExpression()) #6, !dbg !1647
  call void @llvm.dbg.value(metadata i32 %130, metadata !1627, metadata !DIExpression()) #6, !dbg !1647
  %153 = sext i32 %130 to i64, !dbg !1649
  %154 = tail call i8* @halide_int64_to_string(i8* %152, i8* %138, i64 %153, i32 1) #7, !dbg !1650
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1651
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1651
  %155 = tail call i8* @halide_string_to_string(i8* %154, i8* %138, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !1653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !1654
  br i1 %134, label %156, label %157, !dbg !1656

156:                                              ; preds = %150
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1657
  br label %163, !dbg !1658

157:                                              ; preds = %150
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !1659
  %158 = ptrtoint i8* %155 to i64, !dbg !1661
  %159 = ptrtoint i8* %133 to i64, !dbg !1661
  %160 = add i64 %158, 1, !dbg !1661
  %161 = sub i64 %160, %159, !dbg !1662
  %162 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %133, i64 %161) #7, !dbg !1663
  tail call void @halide_error(i8* %0, i8* nonnull %133) #7, !dbg !1664
  br label %163

163:                                              ; preds = %156, %157
  call void @free(i8* %133) #7, !dbg !1665
  br label %238, !dbg !1666

164:                                              ; preds = %129
  %165 = load i8* (%struct.mxArray*)*, i8* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex9mxGetDataE, align 8, !dbg !1667, !tbaa !897
  %166 = tail call i8* %165(%struct.mxArray* %1) #7, !dbg !1667
  %167 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2, !dbg !1668
  store i8* %166, i8** %167, align 8, !dbg !1669, !tbaa !1670
  %168 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 0, !dbg !1673
  %169 = bitcast %struct.halide_type_t* %47 to i32*, !dbg !1673
  %170 = bitcast i8* %168 to i32*, !dbg !1673
  %171 = load i32, i32* %169, align 8, !dbg !1673
  store i32 %171, i32* %170, align 8, !dbg !1673
  %172 = load i32, i32* %45, align 4, !dbg !1674, !tbaa !691
  %173 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5, !dbg !1675
  store i32 %172, i32* %173, align 4, !dbg !1676, !tbaa !1677
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1678, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i1 true, metadata !1681, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1682
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1684, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i32 1, metadata !1687, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i1 true, metadata !1688, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1689
  %174 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 3, !dbg !1691
  %175 = load i64, i64* %174, align 8, !dbg !1694, !tbaa !1695
  %176 = or i64 %175, 1, !dbg !1694
  store i64 %176, i64* %174, align 8, !dbg !1694, !tbaa !1695
  call void @llvm.dbg.value(metadata i32 0, metadata !1442, metadata !DIExpression()), !dbg !1696
  %177 = icmp sgt i32 %130, 0, !dbg !1697
  %178 = icmp sgt i32 %46, 0, !dbg !1699
  %179 = and i1 %177, %178, !dbg !1699
  br i1 %179, label %180, label %187, !dbg !1700

180:                                              ; preds = %164
  %181 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %182 = add nsw i32 %130, -1, !dbg !1700
  %183 = add nsw i32 %46, -1, !dbg !1700
  %184 = icmp ult i32 %182, %183, !dbg !1700
  %185 = select i1 %184, i32 %130, i32 %46, !dbg !1700
  %186 = zext i32 %185 to i64, !dbg !1699
  br label %193, !dbg !1700

187:                                              ; preds = %207, %164
  call void @llvm.dbg.value(metadata i32 2, metadata !1444, metadata !DIExpression()), !dbg !1701
  %188 = icmp sgt i32 %46, 2, !dbg !1702
  %189 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %190 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %189, align 8, !tbaa !1704
  br i1 %188, label %191, label %214, !dbg !1705

191:                                              ; preds = %187
  %192 = zext i32 %46 to i64, !dbg !1702
  br label %219, !dbg !1705

193:                                              ; preds = %180, %207
  %194 = phi i64 [ 0, %180 ], [ %212, %207 ]
  call void @llvm.dbg.value(metadata i64 %194, metadata !1442, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata %struct.mxArray* %1, metadata !1584, metadata !DIExpression()) #6, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %194, metadata !1589, metadata !DIExpression()) #6, !dbg !1706
  %195 = load i64* (%struct.mxArray*)*, i64* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E, align 8, !dbg !1709, !tbaa !897
  %196 = icmp eq i64* (%struct.mxArray*)* %195, null, !dbg !1709
  br i1 %196, label %201, label %197, !dbg !1710

197:                                              ; preds = %193
  %198 = tail call i64* %195(%struct.mxArray* %1) #7, !dbg !1711
  %199 = getelementptr inbounds i64, i64* %198, i64 %194, !dbg !1711
  %200 = load i64, i64* %199, align 8, !dbg !1711, !tbaa !1597
  br label %207, !dbg !1712

201:                                              ; preds = %193
  %202 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E, align 8, !dbg !1713, !tbaa !897
  %203 = tail call i32* %202(%struct.mxArray* %1) #7, !dbg !1713
  %204 = getelementptr inbounds i32, i32* %203, i64 %194, !dbg !1713
  %205 = load i32, i32* %204, align 4, !dbg !1713, !tbaa !1602
  %206 = zext i32 %205 to i64, !dbg !1713
  br label %207, !dbg !1714

207:                                              ; preds = %197, %201
  %208 = phi i64 [ %200, %197 ], [ %206, %201 ], !dbg !1715
  %209 = trunc i64 %208 to i32, !dbg !1716
  %210 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %181, align 8, !dbg !1717, !tbaa !1704
  %211 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %210, i64 %194, i32 1, !dbg !1718
  store i32 %209, i32* %211, align 4, !dbg !1719, !tbaa !1720
  %212 = add nuw nsw i64 %194, 1, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %212, metadata !1442, metadata !DIExpression()), !dbg !1696
  %213 = icmp eq i64 %212, %186, !dbg !1699
  br i1 %213, label %187, label %193, !dbg !1700, !llvm.loop !1723

214:                                              ; preds = %225, %187
  %215 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %190, i64 0, i32 2, !dbg !1725
  store i32 1, i32* %215, align 4, !dbg !1726, !tbaa !1727
  call void @llvm.dbg.value(metadata i32 1, metadata !1446, metadata !DIExpression()), !dbg !1728
  %216 = icmp sgt i32 %46, 1, !dbg !1729
  br i1 %216, label %217, label %238, !dbg !1731

217:                                              ; preds = %214
  %218 = zext i32 %46 to i64, !dbg !1729
  br label %228, !dbg !1731

219:                                              ; preds = %191, %225
  %220 = phi i64 [ 2, %191 ], [ %226, %225 ]
  call void @llvm.dbg.value(metadata i64 %220, metadata !1444, metadata !DIExpression()), !dbg !1701
  %221 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %190, i64 %220, i32 1, !dbg !1732
  %222 = load i32, i32* %221, align 4, !dbg !1732, !tbaa !1720
  %223 = icmp eq i32 %222, 0, !dbg !1735
  br i1 %223, label %224, label %225, !dbg !1736

224:                                              ; preds = %219
  store i32 1, i32* %221, align 4, !dbg !1737, !tbaa !1720
  br label %225, !dbg !1739

225:                                              ; preds = %219, %224
  %226 = add nuw nsw i64 %220, 1, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %226, metadata !1444, metadata !DIExpression()), !dbg !1701
  %227 = icmp eq i64 %226, %192, !dbg !1702
  br i1 %227, label %214, label %219, !dbg !1705, !llvm.loop !1741

228:                                              ; preds = %217, %228
  %229 = phi i32 [ 1, %217 ], [ %234, %228 ], !dbg !1743
  %230 = phi i64 [ 1, %217 ], [ %236, %228 ]
  call void @llvm.dbg.value(metadata i64 %230, metadata !1446, metadata !DIExpression()), !dbg !1728
  %231 = add nsw i64 %230, -1, !dbg !1745
  %232 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %190, i64 %231, i32 1, !dbg !1746
  %233 = load i32, i32* %232, align 4, !dbg !1746, !tbaa !1720
  %234 = mul nsw i32 %229, %233, !dbg !1747
  %235 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %190, i64 %230, i32 2, !dbg !1748
  store i32 %234, i32* %235, align 4, !dbg !1749, !tbaa !1727
  %236 = add nuw nsw i64 %230, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %236, metadata !1446, metadata !DIExpression()), !dbg !1728
  %237 = icmp eq i64 %236, %218, !dbg !1729
  br i1 %237, label %238, label %228, !dbg !1731, !llvm.loop !1751

238:                                              ; preds = %228, %214, %105, %163, %32
  %239 = phi i32 [ -21, %32 ], [ -21, %105 ], [ -21, %163 ], [ 0, %214 ], [ 0, %228 ], !dbg !1448
  ret i32 %239, !dbg !1753
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_matlab_array_to_scalar(i8* %0, %struct.mxArray* %1, %struct.halide_filter_argument_t* %2, i8* %3) local_unnamed_addr #4 !dbg !1754 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1758, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata %struct.mxArray* %1, metadata !1759, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata %struct.halide_filter_argument_t* %2, metadata !1760, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8* %3, metadata !1761, metadata !DIExpression()), !dbg !1768
  %5 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsComplexE, align 8, !dbg !1769, !tbaa !897
  %6 = tail call zeroext i1 %5(%struct.mxArray* %1) #7, !dbg !1769
  br i1 %6, label %7, label %33, !dbg !1771

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !1772
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !1772
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !1772
  %8 = tail call i8* @malloc(i64 1024) #7, !dbg !1775
  %9 = icmp eq i8* %8, null, !dbg !1776
  br i1 %9, label %12, label %10, !dbg !1777

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023, !dbg !1778
  store i8 0, i8* %11, align 1, !dbg !1779, !tbaa !799
  br label %12, !dbg !1780

12:                                               ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !1781
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1782
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1782
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i64 0, i64 0)) #7, !dbg !1784
  %15 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0, !dbg !1785
  %16 = load i8*, i8** %15, align 8, !dbg !1785, !tbaa !730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1786
  call void @llvm.dbg.value(metadata i8* %16, metadata !975, metadata !DIExpression()) #6, !dbg !1786
  %17 = icmp eq i8* %16, null, !dbg !1788
  br i1 %17, label %18, label %20, !dbg !1789

18:                                               ; preds = %12
  %19 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !1790
  br label %22, !dbg !1791

20:                                               ; preds = %12
  %21 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull %16) #7, !dbg !1792
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i8* [ %21, %20 ], [ %19, %18 ], !dbg !1793
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1794
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1794
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %13, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !1796
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !1797
  br i1 %9, label %25, label %26, !dbg !1799

25:                                               ; preds = %22
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1800
  br label %32, !dbg !1801

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !1802
  %27 = ptrtoint i8* %24 to i64, !dbg !1804
  %28 = ptrtoint i8* %8 to i64, !dbg !1804
  %29 = add i64 %27, 1, !dbg !1804
  %30 = sub i64 %29, %28, !dbg !1805
  %31 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %30) #7, !dbg !1806
  tail call void @halide_error(i8* %0, i8* nonnull %8) #7, !dbg !1807
  br label %32

32:                                               ; preds = %26, %25
  tail call void @free(i8* %8) #7, !dbg !1808
  br label %232, !dbg !1809

33:                                               ; preds = %4
  call void @llvm.dbg.value(metadata %struct.mxArray* %1, metadata !1491, metadata !DIExpression()) #6, !dbg !1810
  %34 = load i64 (%struct.mxArray*)*, i64 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E, align 8, !dbg !1812, !tbaa !897
  %35 = icmp eq i64 (%struct.mxArray*)* %34, null, !dbg !1812
  br i1 %35, label %38, label %36, !dbg !1813

36:                                               ; preds = %33
  %37 = tail call i64 %34(%struct.mxArray* %1) #7, !dbg !1814
  br label %42, !dbg !1815

38:                                               ; preds = %33
  %39 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E, align 8, !dbg !1816, !tbaa !897
  %40 = tail call i32 %39(%struct.mxArray* %1) #7, !dbg !1816
  %41 = zext i32 %40 to i64, !dbg !1816
  br label %42, !dbg !1817

42:                                               ; preds = %36, %38
  %43 = phi i64 [ %37, %36 ], [ %41, %38 ], !dbg !1818
  %44 = trunc i64 %43 to i32, !dbg !1819
  call void @llvm.dbg.value(metadata i32 %44, metadata !1762, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 0, metadata !1763, metadata !DIExpression()), !dbg !1820
  %45 = icmp sgt i32 %44, 0, !dbg !1821
  br i1 %45, label %46, label %94, !dbg !1823

46:                                               ; preds = %42
  %47 = and i64 %43, 4294967295, !dbg !1821
  br label %50, !dbg !1823

48:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 %67, metadata !1763, metadata !DIExpression()), !dbg !1820
  %49 = icmp eq i64 %67, %47, !dbg !1821
  br i1 %49, label %94, label %50, !dbg !1823, !llvm.loop !1824

50:                                               ; preds = %46, %48
  %51 = phi i64 [ 0, %46 ], [ %67, %48 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !1763, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata %struct.mxArray* %1, metadata !1584, metadata !DIExpression()) #6, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %51, metadata !1589, metadata !DIExpression()) #6, !dbg !1826
  %52 = load i64* (%struct.mxArray*)*, i64* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E, align 8, !dbg !1830, !tbaa !897
  %53 = icmp eq i64* (%struct.mxArray*)* %52, null, !dbg !1830
  br i1 %53, label %58, label %54, !dbg !1831

54:                                               ; preds = %50
  %55 = tail call i64* %52(%struct.mxArray* %1) #7, !dbg !1832
  %56 = getelementptr inbounds i64, i64* %55, i64 %51, !dbg !1832
  %57 = load i64, i64* %56, align 8, !dbg !1832, !tbaa !1597
  br label %64, !dbg !1833

58:                                               ; preds = %50
  %59 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E, align 8, !dbg !1834, !tbaa !897
  %60 = tail call i32* %59(%struct.mxArray* %1) #7, !dbg !1834
  %61 = getelementptr inbounds i32, i32* %60, i64 %51, !dbg !1834
  %62 = load i32, i32* %61, align 4, !dbg !1834, !tbaa !1602
  %63 = sext i32 %62 to i64, !dbg !1834
  br label %64, !dbg !1835

64:                                               ; preds = %54, %58
  %65 = phi i64 [ %57, %54 ], [ %63, %58 ], !dbg !1836
  %66 = icmp eq i64 %65, 1, !dbg !1837
  %67 = add nuw nsw i64 %51, 1, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %67, metadata !1763, metadata !DIExpression()), !dbg !1820
  br i1 %66, label %48, label %68, !dbg !1839

68:                                               ; preds = %64
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !1840
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !1840
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !1840
  %69 = tail call i8* @malloc(i64 1024) #7, !dbg !1843
  %70 = icmp eq i8* %69, null, !dbg !1844
  br i1 %70, label %73, label %71, !dbg !1845

71:                                               ; preds = %68
  %72 = getelementptr inbounds i8, i8* %69, i64 1023, !dbg !1846
  store i8 0, i8* %72, align 1, !dbg !1847, !tbaa !799
  br label %73, !dbg !1848

73:                                               ; preds = %68, %71
  %74 = phi i8* [ %72, %71 ], [ null, %68 ], !dbg !1849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1850
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1850
  %75 = tail call i8* @halide_string_to_string(i8* %69, i8* %74, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i64 0, i64 0)) #7, !dbg !1852
  %76 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0, !dbg !1853
  %77 = load i8*, i8** %76, align 8, !dbg !1853, !tbaa !730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1854
  call void @llvm.dbg.value(metadata i8* %77, metadata !975, metadata !DIExpression()) #6, !dbg !1854
  %78 = icmp eq i8* %77, null, !dbg !1856
  br i1 %78, label %79, label %81, !dbg !1857

79:                                               ; preds = %73
  %80 = tail call i8* @halide_string_to_string(i8* %75, i8* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !1858
  br label %83, !dbg !1859

81:                                               ; preds = %73
  %82 = tail call i8* @halide_string_to_string(i8* %75, i8* %74, i8* nonnull %77) #7, !dbg !1860
  br label %83

83:                                               ; preds = %79, %81
  %84 = phi i8* [ %82, %81 ], [ %80, %79 ], !dbg !1861
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1862
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1862
  %85 = tail call i8* @halide_string_to_string(i8* %84, i8* %74, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !1864
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !1865
  br i1 %70, label %86, label %87, !dbg !1867

86:                                               ; preds = %83
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1868
  br label %93, !dbg !1869

87:                                               ; preds = %83
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !1870
  %88 = ptrtoint i8* %85 to i64, !dbg !1872
  %89 = ptrtoint i8* %69 to i64, !dbg !1872
  %90 = add i64 %88, 1, !dbg !1872
  %91 = sub i64 %90, %89, !dbg !1873
  %92 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %69, i64 %91) #7, !dbg !1874
  tail call void @halide_error(i8* %0, i8* nonnull %69) #7, !dbg !1875
  br label %93

93:                                               ; preds = %87, %86
  tail call void @free(i8* %69) #7, !dbg !1876
  br label %232

94:                                               ; preds = %48, %42
  %95 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsLogicalE, align 8, !dbg !1877, !tbaa !897
  %96 = tail call zeroext i1 %95(%struct.mxArray* %1) #7, !dbg !1877
  br i1 %96, label %137, label %97, !dbg !1879

97:                                               ; preds = %94
  %98 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsNumericE, align 8, !dbg !1880, !tbaa !897
  %99 = tail call zeroext i1 %98(%struct.mxArray* %1) #7, !dbg !1880
  br i1 %99, label %137, label %100, !dbg !1881

100:                                              ; preds = %97
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !1882
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !1882
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !1882
  %101 = tail call i8* @malloc(i64 1024) #7, !dbg !1885
  %102 = icmp eq i8* %101, null, !dbg !1886
  br i1 %102, label %105, label %103, !dbg !1887

103:                                              ; preds = %100
  %104 = getelementptr inbounds i8, i8* %101, i64 1023, !dbg !1888
  store i8 0, i8* %104, align 1, !dbg !1889, !tbaa !799
  br label %105, !dbg !1890

105:                                              ; preds = %100, %103
  %106 = phi i8* [ %104, %103 ], [ null, %100 ], !dbg !1891
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1892
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.52, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1892
  %107 = tail call i8* @halide_string_to_string(i8* %101, i8* %106, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.52, i64 0, i64 0)) #7, !dbg !1894
  %108 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0, !dbg !1895
  %109 = load i8*, i8** %108, align 8, !dbg !1895, !tbaa !730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1896
  call void @llvm.dbg.value(metadata i8* %109, metadata !975, metadata !DIExpression()) #6, !dbg !1896
  %110 = icmp eq i8* %109, null, !dbg !1898
  br i1 %110, label %111, label %113, !dbg !1899

111:                                              ; preds = %105
  %112 = tail call i8* @halide_string_to_string(i8* %107, i8* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !1900
  br label %115, !dbg !1901

113:                                              ; preds = %105
  %114 = tail call i8* @halide_string_to_string(i8* %107, i8* %106, i8* nonnull %109) #7, !dbg !1902
  br label %115

115:                                              ; preds = %111, %113
  %116 = phi i8* [ %114, %113 ], [ %112, %111 ], !dbg !1903
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1904
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1904
  %117 = tail call i8* @halide_string_to_string(i8* %116, i8* %106, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0)) #7, !dbg !1906
  %118 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex12mxGetClassIDE, align 8, !dbg !1907, !tbaa !897
  %119 = tail call i32 %118(%struct.mxArray* %1) #7, !dbg !1907
  %120 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %119) #8, !dbg !1908
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1909
  call void @llvm.dbg.value(metadata i8* %120, metadata !975, metadata !DIExpression()) #6, !dbg !1909
  %121 = icmp eq i8* %120, null, !dbg !1911
  br i1 %121, label %122, label %124, !dbg !1912

122:                                              ; preds = %115
  %123 = tail call i8* @halide_string_to_string(i8* %117, i8* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !1913
  br label %126, !dbg !1914

124:                                              ; preds = %115
  %125 = tail call i8* @halide_string_to_string(i8* %117, i8* %106, i8* nonnull %120) #7, !dbg !1915
  br label %126

126:                                              ; preds = %122, %124
  %127 = phi i8* [ %125, %124 ], [ %123, %122 ], !dbg !1916
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !1917
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !1917
  %128 = tail call i8* @halide_string_to_string(i8* %127, i8* %106, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !1919
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !1920
  br i1 %102, label %129, label %130, !dbg !1922

129:                                              ; preds = %126
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1923
  br label %136, !dbg !1924

130:                                              ; preds = %126
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !1925
  %131 = ptrtoint i8* %128 to i64, !dbg !1927
  %132 = ptrtoint i8* %101 to i64, !dbg !1927
  %133 = add i64 %131, 1, !dbg !1927
  %134 = sub i64 %133, %132, !dbg !1928
  %135 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %101, i64 %134) #7, !dbg !1929
  tail call void @halide_error(i8* %0, i8* nonnull %101) #7, !dbg !1930
  br label %136

136:                                              ; preds = %129, %130
  call void @free(i8* %101) #7, !dbg !1931
  br label %232, !dbg !1932

137:                                              ; preds = %97, %94
  %138 = load double (%struct.mxArray*)*, double (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxGetScalarE, align 8, !dbg !1933, !tbaa !897
  %139 = tail call double %138(%struct.mxArray* %1) #7, !dbg !1933
  call void @llvm.dbg.value(metadata double %139, metadata !1765, metadata !DIExpression()), !dbg !1768
  %140 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 3, i32 0, !dbg !1934
  %141 = load i8, i8* %140, align 8, !dbg !1934, !tbaa !709
  call void @llvm.dbg.value(metadata i8 %141, metadata !1766, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1768
  %142 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 3, i32 1, !dbg !1935
  %143 = load i8, i8* %142, align 1, !dbg !1935, !tbaa !712
  call void @llvm.dbg.value(metadata i8 %143, metadata !1767, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1768
  switch i8 %141, label %206 [
    i8 0, label %144
    i8 1, label %159
    i8 2, label %174
    i8 3, label %180
  ], !dbg !1936

144:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i8 %143, metadata !1767, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1768
  switch i8 %143, label %206 [
    i8 1, label %145
    i8 8, label %148
    i8 16, label %150
    i8 32, label %153
    i8 64, label %156
  ], !dbg !1937

145:                                              ; preds = %144
  %146 = fcmp une double %139, 0.000000e+00, !dbg !1940
  %147 = zext i1 %146 to i8, !dbg !1942
  store i8 %147, i8* %3, align 1, !dbg !1942, !tbaa !1943
  br label %232, !dbg !1944

148:                                              ; preds = %144
  %149 = fptosi double %139 to i8, !dbg !1945
  store i8 %149, i8* %3, align 1, !dbg !1946, !tbaa !799
  br label %232, !dbg !1947

150:                                              ; preds = %144
  %151 = fptosi double %139 to i16, !dbg !1948
  %152 = bitcast i8* %3 to i16*, !dbg !1949
  store i16 %151, i16* %152, align 2, !dbg !1950, !tbaa !1951
  br label %232, !dbg !1952

153:                                              ; preds = %144
  %154 = fptosi double %139 to i32, !dbg !1953
  %155 = bitcast i8* %3 to i32*, !dbg !1954
  store i32 %154, i32* %155, align 4, !dbg !1955, !tbaa !1602
  br label %232, !dbg !1956

156:                                              ; preds = %144
  %157 = fptosi double %139 to i64, !dbg !1957
  %158 = bitcast i8* %3 to i64*, !dbg !1958
  store i64 %157, i64* %158, align 8, !dbg !1959, !tbaa !1960
  br label %232, !dbg !1961

159:                                              ; preds = %137
  switch i8 %143, label %206 [
    i8 1, label %160
    i8 8, label %163
    i8 16, label %165
    i8 32, label %168
    i8 64, label %171
  ], !dbg !1962

160:                                              ; preds = %159
  %161 = fcmp une double %139, 0.000000e+00, !dbg !1965
  %162 = zext i1 %161 to i8, !dbg !1967
  store i8 %162, i8* %3, align 1, !dbg !1967, !tbaa !1943
  br label %232, !dbg !1968

163:                                              ; preds = %159
  %164 = fptoui double %139 to i8, !dbg !1969
  store i8 %164, i8* %3, align 1, !dbg !1970, !tbaa !799
  br label %232, !dbg !1971

165:                                              ; preds = %159
  %166 = fptoui double %139 to i16, !dbg !1972
  %167 = bitcast i8* %3 to i16*, !dbg !1973
  store i16 %166, i16* %167, align 2, !dbg !1974, !tbaa !1951
  br label %232, !dbg !1975

168:                                              ; preds = %159
  %169 = fptoui double %139 to i32, !dbg !1976
  %170 = bitcast i8* %3 to i32*, !dbg !1977
  store i32 %169, i32* %170, align 4, !dbg !1978, !tbaa !1602
  br label %232, !dbg !1979

171:                                              ; preds = %159
  %172 = fptoui double %139 to i64, !dbg !1980
  %173 = bitcast i8* %3 to i64*, !dbg !1981
  store i64 %172, i64* %173, align 8, !dbg !1982, !tbaa !1960
  br label %232, !dbg !1983

174:                                              ; preds = %137
  switch i8 %143, label %206 [
    i8 32, label %175
    i8 64, label %178
  ], !dbg !1984

175:                                              ; preds = %174
  %176 = fptrunc double %139 to float, !dbg !1987
  %177 = bitcast i8* %3 to float*, !dbg !1989
  store float %176, float* %177, align 4, !dbg !1990, !tbaa !1991
  br label %232, !dbg !1993

178:                                              ; preds = %174
  %179 = bitcast i8* %3 to double*, !dbg !1994
  store double %139, double* %179, align 8, !dbg !1995, !tbaa !1996
  br label %232, !dbg !1998

180:                                              ; preds = %137
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !1999
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !1999
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !1999
  %181 = tail call i8* @malloc(i64 1024) #7, !dbg !2003
  %182 = icmp eq i8* %181, null, !dbg !2004
  br i1 %182, label %185, label %183, !dbg !2005

183:                                              ; preds = %180
  %184 = getelementptr inbounds i8, i8* %181, i64 1023, !dbg !2006
  store i8 0, i8* %184, align 1, !dbg !2007, !tbaa !799
  br label %185, !dbg !2008

185:                                              ; preds = %180, %183
  %186 = phi i8* [ %184, %183 ], [ null, %180 ], !dbg !2009
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !2010
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !2010
  %187 = tail call i8* @halide_string_to_string(i8* %181, i8* %186, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0)) #7, !dbg !2012
  %188 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0, !dbg !2013
  %189 = load i8*, i8** %188, align 8, !dbg !2013, !tbaa !730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !2014
  call void @llvm.dbg.value(metadata i8* %189, metadata !975, metadata !DIExpression()) #6, !dbg !2014
  %190 = icmp eq i8* %189, null, !dbg !2016
  br i1 %190, label %191, label %193, !dbg !2017

191:                                              ; preds = %185
  %192 = tail call i8* @halide_string_to_string(i8* %187, i8* %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !2018
  br label %195, !dbg !2019

193:                                              ; preds = %185
  %194 = tail call i8* @halide_string_to_string(i8* %187, i8* %186, i8* nonnull %189) #7, !dbg !2020
  br label %195

195:                                              ; preds = %191, %193
  %196 = phi i8* [ %194, %193 ], [ %192, %191 ], !dbg !2021
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !2022
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !2022
  %197 = tail call i8* @halide_string_to_string(i8* %196, i8* %186, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i64 0, i64 0)) #7, !dbg !2024
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !2025
  br i1 %182, label %198, label %199, !dbg !2027

198:                                              ; preds = %195
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !2028
  br label %205, !dbg !2029

199:                                              ; preds = %195
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !2030
  %200 = ptrtoint i8* %197 to i64, !dbg !2032
  %201 = ptrtoint i8* %181 to i64, !dbg !2032
  %202 = add i64 %200, 1, !dbg !2032
  %203 = sub i64 %202, %201, !dbg !2033
  %204 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %181, i64 %203) #7, !dbg !2034
  tail call void @halide_error(i8* %0, i8* nonnull %181) #7, !dbg !2035
  br label %205

205:                                              ; preds = %199, %198
  tail call void @free(i8* %181) #7, !dbg !2036
  br label %232, !dbg !2037

206:                                              ; preds = %137, %159, %174, %144
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !2038
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !2038
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !2038
  %207 = tail call i8* @malloc(i64 1024) #7, !dbg !2040
  %208 = icmp eq i8* %207, null, !dbg !2041
  br i1 %208, label %211, label %209, !dbg !2042

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, i8* %207, i64 1023, !dbg !2043
  store i8 0, i8* %210, align 1, !dbg !2044, !tbaa !799
  br label %211, !dbg !2045

211:                                              ; preds = %206, %209
  %212 = phi i8* [ %210, %209 ], [ null, %206 ], !dbg !2046
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !2047
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !2047
  %213 = tail call i8* @halide_string_to_string(i8* %207, i8* %212, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0)) #7, !dbg !2049
  %214 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0, !dbg !2050
  %215 = load i8*, i8** %214, align 8, !dbg !2050, !tbaa !730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !2051
  call void @llvm.dbg.value(metadata i8* %215, metadata !975, metadata !DIExpression()) #6, !dbg !2051
  %216 = icmp eq i8* %215, null, !dbg !2053
  br i1 %216, label %217, label %219, !dbg !2054

217:                                              ; preds = %211
  %218 = tail call i8* @halide_string_to_string(i8* %213, i8* %212, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !2055
  br label %221, !dbg !2056

219:                                              ; preds = %211
  %220 = tail call i8* @halide_string_to_string(i8* %213, i8* %212, i8* nonnull %215) #7, !dbg !2057
  br label %221

221:                                              ; preds = %217, %219
  %222 = phi i8* [ %220, %219 ], [ %218, %217 ], !dbg !2058
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !2059
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.57, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !2059
  %223 = tail call i8* @halide_string_to_string(i8* %222, i8* %212, i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.57, i64 0, i64 0)) #7, !dbg !2061
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !2062
  br i1 %208, label %224, label %225, !dbg !2064

224:                                              ; preds = %221
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !2065
  br label %231, !dbg !2066

225:                                              ; preds = %221
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !2067
  %226 = ptrtoint i8* %223 to i64, !dbg !2069
  %227 = ptrtoint i8* %207 to i64, !dbg !2069
  %228 = add i64 %226, 1, !dbg !2069
  %229 = sub i64 %228, %227, !dbg !2070
  %230 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %207, i64 %229) #7, !dbg !2071
  tail call void @halide_error(i8* %0, i8* nonnull %207) #7, !dbg !2072
  br label %231

231:                                              ; preds = %225, %224
  tail call void @free(i8* %207) #7, !dbg !2073
  br label %232, !dbg !2074

232:                                              ; preds = %93, %136, %231, %205, %178, %175, %171, %168, %165, %163, %160, %156, %153, %150, %148, %145, %32
  %233 = phi i32 [ -1, %32 ], [ -21, %136 ], [ -21, %93 ], [ -22, %231 ], [ 0, %156 ], [ 0, %153 ], [ 0, %150 ], [ 0, %148 ], [ 0, %145 ], [ 0, %171 ], [ 0, %168 ], [ 0, %165 ], [ 0, %163 ], [ 0, %160 ], [ 0, %178 ], [ 0, %175 ], [ -21, %205 ], !dbg !1768
  ret i32 %233, !dbg !2075
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_matlab_call_pipeline(i8* %0, i32 (i8**)* %1, %struct.halide_filter_metadata_t* %2, i32 %3, %struct.mxArray** %4, i32 %5, %struct.mxArray** %6) local_unnamed_addr #4 !dbg !2076 {
  %8 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2085, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i32 (i8**)* %1, metadata !2086, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata %struct.halide_filter_metadata_t* %2, metadata !2087, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i32 %3, metadata !2088, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata %struct.mxArray** %4, metadata !2089, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i32 %5, metadata !2090, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata %struct.mxArray** %6, metadata !2091, metadata !DIExpression()), !dbg !2121
  %9 = tail call i32 @halide_matlab_init(i8* %0) #8, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %9, metadata !2092, metadata !DIExpression()), !dbg !2121
  %10 = icmp eq i32 %9, 0, !dbg !2123
  br i1 %10, label %11, label %186, !dbg !2125

11:                                               ; preds = %7
  %12 = bitcast i32* %8 to i8*, !dbg !2126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12), !dbg !2126
  call void @llvm.dbg.value(metadata i32* %8, metadata !2094, metadata !DIExpression()), !dbg !2121
  %13 = icmp sgt i32 %3, 0, !dbg !2127
  br i1 %13, label %14, label %27, !dbg !2129

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64 1, metadata !2130, metadata !DIExpression()) #6, !dbg !2136
  call void @llvm.dbg.value(metadata i64 1, metadata !2133, metadata !DIExpression()) #6, !dbg !2136
  call void @llvm.dbg.value(metadata i32 12, metadata !2134, metadata !DIExpression()) #6, !dbg !2136
  call void @llvm.dbg.value(metadata i32 0, metadata !2135, metadata !DIExpression()) #6, !dbg !2136
  %15 = load %struct.mxArray* (i64, i64, i32, i32)*, %struct.mxArray* (i64, i64, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_730E, align 8, !dbg !2139, !tbaa !897
  %16 = icmp eq %struct.mxArray* (i64, i64, i32, i32)* %15, null, !dbg !2139
  br i1 %16, label %19, label %17, !dbg !2141

17:                                               ; preds = %14
  %18 = tail call %struct.mxArray* %15(i64 1, i64 1, i32 12, i32 0) #7, !dbg !2142
  br label %22, !dbg !2144

19:                                               ; preds = %14
  %20 = load %struct.mxArray* (i32, i32, i32, i32)*, %struct.mxArray* (i32, i32, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_700E, align 8, !dbg !2145, !tbaa !897
  %21 = tail call %struct.mxArray* %20(i32 1, i32 1, i32 12, i32 0) #7, !dbg !2145
  br label %22, !dbg !2147

22:                                               ; preds = %17, %19
  %23 = phi %struct.mxArray* [ %18, %17 ], [ %21, %19 ], !dbg !2148
  store %struct.mxArray* %23, %struct.mxArray** %4, align 8, !dbg !2149, !tbaa !897
  call void @llvm.dbg.value(metadata %struct.mxArray* %23, metadata !2150, metadata !DIExpression()) #6, !dbg !2157
  %24 = load i8* (%struct.mxArray*)*, i8* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex9mxGetDataE, align 8, !dbg !2159, !tbaa !897
  %25 = tail call i8* %24(%struct.mxArray* %23) #7, !dbg !2159
  %26 = bitcast i8* %25 to i32*, !dbg !2160
  call void @llvm.dbg.value(metadata i32* %26, metadata !2094, metadata !DIExpression()), !dbg !2121
  br label %27, !dbg !2161

27:                                               ; preds = %22, %11
  %28 = phi i32* [ %26, %22 ], [ %8, %11 ], !dbg !2121
  call void @llvm.dbg.value(metadata i32* %28, metadata !2094, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i32* %28, metadata !2095, metadata !DIExpression()), !dbg !2121
  store i32 -1, i32* %28, align 4, !dbg !2162, !tbaa !1602
  %29 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i64 0, i32 1, !dbg !2163
  %30 = load i32, i32* %29, align 4, !dbg !2163, !tbaa !657
  %31 = icmp eq i32 %30, %5, !dbg !2165
  br i1 %31, label %68, label %32, !dbg !2166

32:                                               ; preds = %27
  %33 = icmp sgt i32 %5, 0, !dbg !2167
  br i1 %33, label %34, label %67, !dbg !2170

34:                                               ; preds = %32
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !2171
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !2171
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !2171
  %35 = tail call i8* @malloc(i64 1024) #7, !dbg !2174
  %36 = icmp eq i8* %35, null, !dbg !2175
  br i1 %36, label %39, label %37, !dbg !2176

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, i8* %35, i64 1023, !dbg !2177
  store i8 0, i8* %38, align 1, !dbg !2178, !tbaa !799
  br label %39, !dbg !2179

39:                                               ; preds = %34, %37
  %40 = phi i8* [ %38, %37 ], [ null, %34 ], !dbg !2180
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !2181
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !2181
  %41 = tail call i8* @halide_string_to_string(i8* %35, i8* %40, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0)) #7, !dbg !2183
  %42 = load i32, i32* %29, align 4, !dbg !2184, !tbaa !657
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1624, metadata !DIExpression()) #6, !dbg !2185
  call void @llvm.dbg.value(metadata i32 %42, metadata !1627, metadata !DIExpression()) #6, !dbg !2185
  %43 = sext i32 %42 to i64, !dbg !2187
  %44 = tail call i8* @halide_int64_to_string(i8* %41, i8* %40, i64 %43, i32 1) #7, !dbg !2188
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !2189
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !2189
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %40, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i64 0, i64 0)) #7, !dbg !2191
  %46 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i64 0, i32 4, !dbg !2192
  %47 = load i8*, i8** %46, align 8, !dbg !2192, !tbaa !638
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !2193
  call void @llvm.dbg.value(metadata i8* %47, metadata !975, metadata !DIExpression()) #6, !dbg !2193
  %48 = icmp eq i8* %47, null, !dbg !2195
  br i1 %48, label %49, label %51, !dbg !2196

49:                                               ; preds = %39
  %50 = tail call i8* @halide_string_to_string(i8* %45, i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !2197
  br label %53, !dbg !2198

51:                                               ; preds = %39
  %52 = tail call i8* @halide_string_to_string(i8* %45, i8* %40, i8* nonnull %47) #7, !dbg !2199
  br label %53

53:                                               ; preds = %49, %51
  %54 = phi i8* [ %52, %51 ], [ %50, %49 ], !dbg !2200
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !2201
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !2201
  %55 = tail call i8* @halide_string_to_string(i8* %54, i8* %40, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0)) #7, !dbg !2203
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1624, metadata !DIExpression()) #6, !dbg !2204
  call void @llvm.dbg.value(metadata i32 %5, metadata !1627, metadata !DIExpression()) #6, !dbg !2204
  %56 = zext i32 %5 to i64, !dbg !2206
  %57 = tail call i8* @halide_int64_to_string(i8* %55, i8* %40, i64 %56, i32 1) #7, !dbg !2207
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !2208
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !2208
  %58 = tail call i8* @halide_string_to_string(i8* %57, i8* %40, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !2210
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !2211
  br i1 %36, label %59, label %60, !dbg !2213

59:                                               ; preds = %53
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !2214
  br label %66, !dbg !2215

60:                                               ; preds = %53
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !2216
  %61 = ptrtoint i8* %58 to i64, !dbg !2218
  %62 = ptrtoint i8* %35 to i64, !dbg !2218
  %63 = add i64 %61, 1, !dbg !2218
  %64 = sub i64 %63, %62, !dbg !2219
  %65 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %35, i64 %64) #7, !dbg !2220
  tail call void @halide_error(i8* %0, i8* nonnull %35) #7, !dbg !2221
  br label %66

66:                                               ; preds = %59, %60
  call void @free(i8* %35) #7, !dbg !2222
  br label %67, !dbg !2223

67:                                               ; preds = %66, %32
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #8, !dbg !2224
  br label %184, !dbg !2225

68:                                               ; preds = %27
  %69 = icmp sgt i32 %3, 1, !dbg !2226
  br i1 %69, label %70, label %99, !dbg !2228

70:                                               ; preds = %68
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !950, metadata !DIExpression()) #6, !dbg !2229
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()) #6, !dbg !2229
  call void @llvm.dbg.value(metadata i8* null, metadata !954, metadata !DIExpression()) #6, !dbg !2229
  %71 = tail call i8* @malloc(i64 1024) #7, !dbg !2232
  %72 = icmp eq i8* %71, null, !dbg !2233
  br i1 %72, label %75, label %73, !dbg !2234

73:                                               ; preds = %70
  %74 = getelementptr inbounds i8, i8* %71, i64 1023, !dbg !2235
  store i8 0, i8* %74, align 1, !dbg !2236, !tbaa !799
  br label %75, !dbg !2237

75:                                               ; preds = %70, %73
  %76 = phi i8* [ %74, %73 ], [ null, %70 ], !dbg !2238
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !2239
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.60, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !2239
  %77 = tail call i8* @halide_string_to_string(i8* %71, i8* %76, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.60, i64 0, i64 0)) #7, !dbg !2241
  %78 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i64 0, i32 4, !dbg !2242
  %79 = load i8*, i8** %78, align 8, !dbg !2242, !tbaa !638
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !2243
  call void @llvm.dbg.value(metadata i8* %79, metadata !975, metadata !DIExpression()) #6, !dbg !2243
  %80 = icmp eq i8* %79, null, !dbg !2245
  br i1 %80, label %81, label %83, !dbg !2246

81:                                               ; preds = %75
  %82 = tail call i8* @halide_string_to_string(i8* %77, i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !2247
  br label %85, !dbg !2248

83:                                               ; preds = %75
  %84 = tail call i8* @halide_string_to_string(i8* %77, i8* %76, i8* nonnull %79) #7, !dbg !2249
  br label %85

85:                                               ; preds = %81, %83
  %86 = phi i8* [ %84, %83 ], [ %82, %81 ], !dbg !2250
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !2251
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !2251
  %87 = tail call i8* @halide_string_to_string(i8* %86, i8* %76, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0)) #7, !dbg !2253
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1624, metadata !DIExpression()) #6, !dbg !2254
  call void @llvm.dbg.value(metadata i32 %3, metadata !1627, metadata !DIExpression()) #6, !dbg !2254
  %88 = zext i32 %3 to i64, !dbg !2256
  %89 = tail call i8* @halide_int64_to_string(i8* %87, i8* %76, i64 %88, i32 1) #7, !dbg !2257
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !972, metadata !DIExpression()) #6, !dbg !2258
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), metadata !975, metadata !DIExpression()) #6, !dbg !2258
  %90 = tail call i8* @halide_string_to_string(i8* %89, i8* %76, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !2260
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !987, metadata !DIExpression()) #6, !dbg !2261
  br i1 %72, label %91, label %92, !dbg !2263

91:                                               ; preds = %85
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !2264
  br label %98, !dbg !2265

92:                                               ; preds = %85
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !998, metadata !DIExpression()) #6, !dbg !2266
  %93 = ptrtoint i8* %90 to i64, !dbg !2268
  %94 = ptrtoint i8* %71 to i64, !dbg !2268
  %95 = add i64 %93, 1, !dbg !2268
  %96 = sub i64 %95, %94, !dbg !2269
  %97 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %71, i64 %96) #7, !dbg !2270
  tail call void @halide_error(i8* %0, i8* nonnull %71) #7, !dbg !2271
  br label %98

98:                                               ; preds = %91, %92
  call void @free(i8* %71) #7, !dbg !2272
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #8, !dbg !2273
  br label %184, !dbg !2274

99:                                               ; preds = %68
  %100 = sext i32 %5 to i64, !dbg !2275
  %101 = alloca i8*, i64 %100, align 8, !dbg !2276
  call void @llvm.dbg.value(metadata i8** %101, metadata !2097, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i32 0, metadata !2098, metadata !DIExpression()), !dbg !2277
  %102 = icmp sgt i32 %5, 0, !dbg !2278
  br i1 %102, label %105, label %103, !dbg !2279

103:                                              ; preds = %99
  %104 = call i32 %1(i8** nonnull %101) #7, !dbg !2280
  store i32 %104, i32* %28, align 4, !dbg !2281, !tbaa !1602
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()), !dbg !2282
  br label %184, !dbg !2283

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i64 0, i32 2
  %107 = zext i32 %5 to i64, !dbg !2278
  br label %108, !dbg !2279

108:                                              ; preds = %105, %152
  %109 = phi i64 [ 0, %105 ], [ %153, %152 ]
  call void @llvm.dbg.value(metadata i64 %109, metadata !2098, metadata !DIExpression()), !dbg !2277
  %110 = getelementptr inbounds %struct.mxArray*, %struct.mxArray** %6, i64 %109, !dbg !2284
  %111 = load %struct.mxArray*, %struct.mxArray** %110, align 8, !dbg !2284, !tbaa !897
  call void @llvm.dbg.value(metadata %struct.mxArray* %111, metadata !2100, metadata !DIExpression()), !dbg !2285
  %112 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %106, align 8, !dbg !2286, !tbaa !661
  %113 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %112, i64 %109, !dbg !2287
  call void @llvm.dbg.value(metadata %struct.halide_filter_argument_t* %113, metadata !2103, metadata !DIExpression()), !dbg !2285
  %114 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %112, i64 %109, i32 1, !dbg !2288
  %115 = load i32, i32* %114, align 8, !dbg !2288, !tbaa !665
  %116 = add i32 %115, -1, !dbg !2289
  %117 = icmp ult i32 %116, 2, !dbg !2289
  br i1 %117, label %118, label %136, !dbg !2289

118:                                              ; preds = %108
  %119 = alloca %struct.halide_buffer_t, align 8, !dbg !2290
  %120 = bitcast %struct.halide_buffer_t* %119 to i8*
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %119, metadata !2104, metadata !DIExpression()), !dbg !2291
  %121 = call i8* @memset(i8* nonnull %120, i32 0, i64 56) #7, !dbg !2292
  %122 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %112, i64 %109, i32 2, !dbg !2293
  %123 = load i32, i32* %122, align 4, !dbg !2293, !tbaa !691
  %124 = sext i32 %123 to i64, !dbg !2294
  %125 = alloca %struct.halide_dimension_t, i64 %124, align 8, !dbg !2295
  %126 = bitcast %struct.halide_dimension_t* %125 to i8*, !dbg !2295
  %127 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %119, i64 0, i32 6, !dbg !2296
  store %struct.halide_dimension_t* %125, %struct.halide_dimension_t** %127, align 8, !dbg !2297, !tbaa !1704
  %128 = shl nsw i64 %124, 4, !dbg !2298
  %129 = call i8* @memset(i8* nonnull %126, i32 0, i64 %128) #7, !dbg !2299
  %130 = call i32 @halide_matlab_array_to_halide_buffer_t(i8* %0, %struct.mxArray* %111, %struct.halide_filter_argument_t* nonnull %113, %struct.halide_buffer_t* nonnull %119) #8, !dbg !2300
  store i32 %130, i32* %28, align 4, !dbg !2301, !tbaa !1602
  %131 = icmp eq i32 %130, 0, !dbg !2302
  br i1 %131, label %132, label %135, !dbg !2304

132:                                              ; preds = %118
  %133 = getelementptr inbounds i8*, i8** %101, i64 %109, !dbg !2305
  %134 = bitcast i8** %133 to %struct.halide_buffer_t**, !dbg !2306
  store %struct.halide_buffer_t* %119, %struct.halide_buffer_t** %134, align 8, !dbg !2306, !tbaa !897
  br label %152

135:                                              ; preds = %118
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #8, !dbg !2307
  br label %184

136:                                              ; preds = %108
  %137 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %112, i64 %109, i32 3, i32 1, !dbg !2309
  %138 = load i8, i8* %137, align 1, !dbg !2309, !tbaa !712
  %139 = zext i8 %138 to i32, !dbg !2310
  %140 = add nuw nsw i32 %139, 7, !dbg !2311
  %141 = lshr i32 %140, 3, !dbg !2312
  call void @llvm.dbg.value(metadata i32* undef, metadata !2313, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i32* undef, metadata !2320, metadata !DIExpression()), !dbg !2321
  %142 = icmp ugt i32 %141, 8, !dbg !2323
  %143 = select i1 %142, i32 %141, i32 8, !dbg !2323
  %144 = zext i32 %143 to i64, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %144, metadata !2107, metadata !DIExpression()), !dbg !2325
  %145 = alloca i8, i64 %144, align 8, !dbg !2326
  call void @llvm.dbg.value(metadata i8* %145, metadata !2109, metadata !DIExpression()), !dbg !2325
  %146 = call i8* @memset(i8* nonnull %145, i32 0, i64 %144) #7, !dbg !2327
  %147 = call i32 @halide_matlab_array_to_scalar(i8* %0, %struct.mxArray* %111, %struct.halide_filter_argument_t* nonnull %113, i8* nonnull %145) #8, !dbg !2328
  store i32 %147, i32* %28, align 4, !dbg !2329, !tbaa !1602
  %148 = icmp eq i32 %147, 0, !dbg !2330
  br i1 %148, label %149, label %151, !dbg !2332

149:                                              ; preds = %136
  %150 = getelementptr inbounds i8*, i8** %101, i64 %109, !dbg !2333
  store i8* %145, i8** %150, align 8, !dbg !2334, !tbaa !897
  br label %152

151:                                              ; preds = %136
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #8, !dbg !2335
  br label %184

152:                                              ; preds = %149, %132
  %153 = add nuw nsw i64 %109, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %153, metadata !2098, metadata !DIExpression()), !dbg !2277
  %154 = icmp eq i64 %153, %107, !dbg !2278
  br i1 %154, label %155, label %108, !dbg !2279, !llvm.loop !2338

155:                                              ; preds = %152
  %156 = call i32 %1(i8** nonnull %101) #7, !dbg !2280
  store i32 %156, i32* %28, align 4, !dbg !2281, !tbaa !1602
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()), !dbg !2282
  br i1 %102, label %157, label %184, !dbg !2283

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i64 0, i32 2
  %159 = zext i32 %5 to i64, !dbg !2340
  br label %160, !dbg !2283

160:                                              ; preds = %157, %181
  %161 = phi i64 [ 0, %157 ], [ %182, %181 ]
  call void @llvm.dbg.value(metadata i64 %161, metadata !2110, metadata !DIExpression()), !dbg !2282
  %162 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %158, align 8, !dbg !2341, !tbaa !661
  call void @llvm.dbg.value(metadata %struct.halide_filter_argument_t* undef, metadata !2112, metadata !DIExpression()), !dbg !2342
  %163 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %162, i64 %161, i32 1, !dbg !2343
  %164 = load i32, i32* %163, align 8, !dbg !2343, !tbaa !665
  %165 = icmp eq i32 %164, 2, !dbg !2344
  br i1 %165, label %166, label %172, !dbg !2345

166:                                              ; preds = %160
  %167 = getelementptr inbounds i8*, i8** %101, i64 %161, !dbg !2346
  %168 = bitcast i8** %167 to %struct.halide_buffer_t**, !dbg !2346
  %169 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %168, align 8, !dbg !2346, !tbaa !897
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %169, metadata !2115, metadata !DIExpression()), !dbg !2347
  %170 = call i32 @halide_copy_to_host(i8* %0, %struct.halide_buffer_t* %169) #7, !dbg !2348
  %171 = load i32, i32* %163, align 8, !dbg !2349, !tbaa !665
  br label %172, !dbg !2350

172:                                              ; preds = %166, %160
  %173 = phi i32 [ %171, %166 ], [ %164, %160 ], !dbg !2349
  %174 = add i32 %173, -1, !dbg !2351
  %175 = icmp ult i32 %174, 2, !dbg !2351
  br i1 %175, label %176, label %181, !dbg !2351

176:                                              ; preds = %172
  %177 = getelementptr inbounds i8*, i8** %101, i64 %161, !dbg !2352
  %178 = bitcast i8** %177 to %struct.halide_buffer_t**, !dbg !2352
  %179 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %178, align 8, !dbg !2352, !tbaa !897
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %179, metadata !2118, metadata !DIExpression()), !dbg !2353
  %180 = call i32 @halide_device_free(i8* %0, %struct.halide_buffer_t* %179) #7, !dbg !2354
  br label %181, !dbg !2355

181:                                              ; preds = %172, %176
  %182 = add nuw nsw i64 %161, 1, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %182, metadata !2110, metadata !DIExpression()), !dbg !2282
  %183 = icmp eq i64 %182, %159, !dbg !2340
  br i1 %183, label %184, label %160, !dbg !2283, !llvm.loop !2357

184:                                              ; preds = %181, %103, %155, %151, %135, %98, %67
  %185 = load i32, i32* %28, align 4, !dbg !2121, !tbaa !1602
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12), !dbg !2359
  br label %186

186:                                              ; preds = %7, %184
  %187 = phi i32 [ %185, %184 ], [ %9, %7 ], !dbg !2121
  ret i32 %187, !dbg !2359
}

declare !dbg !2360 dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #5

declare !dbg !2363 dso_local i32 @halide_copy_to_host(i8*, %struct.halide_buffer_t*) local_unnamed_addr #5

declare !dbg !2364 dso_local i32 @halide_device_free(i8*, %struct.halide_buffer_t*) local_unnamed_addr #5

declare !dbg !2365 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #5

declare !dbg !2368 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #5

declare !dbg !2371 dso_local i8* @malloc(i64) local_unnamed_addr #5

declare !dbg !2374 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #5

declare !dbg !2375 dso_local void @free(i8*) local_unnamed_addr #5

declare !dbg !2378 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #5

declare !dbg !2381 extern_weak dso_local i8* @halide_get_symbol(i8*) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!112}
!llvm.module.flags = !{!449, !450, !451}
!llvm.ident = !{!452}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mexWarnMsgTxt", linkageName: "_ZN6Halide7Runtime3mex13mexWarnMsgTxtE", scope: !2, file: !5, line: 32, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "mex", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/mex_functions.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "mxGetNumberOfDimensions_730", linkageName: "_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E", scope: !2, file: !5, line: 59, type: !14, isLocal: false, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !20}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 27, baseType: !19)
!18 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "mxArray", file: !18, line: 167, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS7mxArray")
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "mxGetNumberOfDimensions_700", linkageName: "_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E", scope: !2, file: !5, line: 60, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !20}
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "mxGetDimensions_730", linkageName: "_ZN6Halide7Runtime3mex19mxGetDimensions_730E", scope: !2, file: !5, line: 61, type: !31, isLocal: false, isDefinition: true)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !20}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "mxGetDimensions_700", linkageName: "_ZN6Halide7Runtime3mex19mxGetDimensions_700E", scope: !2, file: !5, line: 62, type: !38, isLocal: false, isDefinition: true)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !20}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "mxGetClassID", linkageName: "_ZN6Halide7Runtime3mex12mxGetClassIDE", scope: !2, file: !5, line: 77, type: !45, isLocal: false, isDefinition: true)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !20}
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mxClassID", scope: !2, file: !49, line: 26, baseType: !50, size: 32, elements: !51, identifier: "_ZTSN6Halide7Runtime3mex9mxClassIDE")
!49 = !DIFile(filename: "src/runtime/matlab.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!50 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!52 = !DIEnumerator(name: "mxUNKNOWN_CLASS", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "mxCELL_CLASS", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "mxSTRUCT_CLASS", value: 2, isUnsigned: true)
!55 = !DIEnumerator(name: "mxLOGICAL_CLASS", value: 3, isUnsigned: true)
!56 = !DIEnumerator(name: "mxCHAR_CLASS", value: 4, isUnsigned: true)
!57 = !DIEnumerator(name: "mxVOID_CLASS", value: 5, isUnsigned: true)
!58 = !DIEnumerator(name: "mxDOUBLE_CLASS", value: 6, isUnsigned: true)
!59 = !DIEnumerator(name: "mxSINGLE_CLASS", value: 7, isUnsigned: true)
!60 = !DIEnumerator(name: "mxINT8_CLASS", value: 8, isUnsigned: true)
!61 = !DIEnumerator(name: "mxUINT8_CLASS", value: 9, isUnsigned: true)
!62 = !DIEnumerator(name: "mxINT16_CLASS", value: 10, isUnsigned: true)
!63 = !DIEnumerator(name: "mxUINT16_CLASS", value: 11, isUnsigned: true)
!64 = !DIEnumerator(name: "mxINT32_CLASS", value: 12, isUnsigned: true)
!65 = !DIEnumerator(name: "mxUINT32_CLASS", value: 13, isUnsigned: true)
!66 = !DIEnumerator(name: "mxINT64_CLASS", value: 14, isUnsigned: true)
!67 = !DIEnumerator(name: "mxUINT64_CLASS", value: 15, isUnsigned: true)
!68 = !DIEnumerator(name: "mxFUNCTION_CLASS", value: 16, isUnsigned: true)
!69 = !DIEnumerator(name: "mxOPAQUE_CLASS", value: 17, isUnsigned: true)
!70 = !DIEnumerator(name: "mxOBJECT_CLASS", value: 18, isUnsigned: true)
!71 = !DIEnumerator(name: "mxINDEX_CLASS", value: 15, isUnsigned: true)
!72 = !DIEnumerator(name: "mxSPARSE_CLASS", value: 5, isUnsigned: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "mxGetData", linkageName: "_ZN6Halide7Runtime3mex9mxGetDataE", scope: !2, file: !5, line: 78, type: !75, isLocal: false, isDefinition: true)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!78, !20}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "mxIsNumeric", linkageName: "_ZN6Halide7Runtime3mex11mxIsNumericE", scope: !2, file: !5, line: 80, type: !81, isLocal: false, isDefinition: true)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !20}
!84 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "mxIsLogical", linkageName: "_ZN6Halide7Runtime3mex11mxIsLogicalE", scope: !2, file: !5, line: 82, type: !81, isLocal: false, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "mxIsComplex", linkageName: "_ZN6Halide7Runtime3mex11mxIsComplexE", scope: !2, file: !5, line: 90, type: !81, isLocal: false, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "mxGetScalar", linkageName: "_ZN6Halide7Runtime3mex11mxGetScalarE", scope: !2, file: !5, line: 110, type: !91, isLocal: false, isDefinition: true)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !20}
!94 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "mxGetElementSize", linkageName: "_ZN6Halide7Runtime3mex16mxGetElementSizeE", scope: !2, file: !5, line: 122, type: !14, isLocal: false, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "mxCreateNumericMatrix_730", linkageName: "_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_730E", scope: !2, file: !5, line: 140, type: !99, isLocal: false, isDefinition: true)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !17, !17, !48, !103}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mxComplexity", scope: !2, file: !49, line: 55, baseType: !50, size: 32, elements: !104, identifier: "_ZTSN6Halide7Runtime3mex12mxComplexityE")
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "mxREAL", value: 0, isUnsigned: true)
!106 = !DIEnumerator(name: "mxCOMPLEX", value: 1, isUnsigned: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "mxCreateNumericMatrix_700", linkageName: "_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_700E", scope: !2, file: !5, line: 141, type: !109, isLocal: false, isDefinition: true)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!102, !28, !28, !48, !103}
!112 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !113, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !114, retainedTypes: !181, globals: !445, imports: !446, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/matlab.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!114 = !{!48, !103, !115, !125, !129, !134}
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !116, line: 403, baseType: !117, size: 8, elements: !119, identifier: "_ZTS18halide_type_code_t")
!116 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !18, line: 16, baseType: !118)
!118 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!121 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!122 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!123 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!124 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !116, line: 1415, baseType: !50, size: 32, elements: !126, identifier: "_ZTS19halide_buffer_flags")
!126 = !{!127, !128}
!127 = !DIEnumerator(name: "halide_buffer_flag_host_dirty", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "halide_buffer_flag_device_dirty", value: 2, isUnsigned: true)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_argument_kind_t", file: !116, line: 1598, baseType: !50, size: 32, elements: !130, identifier: "_ZTS22halide_argument_kind_t")
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "halide_argument_kind_input_scalar", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "halide_argument_kind_input_buffer", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "halide_argument_kind_output_buffer", value: 2, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_error_code_t", file: !116, line: 990, baseType: !28, size: 32, elements: !135, identifier: "_ZTS19halide_error_code_t")
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!136 = !DIEnumerator(name: "halide_error_code_success", value: 0)
!137 = !DIEnumerator(name: "halide_error_code_generic_error", value: -1)
!138 = !DIEnumerator(name: "halide_error_code_explicit_bounds_too_small", value: -2)
!139 = !DIEnumerator(name: "halide_error_code_bad_type", value: -3)
!140 = !DIEnumerator(name: "halide_error_code_access_out_of_bounds", value: -4)
!141 = !DIEnumerator(name: "halide_error_code_buffer_allocation_too_large", value: -5)
!142 = !DIEnumerator(name: "halide_error_code_buffer_extents_too_large", value: -6)
!143 = !DIEnumerator(name: "halide_error_code_constraints_make_required_region_smaller", value: -7)
!144 = !DIEnumerator(name: "halide_error_code_constraint_violated", value: -8)
!145 = !DIEnumerator(name: "halide_error_code_param_too_small", value: -9)
!146 = !DIEnumerator(name: "halide_error_code_param_too_large", value: -10)
!147 = !DIEnumerator(name: "halide_error_code_out_of_memory", value: -11)
!148 = !DIEnumerator(name: "halide_error_code_buffer_argument_is_null", value: -12)
!149 = !DIEnumerator(name: "halide_error_code_debug_to_file_failed", value: -13)
!150 = !DIEnumerator(name: "halide_error_code_copy_to_host_failed", value: -14)
!151 = !DIEnumerator(name: "halide_error_code_copy_to_device_failed", value: -15)
!152 = !DIEnumerator(name: "halide_error_code_device_malloc_failed", value: -16)
!153 = !DIEnumerator(name: "halide_error_code_device_sync_failed", value: -17)
!154 = !DIEnumerator(name: "halide_error_code_device_free_failed", value: -18)
!155 = !DIEnumerator(name: "halide_error_code_no_device_interface", value: -19)
!156 = !DIEnumerator(name: "halide_error_code_matlab_init_failed", value: -20)
!157 = !DIEnumerator(name: "halide_error_code_matlab_bad_param_type", value: -21)
!158 = !DIEnumerator(name: "halide_error_code_internal_error", value: -22)
!159 = !DIEnumerator(name: "halide_error_code_device_run_failed", value: -23)
!160 = !DIEnumerator(name: "halide_error_code_unaligned_host_ptr", value: -24)
!161 = !DIEnumerator(name: "halide_error_code_bad_fold", value: -25)
!162 = !DIEnumerator(name: "halide_error_code_fold_factor_too_small", value: -26)
!163 = !DIEnumerator(name: "halide_error_code_requirement_failed", value: -27)
!164 = !DIEnumerator(name: "halide_error_code_buffer_extents_negative", value: -28)
!165 = !DIEnumerator(name: "halide_error_code_unused_29", value: -29)
!166 = !DIEnumerator(name: "halide_error_code_unused_30", value: -30)
!167 = !DIEnumerator(name: "halide_error_code_specialize_fail", value: -31)
!168 = !DIEnumerator(name: "halide_error_code_device_wrap_native_failed", value: -32)
!169 = !DIEnumerator(name: "halide_error_code_device_detach_native_failed", value: -33)
!170 = !DIEnumerator(name: "halide_error_code_host_is_null", value: -34)
!171 = !DIEnumerator(name: "halide_error_code_bad_extern_fold", value: -35)
!172 = !DIEnumerator(name: "halide_error_code_device_interface_no_device", value: -36)
!173 = !DIEnumerator(name: "halide_error_code_host_and_device_dirty", value: -37)
!174 = !DIEnumerator(name: "halide_error_code_buffer_is_null", value: -38)
!175 = !DIEnumerator(name: "halide_error_code_device_buffer_copy_failed", value: -39)
!176 = !DIEnumerator(name: "halide_error_code_device_crop_unsupported", value: -40)
!177 = !DIEnumerator(name: "halide_error_code_device_crop_failed", value: -41)
!178 = !DIEnumerator(name: "halide_error_code_incompatible_device_interface", value: -42)
!179 = !DIEnumerator(name: "halide_error_code_bad_dimensions", value: -43)
!180 = !DIEnumerator(name: "halide_error_code_device_dirty_with_no_device_support", value: -44)
!181 = !{!182, !337, !214, !418, !419, !421, !422, !424, !425, !209, !426, !117, !240, !427, !223, !428, !218, !429, !230, !430, !94, !431, !432, !433, !342, !189, !6, !434, !25, !437, !38, !45, !75, !81, !91, !442, !109, !331}
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !184, file: !183, line: 199, baseType: !186)
!183 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!184 = !DINamespace(scope: !185)
!185 = !DINamespace(name: "Internal", scope: !3)
!186 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !184, file: !183, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !187, templateParams: !415)
!187 = !{!188, !190, !191, !192, !193, !194, !198, !202, !206, !211, !215, !220, !224, !227, !231, !236, !242, !275, !397, !400, !403, !408, !409, !412, !413, !414}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !186, file: !183, line: 32, baseType: !189, size: 64, flags: DIFlagPublic)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !186, file: !183, line: 32, baseType: !189, size: 64, offset: 64, flags: DIFlagPublic)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !186, file: !183, line: 32, baseType: !189, size: 64, offset: 128, flags: DIFlagPublic)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !186, file: !183, line: 33, baseType: !78, size: 64, offset: 192, flags: DIFlagPublic)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !186, file: !183, line: 34, baseType: !84, size: 8, offset: 256, flags: DIFlagPublic)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !186, file: !183, line: 35, baseType: !195, size: 8, offset: 264, flags: DIFlagPublic)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 1)
!198 = !DISubprogram(name: "Printer", scope: !186, file: !183, line: 37, type: !199, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !201, !78, !189}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!202 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !186, file: !183, line: 57, type: !203, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!203 = !DISubroutineType(types: !204)
!204 = !{!205, !201, !9}
!205 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !186, size: 64)
!206 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !186, file: !183, line: 67, type: !207, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!207 = !DISubroutineType(types: !208)
!208 = !{!205, !201, !209}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !18, line: 9, baseType: !210)
!210 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!211 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !186, file: !183, line: 72, type: !212, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DISubroutineType(types: !213)
!213 = !{!205, !201, !214}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !18, line: 11, baseType: !28)
!215 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !186, file: !183, line: 77, type: !216, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DISubroutineType(types: !217)
!217 = !{!205, !201, !218}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !18, line: 10, baseType: !219)
!219 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!220 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEj", scope: !186, file: !183, line: 82, type: !221, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubroutineType(types: !222)
!222 = !{!205, !201, !223}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 12, baseType: !50)
!224 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !186, file: !183, line: 87, type: !225, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = !DISubroutineType(types: !226)
!226 = !{!205, !201, !94}
!227 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEf", scope: !186, file: !183, line: 92, type: !228, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DISubroutineType(types: !229)
!229 = !{!205, !201, !230}
!230 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!231 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !186, file: !183, line: 97, type: !232, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DISubroutineType(types: !233)
!233 = !{!205, !201, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!236 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE23write_float16_from_bitsEt", scope: !186, file: !183, line: 102, type: !237, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!237 = !DISubroutineType(types: !238)
!238 = !{!205, !201, !239}
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !18, line: 14, baseType: !241)
!241 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!242 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !186, file: !183, line: 108, type: !243, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!243 = !DISubroutineType(types: !244)
!244 = !{!205, !201, !245}
!245 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !116, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !248, identifier: "_ZTS13halide_type_t")
!248 = !{!249, !251, !252, !253, !257, !260, !264, !267, !268, !269, !272}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !247, file: !116, line: 434, baseType: !250, size: 8, align: 8)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !116, line: 413, baseType: !115)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !247, file: !116, line: 442, baseType: !117, size: 8, align: 8, offset: 8)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !247, file: !116, line: 446, baseType: !240, size: 16, align: 16, offset: 16)
!253 = !DISubprogram(name: "halide_type_t", scope: !247, file: !116, line: 453, type: !254, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !256, !250, !117, !240}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!257 = !DISubprogram(name: "halide_type_t", scope: !247, file: !116, line: 459, type: !258, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !256}
!260 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !247, file: !116, line: 463, type: !261, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DISubroutineType(types: !262)
!262 = !{!247, !263, !240}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!264 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !247, file: !116, line: 468, type: !265, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!265 = !DISubroutineType(types: !266)
!266 = !{!84, !263, !245}
!267 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !247, file: !116, line: 472, type: !265, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!268 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !247, file: !116, line: 476, type: !265, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!269 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !247, file: !116, line: 481, type: !270, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!270 = !DISubroutineType(types: !271)
!271 = !{!28, !263}
!272 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !247, file: !116, line: 485, type: !273, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DISubroutineType(types: !274)
!274 = !{!223, !263}
!275 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK15halide_buffer_t", scope: !186, file: !183, line: 113, type: !276, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!276 = !DISubroutineType(types: !277)
!277 = !{!205, !201, !278}
!278 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !116, line: 1550, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !116, line: 1423, size: 448, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !282, identifier: "_ZTS15halide_buffer_t")
!282 = !{!283, !284, !336, !338, !339, !340, !341, !364, !365, !370, !374, !377, !378, !381, !382, !385, !388, !389, !390, !393, !396}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !281, file: !116, line: 1425, baseType: !218, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !281, file: !116, line: 1428, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !116, line: 723, size: 1024, flags: DIFlagTypePassByValue, elements: !288, identifier: "_ZTS25halide_device_interface_t")
!288 = !{!289, !294, !298, !299, !303, !304, !305, !306, !307, !311, !317, !321, !322, !326, !327, !332}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !287, file: !116, line: 724, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!28, !78, !293, !285}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !287, file: !116, line: 726, baseType: !295, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!28, !78, !293}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !287, file: !116, line: 727, baseType: !295, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !287, file: !116, line: 728, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !78, !285}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !287, file: !116, line: 730, baseType: !295, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !287, file: !116, line: 731, baseType: !290, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !287, file: !116, line: 733, baseType: !290, size: 64, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !287, file: !116, line: 735, baseType: !295, size: 64, offset: 448)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !287, file: !116, line: 736, baseType: !308, size: 64, offset: 512)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!28, !78, !293, !285, !293}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !287, file: !116, line: 738, baseType: !312, size: 64, offset: 576)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!28, !78, !315, !293}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !287, file: !116, line: 740, baseType: !318, size: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!28, !78, !315, !28, !28, !293}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !287, file: !116, line: 742, baseType: !295, size: 64, offset: 704)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !287, file: !116, line: 743, baseType: !323, size: 64, offset: 768)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!28, !78, !293, !218, !285}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !287, file: !116, line: 745, baseType: !295, size: 64, offset: 832)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !287, file: !116, line: 746, baseType: !328, size: 64, offset: 896)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!28, !78, !331, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !287, file: !116, line: 747, baseType: !333, size: 64, offset: 960)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !116, line: 707, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS30halide_device_interface_impl_t")
!336 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !281, file: !116, line: 1433, baseType: !337, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !116, line: 1436, baseType: !218, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !281, file: !116, line: 1439, baseType: !247, size: 32, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !281, file: !116, line: 1442, baseType: !214, size: 32, offset: 288)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !281, file: !116, line: 1446, baseType: !342, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !116, line: 1409, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !116, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !345, identifier: "_ZTS18halide_dimension_t")
!345 = !{!346, !347, !348, !349, !350, !354, !357, !363}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !344, file: !116, line: 1383, baseType: !214, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !344, file: !116, line: 1383, baseType: !214, size: 32, offset: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !344, file: !116, line: 1383, baseType: !214, size: 32, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !116, line: 1386, baseType: !223, size: 32, offset: 96)
!350 = !DISubprogram(name: "halide_dimension_t", scope: !344, file: !116, line: 1388, type: !351, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!354 = !DISubprogram(name: "halide_dimension_t", scope: !344, file: !116, line: 1389, type: !355, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !353, !214, !214, !214, !223}
!357 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !344, file: !116, line: 1393, type: !358, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DISubroutineType(types: !359)
!359 = !{!84, !360, !362}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!362 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !361, size: 64)
!363 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !344, file: !116, line: 1400, type: !358, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !281, file: !116, line: 1449, baseType: !78, size: 64, offset: 384)
!365 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !281, file: !116, line: 1454, type: !366, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!366 = !DISubroutineType(types: !367)
!367 = !{!84, !368, !369}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !116, line: 1416, baseType: !125)
!370 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !281, file: !116, line: 1458, type: !371, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !373, !369, !84}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!374 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !281, file: !116, line: 1466, type: !375, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DISubroutineType(types: !376)
!376 = !{!84, !368}
!377 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !281, file: !116, line: 1470, type: !375, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !281, file: !116, line: 1474, type: !379, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !373, !84}
!381 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !281, file: !116, line: 1478, type: !379, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !281, file: !116, line: 1485, type: !383, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!383 = !DISubroutineType(types: !384)
!384 = !{!17, !368}
!385 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !281, file: !116, line: 1495, type: !386, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!386 = !DISubroutineType(types: !387)
!387 = !{!337, !368}
!388 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !281, file: !116, line: 1506, type: !386, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!389 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !281, file: !116, line: 1518, type: !383, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !281, file: !116, line: 1523, type: !391, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!391 = !DISubroutineType(types: !392)
!392 = !{!337, !368, !41}
!393 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !281, file: !116, line: 1534, type: !394, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DISubroutineType(types: !395)
!395 = !{!28, !373, !78}
!396 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !281, file: !116, line: 1545, type: !375, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!397 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !186, file: !183, line: 119, type: !398, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!398 = !DISubroutineType(types: !399)
!399 = !{!9, !201}
!400 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !186, file: !183, line: 131, type: !401, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !201}
!403 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !186, file: !183, line: 139, type: !404, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!404 = !DISubroutineType(types: !405)
!405 = !{!218, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!408 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE8capacityEv", scope: !186, file: !183, line: 143, type: !404, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!409 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5eraseEi", scope: !186, file: !183, line: 148, type: !410, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !201, !28}
!412 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE16allocation_errorEv", scope: !186, file: !183, line: 158, type: !398, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !186, file: !183, line: 162, type: !401, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!414 = !DISubprogram(name: "~Printer", scope: !186, file: !183, line: 166, type: !401, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!415 = !{!416, !417}
!416 = !DITemplateValueParameter(name: "type", type: !28, value: i32 1)
!417 = !DITemplateValueParameter(name: "length", type: !219, value: i64 1024)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !18, line: 15, baseType: !420)
!420 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !18, line: 13, baseType: !423)
!423 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!19, !20}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!440, !20}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!102, !19, !19, !48, !103}
!445 = !{!0, !12, !23, !29, !36, !43, !73, !79, !85, !87, !89, !95, !97, !107}
!446 = !{!447, !448}
!447 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !112, entity: !185, file: !18, line: 225)
!448 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !112, entity: !2, file: !49, line: 214)
!449 = !{i32 7, !"Dwarf Version", i32 4}
!450 = !{i32 2, !"Debug Info Version", i32 3}
!451 = !{i32 1, !"wchar_size", i32 4}
!452 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!453 = distinct !DISubprogram(name: "get_class_id", linkageName: "_ZN6Halide7Runtime3mex12get_class_idEii", scope: !2, file: !49, line: 78, type: !454, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!48, !214, !214}
!456 = !{!457, !458}
!457 = !DILocalVariable(name: "type_code", arg: 1, scope: !453, file: !49, line: 78, type: !214)
!458 = !DILocalVariable(name: "type_bits", arg: 2, scope: !453, file: !49, line: 78, type: !214)
!459 = !DILocation(line: 0, scope: !453)
!460 = !DILocation(line: 79, column: 5, scope: !453)
!461 = !DILocation(line: 81, column: 9, scope: !462)
!462 = distinct !DILexicalBlock(scope: !453, file: !49, line: 79, column: 24)
!463 = !DILocation(line: 85, column: 13, scope: !464)
!464 = distinct !DILexicalBlock(scope: !462, file: !49, line: 81, column: 28)
!465 = !DILocation(line: 87, column: 13, scope: !464)
!466 = !DILocation(line: 89, column: 13, scope: !464)
!467 = !DILocation(line: 91, column: 13, scope: !464)
!468 = !DILocation(line: 93, column: 9, scope: !462)
!469 = !DILocation(line: 95, column: 9, scope: !462)
!470 = !DILocation(line: 99, column: 13, scope: !471)
!471 = distinct !DILexicalBlock(scope: !462, file: !49, line: 95, column: 28)
!472 = !DILocation(line: 101, column: 13, scope: !471)
!473 = !DILocation(line: 103, column: 13, scope: !471)
!474 = !DILocation(line: 105, column: 13, scope: !471)
!475 = !DILocation(line: 107, column: 9, scope: !462)
!476 = !DILocation(line: 109, column: 9, scope: !462)
!477 = !DILocation(line: 118, column: 1, scope: !453)
!478 = distinct !DISubprogram(name: "get_class_name", linkageName: "_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE", scope: !2, file: !49, line: 121, type: !479, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, retainedNodes: !481)
!479 = !DISubroutineType(types: !480)
!480 = !{!9, !48}
!481 = !{!482}
!482 = !DILocalVariable(name: "id", arg: 1, scope: !478, file: !49, line: 121, type: !48)
!483 = !DILocation(line: 0, scope: !478)
!484 = !DILocation(line: 122, column: 5, scope: !478)
!485 = !DILocation(line: 126, column: 9, scope: !486)
!486 = distinct !DILexicalBlock(scope: !478, file: !49, line: 122, column: 17)
!487 = !DILocation(line: 128, column: 9, scope: !486)
!488 = !DILocation(line: 130, column: 9, scope: !486)
!489 = !DILocation(line: 132, column: 9, scope: !486)
!490 = !DILocation(line: 134, column: 9, scope: !486)
!491 = !DILocation(line: 136, column: 9, scope: !486)
!492 = !DILocation(line: 138, column: 9, scope: !486)
!493 = !DILocation(line: 140, column: 9, scope: !486)
!494 = !DILocation(line: 142, column: 9, scope: !486)
!495 = !DILocation(line: 144, column: 9, scope: !486)
!496 = !DILocation(line: 146, column: 9, scope: !486)
!497 = !DILocation(line: 148, column: 9, scope: !486)
!498 = !DILocation(line: 150, column: 9, scope: !486)
!499 = !DILocation(line: 152, column: 9, scope: !486)
!500 = !DILocation(line: 154, column: 9, scope: !486)
!501 = !DILocation(line: 156, column: 9, scope: !486)
!502 = !DILocation(line: 158, column: 9, scope: !486)
!503 = !DILocation(line: 160, column: 9, scope: !486)
!504 = !DILocation(line: 0, scope: !486)
!505 = !DILocation(line: 162, column: 1, scope: !478)
!506 = distinct !DISubprogram(name: "halide_matlab_describe_pipeline", scope: !49, file: !49, line: 218, type: !507, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, retainedNodes: !608)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509, !577}
!509 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringstream", scope: !184, file: !183, line: 200, baseType: !511)
!511 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<2, 1024>", scope: !184, file: !183, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !512, templateParams: !575)
!512 = !{!513, !514, !515, !516, !517, !518, !519, !523, !527, !530, !533, !536, !539, !542, !545, !548, !551, !554, !557, !560, !563, !568, !569, !572, !573, !574}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !511, file: !183, line: 32, baseType: !189, size: 64, flags: DIFlagPublic)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !511, file: !183, line: 32, baseType: !189, size: 64, offset: 64, flags: DIFlagPublic)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !511, file: !183, line: 32, baseType: !189, size: 64, offset: 128, flags: DIFlagPublic)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !511, file: !183, line: 33, baseType: !78, size: 64, offset: 192, flags: DIFlagPublic)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !511, file: !183, line: 34, baseType: !84, size: 8, offset: 256, flags: DIFlagPublic)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !511, file: !183, line: 35, baseType: !195, size: 8, offset: 264, flags: DIFlagPublic)
!519 = !DISubprogram(name: "Printer", scope: !511, file: !183, line: 37, type: !520, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !522, !78, !189}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!523 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEPKc", scope: !511, file: !183, line: 57, type: !524, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!524 = !DISubroutineType(types: !525)
!525 = !{!526, !522, !9}
!526 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !511, size: 64)
!527 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEx", scope: !511, file: !183, line: 67, type: !528, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!528 = !DISubroutineType(types: !529)
!529 = !{!526, !522, !209}
!530 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEi", scope: !511, file: !183, line: 72, type: !531, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!531 = !DISubroutineType(types: !532)
!532 = !{!526, !522, !214}
!533 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEy", scope: !511, file: !183, line: 77, type: !534, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!534 = !DISubroutineType(types: !535)
!535 = !{!526, !522, !218}
!536 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEj", scope: !511, file: !183, line: 82, type: !537, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!537 = !DISubroutineType(types: !538)
!538 = !{!526, !522, !223}
!539 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEd", scope: !511, file: !183, line: 87, type: !540, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!540 = !DISubroutineType(types: !541)
!541 = !{!526, !522, !94}
!542 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEf", scope: !511, file: !183, line: 92, type: !543, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!543 = !DISubroutineType(types: !544)
!544 = !{!526, !522, !230}
!545 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEPKv", scope: !511, file: !183, line: 97, type: !546, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!546 = !DISubroutineType(types: !547)
!547 = !{!526, !522, !234}
!548 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE23write_float16_from_bitsEt", scope: !511, file: !183, line: 102, type: !549, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!549 = !DISubroutineType(types: !550)
!550 = !{!526, !522, !239}
!551 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsERK13halide_type_t", scope: !511, file: !183, line: 108, type: !552, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!552 = !DISubroutineType(types: !553)
!553 = !{!526, !522, !245}
!554 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsERK15halide_buffer_t", scope: !511, file: !183, line: 113, type: !555, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!555 = !DISubroutineType(types: !556)
!556 = !{!526, !522, !278}
!557 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE3strEv", scope: !511, file: !183, line: 119, type: !558, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!558 = !DISubroutineType(types: !559)
!559 = !{!9, !522}
!560 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5clearEv", scope: !511, file: !183, line: 131, type: !561, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !522}
!563 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE4sizeEv", scope: !511, file: !183, line: 139, type: !564, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!564 = !DISubroutineType(types: !565)
!565 = !{!218, !566}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!568 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE8capacityEv", scope: !511, file: !183, line: 143, type: !564, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!569 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5eraseEi", scope: !511, file: !183, line: 148, type: !570, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !522, !28}
!572 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE16allocation_errorEv", scope: !511, file: !183, line: 158, type: !558, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!573 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE28msan_annotate_is_initializedEv", scope: !511, file: !183, line: 162, type: !561, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!574 = !DISubprogram(name: "~Printer", scope: !511, file: !183, line: 166, type: !561, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!575 = !{!576, !417}
!576 = !DITemplateValueParameter(name: "type", type: !28, value: i32 2)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_filter_metadata_t", file: !116, line: 1648, size: 256, flags: DIFlagTypePassByValue, elements: !580, identifier: "_ZTS24halide_filter_metadata_t")
!580 = !{!581, !583, !584, !585, !606, !607}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "VERSION", scope: !579, file: !116, line: 1650, baseType: !582, flags: DIFlagStaticMember, extraData: i32 1)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !579, file: !116, line: 1654, baseType: !214, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "num_arguments", scope: !579, file: !116, line: 1657, baseType: !214, size: 32, offset: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !579, file: !116, line: 1663, baseType: !586, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_filter_argument_t", file: !116, line: 1631, size: 512, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !589, identifier: "_ZTS24halide_filter_argument_t")
!589 = !{!590, !591, !592, !593, !594, !598, !599, !600, !601}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !588, file: !116, line: 1632, baseType: !9, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !588, file: !116, line: 1633, baseType: !214, size: 32, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !588, file: !116, line: 1634, baseType: !214, size: 32, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !116, line: 1635, baseType: !247, size: 32, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "scalar_def", scope: !588, file: !116, line: 1639, baseType: !595, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !597)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_scalar_value_t", file: !116, line: 1576, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS21halide_scalar_value_t")
!598 = !DIDerivedType(tag: DW_TAG_member, name: "scalar_min", scope: !588, file: !116, line: 1639, baseType: !595, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "scalar_max", scope: !588, file: !116, line: 1639, baseType: !595, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "scalar_estimate", scope: !588, file: !116, line: 1639, baseType: !595, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_estimates", scope: !588, file: !116, line: 1645, baseType: !602, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !579, file: !116, line: 1667, baseType: !9, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !579, file: !116, line: 1670, baseType: !9, size: 64, offset: 192)
!608 = !{!609, !610, !611, !613}
!609 = !DILocalVariable(name: "desc", arg: 1, scope: !506, file: !49, line: 218, type: !509)
!610 = !DILocalVariable(name: "metadata", arg: 2, scope: !506, file: !49, line: 218, type: !577)
!611 = !DILocalVariable(name: "i", scope: !612, file: !49, line: 220, type: !28)
!612 = distinct !DILexicalBlock(scope: !506, file: !49, line: 220, column: 5)
!613 = !DILocalVariable(name: "arg", scope: !614, file: !49, line: 221, type: !586)
!614 = distinct !DILexicalBlock(scope: !615, file: !49, line: 220, column: 55)
!615 = distinct !DILexicalBlock(scope: !612, file: !49, line: 220, column: 5)
!616 = !DILocation(line: 0, scope: !506)
!617 = !DILocalVariable(name: "this", arg: 1, scope: !618, type: !621, flags: DIFlagArtificial | DIFlagObjectPointer)
!618 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEPKc", scope: !511, file: !183, line: 57, type: !524, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !112, declaration: !523, retainedNodes: !619)
!619 = !{!617, !620}
!620 = !DILocalVariable(name: "arg", arg: 2, scope: !618, file: !183, line: 57, type: !9)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!622 = !DILocation(line: 0, scope: !618, inlinedAt: !623)
!623 = distinct !DILocation(line: 219, column: 10, scope: !506)
!624 = !DILocation(line: 62, column: 43, scope: !625, inlinedAt: !623)
!625 = distinct !DILexicalBlock(scope: !626, file: !183, line: 61, column: 16)
!626 = distinct !DILexicalBlock(scope: !618, file: !183, line: 59, column: 13)
!627 = !{!628, !629, i64 8}
!628 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEE", !629, i64 0, !629, i64 8, !629, i64 16, !629, i64 24, !632, i64 32, !630, i64 33}
!629 = !{!"any pointer", !630, i64 0}
!630 = !{!"omnipotent char", !631, i64 0}
!631 = !{!"Simple C++ TBAA"}
!632 = !{!"bool", !630, i64 0}
!633 = !DILocation(line: 62, column: 48, scope: !625, inlinedAt: !623)
!634 = !{!628, !629, i64 16}
!635 = !DILocation(line: 62, column: 19, scope: !625, inlinedAt: !623)
!636 = !DILocation(line: 62, column: 17, scope: !625, inlinedAt: !623)
!637 = !DILocation(line: 219, column: 33, scope: !506)
!638 = !{!639, !629, i64 24}
!639 = !{!"_ZTS24halide_filter_metadata_t", !640, i64 0, !640, i64 4, !629, i64 8, !629, i64 16, !629, i64 24}
!640 = !{!"int", !630, i64 0}
!641 = !DILocation(line: 0, scope: !618, inlinedAt: !642)
!642 = distinct !DILocation(line: 219, column: 20, scope: !506)
!643 = !DILocation(line: 59, column: 17, scope: !626, inlinedAt: !642)
!644 = !DILocation(line: 0, scope: !626, inlinedAt: !642)
!645 = !DILocation(line: 59, column: 13, scope: !618, inlinedAt: !642)
!646 = !DILocation(line: 60, column: 19, scope: !647, inlinedAt: !642)
!647 = distinct !DILexicalBlock(scope: !626, file: !183, line: 59, column: 29)
!648 = !DILocation(line: 61, column: 9, scope: !647, inlinedAt: !642)
!649 = !DILocation(line: 62, column: 19, scope: !625, inlinedAt: !642)
!650 = !DILocation(line: 0, scope: !618, inlinedAt: !651)
!651 = distinct !DILocation(line: 219, column: 38, scope: !506)
!652 = !DILocation(line: 62, column: 48, scope: !625, inlinedAt: !651)
!653 = !DILocation(line: 62, column: 19, scope: !625, inlinedAt: !651)
!654 = !DILocation(line: 62, column: 17, scope: !625, inlinedAt: !651)
!655 = !DILocation(line: 0, scope: !612)
!656 = !DILocation(line: 220, column: 35, scope: !615)
!657 = !{!639, !640, i64 4}
!658 = !DILocation(line: 220, column: 23, scope: !615)
!659 = !DILocation(line: 220, column: 5, scope: !612)
!660 = !DILocation(line: 221, column: 58, scope: !614)
!661 = !{!639, !629, i64 8}
!662 = !DILocation(line: 0, scope: !614)
!663 = !DILocation(line: 225, column: 18, scope: !664)
!664 = distinct !DILexicalBlock(scope: !614, file: !49, line: 225, column: 13)
!665 = !{!666, !640, i64 8}
!666 = !{!"_ZTS24halide_filter_argument_t", !629, i64 0, !640, i64 8, !640, i64 12, !667, i64 16, !629, i64 24, !629, i64 32, !629, i64 40, !629, i64 48, !629, i64 56}
!667 = !{!"_ZTS13halide_type_t", !668, i64 0, !630, i64 1, !669, i64 2}
!668 = !{!"_ZTS18halide_type_code_t", !630, i64 0}
!669 = !{!"short", !630, i64 0}
!670 = !DILocation(line: 225, column: 23, scope: !664)
!671 = !DILocation(line: 225, column: 13, scope: !614)
!672 = !DILocation(line: 0, scope: !618, inlinedAt: !673)
!673 = distinct !DILocation(line: 226, column: 18, scope: !674)
!674 = distinct !DILexicalBlock(scope: !664, file: !49, line: 225, column: 62)
!675 = !DILocation(line: 62, column: 48, scope: !625, inlinedAt: !673)
!676 = !DILocation(line: 62, column: 19, scope: !625, inlinedAt: !673)
!677 = !DILocation(line: 62, column: 17, scope: !625, inlinedAt: !673)
!678 = !DILocation(line: 228, column: 18, scope: !679)
!679 = distinct !DILexicalBlock(scope: !614, file: !49, line: 228, column: 13)
!680 = !DILocation(line: 227, column: 9, scope: !674)
!681 = !DILocation(line: 228, column: 61, scope: !679)
!682 = !DILocation(line: 0, scope: !618, inlinedAt: !683)
!683 = distinct !DILocation(line: 232, column: 18, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !49, line: 231, column: 68)
!685 = distinct !DILexicalBlock(scope: !679, file: !49, line: 231, column: 20)
!686 = !DILocation(line: 62, column: 48, scope: !625, inlinedAt: !683)
!687 = !DILocation(line: 62, column: 19, scope: !625, inlinedAt: !683)
!688 = !DILocation(line: 233, column: 9, scope: !684)
!689 = !DILocation(line: 230, column: 26, scope: !690)
!690 = distinct !DILexicalBlock(scope: !679, file: !49, line: 229, column: 61)
!691 = !{!666, !640, i64 12}
!692 = !DILocalVariable(name: "this", arg: 1, scope: !693, type: !621, flags: DIFlagArtificial | DIFlagObjectPointer)
!693 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEi", scope: !511, file: !183, line: 72, type: !531, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !112, declaration: !530, retainedNodes: !694)
!694 = !{!692, !695}
!695 = !DILocalVariable(name: "arg", arg: 2, scope: !693, file: !183, line: 72, type: !214)
!696 = !DILocation(line: 0, scope: !693, inlinedAt: !697)
!697 = distinct !DILocation(line: 230, column: 18, scope: !690)
!698 = !DILocation(line: 73, column: 43, scope: !693, inlinedAt: !697)
!699 = !DILocation(line: 73, column: 48, scope: !693, inlinedAt: !697)
!700 = !DILocation(line: 73, column: 15, scope: !693, inlinedAt: !697)
!701 = !DILocation(line: 73, column: 13, scope: !693, inlinedAt: !697)
!702 = !DILocation(line: 0, scope: !618, inlinedAt: !703)
!703 = distinct !DILocation(line: 230, column: 37, scope: !690)
!704 = !DILocation(line: 62, column: 48, scope: !625, inlinedAt: !703)
!705 = !DILocation(line: 62, column: 19, scope: !625, inlinedAt: !703)
!706 = !DILocation(line: 231, column: 9, scope: !690)
!707 = !DILocation(line: 0, scope: !679)
!708 = !DILocation(line: 234, column: 55, scope: !614)
!709 = !{!666, !668, i64 16}
!710 = !DILocation(line: 234, column: 45, scope: !614)
!711 = !DILocation(line: 234, column: 71, scope: !614)
!712 = !{!666, !630, i64 17}
!713 = !DILocation(line: 234, column: 61, scope: !614)
!714 = !DILocation(line: 234, column: 32, scope: !614)
!715 = !DILocation(line: 234, column: 17, scope: !614)
!716 = !DILocation(line: 0, scope: !618, inlinedAt: !717)
!717 = distinct !DILocation(line: 234, column: 14, scope: !614)
!718 = !DILocation(line: 59, column: 17, scope: !626, inlinedAt: !717)
!719 = !DILocation(line: 0, scope: !626, inlinedAt: !717)
!720 = !DILocation(line: 59, column: 13, scope: !618, inlinedAt: !717)
!721 = !DILocation(line: 62, column: 19, scope: !625, inlinedAt: !717)
!722 = !DILocation(line: 60, column: 19, scope: !647, inlinedAt: !717)
!723 = !DILocation(line: 61, column: 9, scope: !647, inlinedAt: !717)
!724 = !DILocation(line: 0, scope: !618, inlinedAt: !725)
!725 = distinct !DILocation(line: 235, column: 14, scope: !614)
!726 = !DILocation(line: 62, column: 48, scope: !625, inlinedAt: !725)
!727 = !DILocation(line: 62, column: 19, scope: !625, inlinedAt: !725)
!728 = !DILocation(line: 62, column: 17, scope: !625, inlinedAt: !725)
!729 = !DILocation(line: 235, column: 30, scope: !614)
!730 = !{!666, !629, i64 0}
!731 = !DILocation(line: 0, scope: !618, inlinedAt: !732)
!732 = distinct !DILocation(line: 235, column: 22, scope: !614)
!733 = !DILocation(line: 59, column: 17, scope: !626, inlinedAt: !732)
!734 = !DILocation(line: 0, scope: !626, inlinedAt: !732)
!735 = !DILocation(line: 59, column: 13, scope: !618, inlinedAt: !732)
!736 = !DILocation(line: 62, column: 19, scope: !625, inlinedAt: !732)
!737 = !DILocation(line: 60, column: 19, scope: !647, inlinedAt: !732)
!738 = !DILocation(line: 61, column: 9, scope: !647, inlinedAt: !732)
!739 = !DILocation(line: 0, scope: !618, inlinedAt: !740)
!740 = distinct !DILocation(line: 235, column: 35, scope: !614)
!741 = !DILocation(line: 62, column: 48, scope: !625, inlinedAt: !740)
!742 = !DILocation(line: 62, column: 19, scope: !625, inlinedAt: !740)
!743 = !DILocation(line: 62, column: 17, scope: !625, inlinedAt: !740)
!744 = !DILocation(line: 62, column: 43, scope: !625, inlinedAt: !745)
!745 = distinct !DILocation(line: 237, column: 10, scope: !506)
!746 = !DILocation(line: 0, scope: !618, inlinedAt: !745)
!747 = !DILocation(line: 62, column: 48, scope: !625, inlinedAt: !745)
!748 = !DILocation(line: 62, column: 19, scope: !625, inlinedAt: !745)
!749 = !DILocation(line: 62, column: 17, scope: !625, inlinedAt: !745)
!750 = !DILocation(line: 238, column: 1, scope: !506)
!751 = !DILocation(line: 0, scope: !618, inlinedAt: !752)
!752 = distinct !DILocation(line: 223, column: 18, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !49, line: 222, column: 20)
!754 = distinct !DILexicalBlock(scope: !614, file: !49, line: 222, column: 13)
!755 = !DILocation(line: 62, column: 48, scope: !625, inlinedAt: !752)
!756 = !DILocation(line: 62, column: 19, scope: !625, inlinedAt: !752)
!757 = !DILocation(line: 62, column: 17, scope: !625, inlinedAt: !752)
!758 = !DILocation(line: 220, column: 51, scope: !615)
!759 = distinct !{!759, !659, !760, !761, !762}
!760 = !DILocation(line: 236, column: 5, scope: !612)
!761 = !{!"llvm.loop.mustprogress"}
!762 = !{!"llvm.loop.peeled.count", i32 1}
!763 = distinct !DISubprogram(name: "halide_matlab_note_pipeline_description", scope: !49, file: !49, line: 240, type: !764, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !78, !577}
!766 = !{!767, !768, !769}
!767 = !DILocalVariable(name: "user_context", arg: 1, scope: !763, file: !49, line: 240, type: !78)
!768 = !DILocalVariable(name: "metadata", arg: 2, scope: !763, file: !49, line: 240, type: !577)
!769 = !DILocalVariable(name: "desc", scope: !763, file: !49, line: 241, type: !510)
!770 = !DILocation(line: 0, scope: !763)
!771 = !DILocation(line: 241, column: 5, scope: !763)
!772 = !DILocation(line: 241, column: 18, scope: !763)
!773 = !DILocalVariable(name: "this", arg: 1, scope: !774, type: !621, flags: DIFlagArtificial | DIFlagObjectPointer)
!774 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEC2EPvPc", scope: !511, file: !183, line: 37, type: !520, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !112, declaration: !519, retainedNodes: !775)
!775 = !{!773, !776, !777}
!776 = !DILocalVariable(name: "ctx", arg: 2, scope: !774, file: !183, line: 37, type: !78)
!777 = !DILocalVariable(name: "mem", arg: 3, scope: !774, file: !183, line: 37, type: !189)
!778 = !DILocation(line: 0, scope: !774, inlinedAt: !779)
!779 = distinct !DILocation(line: 241, column: 18, scope: !763)
!780 = !DILocation(line: 38, column: 11, scope: !774, inlinedAt: !779)
!781 = !{!628, !629, i64 24}
!782 = !DILocation(line: 38, column: 30, scope: !774, inlinedAt: !779)
!783 = !{!628, !632, i64 32}
!784 = !DILocation(line: 44, column: 27, scope: !785, inlinedAt: !779)
!785 = distinct !DILexicalBlock(scope: !786, file: !183, line: 43, column: 16)
!786 = distinct !DILexicalBlock(scope: !787, file: !183, line: 41, column: 20)
!787 = distinct !DILexicalBlock(scope: !788, file: !183, line: 39, column: 13)
!788 = distinct !DILexicalBlock(scope: !774, file: !183, line: 38, column: 54)
!789 = !DILocation(line: 44, column: 13, scope: !785, inlinedAt: !779)
!790 = !DILocation(line: 44, column: 17, scope: !785, inlinedAt: !779)
!791 = !{!628, !629, i64 0}
!792 = !DILocation(line: 47, column: 9, scope: !788, inlinedAt: !779)
!793 = !DILocation(line: 48, column: 13, scope: !794, inlinedAt: !779)
!794 = distinct !DILexicalBlock(scope: !788, file: !183, line: 48, column: 13)
!795 = !DILocation(line: 48, column: 13, scope: !788, inlinedAt: !779)
!796 = !DILocation(line: 49, column: 23, scope: !797, inlinedAt: !779)
!797 = distinct !DILexicalBlock(scope: !794, file: !183, line: 48, column: 18)
!798 = !DILocation(line: 50, column: 18, scope: !797, inlinedAt: !779)
!799 = !{!630, !630, i64 0}
!800 = !DILocation(line: 51, column: 9, scope: !797, inlinedAt: !779)
!801 = !DILocation(line: 0, scope: !794, inlinedAt: !779)
!802 = !DILocation(line: 53, column: 13, scope: !803, inlinedAt: !779)
!803 = distinct !DILexicalBlock(scope: !794, file: !183, line: 51, column: 16)
!804 = !DILocation(line: 53, column: 17, scope: !803, inlinedAt: !779)
!805 = !DILocation(line: 0, scope: !618, inlinedAt: !806)
!806 = distinct !DILocation(line: 242, column: 10, scope: !763)
!807 = !DILocation(line: 62, column: 19, scope: !625, inlinedAt: !806)
!808 = !DILocation(line: 62, column: 17, scope: !625, inlinedAt: !806)
!809 = !DILocation(line: 243, column: 5, scope: !763)
!810 = !DILocalVariable(name: "this", arg: 1, scope: !811, type: !621, flags: DIFlagArtificial | DIFlagObjectPointer)
!811 = distinct !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE3strEv", scope: !511, file: !183, line: 119, type: !558, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !112, declaration: !557, retainedNodes: !812)
!812 = !{!810}
!813 = !DILocation(line: 0, scope: !811, inlinedAt: !814)
!814 = distinct !DILocation(line: 244, column: 37, scope: !763)
!815 = !DILocation(line: 120, column: 13, scope: !816, inlinedAt: !814)
!816 = distinct !DILexicalBlock(scope: !811, file: !183, line: 120, column: 13)
!817 = !DILocation(line: 120, column: 13, scope: !811, inlinedAt: !814)
!818 = !DILocation(line: 122, column: 17, scope: !819, inlinedAt: !814)
!819 = distinct !DILexicalBlock(scope: !820, file: !183, line: 121, column: 46)
!820 = distinct !DILexicalBlock(scope: !821, file: !183, line: 121, column: 17)
!821 = distinct !DILexicalBlock(scope: !816, file: !183, line: 120, column: 18)
!822 = !DILocalVariable(name: "this", arg: 1, scope: !823, type: !621, flags: DIFlagArtificial | DIFlagObjectPointer)
!823 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE28msan_annotate_is_initializedEv", scope: !511, file: !183, line: 162, type: !561, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !112, declaration: !573, retainedNodes: !824)
!824 = !{!822}
!825 = !DILocation(line: 0, scope: !823, inlinedAt: !826)
!826 = distinct !DILocation(line: 122, column: 17, scope: !819, inlinedAt: !814)
!827 = !DILocation(line: 163, column: 81, scope: !823, inlinedAt: !826)
!828 = !DILocation(line: 163, column: 87, scope: !823, inlinedAt: !826)
!829 = !DILocation(line: 163, column: 15, scope: !823, inlinedAt: !826)
!830 = !DILocation(line: 124, column: 20, scope: !821, inlinedAt: !814)
!831 = !DILocation(line: 124, column: 13, scope: !821, inlinedAt: !814)
!832 = !DILocation(line: 0, scope: !816, inlinedAt: !814)
!833 = !DILocation(line: 244, column: 5, scope: !763)
!834 = !DILocalVariable(name: "this", arg: 1, scope: !835, type: !621, flags: DIFlagArtificial | DIFlagObjectPointer)
!835 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EED2Ev", scope: !511, file: !183, line: 166, type: !561, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !112, declaration: !574, retainedNodes: !836)
!836 = !{!834}
!837 = !DILocation(line: 0, scope: !835, inlinedAt: !838)
!838 = distinct !DILocation(line: 245, column: 1, scope: !763)
!839 = !DILocation(line: 167, column: 14, scope: !840, inlinedAt: !838)
!840 = distinct !DILexicalBlock(scope: !841, file: !183, line: 167, column: 13)
!841 = distinct !DILexicalBlock(scope: !835, file: !183, line: 166, column: 16)
!842 = !DILocation(line: 167, column: 13, scope: !841, inlinedAt: !838)
!843 = !DILocation(line: 168, column: 26, scope: !844, inlinedAt: !838)
!844 = distinct !DILexicalBlock(scope: !840, file: !183, line: 167, column: 19)
!845 = !DILocation(line: 168, column: 13, scope: !844, inlinedAt: !838)
!846 = !DILocation(line: 169, column: 9, scope: !844, inlinedAt: !838)
!847 = !DILocation(line: 170, column: 13, scope: !848, inlinedAt: !838)
!848 = distinct !DILexicalBlock(scope: !840, file: !183, line: 169, column: 16)
!849 = !DILocation(line: 0, scope: !823, inlinedAt: !850)
!850 = distinct !DILocation(line: 170, column: 13, scope: !848, inlinedAt: !838)
!851 = !DILocation(line: 163, column: 81, scope: !823, inlinedAt: !850)
!852 = !DILocation(line: 163, column: 87, scope: !823, inlinedAt: !850)
!853 = !DILocation(line: 163, column: 15, scope: !823, inlinedAt: !850)
!854 = !DILocation(line: 180, column: 13, scope: !855, inlinedAt: !838)
!855 = distinct !DILexicalBlock(scope: !841, file: !183, line: 180, column: 13)
!856 = !{i8 0, i8 2}
!857 = !DILocation(line: 180, column: 21, scope: !855, inlinedAt: !838)
!858 = !DILocation(line: 180, column: 24, scope: !855, inlinedAt: !838)
!859 = !DILocation(line: 180, column: 31, scope: !855, inlinedAt: !838)
!860 = !DILocation(line: 180, column: 28, scope: !855, inlinedAt: !838)
!861 = !DILocation(line: 180, column: 13, scope: !841, inlinedAt: !838)
!862 = !DILocation(line: 181, column: 13, scope: !863, inlinedAt: !838)
!863 = distinct !DILexicalBlock(scope: !855, file: !183, line: 180, column: 40)
!864 = !DILocation(line: 182, column: 9, scope: !863, inlinedAt: !838)
!865 = !DILocation(line: 245, column: 1, scope: !763)
!866 = !DISubprogram(name: "halide_print", scope: !116, file: !116, line: 97, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !78, !9}
!869 = !{}
!870 = distinct !DISubprogram(name: "halide_matlab_error", scope: !49, file: !49, line: 247, type: !867, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, retainedNodes: !871)
!871 = !{!872, !873, !874}
!872 = !DILocalVariable(name: "user_context", arg: 1, scope: !870, file: !49, line: 247, type: !78)
!873 = !DILocalVariable(name: "msg", arg: 2, scope: !870, file: !49, line: 247, type: !9)
!874 = !DILocalVariable(name: "error_msg", scope: !870, file: !49, line: 250, type: !510)
!875 = !DILocation(line: 0, scope: !870)
!876 = !DILocation(line: 0, scope: !774, inlinedAt: !877)
!877 = distinct !DILocation(line: 250, column: 18, scope: !870)
!878 = !DILocation(line: 44, column: 27, scope: !785, inlinedAt: !877)
!879 = !DILocation(line: 48, column: 13, scope: !794, inlinedAt: !877)
!880 = !DILocation(line: 48, column: 13, scope: !788, inlinedAt: !877)
!881 = !DILocation(line: 49, column: 23, scope: !797, inlinedAt: !877)
!882 = !DILocation(line: 50, column: 18, scope: !797, inlinedAt: !877)
!883 = !DILocation(line: 51, column: 9, scope: !797, inlinedAt: !877)
!884 = !DILocation(line: 0, scope: !794, inlinedAt: !877)
!885 = !DILocation(line: 0, scope: !618, inlinedAt: !886)
!886 = distinct !DILocation(line: 251, column: 15, scope: !870)
!887 = !DILocation(line: 62, column: 19, scope: !625, inlinedAt: !886)
!888 = !DILocation(line: 0, scope: !618, inlinedAt: !889)
!889 = distinct !DILocation(line: 251, column: 37, scope: !870)
!890 = !DILocation(line: 59, column: 17, scope: !626, inlinedAt: !889)
!891 = !DILocation(line: 59, column: 13, scope: !618, inlinedAt: !889)
!892 = !DILocation(line: 60, column: 19, scope: !647, inlinedAt: !889)
!893 = !DILocation(line: 61, column: 9, scope: !647, inlinedAt: !889)
!894 = !DILocation(line: 62, column: 19, scope: !625, inlinedAt: !889)
!895 = !DILocation(line: 0, scope: !626, inlinedAt: !889)
!896 = !DILocation(line: 252, column: 5, scope: !870)
!897 = !{!629, !629, i64 0}
!898 = !DILocation(line: 0, scope: !811, inlinedAt: !899)
!899 = distinct !DILocation(line: 252, column: 29, scope: !870)
!900 = !DILocation(line: 120, column: 13, scope: !811, inlinedAt: !899)
!901 = !DILocation(line: 0, scope: !835, inlinedAt: !902)
!902 = distinct !DILocation(line: 253, column: 1, scope: !870)
!903 = !DILocation(line: 168, column: 13, scope: !844, inlinedAt: !902)
!904 = !DILocation(line: 169, column: 9, scope: !844, inlinedAt: !902)
!905 = !DILocation(line: 0, scope: !823, inlinedAt: !906)
!906 = distinct !DILocation(line: 122, column: 17, scope: !819, inlinedAt: !899)
!907 = !DILocation(line: 163, column: 81, scope: !823, inlinedAt: !906)
!908 = !DILocation(line: 163, column: 87, scope: !823, inlinedAt: !906)
!909 = !DILocation(line: 163, column: 15, scope: !823, inlinedAt: !906)
!910 = !DILocation(line: 0, scope: !823, inlinedAt: !911)
!911 = distinct !DILocation(line: 170, column: 13, scope: !848, inlinedAt: !902)
!912 = !DILocation(line: 163, column: 81, scope: !823, inlinedAt: !911)
!913 = !DILocation(line: 163, column: 87, scope: !823, inlinedAt: !911)
!914 = !DILocation(line: 163, column: 15, scope: !823, inlinedAt: !911)
!915 = !DILocation(line: 181, column: 13, scope: !863, inlinedAt: !902)
!916 = !DILocation(line: 253, column: 1, scope: !870)
!917 = distinct !DISubprogram(name: "halide_matlab_print", scope: !49, file: !49, line: 255, type: !867, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, retainedNodes: !918)
!918 = !{!919, !920}
!919 = !DILocalVariable(arg: 1, scope: !917, file: !49, line: 255, type: !78)
!920 = !DILocalVariable(name: "msg", arg: 2, scope: !917, file: !49, line: 255, type: !9)
!921 = !DILocation(line: 0, scope: !917)
!922 = !DILocation(line: 256, column: 5, scope: !917)
!923 = !DILocation(line: 257, column: 1, scope: !917)
!924 = distinct !DISubprogram(name: "halide_matlab_init", scope: !49, file: !49, line: 259, type: !925, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, retainedNodes: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{!28, !78}
!927 = !{!928}
!928 = !DILocalVariable(name: "user_context", arg: 1, scope: !924, file: !49, line: 259, type: !78)
!929 = !DILocation(line: 0, scope: !924)
!930 = !DILocation(line: 261, column: 9, scope: !931)
!931 = distinct !DILexicalBlock(scope: !924, file: !49, line: 261, column: 9)
!932 = !DILocation(line: 261, column: 23, scope: !931)
!933 = !DILocation(line: 261, column: 9, scope: !924)
!934 = !DILocalVariable(name: "user_context", arg: 1, scope: !935, file: !49, line: 176, type: !78)
!935 = distinct !DISubprogram(name: "get_mex_symbol<void (*)(const char *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFvPKcEEET_PvS4_b", scope: !2, file: !49, line: 176, type: !936, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, templateParams: !942, retainedNodes: !938)
!936 = !DISubroutineType(types: !937)
!937 = !{!6, !78, !9, !84}
!938 = !{!934, !939, !940, !941}
!939 = !DILocalVariable(name: "name", arg: 2, scope: !935, file: !49, line: 176, type: !9)
!940 = !DILocalVariable(name: "required", arg: 3, scope: !935, file: !49, line: 176, type: !84)
!941 = !DILocalVariable(name: "s", scope: !935, file: !49, line: 177, type: !6)
!942 = !{!943}
!943 = !DITemplateTypeParameter(name: "T", type: !6)
!944 = !DILocation(line: 0, scope: !935, inlinedAt: !945)
!945 = distinct !DILocation(line: 32, column: 1, scope: !946)
!946 = !DILexicalBlockFile(scope: !924, file: !5, discriminator: 0)
!947 = !DILocation(line: 177, column: 14, scope: !935, inlinedAt: !945)
!948 = !DILocation(line: 178, column: 18, scope: !949, inlinedAt: !945)
!949 = distinct !DILexicalBlock(scope: !935, file: !49, line: 178, column: 9)
!950 = !DILocalVariable(name: "this", arg: 1, scope: !951, type: !955, flags: DIFlagArtificial | DIFlagObjectPointer)
!951 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !186, file: !183, line: 37, type: !199, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !112, declaration: !198, retainedNodes: !952)
!952 = !{!950, !953, !954}
!953 = !DILocalVariable(name: "ctx", arg: 2, scope: !951, file: !183, line: 37, type: !78)
!954 = !DILocalVariable(name: "mem", arg: 3, scope: !951, file: !183, line: 37, type: !189)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!956 = !DILocation(line: 0, scope: !951, inlinedAt: !957)
!957 = distinct !DILocation(line: 179, column: 9, scope: !958, inlinedAt: !945)
!958 = distinct !DILexicalBlock(scope: !949, file: !49, line: 178, column: 35)
!959 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !957)
!960 = distinct !DILexicalBlock(scope: !961, file: !183, line: 43, column: 16)
!961 = distinct !DILexicalBlock(scope: !962, file: !183, line: 41, column: 20)
!962 = distinct !DILexicalBlock(scope: !963, file: !183, line: 39, column: 13)
!963 = distinct !DILexicalBlock(scope: !951, file: !183, line: 38, column: 54)
!964 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !957)
!965 = distinct !DILexicalBlock(scope: !963, file: !183, line: 48, column: 13)
!966 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !957)
!967 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !957)
!968 = distinct !DILexicalBlock(scope: !965, file: !183, line: 48, column: 18)
!969 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !957)
!970 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !957)
!971 = !DILocation(line: 0, scope: !965, inlinedAt: !957)
!972 = !DILocalVariable(name: "this", arg: 1, scope: !973, type: !955, flags: DIFlagArtificial | DIFlagObjectPointer)
!973 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !186, file: !183, line: 57, type: !203, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !112, declaration: !202, retainedNodes: !974)
!974 = !{!972, !975}
!975 = !DILocalVariable(name: "arg", arg: 2, scope: !973, file: !183, line: 57, type: !9)
!976 = !DILocation(line: 0, scope: !973, inlinedAt: !977)
!977 = distinct !DILocation(line: 179, column: 29, scope: !958, inlinedAt: !945)
!978 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !977)
!979 = distinct !DILexicalBlock(scope: !980, file: !183, line: 61, column: 16)
!980 = distinct !DILexicalBlock(scope: !973, file: !183, line: 59, column: 13)
!981 = !DILocation(line: 0, scope: !973, inlinedAt: !982)
!982 = distinct !DILocation(line: 179, column: 54, scope: !958, inlinedAt: !945)
!983 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !982)
!984 = !DILocation(line: 0, scope: !973, inlinedAt: !985)
!985 = distinct !DILocation(line: 179, column: 62, scope: !958, inlinedAt: !945)
!986 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !985)
!987 = !DILocalVariable(name: "this", arg: 1, scope: !988, type: !955, flags: DIFlagArtificial | DIFlagObjectPointer)
!988 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !186, file: !183, line: 166, type: !401, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !112, declaration: !414, retainedNodes: !989)
!989 = !{!987}
!990 = !DILocation(line: 0, scope: !988, inlinedAt: !991)
!991 = distinct !DILocation(line: 179, column: 9, scope: !958, inlinedAt: !945)
!992 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !991)
!993 = distinct !DILexicalBlock(scope: !988, file: !183, line: 166, column: 16)
!994 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !991)
!995 = distinct !DILexicalBlock(scope: !996, file: !183, line: 167, column: 19)
!996 = distinct !DILexicalBlock(scope: !993, file: !183, line: 167, column: 13)
!997 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !991)
!998 = !DILocalVariable(name: "this", arg: 1, scope: !999, type: !955, flags: DIFlagArtificial | DIFlagObjectPointer)
!999 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !186, file: !183, line: 162, type: !401, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !112, declaration: !413, retainedNodes: !1000)
!1000 = !{!998}
!1001 = !DILocation(line: 0, scope: !999, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !991)
!1003 = distinct !DILexicalBlock(scope: !996, file: !183, line: 169, column: 16)
!1004 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !1002)
!1005 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !1002)
!1006 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !1002)
!1007 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !991)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !183, line: 171, column: 39)
!1009 = distinct !DILexicalBlock(scope: !1003, file: !183, line: 171, column: 17)
!1010 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !991)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !183, line: 180, column: 40)
!1012 = distinct !DILexicalBlock(scope: !993, file: !183, line: 180, column: 13)
!1013 = !DILocation(line: 180, column: 9, scope: !958, inlinedAt: !945)
!1014 = !DILocation(line: 177, column: 11, scope: !935, inlinedAt: !945)
!1015 = !DILocation(line: 182, column: 5, scope: !935, inlinedAt: !945)
!1016 = !DILocation(line: 32, column: 1, scope: !946)
!1017 = !DILocalVariable(name: "user_context", arg: 1, scope: !1018, file: !49, line: 176, type: !78)
!1018 = distinct !DISubprogram(name: "get_mex_symbol<unsigned long (*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFmPK7mxArrayEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1019, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, templateParams: !1025, retainedNodes: !1021)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!434, !78, !9, !84}
!1021 = !{!1017, !1022, !1023, !1024}
!1022 = !DILocalVariable(name: "name", arg: 2, scope: !1018, file: !49, line: 176, type: !9)
!1023 = !DILocalVariable(name: "required", arg: 3, scope: !1018, file: !49, line: 176, type: !84)
!1024 = !DILocalVariable(name: "s", scope: !1018, file: !49, line: 177, type: !434)
!1025 = !{!1026}
!1026 = !DITemplateTypeParameter(name: "T", type: !434)
!1027 = !DILocation(line: 0, scope: !1018, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 59, column: 1, scope: !946)
!1029 = !DILocation(line: 177, column: 14, scope: !1018, inlinedAt: !1028)
!1030 = !DILocation(line: 59, column: 1, scope: !946)
!1031 = !DILocalVariable(name: "user_context", arg: 1, scope: !1032, file: !49, line: 176, type: !78)
!1032 = distinct !DISubprogram(name: "get_mex_symbol<int (*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFiPK7mxArrayEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1033, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, templateParams: !1039, retainedNodes: !1035)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!25, !78, !9, !84}
!1035 = !{!1031, !1036, !1037, !1038}
!1036 = !DILocalVariable(name: "name", arg: 2, scope: !1032, file: !49, line: 176, type: !9)
!1037 = !DILocalVariable(name: "required", arg: 3, scope: !1032, file: !49, line: 176, type: !84)
!1038 = !DILocalVariable(name: "s", scope: !1032, file: !49, line: 177, type: !25)
!1039 = !{!1040}
!1040 = !DITemplateTypeParameter(name: "T", type: !25)
!1041 = !DILocation(line: 0, scope: !1032, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 60, column: 1, scope: !946)
!1043 = !DILocation(line: 177, column: 14, scope: !1032, inlinedAt: !1042)
!1044 = !DILocation(line: 60, column: 1, scope: !946)
!1045 = !DILocalVariable(name: "user_context", arg: 1, scope: !1046, file: !49, line: 176, type: !78)
!1046 = distinct !DISubprogram(name: "get_mex_symbol<const unsigned long *(*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFPKmPK7mxArrayEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1047, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, templateParams: !1053, retainedNodes: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!437, !78, !9, !84}
!1049 = !{!1045, !1050, !1051, !1052}
!1050 = !DILocalVariable(name: "name", arg: 2, scope: !1046, file: !49, line: 176, type: !9)
!1051 = !DILocalVariable(name: "required", arg: 3, scope: !1046, file: !49, line: 176, type: !84)
!1052 = !DILocalVariable(name: "s", scope: !1046, file: !49, line: 177, type: !437)
!1053 = !{!1054}
!1054 = !DITemplateTypeParameter(name: "T", type: !437)
!1055 = !DILocation(line: 0, scope: !1046, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 61, column: 1, scope: !946)
!1057 = !DILocation(line: 177, column: 14, scope: !1046, inlinedAt: !1056)
!1058 = !DILocation(line: 61, column: 1, scope: !946)
!1059 = !DILocalVariable(name: "user_context", arg: 1, scope: !1060, file: !49, line: 176, type: !78)
!1060 = distinct !DISubprogram(name: "get_mex_symbol<const int *(*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFPKiPK7mxArrayEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1061, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, templateParams: !1067, retainedNodes: !1063)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!38, !78, !9, !84}
!1063 = !{!1059, !1064, !1065, !1066}
!1064 = !DILocalVariable(name: "name", arg: 2, scope: !1060, file: !49, line: 176, type: !9)
!1065 = !DILocalVariable(name: "required", arg: 3, scope: !1060, file: !49, line: 176, type: !84)
!1066 = !DILocalVariable(name: "s", scope: !1060, file: !49, line: 177, type: !38)
!1067 = !{!1068}
!1068 = !DITemplateTypeParameter(name: "T", type: !38)
!1069 = !DILocation(line: 0, scope: !1060, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 62, column: 1, scope: !946)
!1071 = !DILocation(line: 177, column: 14, scope: !1060, inlinedAt: !1070)
!1072 = !DILocation(line: 62, column: 1, scope: !946)
!1073 = !DILocalVariable(name: "user_context", arg: 1, scope: !1074, file: !49, line: 176, type: !78)
!1074 = distinct !DISubprogram(name: "get_mex_symbol<Halide::Runtime::mex::mxClassID (*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFNS1_9mxClassIDEPK7mxArrayEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1075, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, templateParams: !1081, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!45, !78, !9, !84}
!1077 = !{!1073, !1078, !1079, !1080}
!1078 = !DILocalVariable(name: "name", arg: 2, scope: !1074, file: !49, line: 176, type: !9)
!1079 = !DILocalVariable(name: "required", arg: 3, scope: !1074, file: !49, line: 176, type: !84)
!1080 = !DILocalVariable(name: "s", scope: !1074, file: !49, line: 177, type: !45)
!1081 = !{!1082}
!1082 = !DITemplateTypeParameter(name: "T", type: !45)
!1083 = !DILocation(line: 0, scope: !1074, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 77, column: 1, scope: !946)
!1085 = !DILocation(line: 177, column: 14, scope: !1074, inlinedAt: !1084)
!1086 = !DILocation(line: 178, column: 18, scope: !1087, inlinedAt: !1084)
!1087 = distinct !DILexicalBlock(scope: !1074, file: !49, line: 178, column: 9)
!1088 = !DILocation(line: 0, scope: !951, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 179, column: 9, scope: !1090, inlinedAt: !1084)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !49, line: 178, column: 35)
!1091 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !1089)
!1092 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !1089)
!1093 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !1089)
!1094 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !1089)
!1095 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !1089)
!1096 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !1089)
!1097 = !DILocation(line: 0, scope: !965, inlinedAt: !1089)
!1098 = !DILocation(line: 0, scope: !973, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 179, column: 29, scope: !1090, inlinedAt: !1084)
!1100 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1099)
!1101 = !DILocation(line: 0, scope: !973, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 179, column: 54, scope: !1090, inlinedAt: !1084)
!1103 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1102)
!1104 = !DILocation(line: 0, scope: !973, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 179, column: 62, scope: !1090, inlinedAt: !1084)
!1106 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1105)
!1107 = !DILocation(line: 0, scope: !988, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 179, column: 9, scope: !1090, inlinedAt: !1084)
!1109 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !1108)
!1110 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !1108)
!1111 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !1108)
!1112 = !DILocation(line: 0, scope: !999, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !1108)
!1114 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !1113)
!1115 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !1113)
!1116 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !1113)
!1117 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !1108)
!1118 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !1108)
!1119 = !DILocation(line: 180, column: 9, scope: !1090, inlinedAt: !1084)
!1120 = !DILocation(line: 177, column: 11, scope: !1074, inlinedAt: !1084)
!1121 = !DILocation(line: 182, column: 5, scope: !1074, inlinedAt: !1084)
!1122 = !DILocation(line: 77, column: 1, scope: !946)
!1123 = !DILocalVariable(name: "user_context", arg: 1, scope: !1124, file: !49, line: 176, type: !78)
!1124 = distinct !DISubprogram(name: "get_mex_symbol<void *(*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFPvPK7mxArrayEEET_S3_PKcb", scope: !2, file: !49, line: 176, type: !1125, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, templateParams: !1131, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!75, !78, !9, !84}
!1127 = !{!1123, !1128, !1129, !1130}
!1128 = !DILocalVariable(name: "name", arg: 2, scope: !1124, file: !49, line: 176, type: !9)
!1129 = !DILocalVariable(name: "required", arg: 3, scope: !1124, file: !49, line: 176, type: !84)
!1130 = !DILocalVariable(name: "s", scope: !1124, file: !49, line: 177, type: !75)
!1131 = !{!1132}
!1132 = !DITemplateTypeParameter(name: "T", type: !75)
!1133 = !DILocation(line: 0, scope: !1124, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 78, column: 1, scope: !946)
!1135 = !DILocation(line: 177, column: 14, scope: !1124, inlinedAt: !1134)
!1136 = !DILocation(line: 178, column: 18, scope: !1137, inlinedAt: !1134)
!1137 = distinct !DILexicalBlock(scope: !1124, file: !49, line: 178, column: 9)
!1138 = !DILocation(line: 0, scope: !951, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 179, column: 9, scope: !1140, inlinedAt: !1134)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !49, line: 178, column: 35)
!1141 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !1139)
!1142 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !1139)
!1143 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !1139)
!1144 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !1139)
!1145 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !1139)
!1146 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !1139)
!1147 = !DILocation(line: 0, scope: !965, inlinedAt: !1139)
!1148 = !DILocation(line: 0, scope: !973, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 179, column: 29, scope: !1140, inlinedAt: !1134)
!1150 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1149)
!1151 = !DILocation(line: 0, scope: !973, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 179, column: 54, scope: !1140, inlinedAt: !1134)
!1153 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1152)
!1154 = !DILocation(line: 0, scope: !973, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 179, column: 62, scope: !1140, inlinedAt: !1134)
!1156 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1155)
!1157 = !DILocation(line: 0, scope: !988, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 179, column: 9, scope: !1140, inlinedAt: !1134)
!1159 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !1158)
!1160 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !1158)
!1161 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !1158)
!1162 = !DILocation(line: 0, scope: !999, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !1158)
!1164 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !1163)
!1165 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !1163)
!1166 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !1163)
!1167 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !1158)
!1168 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !1158)
!1169 = !DILocation(line: 180, column: 9, scope: !1140, inlinedAt: !1134)
!1170 = !DILocation(line: 177, column: 11, scope: !1124, inlinedAt: !1134)
!1171 = !DILocation(line: 182, column: 5, scope: !1124, inlinedAt: !1134)
!1172 = !DILocation(line: 78, column: 1, scope: !946)
!1173 = !DILocalVariable(name: "user_context", arg: 1, scope: !1174, file: !49, line: 176, type: !78)
!1174 = distinct !DISubprogram(name: "get_mex_symbol<bool (*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFbPK7mxArrayEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1175, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, templateParams: !1181, retainedNodes: !1177)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!81, !78, !9, !84}
!1177 = !{!1173, !1178, !1179, !1180}
!1178 = !DILocalVariable(name: "name", arg: 2, scope: !1174, file: !49, line: 176, type: !9)
!1179 = !DILocalVariable(name: "required", arg: 3, scope: !1174, file: !49, line: 176, type: !84)
!1180 = !DILocalVariable(name: "s", scope: !1174, file: !49, line: 177, type: !81)
!1181 = !{!1182}
!1182 = !DITemplateTypeParameter(name: "T", type: !81)
!1183 = !DILocation(line: 0, scope: !1174, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 80, column: 1, scope: !946)
!1185 = !DILocation(line: 177, column: 14, scope: !1174, inlinedAt: !1184)
!1186 = !DILocation(line: 178, column: 18, scope: !1187, inlinedAt: !1184)
!1187 = distinct !DILexicalBlock(scope: !1174, file: !49, line: 178, column: 9)
!1188 = !DILocation(line: 0, scope: !951, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 179, column: 9, scope: !1190, inlinedAt: !1184)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !49, line: 178, column: 35)
!1191 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !1189)
!1192 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !1189)
!1193 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !1189)
!1194 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !1189)
!1195 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !1189)
!1196 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !1189)
!1197 = !DILocation(line: 0, scope: !965, inlinedAt: !1189)
!1198 = !DILocation(line: 0, scope: !973, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 179, column: 29, scope: !1190, inlinedAt: !1184)
!1200 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1199)
!1201 = !DILocation(line: 0, scope: !973, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 179, column: 54, scope: !1190, inlinedAt: !1184)
!1203 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1202)
!1204 = !DILocation(line: 0, scope: !973, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 179, column: 62, scope: !1190, inlinedAt: !1184)
!1206 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1205)
!1207 = !DILocation(line: 0, scope: !988, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 179, column: 9, scope: !1190, inlinedAt: !1184)
!1209 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !1208)
!1210 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !1208)
!1211 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !1208)
!1212 = !DILocation(line: 0, scope: !999, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !1208)
!1214 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !1213)
!1215 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !1213)
!1216 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !1213)
!1217 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !1208)
!1218 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !1208)
!1219 = !DILocation(line: 180, column: 9, scope: !1190, inlinedAt: !1184)
!1220 = !DILocation(line: 177, column: 11, scope: !1174, inlinedAt: !1184)
!1221 = !DILocation(line: 182, column: 5, scope: !1174, inlinedAt: !1184)
!1222 = !DILocation(line: 80, column: 1, scope: !946)
!1223 = !DILocation(line: 0, scope: !1174, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 82, column: 1, scope: !946)
!1225 = !DILocation(line: 177, column: 14, scope: !1174, inlinedAt: !1224)
!1226 = !DILocation(line: 178, column: 18, scope: !1187, inlinedAt: !1224)
!1227 = !DILocation(line: 0, scope: !951, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 179, column: 9, scope: !1190, inlinedAt: !1224)
!1229 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !1228)
!1230 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !1228)
!1231 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !1228)
!1232 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !1228)
!1233 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !1228)
!1234 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !1228)
!1235 = !DILocation(line: 0, scope: !965, inlinedAt: !1228)
!1236 = !DILocation(line: 0, scope: !973, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 179, column: 29, scope: !1190, inlinedAt: !1224)
!1238 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1237)
!1239 = !DILocation(line: 0, scope: !973, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 179, column: 54, scope: !1190, inlinedAt: !1224)
!1241 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1240)
!1242 = !DILocation(line: 0, scope: !973, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 179, column: 62, scope: !1190, inlinedAt: !1224)
!1244 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1243)
!1245 = !DILocation(line: 0, scope: !988, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 179, column: 9, scope: !1190, inlinedAt: !1224)
!1247 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !1246)
!1248 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !1246)
!1249 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !1246)
!1250 = !DILocation(line: 0, scope: !999, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !1246)
!1252 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !1251)
!1253 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !1251)
!1254 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !1251)
!1255 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !1246)
!1256 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !1246)
!1257 = !DILocation(line: 180, column: 9, scope: !1190, inlinedAt: !1224)
!1258 = !DILocation(line: 177, column: 11, scope: !1174, inlinedAt: !1224)
!1259 = !DILocation(line: 182, column: 5, scope: !1174, inlinedAt: !1224)
!1260 = !DILocation(line: 82, column: 1, scope: !946)
!1261 = !DILocation(line: 0, scope: !1174, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 90, column: 1, scope: !946)
!1263 = !DILocation(line: 177, column: 14, scope: !1174, inlinedAt: !1262)
!1264 = !DILocation(line: 178, column: 18, scope: !1187, inlinedAt: !1262)
!1265 = !DILocation(line: 0, scope: !951, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 179, column: 9, scope: !1190, inlinedAt: !1262)
!1267 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !1266)
!1268 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !1266)
!1269 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !1266)
!1270 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !1266)
!1271 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !1266)
!1272 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !1266)
!1273 = !DILocation(line: 0, scope: !965, inlinedAt: !1266)
!1274 = !DILocation(line: 0, scope: !973, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 179, column: 29, scope: !1190, inlinedAt: !1262)
!1276 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1275)
!1277 = !DILocation(line: 0, scope: !973, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 179, column: 54, scope: !1190, inlinedAt: !1262)
!1279 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1278)
!1280 = !DILocation(line: 0, scope: !973, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 179, column: 62, scope: !1190, inlinedAt: !1262)
!1282 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1281)
!1283 = !DILocation(line: 0, scope: !988, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 179, column: 9, scope: !1190, inlinedAt: !1262)
!1285 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !1284)
!1286 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !1284)
!1287 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !1284)
!1288 = !DILocation(line: 0, scope: !999, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !1284)
!1290 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !1289)
!1291 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !1289)
!1292 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !1289)
!1293 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !1284)
!1294 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !1284)
!1295 = !DILocation(line: 180, column: 9, scope: !1190, inlinedAt: !1262)
!1296 = !DILocation(line: 177, column: 11, scope: !1174, inlinedAt: !1262)
!1297 = !DILocation(line: 182, column: 5, scope: !1174, inlinedAt: !1262)
!1298 = !DILocation(line: 90, column: 1, scope: !946)
!1299 = !DILocalVariable(name: "user_context", arg: 1, scope: !1300, file: !49, line: 176, type: !78)
!1300 = distinct !DISubprogram(name: "get_mex_symbol<double (*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFdPK7mxArrayEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1301, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, templateParams: !1307, retainedNodes: !1303)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!91, !78, !9, !84}
!1303 = !{!1299, !1304, !1305, !1306}
!1304 = !DILocalVariable(name: "name", arg: 2, scope: !1300, file: !49, line: 176, type: !9)
!1305 = !DILocalVariable(name: "required", arg: 3, scope: !1300, file: !49, line: 176, type: !84)
!1306 = !DILocalVariable(name: "s", scope: !1300, file: !49, line: 177, type: !91)
!1307 = !{!1308}
!1308 = !DITemplateTypeParameter(name: "T", type: !91)
!1309 = !DILocation(line: 0, scope: !1300, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 110, column: 1, scope: !946)
!1311 = !DILocation(line: 177, column: 14, scope: !1300, inlinedAt: !1310)
!1312 = !DILocation(line: 178, column: 18, scope: !1313, inlinedAt: !1310)
!1313 = distinct !DILexicalBlock(scope: !1300, file: !49, line: 178, column: 9)
!1314 = !DILocation(line: 0, scope: !951, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 179, column: 9, scope: !1316, inlinedAt: !1310)
!1316 = distinct !DILexicalBlock(scope: !1313, file: !49, line: 178, column: 35)
!1317 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !1315)
!1318 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !1315)
!1319 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !1315)
!1320 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !1315)
!1321 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !1315)
!1322 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !1315)
!1323 = !DILocation(line: 0, scope: !965, inlinedAt: !1315)
!1324 = !DILocation(line: 0, scope: !973, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 179, column: 29, scope: !1316, inlinedAt: !1310)
!1326 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1325)
!1327 = !DILocation(line: 0, scope: !973, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 179, column: 54, scope: !1316, inlinedAt: !1310)
!1329 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1328)
!1330 = !DILocation(line: 0, scope: !973, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 179, column: 62, scope: !1316, inlinedAt: !1310)
!1332 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1331)
!1333 = !DILocation(line: 0, scope: !988, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 179, column: 9, scope: !1316, inlinedAt: !1310)
!1335 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !1334)
!1336 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !1334)
!1337 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !1334)
!1338 = !DILocation(line: 0, scope: !999, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !1334)
!1340 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !1339)
!1341 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !1339)
!1342 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !1339)
!1343 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !1334)
!1344 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !1334)
!1345 = !DILocation(line: 180, column: 9, scope: !1316, inlinedAt: !1310)
!1346 = !DILocation(line: 177, column: 11, scope: !1300, inlinedAt: !1310)
!1347 = !DILocation(line: 182, column: 5, scope: !1300, inlinedAt: !1310)
!1348 = !DILocation(line: 110, column: 1, scope: !946)
!1349 = !DILocation(line: 0, scope: !1018, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 122, column: 1, scope: !946)
!1351 = !DILocation(line: 177, column: 14, scope: !1018, inlinedAt: !1350)
!1352 = !DILocation(line: 178, column: 18, scope: !1353, inlinedAt: !1350)
!1353 = distinct !DILexicalBlock(scope: !1018, file: !49, line: 178, column: 9)
!1354 = !DILocation(line: 0, scope: !951, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 179, column: 9, scope: !1356, inlinedAt: !1350)
!1356 = distinct !DILexicalBlock(scope: !1353, file: !49, line: 178, column: 35)
!1357 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !1355)
!1358 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !1355)
!1359 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !1355)
!1360 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !1355)
!1361 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !1355)
!1362 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !1355)
!1363 = !DILocation(line: 0, scope: !965, inlinedAt: !1355)
!1364 = !DILocation(line: 0, scope: !973, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 179, column: 29, scope: !1356, inlinedAt: !1350)
!1366 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1365)
!1367 = !DILocation(line: 0, scope: !973, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 179, column: 54, scope: !1356, inlinedAt: !1350)
!1369 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1368)
!1370 = !DILocation(line: 0, scope: !973, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 179, column: 62, scope: !1356, inlinedAt: !1350)
!1372 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1371)
!1373 = !DILocation(line: 0, scope: !988, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 179, column: 9, scope: !1356, inlinedAt: !1350)
!1375 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !1374)
!1376 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !1374)
!1377 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !1374)
!1378 = !DILocation(line: 0, scope: !999, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !1374)
!1380 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !1379)
!1381 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !1379)
!1382 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !1379)
!1383 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !1374)
!1384 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !1374)
!1385 = !DILocation(line: 180, column: 9, scope: !1356, inlinedAt: !1350)
!1386 = !DILocation(line: 177, column: 11, scope: !1018, inlinedAt: !1350)
!1387 = !DILocation(line: 182, column: 5, scope: !1018, inlinedAt: !1350)
!1388 = !DILocation(line: 122, column: 1, scope: !946)
!1389 = !DILocalVariable(name: "user_context", arg: 1, scope: !1390, file: !49, line: 176, type: !78)
!1390 = distinct !DISubprogram(name: "get_mex_symbol<mxArray *(*)(unsigned long, unsigned long, Halide::Runtime::mex::mxClassID, Halide::Runtime::mex::mxComplexity)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFP7mxArraymmNS1_9mxClassIDENS1_12mxComplexityEEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1391, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, templateParams: !1397, retainedNodes: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!442, !78, !9, !84}
!1393 = !{!1389, !1394, !1395, !1396}
!1394 = !DILocalVariable(name: "name", arg: 2, scope: !1390, file: !49, line: 176, type: !9)
!1395 = !DILocalVariable(name: "required", arg: 3, scope: !1390, file: !49, line: 176, type: !84)
!1396 = !DILocalVariable(name: "s", scope: !1390, file: !49, line: 177, type: !442)
!1397 = !{!1398}
!1398 = !DITemplateTypeParameter(name: "T", type: !442)
!1399 = !DILocation(line: 0, scope: !1390, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 140, column: 1, scope: !946)
!1401 = !DILocation(line: 177, column: 14, scope: !1390, inlinedAt: !1400)
!1402 = !DILocation(line: 140, column: 1, scope: !946)
!1403 = !DILocalVariable(name: "user_context", arg: 1, scope: !1404, file: !49, line: 176, type: !78)
!1404 = distinct !DISubprogram(name: "get_mex_symbol<mxArray *(*)(int, int, Halide::Runtime::mex::mxClassID, Halide::Runtime::mex::mxComplexity)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFP7mxArrayiiNS1_9mxClassIDENS1_12mxComplexityEEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1405, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, templateParams: !1411, retainedNodes: !1407)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!109, !78, !9, !84}
!1407 = !{!1403, !1408, !1409, !1410}
!1408 = !DILocalVariable(name: "name", arg: 2, scope: !1404, file: !49, line: 176, type: !9)
!1409 = !DILocalVariable(name: "required", arg: 3, scope: !1404, file: !49, line: 176, type: !84)
!1410 = !DILocalVariable(name: "s", scope: !1404, file: !49, line: 177, type: !109)
!1411 = !{!1412}
!1412 = !DITemplateTypeParameter(name: "T", type: !109)
!1413 = !DILocation(line: 0, scope: !1404, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 141, column: 1, scope: !946)
!1415 = !DILocation(line: 177, column: 14, scope: !1404, inlinedAt: !1414)
!1416 = !DILocation(line: 141, column: 1, scope: !946)
!1417 = !DILocation(line: 275, column: 10, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !49, line: 275, column: 9)
!1419 = !DILexicalBlockFile(scope: !924, file: !49, discriminator: 0)
!1420 = !DILocation(line: 275, column: 9, scope: !1419)
!1421 = !DILocation(line: 284, column: 5, scope: !1419)
!1422 = !DILocation(line: 285, column: 5, scope: !1419)
!1423 = !DILocation(line: 287, column: 5, scope: !1419)
!1424 = !DILocation(line: 288, column: 1, scope: !1419)
!1425 = !DISubprogram(name: "halide_set_custom_print", scope: !116, file: !116, line: 100, type: !1426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!1428, !1428}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!1429 = !DISubprogram(name: "halide_set_error_handler", scope: !116, file: !116, line: 114, type: !1426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1430 = distinct !DISubprogram(name: "halide_matlab_array_to_halide_buffer_t", scope: !49, file: !49, line: 291, type: !1431, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!28, !78, !20, !586, !433}
!1433 = !{!1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1444, !1446}
!1434 = !DILocalVariable(name: "user_context", arg: 1, scope: !1430, file: !49, line: 291, type: !78)
!1435 = !DILocalVariable(name: "arr", arg: 2, scope: !1430, file: !49, line: 292, type: !20)
!1436 = !DILocalVariable(name: "arg", arg: 3, scope: !1430, file: !49, line: 293, type: !586)
!1437 = !DILocalVariable(name: "buf", arg: 4, scope: !1430, file: !49, line: 294, type: !433)
!1438 = !DILocalVariable(name: "dim_count", scope: !1430, file: !49, line: 301, type: !28)
!1439 = !DILocalVariable(name: "expected_dims", scope: !1430, file: !49, line: 302, type: !28)
!1440 = !DILocalVariable(name: "arg_class_id", scope: !1430, file: !49, line: 305, type: !48)
!1441 = !DILocalVariable(name: "class_id", scope: !1430, file: !49, line: 306, type: !48)
!1442 = !DILocalVariable(name: "i", scope: !1443, file: !49, line: 333, type: !28)
!1443 = distinct !DILexicalBlock(scope: !1430, file: !49, line: 333, column: 5)
!1444 = !DILocalVariable(name: "i", scope: !1445, file: !49, line: 338, type: !28)
!1445 = distinct !DILexicalBlock(scope: !1430, file: !49, line: 338, column: 5)
!1446 = !DILocalVariable(name: "i", scope: !1447, file: !49, line: 346, type: !28)
!1447 = distinct !DILexicalBlock(scope: !1430, file: !49, line: 346, column: 5)
!1448 = !DILocation(line: 0, scope: !1430)
!1449 = !DILocation(line: 296, column: 9, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1430, file: !49, line: 296, column: 9)
!1451 = !DILocation(line: 296, column: 9, scope: !1430)
!1452 = !DILocation(line: 0, scope: !951, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 297, column: 9, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1450, file: !49, line: 296, column: 27)
!1455 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !1453)
!1456 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !1453)
!1457 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !1453)
!1458 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !1453)
!1459 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !1453)
!1460 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !1453)
!1461 = !DILocation(line: 0, scope: !965, inlinedAt: !1453)
!1462 = !DILocation(line: 0, scope: !973, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 297, column: 29, scope: !1454)
!1464 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1463)
!1465 = !DILocation(line: 297, column: 88, scope: !1454)
!1466 = !DILocation(line: 0, scope: !973, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 297, column: 80, scope: !1454)
!1468 = !DILocation(line: 59, column: 17, scope: !980, inlinedAt: !1467)
!1469 = !DILocation(line: 59, column: 13, scope: !973, inlinedAt: !1467)
!1470 = !DILocation(line: 60, column: 19, scope: !1471, inlinedAt: !1467)
!1471 = distinct !DILexicalBlock(scope: !980, file: !183, line: 59, column: 29)
!1472 = !DILocation(line: 61, column: 9, scope: !1471, inlinedAt: !1467)
!1473 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1467)
!1474 = !DILocation(line: 0, scope: !980, inlinedAt: !1467)
!1475 = !DILocation(line: 0, scope: !973, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 297, column: 93, scope: !1454)
!1477 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1476)
!1478 = !DILocation(line: 0, scope: !988, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 297, column: 9, scope: !1454)
!1480 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !1479)
!1481 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !1479)
!1482 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !1479)
!1483 = !DILocation(line: 0, scope: !999, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !1479)
!1485 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !1484)
!1486 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !1484)
!1487 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !1484)
!1488 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !1479)
!1489 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !1479)
!1490 = !DILocation(line: 298, column: 9, scope: !1454)
!1491 = !DILocalVariable(name: "a", arg: 1, scope: !1492, file: !49, line: 186, type: !20)
!1492 = distinct !DISubprogram(name: "get_number_of_dimensions", linkageName: "_ZN6Halide7Runtime3mex24get_number_of_dimensionsEPK7mxArray", scope: !2, file: !49, line: 186, type: !15, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, retainedNodes: !1493)
!1493 = !{!1491}
!1494 = !DILocation(line: 0, scope: !1492, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 301, column: 21, scope: !1430)
!1496 = !DILocation(line: 187, column: 9, scope: !1497, inlinedAt: !1495)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !49, line: 187, column: 9)
!1498 = !DILocation(line: 187, column: 9, scope: !1492, inlinedAt: !1495)
!1499 = !DILocation(line: 188, column: 16, scope: !1500, inlinedAt: !1495)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !49, line: 187, column: 38)
!1501 = !DILocation(line: 188, column: 9, scope: !1500, inlinedAt: !1495)
!1502 = !DILocation(line: 190, column: 16, scope: !1503, inlinedAt: !1495)
!1503 = distinct !DILexicalBlock(scope: !1497, file: !49, line: 189, column: 12)
!1504 = !DILocation(line: 190, column: 9, scope: !1503, inlinedAt: !1495)
!1505 = !DILocation(line: 0, scope: !1497, inlinedAt: !1495)
!1506 = !DILocation(line: 301, column: 21, scope: !1430)
!1507 = !DILocation(line: 302, column: 30, scope: !1430)
!1508 = !DILocation(line: 305, column: 48, scope: !1430)
!1509 = !DILocation(line: 305, column: 53, scope: !1430)
!1510 = !DILocation(line: 305, column: 43, scope: !1430)
!1511 = !DILocation(line: 305, column: 69, scope: !1430)
!1512 = !DILocation(line: 305, column: 59, scope: !1430)
!1513 = !DILocation(line: 305, column: 30, scope: !1430)
!1514 = !DILocation(line: 306, column: 26, scope: !1430)
!1515 = !DILocation(line: 307, column: 18, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1430, file: !49, line: 307, column: 9)
!1517 = !DILocation(line: 307, column: 9, scope: !1430)
!1518 = !DILocation(line: 318, column: 5, scope: !1430)
!1519 = !DILocation(line: 0, scope: !951, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 308, column: 9, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !49, line: 307, column: 35)
!1522 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !1520)
!1523 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !1520)
!1524 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !1520)
!1525 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !1520)
!1526 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !1520)
!1527 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !1520)
!1528 = !DILocation(line: 0, scope: !965, inlinedAt: !1520)
!1529 = !DILocation(line: 0, scope: !973, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 308, column: 29, scope: !1521)
!1531 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1530)
!1532 = !DILocation(line: 308, column: 61, scope: !1521)
!1533 = !DILocation(line: 0, scope: !973, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 308, column: 58, scope: !1521)
!1535 = !DILocation(line: 59, column: 17, scope: !980, inlinedAt: !1534)
!1536 = !DILocation(line: 59, column: 13, scope: !973, inlinedAt: !1534)
!1537 = !DILocation(line: 60, column: 19, scope: !1471, inlinedAt: !1534)
!1538 = !DILocation(line: 61, column: 9, scope: !1471, inlinedAt: !1534)
!1539 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1534)
!1540 = !DILocation(line: 0, scope: !980, inlinedAt: !1534)
!1541 = !DILocation(line: 0, scope: !973, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 309, column: 29, scope: !1521)
!1543 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1542)
!1544 = !DILocation(line: 309, column: 57, scope: !1521)
!1545 = !DILocation(line: 0, scope: !973, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 309, column: 49, scope: !1521)
!1547 = !DILocation(line: 59, column: 17, scope: !980, inlinedAt: !1546)
!1548 = !DILocation(line: 59, column: 13, scope: !973, inlinedAt: !1546)
!1549 = !DILocation(line: 60, column: 19, scope: !1471, inlinedAt: !1546)
!1550 = !DILocation(line: 61, column: 9, scope: !1471, inlinedAt: !1546)
!1551 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1546)
!1552 = !DILocation(line: 0, scope: !980, inlinedAt: !1546)
!1553 = !DILocation(line: 0, scope: !973, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 310, column: 29, scope: !1521)
!1555 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1554)
!1556 = !DILocation(line: 310, column: 50, scope: !1521)
!1557 = !DILocation(line: 0, scope: !973, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 310, column: 47, scope: !1521)
!1559 = !DILocation(line: 59, column: 17, scope: !980, inlinedAt: !1558)
!1560 = !DILocation(line: 59, column: 13, scope: !973, inlinedAt: !1558)
!1561 = !DILocation(line: 60, column: 19, scope: !1471, inlinedAt: !1558)
!1562 = !DILocation(line: 61, column: 9, scope: !1471, inlinedAt: !1558)
!1563 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1558)
!1564 = !DILocation(line: 0, scope: !980, inlinedAt: !1558)
!1565 = !DILocation(line: 0, scope: !973, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 310, column: 75, scope: !1521)
!1567 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1566)
!1568 = !DILocation(line: 0, scope: !988, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 308, column: 9, scope: !1521)
!1570 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !1569)
!1571 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !1569)
!1572 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !1569)
!1573 = !DILocation(line: 0, scope: !999, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !1569)
!1575 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !1574)
!1576 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !1574)
!1577 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !1574)
!1578 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !1569)
!1579 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !1569)
!1580 = !DILocation(line: 311, column: 9, scope: !1521)
!1581 = !DILocation(line: 318, column: 22, scope: !1430)
!1582 = !DILocation(line: 318, column: 26, scope: !1430)
!1583 = !DILocation(line: 318, column: 58, scope: !1430)
!1584 = !DILocalVariable(name: "a", arg: 1, scope: !1585, file: !49, line: 194, type: !20)
!1585 = distinct !DISubprogram(name: "get_dimension", linkageName: "_ZN6Halide7Runtime3mex13get_dimensionEPK7mxArraym", scope: !2, file: !49, line: 194, type: !1586, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, retainedNodes: !1588)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!17, !20, !17}
!1588 = !{!1584, !1589}
!1589 = !DILocalVariable(name: "n", arg: 2, scope: !1585, file: !49, line: 194, type: !17)
!1590 = !DILocation(line: 0, scope: !1585, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 318, column: 29, scope: !1430)
!1592 = !DILocation(line: 195, column: 9, scope: !1593, inlinedAt: !1591)
!1593 = distinct !DILexicalBlock(scope: !1585, file: !49, line: 195, column: 9)
!1594 = !DILocation(line: 195, column: 9, scope: !1585, inlinedAt: !1591)
!1595 = !DILocation(line: 196, column: 16, scope: !1596, inlinedAt: !1591)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !49, line: 195, column: 30)
!1597 = !{!1598, !1598, i64 0}
!1598 = !{!"long", !630, i64 0}
!1599 = !DILocation(line: 196, column: 9, scope: !1596, inlinedAt: !1591)
!1600 = !DILocation(line: 198, column: 16, scope: !1601, inlinedAt: !1591)
!1601 = distinct !DILexicalBlock(scope: !1593, file: !49, line: 197, column: 12)
!1602 = !{!640, !640, i64 0}
!1603 = !DILocation(line: 198, column: 9, scope: !1601, inlinedAt: !1591)
!1604 = !DILocation(line: 0, scope: !1593, inlinedAt: !1591)
!1605 = !DILocation(line: 318, column: 63, scope: !1430)
!1606 = distinct !{!1606, !1518, !1607, !761}
!1607 = !DILocation(line: 320, column: 5, scope: !1430)
!1608 = !DILocation(line: 321, column: 19, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1430, file: !49, line: 321, column: 9)
!1610 = !DILocation(line: 321, column: 9, scope: !1430)
!1611 = !DILocation(line: 0, scope: !951, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 322, column: 9, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1609, file: !49, line: 321, column: 36)
!1614 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !1612)
!1615 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !1612)
!1616 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !1612)
!1617 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !1612)
!1618 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !1612)
!1619 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !1612)
!1620 = !DILocation(line: 0, scope: !965, inlinedAt: !1612)
!1621 = !DILocation(line: 0, scope: !973, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 322, column: 29, scope: !1613)
!1623 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1622)
!1624 = !DILocalVariable(name: "this", arg: 1, scope: !1625, type: !955, flags: DIFlagArtificial | DIFlagObjectPointer)
!1625 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !186, file: !183, line: 72, type: !212, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !112, declaration: !211, retainedNodes: !1626)
!1626 = !{!1624, !1627}
!1627 = !DILocalVariable(name: "arg", arg: 2, scope: !1625, file: !183, line: 72, type: !214)
!1628 = !DILocation(line: 0, scope: !1625, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 322, column: 58, scope: !1613)
!1630 = !DILocation(line: 73, column: 48, scope: !1625, inlinedAt: !1629)
!1631 = !DILocation(line: 73, column: 15, scope: !1625, inlinedAt: !1629)
!1632 = !DILocation(line: 0, scope: !973, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 323, column: 29, scope: !1613)
!1634 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1633)
!1635 = !DILocation(line: 323, column: 57, scope: !1613)
!1636 = !DILocation(line: 0, scope: !973, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 323, column: 49, scope: !1613)
!1638 = !DILocation(line: 59, column: 17, scope: !980, inlinedAt: !1637)
!1639 = !DILocation(line: 59, column: 13, scope: !973, inlinedAt: !1637)
!1640 = !DILocation(line: 60, column: 19, scope: !1471, inlinedAt: !1637)
!1641 = !DILocation(line: 61, column: 9, scope: !1471, inlinedAt: !1637)
!1642 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1637)
!1643 = !DILocation(line: 0, scope: !980, inlinedAt: !1637)
!1644 = !DILocation(line: 0, scope: !973, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 324, column: 29, scope: !1613)
!1646 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1645)
!1647 = !DILocation(line: 0, scope: !1625, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 324, column: 55, scope: !1613)
!1649 = !DILocation(line: 73, column: 48, scope: !1625, inlinedAt: !1648)
!1650 = !DILocation(line: 73, column: 15, scope: !1625, inlinedAt: !1648)
!1651 = !DILocation(line: 0, scope: !973, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 324, column: 68, scope: !1613)
!1653 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1652)
!1654 = !DILocation(line: 0, scope: !988, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 322, column: 9, scope: !1613)
!1656 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !1655)
!1657 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !1655)
!1658 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !1655)
!1659 = !DILocation(line: 0, scope: !999, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !1655)
!1661 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !1660)
!1662 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !1660)
!1663 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !1660)
!1664 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !1655)
!1665 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !1655)
!1666 = !DILocation(line: 325, column: 9, scope: !1613)
!1667 = !DILocation(line: 328, column: 28, scope: !1430)
!1668 = !DILocation(line: 328, column: 10, scope: !1430)
!1669 = !DILocation(line: 328, column: 15, scope: !1430)
!1670 = !{!1671, !629, i64 16}
!1671 = !{!"_ZTS15halide_buffer_t", !1672, i64 0, !629, i64 8, !629, i64 16, !1672, i64 24, !667, i64 32, !640, i64 36, !629, i64 40, !629, i64 48}
!1672 = !{!"long long", !630, i64 0}
!1673 = !DILocation(line: 329, column: 15, scope: !1430)
!1674 = !DILocation(line: 330, column: 28, scope: !1430)
!1675 = !DILocation(line: 330, column: 10, scope: !1430)
!1676 = !DILocation(line: 330, column: 21, scope: !1430)
!1677 = !{!1671, !640, i64 36}
!1678 = !DILocalVariable(name: "this", arg: 1, scope: !1679, type: !293, flags: DIFlagArtificial | DIFlagObjectPointer)
!1679 = distinct !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !281, file: !116, line: 1474, type: !379, scopeLine: 1474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, declaration: !378, retainedNodes: !1680)
!1680 = !{!1678, !1681}
!1681 = !DILocalVariable(name: "v", arg: 2, scope: !1679, file: !116, line: 1474, type: !84)
!1682 = !DILocation(line: 0, scope: !1679, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 331, column: 10, scope: !1430)
!1684 = !DILocalVariable(name: "this", arg: 1, scope: !1685, type: !293, flags: DIFlagArtificial | DIFlagObjectPointer)
!1685 = distinct !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !281, file: !116, line: 1458, type: !371, scopeLine: 1458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, declaration: !370, retainedNodes: !1686)
!1686 = !{!1684, !1687, !1688}
!1687 = !DILocalVariable(name: "flag", arg: 2, scope: !1685, file: !116, line: 1458, type: !369)
!1688 = !DILocalVariable(name: "value", arg: 3, scope: !1685, file: !116, line: 1458, type: !84)
!1689 = !DILocation(line: 0, scope: !1685, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 1475, column: 9, scope: !1679, inlinedAt: !1683)
!1691 = !DILocation(line: 1460, column: 13, scope: !1692, inlinedAt: !1690)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !116, line: 1459, column: 20)
!1693 = distinct !DILexicalBlock(scope: !1685, file: !116, line: 1459, column: 13)
!1694 = !DILocation(line: 1460, column: 19, scope: !1692, inlinedAt: !1690)
!1695 = !{!1671, !1672, i64 24}
!1696 = !DILocation(line: 0, scope: !1443)
!1697 = !DILocation(line: 333, column: 23, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1443, file: !49, line: 333, column: 5)
!1699 = !DILocation(line: 333, column: 35, scope: !1698)
!1700 = !DILocation(line: 333, column: 5, scope: !1443)
!1701 = !DILocation(line: 0, scope: !1445)
!1702 = !DILocation(line: 338, column: 23, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1445, file: !49, line: 338, column: 5)
!1704 = !{!1671, !629, i64 40}
!1705 = !DILocation(line: 338, column: 5, scope: !1445)
!1706 = !DILocation(line: 0, scope: !1585, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 334, column: 51, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1698, file: !49, line: 333, column: 62)
!1709 = !DILocation(line: 195, column: 9, scope: !1593, inlinedAt: !1707)
!1710 = !DILocation(line: 195, column: 9, scope: !1585, inlinedAt: !1707)
!1711 = !DILocation(line: 196, column: 16, scope: !1596, inlinedAt: !1707)
!1712 = !DILocation(line: 196, column: 9, scope: !1596, inlinedAt: !1707)
!1713 = !DILocation(line: 198, column: 16, scope: !1601, inlinedAt: !1707)
!1714 = !DILocation(line: 198, column: 9, scope: !1601, inlinedAt: !1707)
!1715 = !DILocation(line: 0, scope: !1593, inlinedAt: !1707)
!1716 = !DILocation(line: 334, column: 51, scope: !1708)
!1717 = !DILocation(line: 334, column: 14, scope: !1708)
!1718 = !DILocation(line: 334, column: 21, scope: !1708)
!1719 = !DILocation(line: 334, column: 28, scope: !1708)
!1720 = !{!1721, !640, i64 4}
!1721 = !{!"_ZTS18halide_dimension_t", !640, i64 0, !640, i64 4, !640, i64 8, !640, i64 12}
!1722 = !DILocation(line: 333, column: 58, scope: !1698)
!1723 = distinct !{!1723, !1700, !1724, !761}
!1724 = !DILocation(line: 335, column: 5, scope: !1443)
!1725 = !DILocation(line: 345, column: 17, scope: !1430)
!1726 = !DILocation(line: 345, column: 24, scope: !1430)
!1727 = !{!1721, !640, i64 8}
!1728 = !DILocation(line: 0, scope: !1447)
!1729 = !DILocation(line: 346, column: 23, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1447, file: !49, line: 346, column: 5)
!1731 = !DILocation(line: 346, column: 5, scope: !1447)
!1732 = !DILocation(line: 339, column: 25, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !49, line: 339, column: 13)
!1734 = distinct !DILexicalBlock(scope: !1703, file: !49, line: 338, column: 45)
!1735 = !DILocation(line: 339, column: 32, scope: !1733)
!1736 = !DILocation(line: 339, column: 13, scope: !1734)
!1737 = !DILocation(line: 340, column: 32, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1733, file: !49, line: 339, column: 38)
!1739 = !DILocation(line: 341, column: 9, scope: !1738)
!1740 = !DILocation(line: 338, column: 41, scope: !1703)
!1741 = distinct !{!1741, !1705, !1742, !761}
!1742 = !DILocation(line: 342, column: 5, scope: !1445)
!1743 = !DILocation(line: 347, column: 71, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1730, file: !49, line: 346, column: 45)
!1745 = !DILocation(line: 347, column: 41, scope: !1744)
!1746 = !DILocation(line: 347, column: 46, scope: !1744)
!1747 = !DILocation(line: 347, column: 53, scope: !1744)
!1748 = !DILocation(line: 347, column: 21, scope: !1744)
!1749 = !DILocation(line: 347, column: 28, scope: !1744)
!1750 = !DILocation(line: 346, column: 41, scope: !1730)
!1751 = distinct !{!1751, !1731, !1752, !761}
!1752 = !DILocation(line: 348, column: 5, scope: !1447)
!1753 = !DILocation(line: 351, column: 1, scope: !1430)
!1754 = distinct !DISubprogram(name: "halide_matlab_array_to_scalar", scope: !49, file: !49, line: 354, type: !1755, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, retainedNodes: !1757)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!28, !78, !20, !586, !78}
!1757 = !{!1758, !1759, !1760, !1761, !1762, !1763, !1765, !1766, !1767}
!1758 = !DILocalVariable(name: "user_context", arg: 1, scope: !1754, file: !49, line: 354, type: !78)
!1759 = !DILocalVariable(name: "arr", arg: 2, scope: !1754, file: !49, line: 355, type: !20)
!1760 = !DILocalVariable(name: "arg", arg: 3, scope: !1754, file: !49, line: 355, type: !586)
!1761 = !DILocalVariable(name: "scalar", arg: 4, scope: !1754, file: !49, line: 355, type: !78)
!1762 = !DILocalVariable(name: "dim_count", scope: !1754, file: !49, line: 362, type: !28)
!1763 = !DILocalVariable(name: "i", scope: !1764, file: !49, line: 363, type: !28)
!1764 = distinct !DILexicalBlock(scope: !1754, file: !49, line: 363, column: 5)
!1765 = !DILocalVariable(name: "value", scope: !1754, file: !49, line: 375, type: !94)
!1766 = !DILocalVariable(name: "type_code", scope: !1754, file: !49, line: 376, type: !214)
!1767 = !DILocalVariable(name: "type_bits", scope: !1754, file: !49, line: 377, type: !214)
!1768 = !DILocation(line: 0, scope: !1754)
!1769 = !DILocation(line: 356, column: 9, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1754, file: !49, line: 356, column: 9)
!1771 = !DILocation(line: 356, column: 9, scope: !1754)
!1772 = !DILocation(line: 0, scope: !951, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 357, column: 9, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !49, line: 356, column: 27)
!1775 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !1773)
!1776 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !1773)
!1777 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !1773)
!1778 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !1773)
!1779 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !1773)
!1780 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !1773)
!1781 = !DILocation(line: 0, scope: !965, inlinedAt: !1773)
!1782 = !DILocation(line: 0, scope: !973, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 357, column: 29, scope: !1774)
!1784 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1783)
!1785 = !DILocation(line: 357, column: 88, scope: !1774)
!1786 = !DILocation(line: 0, scope: !973, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 357, column: 80, scope: !1774)
!1788 = !DILocation(line: 59, column: 17, scope: !980, inlinedAt: !1787)
!1789 = !DILocation(line: 59, column: 13, scope: !973, inlinedAt: !1787)
!1790 = !DILocation(line: 60, column: 19, scope: !1471, inlinedAt: !1787)
!1791 = !DILocation(line: 61, column: 9, scope: !1471, inlinedAt: !1787)
!1792 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1787)
!1793 = !DILocation(line: 0, scope: !980, inlinedAt: !1787)
!1794 = !DILocation(line: 0, scope: !973, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 357, column: 93, scope: !1774)
!1796 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1795)
!1797 = !DILocation(line: 0, scope: !988, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 357, column: 9, scope: !1774)
!1799 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !1798)
!1800 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !1798)
!1801 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !1798)
!1802 = !DILocation(line: 0, scope: !999, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !1798)
!1804 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !1803)
!1805 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !1803)
!1806 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !1803)
!1807 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !1798)
!1808 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !1798)
!1809 = !DILocation(line: 358, column: 9, scope: !1774)
!1810 = !DILocation(line: 0, scope: !1492, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 362, column: 21, scope: !1754)
!1812 = !DILocation(line: 187, column: 9, scope: !1497, inlinedAt: !1811)
!1813 = !DILocation(line: 187, column: 9, scope: !1492, inlinedAt: !1811)
!1814 = !DILocation(line: 188, column: 16, scope: !1500, inlinedAt: !1811)
!1815 = !DILocation(line: 188, column: 9, scope: !1500, inlinedAt: !1811)
!1816 = !DILocation(line: 190, column: 16, scope: !1503, inlinedAt: !1811)
!1817 = !DILocation(line: 190, column: 9, scope: !1503, inlinedAt: !1811)
!1818 = !DILocation(line: 0, scope: !1497, inlinedAt: !1811)
!1819 = !DILocation(line: 362, column: 21, scope: !1754)
!1820 = !DILocation(line: 0, scope: !1764)
!1821 = !DILocation(line: 363, column: 23, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1764, file: !49, line: 363, column: 5)
!1823 = !DILocation(line: 363, column: 5, scope: !1764)
!1824 = distinct !{!1824, !1823, !1825, !761}
!1825 = !DILocation(line: 368, column: 5, scope: !1764)
!1826 = !DILocation(line: 0, scope: !1585, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 364, column: 13, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !49, line: 364, column: 13)
!1829 = distinct !DILexicalBlock(scope: !1822, file: !49, line: 363, column: 41)
!1830 = !DILocation(line: 195, column: 9, scope: !1593, inlinedAt: !1827)
!1831 = !DILocation(line: 195, column: 9, scope: !1585, inlinedAt: !1827)
!1832 = !DILocation(line: 196, column: 16, scope: !1596, inlinedAt: !1827)
!1833 = !DILocation(line: 196, column: 9, scope: !1596, inlinedAt: !1827)
!1834 = !DILocation(line: 198, column: 16, scope: !1601, inlinedAt: !1827)
!1835 = !DILocation(line: 198, column: 9, scope: !1601, inlinedAt: !1827)
!1836 = !DILocation(line: 0, scope: !1593, inlinedAt: !1827)
!1837 = !DILocation(line: 364, column: 35, scope: !1828)
!1838 = !DILocation(line: 363, column: 37, scope: !1822)
!1839 = !DILocation(line: 364, column: 13, scope: !1829)
!1840 = !DILocation(line: 0, scope: !951, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 365, column: 13, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1828, file: !49, line: 364, column: 41)
!1843 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !1841)
!1844 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !1841)
!1845 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !1841)
!1846 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !1841)
!1847 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !1841)
!1848 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !1841)
!1849 = !DILocation(line: 0, scope: !965, inlinedAt: !1841)
!1850 = !DILocation(line: 0, scope: !973, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 365, column: 33, scope: !1842)
!1852 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1851)
!1853 = !DILocation(line: 365, column: 86, scope: !1842)
!1854 = !DILocation(line: 0, scope: !973, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 365, column: 78, scope: !1842)
!1856 = !DILocation(line: 59, column: 17, scope: !980, inlinedAt: !1855)
!1857 = !DILocation(line: 59, column: 13, scope: !973, inlinedAt: !1855)
!1858 = !DILocation(line: 60, column: 19, scope: !1471, inlinedAt: !1855)
!1859 = !DILocation(line: 61, column: 9, scope: !1471, inlinedAt: !1855)
!1860 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1855)
!1861 = !DILocation(line: 0, scope: !980, inlinedAt: !1855)
!1862 = !DILocation(line: 0, scope: !973, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 365, column: 91, scope: !1842)
!1864 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1863)
!1865 = !DILocation(line: 0, scope: !988, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 365, column: 13, scope: !1842)
!1867 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !1866)
!1868 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !1866)
!1869 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !1866)
!1870 = !DILocation(line: 0, scope: !999, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !1866)
!1872 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !1871)
!1873 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !1871)
!1874 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !1871)
!1875 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !1866)
!1876 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !1866)
!1877 = !DILocation(line: 369, column: 10, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1754, file: !49, line: 369, column: 9)
!1879 = !DILocation(line: 369, column: 27, scope: !1878)
!1880 = !DILocation(line: 369, column: 31, scope: !1878)
!1881 = !DILocation(line: 369, column: 9, scope: !1754)
!1882 = !DILocation(line: 0, scope: !951, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 370, column: 9, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1878, file: !49, line: 369, column: 49)
!1885 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !1883)
!1886 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !1883)
!1887 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !1883)
!1888 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !1883)
!1889 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !1883)
!1890 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !1883)
!1891 = !DILocation(line: 0, scope: !965, inlinedAt: !1883)
!1892 = !DILocation(line: 0, scope: !973, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 370, column: 29, scope: !1884)
!1894 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1893)
!1895 = !DILocation(line: 370, column: 90, scope: !1884)
!1896 = !DILocation(line: 0, scope: !973, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 370, column: 82, scope: !1884)
!1898 = !DILocation(line: 59, column: 17, scope: !980, inlinedAt: !1897)
!1899 = !DILocation(line: 59, column: 13, scope: !973, inlinedAt: !1897)
!1900 = !DILocation(line: 60, column: 19, scope: !1471, inlinedAt: !1897)
!1901 = !DILocation(line: 61, column: 9, scope: !1471, inlinedAt: !1897)
!1902 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1897)
!1903 = !DILocation(line: 0, scope: !980, inlinedAt: !1897)
!1904 = !DILocation(line: 0, scope: !973, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 371, column: 29, scope: !1884)
!1906 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1905)
!1907 = !DILocation(line: 371, column: 59, scope: !1884)
!1908 = !DILocation(line: 371, column: 44, scope: !1884)
!1909 = !DILocation(line: 0, scope: !973, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 371, column: 41, scope: !1884)
!1911 = !DILocation(line: 59, column: 17, scope: !980, inlinedAt: !1910)
!1912 = !DILocation(line: 59, column: 13, scope: !973, inlinedAt: !1910)
!1913 = !DILocation(line: 60, column: 19, scope: !1471, inlinedAt: !1910)
!1914 = !DILocation(line: 61, column: 9, scope: !1471, inlinedAt: !1910)
!1915 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1910)
!1916 = !DILocation(line: 0, scope: !980, inlinedAt: !1910)
!1917 = !DILocation(line: 0, scope: !973, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 371, column: 78, scope: !1884)
!1919 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !1918)
!1920 = !DILocation(line: 0, scope: !988, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 370, column: 9, scope: !1884)
!1922 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !1921)
!1923 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !1921)
!1924 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !1921)
!1925 = !DILocation(line: 0, scope: !999, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !1921)
!1927 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !1926)
!1928 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !1926)
!1929 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !1926)
!1930 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !1921)
!1931 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !1921)
!1932 = !DILocation(line: 372, column: 9, scope: !1884)
!1933 = !DILocation(line: 375, column: 20, scope: !1754)
!1934 = !DILocation(line: 376, column: 35, scope: !1754)
!1935 = !DILocation(line: 377, column: 35, scope: !1754)
!1936 = !DILocation(line: 379, column: 9, scope: !1754)
!1937 = !DILocation(line: 380, column: 9, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !49, line: 379, column: 39)
!1939 = distinct !DILexicalBlock(scope: !1754, file: !49, line: 379, column: 9)
!1940 = !DILocation(line: 382, column: 55, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1938, file: !49, line: 380, column: 28)
!1942 = !DILocation(line: 382, column: 47, scope: !1941)
!1943 = !{!632, !632, i64 0}
!1944 = !DILocation(line: 383, column: 13, scope: !1941)
!1945 = !DILocation(line: 385, column: 71, scope: !1941)
!1946 = !DILocation(line: 385, column: 49, scope: !1941)
!1947 = !DILocation(line: 386, column: 13, scope: !1941)
!1948 = !DILocation(line: 388, column: 73, scope: !1941)
!1949 = !DILocation(line: 388, column: 14, scope: !1941)
!1950 = !DILocation(line: 388, column: 50, scope: !1941)
!1951 = !{!669, !669, i64 0}
!1952 = !DILocation(line: 389, column: 13, scope: !1941)
!1953 = !DILocation(line: 391, column: 73, scope: !1941)
!1954 = !DILocation(line: 391, column: 14, scope: !1941)
!1955 = !DILocation(line: 391, column: 50, scope: !1941)
!1956 = !DILocation(line: 392, column: 13, scope: !1941)
!1957 = !DILocation(line: 394, column: 73, scope: !1941)
!1958 = !DILocation(line: 394, column: 14, scope: !1941)
!1959 = !DILocation(line: 394, column: 50, scope: !1941)
!1960 = !{!1672, !1672, i64 0}
!1961 = !DILocation(line: 395, column: 13, scope: !1941)
!1962 = !DILocation(line: 398, column: 9, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !49, line: 397, column: 47)
!1964 = distinct !DILexicalBlock(scope: !1939, file: !49, line: 397, column: 16)
!1965 = !DILocation(line: 400, column: 55, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1963, file: !49, line: 398, column: 28)
!1967 = !DILocation(line: 400, column: 47, scope: !1966)
!1968 = !DILocation(line: 401, column: 13, scope: !1966)
!1969 = !DILocation(line: 403, column: 73, scope: !1966)
!1970 = !DILocation(line: 403, column: 50, scope: !1966)
!1971 = !DILocation(line: 404, column: 13, scope: !1966)
!1972 = !DILocation(line: 406, column: 75, scope: !1966)
!1973 = !DILocation(line: 406, column: 14, scope: !1966)
!1974 = !DILocation(line: 406, column: 51, scope: !1966)
!1975 = !DILocation(line: 407, column: 13, scope: !1966)
!1976 = !DILocation(line: 409, column: 75, scope: !1966)
!1977 = !DILocation(line: 409, column: 14, scope: !1966)
!1978 = !DILocation(line: 409, column: 51, scope: !1966)
!1979 = !DILocation(line: 410, column: 13, scope: !1966)
!1980 = !DILocation(line: 412, column: 75, scope: !1966)
!1981 = !DILocation(line: 412, column: 14, scope: !1966)
!1982 = !DILocation(line: 412, column: 51, scope: !1966)
!1983 = !DILocation(line: 413, column: 13, scope: !1966)
!1984 = !DILocation(line: 416, column: 9, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !49, line: 415, column: 48)
!1986 = distinct !DILexicalBlock(scope: !1964, file: !49, line: 415, column: 16)
!1987 = !DILocation(line: 418, column: 69, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1985, file: !49, line: 416, column: 28)
!1989 = !DILocation(line: 418, column: 14, scope: !1988)
!1990 = !DILocation(line: 418, column: 48, scope: !1988)
!1991 = !{!1992, !1992, i64 0}
!1992 = !{!"float", !630, i64 0}
!1993 = !DILocation(line: 419, column: 13, scope: !1988)
!1994 = !DILocation(line: 421, column: 14, scope: !1988)
!1995 = !DILocation(line: 421, column: 49, scope: !1988)
!1996 = !{!1997, !1997, i64 0}
!1997 = !{!"double", !630, i64 0}
!1998 = !DILocation(line: 422, column: 13, scope: !1988)
!1999 = !DILocation(line: 0, scope: !951, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 425, column: 9, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !49, line: 424, column: 49)
!2002 = distinct !DILexicalBlock(scope: !1986, file: !49, line: 424, column: 16)
!2003 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !2000)
!2004 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !2000)
!2005 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !2000)
!2006 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !2000)
!2007 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !2000)
!2008 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !2000)
!2009 = !DILocation(line: 0, scope: !965, inlinedAt: !2000)
!2010 = !DILocation(line: 0, scope: !973, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 425, column: 29, scope: !2001)
!2012 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !2011)
!2013 = !DILocation(line: 425, column: 53, scope: !2001)
!2014 = !DILocation(line: 0, scope: !973, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 425, column: 45, scope: !2001)
!2016 = !DILocation(line: 59, column: 17, scope: !980, inlinedAt: !2015)
!2017 = !DILocation(line: 59, column: 13, scope: !973, inlinedAt: !2015)
!2018 = !DILocation(line: 60, column: 19, scope: !1471, inlinedAt: !2015)
!2019 = !DILocation(line: 61, column: 9, scope: !1471, inlinedAt: !2015)
!2020 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !2015)
!2021 = !DILocation(line: 0, scope: !980, inlinedAt: !2015)
!2022 = !DILocation(line: 0, scope: !973, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 425, column: 58, scope: !2001)
!2024 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !2023)
!2025 = !DILocation(line: 0, scope: !988, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 425, column: 9, scope: !2001)
!2027 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !2026)
!2028 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !2026)
!2029 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !2026)
!2030 = !DILocation(line: 0, scope: !999, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !2026)
!2032 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !2031)
!2033 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !2031)
!2034 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !2031)
!2035 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !2026)
!2036 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !2026)
!2037 = !DILocation(line: 426, column: 9, scope: !2001)
!2038 = !DILocation(line: 0, scope: !951, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 428, column: 5, scope: !1754)
!2040 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !2039)
!2041 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !2039)
!2042 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !2039)
!2043 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !2039)
!2044 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !2039)
!2045 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !2039)
!2046 = !DILocation(line: 0, scope: !965, inlinedAt: !2039)
!2047 = !DILocation(line: 0, scope: !973, inlinedAt: !2048)
!2048 = distinct !DILocation(line: 428, column: 25, scope: !1754)
!2049 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !2048)
!2050 = !DILocation(line: 428, column: 59, scope: !1754)
!2051 = !DILocation(line: 0, scope: !973, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 428, column: 51, scope: !1754)
!2053 = !DILocation(line: 59, column: 17, scope: !980, inlinedAt: !2052)
!2054 = !DILocation(line: 59, column: 13, scope: !973, inlinedAt: !2052)
!2055 = !DILocation(line: 60, column: 19, scope: !1471, inlinedAt: !2052)
!2056 = !DILocation(line: 61, column: 9, scope: !1471, inlinedAt: !2052)
!2057 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !2052)
!2058 = !DILocation(line: 0, scope: !980, inlinedAt: !2052)
!2059 = !DILocation(line: 0, scope: !973, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 428, column: 64, scope: !1754)
!2061 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !2060)
!2062 = !DILocation(line: 0, scope: !988, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 428, column: 5, scope: !1754)
!2064 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !2063)
!2065 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !2063)
!2066 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !2063)
!2067 = !DILocation(line: 0, scope: !999, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !2063)
!2069 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !2068)
!2070 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !2068)
!2071 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !2068)
!2072 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !2063)
!2073 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !2063)
!2074 = !DILocation(line: 429, column: 5, scope: !1754)
!2075 = !DILocation(line: 430, column: 1, scope: !1754)
!2076 = distinct !DISubprogram(name: "halide_matlab_call_pipeline", scope: !49, file: !49, line: 432, type: !2077, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, retainedNodes: !2084)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!28, !78, !2079, !577, !28, !2082, !28, !2083}
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!28, !432}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!2084 = !{!2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2097, !2098, !2100, !2103, !2104, !2107, !2109, !2110, !2112, !2115, !2118}
!2085 = !DILocalVariable(name: "user_context", arg: 1, scope: !2076, file: !49, line: 432, type: !78)
!2086 = !DILocalVariable(name: "pipeline", arg: 2, scope: !2076, file: !49, line: 433, type: !2079)
!2087 = !DILocalVariable(name: "metadata", arg: 3, scope: !2076, file: !49, line: 433, type: !577)
!2088 = !DILocalVariable(name: "nlhs", arg: 4, scope: !2076, file: !49, line: 434, type: !28)
!2089 = !DILocalVariable(name: "plhs", arg: 5, scope: !2076, file: !49, line: 434, type: !2082)
!2090 = !DILocalVariable(name: "nrhs", arg: 6, scope: !2076, file: !49, line: 434, type: !28)
!2091 = !DILocalVariable(name: "prhs", arg: 7, scope: !2076, file: !49, line: 434, type: !2083)
!2092 = !DILocalVariable(name: "init_result", scope: !2076, file: !49, line: 436, type: !28)
!2093 = !DILocalVariable(name: "result_storage", scope: !2076, file: !49, line: 441, type: !214)
!2094 = !DILocalVariable(name: "result_ptr", scope: !2076, file: !49, line: 442, type: !425)
!2095 = !DILocalVariable(name: "result", scope: !2076, file: !49, line: 447, type: !2096)
!2096 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !214, size: 64)
!2097 = !DILocalVariable(name: "args", scope: !2076, file: !49, line: 472, type: !432)
!2098 = !DILocalVariable(name: "i", scope: !2099, file: !49, line: 473, type: !28)
!2099 = distinct !DILexicalBlock(scope: !2076, file: !49, line: 473, column: 5)
!2100 = !DILocalVariable(name: "arg", scope: !2101, file: !49, line: 474, type: !20)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !49, line: 473, column: 36)
!2102 = distinct !DILexicalBlock(scope: !2099, file: !49, line: 473, column: 5)
!2103 = !DILocalVariable(name: "arg_metadata", scope: !2101, file: !49, line: 475, type: !586)
!2104 = !DILocalVariable(name: "buf", scope: !2105, file: !49, line: 479, type: !433)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !49, line: 478, column: 71)
!2106 = distinct !DILexicalBlock(scope: !2101, file: !49, line: 477, column: 13)
!2107 = !DILocalVariable(name: "size_bytes", scope: !2108, file: !49, line: 490, type: !17)
!2108 = distinct !DILexicalBlock(scope: !2106, file: !49, line: 489, column: 16)
!2109 = !DILocalVariable(name: "scalar", scope: !2108, file: !49, line: 491, type: !78)
!2110 = !DILocalVariable(name: "i", scope: !2111, file: !49, line: 505, type: !28)
!2111 = distinct !DILexicalBlock(scope: !2076, file: !49, line: 505, column: 5)
!2112 = !DILocalVariable(name: "arg_metadata", scope: !2113, file: !49, line: 506, type: !586)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !49, line: 505, column: 36)
!2114 = distinct !DILexicalBlock(scope: !2111, file: !49, line: 505, column: 5)
!2115 = !DILocalVariable(name: "buf", scope: !2116, file: !49, line: 509, type: !433)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !49, line: 508, column: 71)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !49, line: 508, column: 13)
!2118 = !DILocalVariable(name: "buf", scope: !2119, file: !49, line: 514, type: !433)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !49, line: 513, column: 71)
!2120 = distinct !DILexicalBlock(scope: !2113, file: !49, line: 512, column: 13)
!2121 = !DILocation(line: 0, scope: !2076)
!2122 = !DILocation(line: 436, column: 23, scope: !2076)
!2123 = !DILocation(line: 437, column: 21, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2076, file: !49, line: 437, column: 9)
!2125 = !DILocation(line: 437, column: 9, scope: !2076)
!2126 = !DILocation(line: 441, column: 5, scope: !2076)
!2127 = !DILocation(line: 443, column: 14, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2076, file: !49, line: 443, column: 9)
!2129 = !DILocation(line: 443, column: 9, scope: !2076)
!2130 = !DILocalVariable(name: "M", arg: 1, scope: !2131, file: !49, line: 202, type: !17)
!2131 = distinct !DISubprogram(name: "create_numeric_matrix", linkageName: "_ZN6Halide7Runtime3mex21create_numeric_matrixEmmNS1_9mxClassIDENS1_12mxComplexityE", scope: !2, file: !49, line: 202, type: !100, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, retainedNodes: !2132)
!2132 = !{!2130, !2133, !2134, !2135}
!2133 = !DILocalVariable(name: "N", arg: 2, scope: !2131, file: !49, line: 202, type: !17)
!2134 = !DILocalVariable(name: "type", arg: 3, scope: !2131, file: !49, line: 202, type: !48)
!2135 = !DILocalVariable(name: "complexity", arg: 4, scope: !2131, file: !49, line: 202, type: !103)
!2136 = !DILocation(line: 0, scope: !2131, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 444, column: 19, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2128, file: !49, line: 443, column: 19)
!2139 = !DILocation(line: 203, column: 9, scope: !2140, inlinedAt: !2137)
!2140 = distinct !DILexicalBlock(scope: !2131, file: !49, line: 203, column: 9)
!2141 = !DILocation(line: 203, column: 9, scope: !2131, inlinedAt: !2137)
!2142 = !DILocation(line: 204, column: 16, scope: !2143, inlinedAt: !2137)
!2143 = distinct !DILexicalBlock(scope: !2140, file: !49, line: 203, column: 36)
!2144 = !DILocation(line: 204, column: 9, scope: !2143, inlinedAt: !2137)
!2145 = !DILocation(line: 206, column: 16, scope: !2146, inlinedAt: !2137)
!2146 = distinct !DILexicalBlock(scope: !2140, file: !49, line: 205, column: 12)
!2147 = !DILocation(line: 206, column: 9, scope: !2146, inlinedAt: !2137)
!2148 = !DILocation(line: 0, scope: !2140, inlinedAt: !2137)
!2149 = !DILocation(line: 444, column: 17, scope: !2138)
!2150 = !DILocalVariable(name: "a", arg: 1, scope: !2151, file: !49, line: 166, type: !102)
!2151 = distinct !DISubprogram(name: "get_data<int>", linkageName: "_ZN6Halide7Runtime3mex8get_dataIiEEPT_P7mxArray", scope: !2, file: !49, line: 166, type: !2152, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112, templateParams: !2155, retainedNodes: !2154)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!331, !102}
!2154 = !{!2150}
!2155 = !{!2156}
!2156 = !DITemplateTypeParameter(name: "T", type: !28)
!2157 = !DILocation(line: 0, scope: !2151, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 445, column: 22, scope: !2138)
!2159 = !DILocation(line: 167, column: 17, scope: !2151, inlinedAt: !2158)
!2160 = !DILocation(line: 167, column: 12, scope: !2151, inlinedAt: !2158)
!2161 = !DILocation(line: 446, column: 5, scope: !2138)
!2162 = !DILocation(line: 450, column: 12, scope: !2076)
!2163 = !DILocation(line: 453, column: 27, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2076, file: !49, line: 453, column: 9)
!2165 = !DILocation(line: 453, column: 14, scope: !2164)
!2166 = !DILocation(line: 453, column: 9, scope: !2076)
!2167 = !DILocation(line: 454, column: 18, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !49, line: 454, column: 13)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !49, line: 453, column: 42)
!2170 = !DILocation(line: 454, column: 13, scope: !2169)
!2171 = !DILocation(line: 0, scope: !951, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 456, column: 13, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2168, file: !49, line: 454, column: 23)
!2174 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !2172)
!2175 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !2172)
!2176 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !2172)
!2177 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !2172)
!2178 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !2172)
!2179 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !2172)
!2180 = !DILocation(line: 0, scope: !965, inlinedAt: !2172)
!2181 = !DILocation(line: 0, scope: !973, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 456, column: 33, scope: !2173)
!2183 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !2182)
!2184 = !DILocation(line: 456, column: 61, scope: !2173)
!2185 = !DILocation(line: 0, scope: !1625, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 456, column: 48, scope: !2173)
!2187 = !DILocation(line: 73, column: 48, scope: !1625, inlinedAt: !2186)
!2188 = !DILocation(line: 73, column: 15, scope: !1625, inlinedAt: !2186)
!2189 = !DILocation(line: 0, scope: !973, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 457, column: 33, scope: !2173)
!2191 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !2190)
!2192 = !DILocation(line: 457, column: 83, scope: !2173)
!2193 = !DILocation(line: 0, scope: !973, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 457, column: 70, scope: !2173)
!2195 = !DILocation(line: 59, column: 17, scope: !980, inlinedAt: !2194)
!2196 = !DILocation(line: 59, column: 13, scope: !973, inlinedAt: !2194)
!2197 = !DILocation(line: 60, column: 19, scope: !1471, inlinedAt: !2194)
!2198 = !DILocation(line: 61, column: 9, scope: !1471, inlinedAt: !2194)
!2199 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !2194)
!2200 = !DILocation(line: 0, scope: !980, inlinedAt: !2194)
!2201 = !DILocation(line: 0, scope: !973, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 458, column: 33, scope: !2173)
!2203 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !2202)
!2204 = !DILocation(line: 0, scope: !1625, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 458, column: 45, scope: !2173)
!2206 = !DILocation(line: 73, column: 48, scope: !1625, inlinedAt: !2205)
!2207 = !DILocation(line: 73, column: 15, scope: !1625, inlinedAt: !2205)
!2208 = !DILocation(line: 0, scope: !973, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 458, column: 53, scope: !2173)
!2210 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !2209)
!2211 = !DILocation(line: 0, scope: !988, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 456, column: 13, scope: !2173)
!2213 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !2212)
!2214 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !2212)
!2215 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !2212)
!2216 = !DILocation(line: 0, scope: !999, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !2212)
!2218 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !2217)
!2219 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !2217)
!2220 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !2217)
!2221 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !2212)
!2222 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !2212)
!2223 = !DILocation(line: 459, column: 9, scope: !2173)
!2224 = !DILocation(line: 460, column: 9, scope: !2169)
!2225 = !DILocation(line: 461, column: 9, scope: !2169)
!2226 = !DILocation(line: 465, column: 14, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2076, file: !49, line: 465, column: 9)
!2228 = !DILocation(line: 465, column: 9, scope: !2076)
!2229 = !DILocation(line: 0, scope: !951, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 466, column: 9, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !49, line: 465, column: 19)
!2232 = !DILocation(line: 44, column: 27, scope: !960, inlinedAt: !2230)
!2233 = !DILocation(line: 48, column: 13, scope: !965, inlinedAt: !2230)
!2234 = !DILocation(line: 48, column: 13, scope: !963, inlinedAt: !2230)
!2235 = !DILocation(line: 49, column: 23, scope: !968, inlinedAt: !2230)
!2236 = !DILocation(line: 50, column: 18, scope: !968, inlinedAt: !2230)
!2237 = !DILocation(line: 51, column: 9, scope: !968, inlinedAt: !2230)
!2238 = !DILocation(line: 0, scope: !965, inlinedAt: !2230)
!2239 = !DILocation(line: 0, scope: !973, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 466, column: 29, scope: !2231)
!2241 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !2240)
!2242 = !DILocation(line: 466, column: 102, scope: !2231)
!2243 = !DILocation(line: 0, scope: !973, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 466, column: 89, scope: !2231)
!2245 = !DILocation(line: 59, column: 17, scope: !980, inlinedAt: !2244)
!2246 = !DILocation(line: 59, column: 13, scope: !973, inlinedAt: !2244)
!2247 = !DILocation(line: 60, column: 19, scope: !1471, inlinedAt: !2244)
!2248 = !DILocation(line: 61, column: 9, scope: !1471, inlinedAt: !2244)
!2249 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !2244)
!2250 = !DILocation(line: 0, scope: !980, inlinedAt: !2244)
!2251 = !DILocation(line: 0, scope: !973, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 467, column: 29, scope: !2231)
!2253 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !2252)
!2254 = !DILocation(line: 0, scope: !1625, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 467, column: 41, scope: !2231)
!2256 = !DILocation(line: 73, column: 48, scope: !1625, inlinedAt: !2255)
!2257 = !DILocation(line: 73, column: 15, scope: !1625, inlinedAt: !2255)
!2258 = !DILocation(line: 0, scope: !973, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 467, column: 49, scope: !2231)
!2260 = !DILocation(line: 62, column: 19, scope: !979, inlinedAt: !2259)
!2261 = !DILocation(line: 0, scope: !988, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 466, column: 9, scope: !2231)
!2263 = !DILocation(line: 167, column: 13, scope: !993, inlinedAt: !2262)
!2264 = !DILocation(line: 168, column: 13, scope: !995, inlinedAt: !2262)
!2265 = !DILocation(line: 169, column: 9, scope: !995, inlinedAt: !2262)
!2266 = !DILocation(line: 0, scope: !999, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 170, column: 13, scope: !1003, inlinedAt: !2262)
!2268 = !DILocation(line: 163, column: 81, scope: !999, inlinedAt: !2267)
!2269 = !DILocation(line: 163, column: 87, scope: !999, inlinedAt: !2267)
!2270 = !DILocation(line: 163, column: 15, scope: !999, inlinedAt: !2267)
!2271 = !DILocation(line: 172, column: 17, scope: !1008, inlinedAt: !2262)
!2272 = !DILocation(line: 181, column: 13, scope: !1011, inlinedAt: !2262)
!2273 = !DILocation(line: 468, column: 9, scope: !2231)
!2274 = !DILocation(line: 469, column: 9, scope: !2231)
!2275 = !DILocation(line: 472, column: 45, scope: !2076)
!2276 = !DILocation(line: 472, column: 28, scope: !2076)
!2277 = !DILocation(line: 0, scope: !2099)
!2278 = !DILocation(line: 473, column: 23, scope: !2102)
!2279 = !DILocation(line: 473, column: 5, scope: !2099)
!2280 = !DILocation(line: 502, column: 14, scope: !2076)
!2281 = !DILocation(line: 502, column: 12, scope: !2076)
!2282 = !DILocation(line: 0, scope: !2111)
!2283 = !DILocation(line: 505, column: 5, scope: !2111)
!2284 = !DILocation(line: 474, column: 30, scope: !2101)
!2285 = !DILocation(line: 0, scope: !2101)
!2286 = !DILocation(line: 475, column: 67, scope: !2101)
!2287 = !DILocation(line: 475, column: 57, scope: !2101)
!2288 = !DILocation(line: 477, column: 27, scope: !2106)
!2289 = !DILocation(line: 477, column: 69, scope: !2106)
!2290 = !DILocation(line: 479, column: 55, scope: !2105)
!2291 = !DILocation(line: 0, scope: !2105)
!2292 = !DILocation(line: 480, column: 13, scope: !2105)
!2293 = !DILocation(line: 481, column: 106, scope: !2105)
!2294 = !DILocation(line: 481, column: 92, scope: !2105)
!2295 = !DILocation(line: 481, column: 46, scope: !2105)
!2296 = !DILocation(line: 481, column: 18, scope: !2105)
!2297 = !DILocation(line: 481, column: 22, scope: !2105)
!2298 = !DILocation(line: 482, column: 60, scope: !2105)
!2299 = !DILocation(line: 482, column: 13, scope: !2105)
!2300 = !DILocation(line: 483, column: 22, scope: !2105)
!2301 = !DILocation(line: 483, column: 20, scope: !2105)
!2302 = !DILocation(line: 484, column: 24, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2105, file: !49, line: 484, column: 17)
!2304 = !DILocation(line: 484, column: 17, scope: !2105)
!2305 = !DILocation(line: 488, column: 13, scope: !2105)
!2306 = !DILocation(line: 488, column: 21, scope: !2105)
!2307 = !DILocation(line: 485, column: 17, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2303, file: !49, line: 484, column: 30)
!2309 = !DILocation(line: 490, column: 60, scope: !2108)
!2310 = !DILocation(line: 490, column: 41, scope: !2108)
!2311 = !DILocation(line: 490, column: 65, scope: !2108)
!2312 = !DILocation(line: 490, column: 70, scope: !2108)
!2313 = !DILocalVariable(name: "a", arg: 1, scope: !2314, file: !18, line: 203, type: !2318)
!2314 = distinct !DISubprogram(name: "max<int>", linkageName: "_ZN12_GLOBAL__N_13maxIiEET_RKS1_S3_", scope: !2315, file: !18, line: 203, type: !2316, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !112, templateParams: !2155, retainedNodes: !2319)
!2315 = !DINamespace(scope: null)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!28, !2318, !2318}
!2318 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !42, size: 64)
!2319 = !{!2313, !2320}
!2320 = !DILocalVariable(name: "b", arg: 2, scope: !2314, file: !18, line: 203, type: !2318)
!2321 = !DILocation(line: 0, scope: !2314, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 490, column: 33, scope: !2108)
!2323 = !DILocation(line: 204, column: 12, scope: !2314, inlinedAt: !2322)
!2324 = !DILocation(line: 490, column: 33, scope: !2108)
!2325 = !DILocation(line: 0, scope: !2108)
!2326 = !DILocation(line: 491, column: 28, scope: !2108)
!2327 = !DILocation(line: 492, column: 13, scope: !2108)
!2328 = !DILocation(line: 493, column: 22, scope: !2108)
!2329 = !DILocation(line: 493, column: 20, scope: !2108)
!2330 = !DILocation(line: 494, column: 24, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2108, file: !49, line: 494, column: 17)
!2332 = !DILocation(line: 494, column: 17, scope: !2108)
!2333 = !DILocation(line: 498, column: 13, scope: !2108)
!2334 = !DILocation(line: 498, column: 21, scope: !2108)
!2335 = !DILocation(line: 495, column: 17, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2331, file: !49, line: 494, column: 30)
!2337 = !DILocation(line: 473, column: 32, scope: !2102)
!2338 = distinct !{!2338, !2279, !2339, !761}
!2339 = !DILocation(line: 500, column: 5, scope: !2099)
!2340 = !DILocation(line: 505, column: 23, scope: !2114)
!2341 = !DILocation(line: 506, column: 67, scope: !2113)
!2342 = !DILocation(line: 0, scope: !2113)
!2343 = !DILocation(line: 508, column: 27, scope: !2117)
!2344 = !DILocation(line: 508, column: 32, scope: !2117)
!2345 = !DILocation(line: 508, column: 13, scope: !2113)
!2346 = !DILocation(line: 509, column: 55, scope: !2116)
!2347 = !DILocation(line: 0, scope: !2116)
!2348 = !DILocation(line: 510, column: 13, scope: !2116)
!2349 = !DILocation(line: 512, column: 27, scope: !2120)
!2350 = !DILocation(line: 511, column: 9, scope: !2116)
!2351 = !DILocation(line: 512, column: 69, scope: !2120)
!2352 = !DILocation(line: 514, column: 55, scope: !2119)
!2353 = !DILocation(line: 0, scope: !2119)
!2354 = !DILocation(line: 515, column: 13, scope: !2119)
!2355 = !DILocation(line: 516, column: 9, scope: !2119)
!2356 = !DILocation(line: 505, column: 32, scope: !2114)
!2357 = distinct !{!2357, !2283, !2358, !761}
!2358 = !DILocation(line: 517, column: 5, scope: !2111)
!2359 = !DILocation(line: 520, column: 1, scope: !2076)
!2360 = !DISubprogram(name: "memset", scope: !18, file: !18, line: 96, type: !2361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!78, !78, !28, !19}
!2363 = !DISubprogram(name: "halide_copy_to_host", scope: !116, file: !116, line: 761, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!2364 = !DISubprogram(name: "halide_device_free", scope: !116, file: !116, line: 837, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!2365 = !DISubprogram(name: "halide_string_to_string", scope: !18, file: !18, line: 120, type: !2366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!189, !189, !189, !9}
!2368 = !DISubprogram(name: "halide_int64_to_string", scope: !18, file: !18, line: 122, type: !2369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!189, !189, !189, !210, !28}
!2371 = !DISubprogram(name: "malloc", scope: !18, file: !18, line: 87, type: !2372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!78, !19}
!2374 = !DISubprogram(name: "halide_error", scope: !116, file: !116, line: 111, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!2375 = !DISubprogram(name: "free", scope: !18, file: !18, line: 86, type: !2376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{null, !78}
!2378 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !116, file: !116, line: 973, type: !2379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!28, !78, !234, !219}
!2381 = !DISubprogram(name: "halide_get_symbol", scope: !116, file: !116, line: 375, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!78, !9}
