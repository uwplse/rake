; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/matlab.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/matlab.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.mxArray = type opaque
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%struct.halide_filter_metadata_t = type { i32, i32, %struct.halide_filter_argument_t*, i8*, i8* }
%struct.halide_filter_argument_t = type { i8*, i32, i32, %struct.halide_type_t, %struct.halide_scalar_value_t*, %struct.halide_scalar_value_t*, %struct.halide_scalar_value_t*, %struct.halide_scalar_value_t*, i64** }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_scalar_value_t = type { %union.anon }
%union.anon = type { i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type opaque
%struct.halide_dimension_t = type { i32, i32, i32, i32 }

@_ZN6Halide7Runtime3mex13mexWarnMsgTxtE = dso_local local_unnamed_addr global void (i8*)* null, align 4, !dbg !0
@_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E = dso_local local_unnamed_addr global i32 (%struct.mxArray*)* null, align 4, !dbg !12
@_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E = dso_local local_unnamed_addr global i32 (%struct.mxArray*)* null, align 4, !dbg !23
@_ZN6Halide7Runtime3mex19mxGetDimensions_730E = dso_local local_unnamed_addr global i32* (%struct.mxArray*)* null, align 4, !dbg !29
@_ZN6Halide7Runtime3mex19mxGetDimensions_700E = dso_local local_unnamed_addr global i32* (%struct.mxArray*)* null, align 4, !dbg !36
@_ZN6Halide7Runtime3mex12mxGetClassIDE = dso_local local_unnamed_addr global i32 (%struct.mxArray*)* null, align 4, !dbg !43
@_ZN6Halide7Runtime3mex9mxGetDataE = dso_local local_unnamed_addr global i8* (%struct.mxArray*)* null, align 4, !dbg !72
@_ZN6Halide7Runtime3mex11mxIsNumericE = dso_local local_unnamed_addr global i1 (%struct.mxArray*)* null, align 4, !dbg !78
@_ZN6Halide7Runtime3mex11mxIsLogicalE = dso_local local_unnamed_addr global i1 (%struct.mxArray*)* null, align 4, !dbg !84
@_ZN6Halide7Runtime3mex11mxIsComplexE = dso_local local_unnamed_addr global i1 (%struct.mxArray*)* null, align 4, !dbg !86
@_ZN6Halide7Runtime3mex11mxGetScalarE = dso_local local_unnamed_addr global double (%struct.mxArray*)* null, align 4, !dbg !88
@_ZN6Halide7Runtime3mex16mxGetElementSizeE = dso_local local_unnamed_addr global i32 (%struct.mxArray*)* null, align 4, !dbg !94
@_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_730E = dso_local local_unnamed_addr global %struct.mxArray* (i32, i32, i32, i32)* null, align 4, !dbg !96
@_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_700E = dso_local local_unnamed_addr global %struct.mxArray* (i32, i32, i32, i32)* null, align 4, !dbg !106
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
define weak dso_local i32 @_ZN6Halide7Runtime3mex12get_class_idEii(i32 %0, i32 %1) local_unnamed_addr #0 !dbg !452 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !456, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i32 %1, metadata !457, metadata !DIExpression()), !dbg !458
  switch i32 %0, label %20 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %15
  ], !dbg !459

3:                                                ; preds = %2
  switch i32 %1, label %8 [
    i32 1, label %20
    i32 8, label %4
    i32 16, label %5
    i32 32, label %6
    i32 64, label %7
  ], !dbg !460

4:                                                ; preds = %3
  br label %20, !dbg !462

5:                                                ; preds = %3
  br label %20, !dbg !464

6:                                                ; preds = %3
  br label %20, !dbg !465

7:                                                ; preds = %3
  br label %20, !dbg !466

8:                                                ; preds = %3
  br label %20, !dbg !467

9:                                                ; preds = %2
  switch i32 %1, label %14 [
    i32 1, label %20
    i32 8, label %10
    i32 16, label %11
    i32 32, label %12
    i32 64, label %13
  ], !dbg !468

10:                                               ; preds = %9
  br label %20, !dbg !469

11:                                               ; preds = %9
  br label %20, !dbg !471

12:                                               ; preds = %9
  br label %20, !dbg !472

13:                                               ; preds = %9
  br label %20, !dbg !473

14:                                               ; preds = %9
  br label %20, !dbg !474

15:                                               ; preds = %2
  %16 = icmp eq i32 %1, 64, !dbg !475
  %17 = select i1 %16, i32 6, i32 0, !dbg !475
  %18 = icmp eq i32 %1, 32, !dbg !475
  %19 = select i1 %18, i32 7, i32 %17, !dbg !475
  br label %20, !dbg !475

20:                                               ; preds = %2, %15, %9, %3, %14, %13, %12, %11, %10, %8, %7, %6, %5, %4
  %21 = phi i32 [ 0, %14 ], [ 15, %13 ], [ 13, %12 ], [ 11, %11 ], [ 9, %10 ], [ 0, %8 ], [ 14, %7 ], [ 12, %6 ], [ 10, %5 ], [ 8, %4 ], [ 3, %3 ], [ 3, %9 ], [ %19, %15 ], [ 0, %2 ], !dbg !458
  ret i32 %21, !dbg !476
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %0) local_unnamed_addr #0 !dbg !477 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !481, metadata !DIExpression()), !dbg !482
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
  ], !dbg !483

2:                                                ; preds = %1
  br label %20, !dbg !484

3:                                                ; preds = %1
  br label %20, !dbg !486

4:                                                ; preds = %1
  br label %20, !dbg !487

5:                                                ; preds = %1
  br label %20, !dbg !488

6:                                                ; preds = %1
  br label %20, !dbg !489

7:                                                ; preds = %1
  br label %20, !dbg !490

8:                                                ; preds = %1
  br label %20, !dbg !491

9:                                                ; preds = %1
  br label %20, !dbg !492

10:                                               ; preds = %1
  br label %20, !dbg !493

11:                                               ; preds = %1
  br label %20, !dbg !494

12:                                               ; preds = %1
  br label %20, !dbg !495

13:                                               ; preds = %1
  br label %20, !dbg !496

14:                                               ; preds = %1
  br label %20, !dbg !497

15:                                               ; preds = %1
  br label %20, !dbg !498

16:                                               ; preds = %1
  br label %20, !dbg !499

17:                                               ; preds = %1
  br label %20, !dbg !500

18:                                               ; preds = %1
  br label %20, !dbg !501

19:                                               ; preds = %1
  br label %20, !dbg !502

20:                                               ; preds = %1, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %21 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %19 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), %18 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %17 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %16 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %15 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %14 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), %13 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), %12 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %11 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %10 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %9 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %8 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %7 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %6 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %5 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %4 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %3 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %2 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %1 ], !dbg !503
  ret i8* %21, !dbg !504
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_matlab_describe_pipeline(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 4 dereferenceable(18) %0, %struct.halide_filter_metadata_t* %1) local_unnamed_addr #2 !dbg !505 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !608, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata %struct.halide_filter_metadata_t* %1, metadata !609, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !621
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !621
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i32 0, i32 1, !dbg !623
  %4 = load i8*, i8** %3, align 4, !dbg !623, !tbaa !626
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i32 0, i32 2, !dbg !632
  %6 = load i8*, i8** %5, align 4, !dbg !632, !tbaa !633
  %7 = tail call i8* @halide_string_to_string(i8* %4, i8* %6, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !634
  store i8* %7, i8** %3, align 4, !dbg !635, !tbaa !626
  %8 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %1, i32 0, i32 4, !dbg !636
  %9 = load i8*, i8** %8, align 4, !dbg !636, !tbaa !637
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !640
  call void @llvm.dbg.value(metadata i8* %9, metadata !619, metadata !DIExpression()) #6, !dbg !640
  %10 = icmp eq i8* %9, null, !dbg !642
  %11 = load i8*, i8** %5, align 4, !dbg !643, !tbaa !633
  br i1 %10, label %12, label %14, !dbg !644

12:                                               ; preds = %2
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !645
  br label %16, !dbg !647

14:                                               ; preds = %2
  %15 = tail call i8* @halide_string_to_string(i8* %7, i8* %11, i8* nonnull %9) #7, !dbg !648
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ], !dbg !643
  store i8* %17, i8** %3, align 4, !dbg !643, !tbaa !626
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !649
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !649
  %18 = load i8*, i8** %5, align 4, !dbg !651, !tbaa !633
  %19 = tail call i8* @halide_string_to_string(i8* %17, i8* %18, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #7, !dbg !652
  store i8* %19, i8** %3, align 4, !dbg !653, !tbaa !626
  call void @llvm.dbg.value(metadata i32 0, metadata !610, metadata !DIExpression()), !dbg !654
  %20 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %1, i32 0, i32 1, !dbg !655
  %21 = load i32, i32* %20, align 4, !dbg !655, !tbaa !656
  %22 = icmp sgt i32 %21, 0, !dbg !657
  br i1 %22, label %23, label %84, !dbg !658

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %1, i32 0, i32 2
  call void @llvm.dbg.value(metadata i32 0, metadata !610, metadata !DIExpression()), !dbg !654
  %25 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %24, align 4, !dbg !659, !tbaa !660
  call void @llvm.dbg.value(metadata %struct.halide_filter_argument_t* undef, metadata !612, metadata !DIExpression()), !dbg !661
  %26 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4, !dbg !662, !tbaa !664
  %28 = icmp eq i32 %27, 2, !dbg !669
  br i1 %28, label %29, label %34, !dbg !670

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i32 0, i32 1, !dbg !662
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !671
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !671
  %31 = load i8*, i8** %5, align 4, !dbg !674, !tbaa !633
  %32 = tail call i8* @halide_string_to_string(i8* %19, i8* %31, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #7, !dbg !675
  store i8* %32, i8** %3, align 4, !dbg !676, !tbaa !626
  %33 = load i32, i32* %30, align 4, !dbg !677, !tbaa !664
  br label %34, !dbg !679

34:                                               ; preds = %29, %23
  %35 = phi i8* [ %32, %29 ], [ %19, %23 ]
  %36 = phi i32 [ %33, %29 ], [ %27, %23 ], !dbg !677
  switch i32 %36, label %50 [
    i32 2, label %40
    i32 1, label %40
    i32 0, label %37
  ], !dbg !680

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !681
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !681
  %38 = load i8*, i8** %5, align 4, !dbg !685, !tbaa !633
  %39 = tail call i8* @halide_string_to_string(i8* %35, i8* %38, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)) #7, !dbg !686
  br label %48, !dbg !687

40:                                               ; preds = %34, %34
  %41 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i32 0, i32 2, !dbg !688
  %42 = load i32, i32* %41, align 4, !dbg !688, !tbaa !690
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !691, metadata !DIExpression()) #6, !dbg !695
  call void @llvm.dbg.value(metadata i32 %42, metadata !694, metadata !DIExpression()) #6, !dbg !695
  %43 = load i8*, i8** %5, align 4, !dbg !697, !tbaa !633
  %44 = sext i32 %42 to i64, !dbg !698
  %45 = tail call i8* @halide_int64_to_string(i8* %35, i8* %43, i64 %44, i32 1) #7, !dbg !699
  store i8* %45, i8** %3, align 4, !dbg !700, !tbaa !626
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !701
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !701
  %46 = load i8*, i8** %5, align 4, !dbg !703, !tbaa !633
  %47 = tail call i8* @halide_string_to_string(i8* %45, i8* %46, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)) #7, !dbg !704
  br label %48, !dbg !705

48:                                               ; preds = %37, %40
  %49 = phi i8* [ %47, %40 ], [ %39, %37 ]
  store i8* %49, i8** %3, align 4, !dbg !706, !tbaa !626
  br label %50, !dbg !707

50:                                               ; preds = %48, %34
  %51 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i32 0, i32 3, i32 0, !dbg !707
  %52 = load i8, i8* %51, align 4, !dbg !707, !tbaa !708
  %53 = zext i8 %52 to i32, !dbg !709
  %54 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i32 0, i32 3, i32 1, !dbg !710
  %55 = load i8, i8* %54, align 1, !dbg !710, !tbaa !711
  %56 = zext i8 %55 to i32, !dbg !712
  %57 = tail call i32 @_ZN6Halide7Runtime3mex12get_class_idEii(i32 %53, i32 %56) #8, !dbg !713
  %58 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %57) #8, !dbg !714
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !715
  call void @llvm.dbg.value(metadata i8* %58, metadata !619, metadata !DIExpression()) #6, !dbg !715
  %59 = icmp eq i8* %58, null, !dbg !717
  %60 = load i8*, i8** %3, align 4, !dbg !718, !tbaa !626
  %61 = load i8*, i8** %5, align 4, !dbg !718, !tbaa !633
  br i1 %59, label %64, label %62, !dbg !719

62:                                               ; preds = %50
  %63 = tail call i8* @halide_string_to_string(i8* %60, i8* %61, i8* nonnull %58) #7, !dbg !720
  br label %66

64:                                               ; preds = %50
  %65 = tail call i8* @halide_string_to_string(i8* %60, i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !721
  br label %66, !dbg !722

66:                                               ; preds = %64, %62
  %67 = phi i8* [ %63, %62 ], [ %65, %64 ], !dbg !718
  store i8* %67, i8** %3, align 4, !dbg !718, !tbaa !626
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !723
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !723
  %68 = load i8*, i8** %5, align 4, !dbg !725, !tbaa !633
  %69 = tail call i8* @halide_string_to_string(i8* %67, i8* %68, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0)) #7, !dbg !726
  store i8* %69, i8** %3, align 4, !dbg !727, !tbaa !626
  %70 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i32 0, i32 0, !dbg !728
  %71 = load i8*, i8** %70, align 4, !dbg !728, !tbaa !729
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !730
  call void @llvm.dbg.value(metadata i8* %71, metadata !619, metadata !DIExpression()) #6, !dbg !730
  %72 = icmp eq i8* %71, null, !dbg !732
  %73 = load i8*, i8** %5, align 4, !dbg !733, !tbaa !633
  br i1 %72, label %76, label %74, !dbg !734

74:                                               ; preds = %66
  %75 = tail call i8* @halide_string_to_string(i8* %69, i8* %73, i8* nonnull %71) #7, !dbg !735
  br label %78

76:                                               ; preds = %66
  %77 = tail call i8* @halide_string_to_string(i8* %69, i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !736
  br label %78, !dbg !737

78:                                               ; preds = %76, %74
  %79 = phi i8* [ %75, %74 ], [ %77, %76 ], !dbg !733
  store i8* %79, i8** %3, align 4, !dbg !733, !tbaa !626
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !738
  %80 = load i8*, i8** %5, align 4, !dbg !740, !tbaa !633
  %81 = tail call i8* @halide_string_to_string(i8* %79, i8* %80, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)) #7, !dbg !741
  store i8* %81, i8** %3, align 4, !dbg !742, !tbaa !626
  call void @llvm.dbg.value(metadata i32 1, metadata !610, metadata !DIExpression()), !dbg !654
  %82 = load i32, i32* %20, align 4, !dbg !655, !tbaa !656
  %83 = icmp sgt i32 %82, 1, !dbg !657
  br i1 %83, label %88, label %84, !dbg !658

84:                                               ; preds = %145, %78, %16
  %85 = phi i8* [ %19, %16 ], [ %81, %78 ], [ %148, %145 ], !dbg !743
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !745
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !745
  %86 = load i8*, i8** %5, align 4, !dbg !746, !tbaa !633
  %87 = tail call i8* @halide_string_to_string(i8* %85, i8* %86, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0)) #7, !dbg !747
  store i8* %87, i8** %3, align 4, !dbg !748, !tbaa !626
  ret void, !dbg !749

88:                                               ; preds = %78, %145
  %89 = phi i8* [ %148, %145 ], [ %81, %78 ]
  %90 = phi i32 [ %149, %145 ], [ 1, %78 ]
  call void @llvm.dbg.value(metadata i32 %90, metadata !610, metadata !DIExpression()), !dbg !654
  %91 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %24, align 4, !dbg !659, !tbaa !660
  call void @llvm.dbg.value(metadata %struct.halide_filter_argument_t* undef, metadata !612, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !750
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !750
  %92 = load i8*, i8** %5, align 4, !dbg !754, !tbaa !633
  %93 = tail call i8* @halide_string_to_string(i8* %89, i8* %92, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)) #7, !dbg !755
  store i8* %93, i8** %3, align 4, !dbg !756, !tbaa !626
  %94 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i32 %90, i32 1, !dbg !662
  %95 = load i32, i32* %94, align 4, !dbg !662, !tbaa !664
  %96 = icmp eq i32 %95, 2, !dbg !669
  br i1 %96, label %97, label %101, !dbg !670

97:                                               ; preds = %88
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !671
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !671
  %98 = load i8*, i8** %5, align 4, !dbg !674, !tbaa !633
  %99 = tail call i8* @halide_string_to_string(i8* %93, i8* %98, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #7, !dbg !675
  store i8* %99, i8** %3, align 4, !dbg !676, !tbaa !626
  %100 = load i32, i32* %94, align 4, !dbg !677, !tbaa !664
  br label %101, !dbg !679

101:                                              ; preds = %97, %88
  %102 = phi i8* [ %99, %97 ], [ %93, %88 ]
  %103 = phi i32 [ %100, %97 ], [ %95, %88 ], !dbg !677
  switch i32 %103, label %117 [
    i32 2, label %104
    i32 1, label %104
    i32 0, label %112
  ], !dbg !680

104:                                              ; preds = %101, %101
  %105 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i32 %90, i32 2, !dbg !688
  %106 = load i32, i32* %105, align 4, !dbg !688, !tbaa !690
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !691, metadata !DIExpression()) #6, !dbg !695
  call void @llvm.dbg.value(metadata i32 %106, metadata !694, metadata !DIExpression()) #6, !dbg !695
  %107 = load i8*, i8** %5, align 4, !dbg !697, !tbaa !633
  %108 = sext i32 %106 to i64, !dbg !698
  %109 = tail call i8* @halide_int64_to_string(i8* %102, i8* %107, i64 %108, i32 1) #7, !dbg !699
  store i8* %109, i8** %3, align 4, !dbg !700, !tbaa !626
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !701
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !701
  %110 = load i8*, i8** %5, align 4, !dbg !703, !tbaa !633
  %111 = tail call i8* @halide_string_to_string(i8* %109, i8* %110, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)) #7, !dbg !704
  br label %115, !dbg !705

112:                                              ; preds = %101
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !681
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !681
  %113 = load i8*, i8** %5, align 4, !dbg !685, !tbaa !633
  %114 = tail call i8* @halide_string_to_string(i8* %102, i8* %113, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)) #7, !dbg !686
  br label %115, !dbg !687

115:                                              ; preds = %104, %112
  %116 = phi i8* [ %114, %112 ], [ %111, %104 ]
  store i8* %116, i8** %3, align 4, !dbg !706, !tbaa !626
  br label %117, !dbg !707

117:                                              ; preds = %115, %101
  %118 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i32 %90, i32 3, i32 0, !dbg !707
  %119 = load i8, i8* %118, align 4, !dbg !707, !tbaa !708
  %120 = zext i8 %119 to i32, !dbg !709
  %121 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i32 %90, i32 3, i32 1, !dbg !710
  %122 = load i8, i8* %121, align 1, !dbg !710, !tbaa !711
  %123 = zext i8 %122 to i32, !dbg !712
  %124 = tail call i32 @_ZN6Halide7Runtime3mex12get_class_idEii(i32 %120, i32 %123) #8, !dbg !713
  %125 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %124) #8, !dbg !714
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !715
  call void @llvm.dbg.value(metadata i8* %125, metadata !619, metadata !DIExpression()) #6, !dbg !715
  %126 = icmp eq i8* %125, null, !dbg !717
  %127 = load i8*, i8** %3, align 4, !dbg !718, !tbaa !626
  %128 = load i8*, i8** %5, align 4, !dbg !718, !tbaa !633
  br i1 %126, label %129, label %131, !dbg !719

129:                                              ; preds = %117
  %130 = tail call i8* @halide_string_to_string(i8* %127, i8* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !721
  br label %133, !dbg !722

131:                                              ; preds = %117
  %132 = tail call i8* @halide_string_to_string(i8* %127, i8* %128, i8* nonnull %125) #7, !dbg !720
  br label %133

133:                                              ; preds = %129, %131
  %134 = phi i8* [ %132, %131 ], [ %130, %129 ], !dbg !718
  store i8* %134, i8** %3, align 4, !dbg !718, !tbaa !626
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !723
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !723
  %135 = load i8*, i8** %5, align 4, !dbg !725, !tbaa !633
  %136 = tail call i8* @halide_string_to_string(i8* %134, i8* %135, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0)) #7, !dbg !726
  store i8* %136, i8** %3, align 4, !dbg !727, !tbaa !626
  %137 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i32 %90, i32 0, !dbg !728
  %138 = load i8*, i8** %137, align 4, !dbg !728, !tbaa !729
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !730
  call void @llvm.dbg.value(metadata i8* %138, metadata !619, metadata !DIExpression()) #6, !dbg !730
  %139 = icmp eq i8* %138, null, !dbg !732
  %140 = load i8*, i8** %5, align 4, !dbg !733, !tbaa !633
  br i1 %139, label %141, label %143, !dbg !734

141:                                              ; preds = %133
  %142 = tail call i8* @halide_string_to_string(i8* %136, i8* %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !736
  br label %145, !dbg !737

143:                                              ; preds = %133
  %144 = tail call i8* @halide_string_to_string(i8* %136, i8* %140, i8* nonnull %138) #7, !dbg !735
  br label %145

145:                                              ; preds = %141, %143
  %146 = phi i8* [ %144, %143 ], [ %142, %141 ], !dbg !733
  store i8* %146, i8** %3, align 4, !dbg !733, !tbaa !626
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, metadata !616, metadata !DIExpression()) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !738
  %147 = load i8*, i8** %5, align 4, !dbg !740, !tbaa !633
  %148 = tail call i8* @halide_string_to_string(i8* %146, i8* %147, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)) #7, !dbg !741
  store i8* %148, i8** %3, align 4, !dbg !742, !tbaa !626
  %149 = add nuw nsw i32 %90, 1, !dbg !757
  call void @llvm.dbg.value(metadata i32 %149, metadata !610, metadata !DIExpression()), !dbg !654
  %150 = load i32, i32* %20, align 4, !dbg !655, !tbaa !656
  %151 = icmp slt i32 %149, %150, !dbg !657
  br i1 %151, label %88, label %84, !dbg !658, !llvm.loop !758
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
define weak dso_local void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* %1) local_unnamed_addr #4 !dbg !762 {
  %3 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !766, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata %struct.halide_filter_metadata_t* %1, metadata !767, metadata !DIExpression()), !dbg !769
  %4 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3 to i8*, !dbg !770
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #6, !dbg !770
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !768, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !772, metadata !DIExpression()) #6, !dbg !777
  call void @llvm.dbg.value(metadata i8* %0, metadata !775, metadata !DIExpression()) #6, !dbg !777
  call void @llvm.dbg.value(metadata i8* null, metadata !776, metadata !DIExpression()) #6, !dbg !777
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 3, !dbg !779
  store i8* %0, i8** %5, align 4, !dbg !779, !tbaa !780
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 4, !dbg !781
  store i8 1, i8* %6, align 4, !dbg !781, !tbaa !782
  %7 = tail call i8* @malloc(i32 1024) #7, !dbg !783
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 0, !dbg !788
  store i8* %7, i8** %8, align 4, !dbg !789, !tbaa !790
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 1, !dbg !791
  %10 = icmp eq i8* %7, null, !dbg !792
  br i1 %10, label %13, label %11, !dbg !794

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, i8* %7, i32 1023, !dbg !795
  store i8 0, i8* %12, align 1, !dbg !797, !tbaa !798
  br label %13, !dbg !799

13:                                               ; preds = %2, %11
  %14 = phi i8* [ %12, %11 ], [ null, %2 ], !dbg !800
  %15 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 2, !dbg !801
  store i8* %14, i8** %15, align 4, !dbg !803
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !616, metadata !DIExpression()) #6, !dbg !804
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !804
  %16 = tail call i8* @halide_string_to_string(i8* %7, i8* %14, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0)) #7, !dbg !806
  store i8* %16, i8** %9, align 4, !dbg !807, !tbaa !626
  call void @halide_matlab_describe_pipeline(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 4 dereferenceable(18) %3, %struct.halide_filter_metadata_t* %1) #8, !dbg !808
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !809, metadata !DIExpression()) #6, !dbg !812
  %17 = load i8*, i8** %8, align 4, !dbg !814, !tbaa !790
  %18 = icmp eq i8* %17, null, !dbg !814
  br i1 %18, label %29, label %19, !dbg !816

19:                                               ; preds = %13
  %20 = load i8*, i8** %9, align 4, !dbg !817, !tbaa !626
  %21 = load i8*, i8** %5, align 4, !dbg !817, !tbaa !780
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !821, metadata !DIExpression()) #6, !dbg !824
  %22 = ptrtoint i8* %20 to i32, !dbg !826
  %23 = ptrtoint i8* %17 to i32, !dbg !826
  %24 = sub i32 1, %23, !dbg !826
  %25 = add i32 %24, %22, !dbg !827
  %26 = sext i32 %25 to i64, !dbg !828
  %27 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %21, i8* nonnull %17, i64 %26) #7, !dbg !829
  %28 = load i8*, i8** %8, align 4, !dbg !830, !tbaa !790
  br label %29, !dbg !831

29:                                               ; preds = %13, %19
  %30 = phi i8* [ %28, %19 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0), %13 ], !dbg !832
  call void @halide_print(i8* %0, i8* %30) #7, !dbg !833
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, metadata !834, metadata !DIExpression()) #6, !dbg !837
  %31 = load i8*, i8** %8, align 4, !dbg !839, !tbaa !790
  %32 = icmp eq i8* %31, null, !dbg !839
  br i1 %32, label %33, label %35, !dbg !842

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 4, !dbg !843, !tbaa !780
  call void @halide_error(i8* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !845
  br label %44, !dbg !846

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 4, !dbg !847, !tbaa !626
  %37 = load i8*, i8** %5, align 4, !dbg !847, !tbaa !780
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !821, metadata !DIExpression()) #6, !dbg !849
  %38 = ptrtoint i8* %36 to i32, !dbg !851
  %39 = ptrtoint i8* %31 to i32, !dbg !851
  %40 = sub i32 1, %39, !dbg !851
  %41 = add i32 %40, %38, !dbg !852
  %42 = sext i32 %41 to i64, !dbg !853
  %43 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %37, i8* nonnull %31, i64 %42) #7, !dbg !854
  br label %44

44:                                               ; preds = %35, %33
  %45 = load i8, i8* %6, align 4, !dbg !855, !tbaa !782, !range !857
  %46 = icmp eq i8 %45, 0, !dbg !855
  br i1 %46, label %52, label %47, !dbg !858

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 4, !dbg !859, !tbaa !790
  %49 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 5, i32 0, !dbg !860
  %50 = icmp eq i8* %48, %49, !dbg !861
  br i1 %50, label %52, label %51, !dbg !862

51:                                               ; preds = %47
  call void @free(i8* %48) #7, !dbg !863
  br label %52, !dbg !865

52:                                               ; preds = %44, %47, %51
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #6, !dbg !866
  ret void, !dbg !866
}

declare !dbg !867 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
define weak dso_local void @halide_matlab_error(i8* %0, i8* %1) #4 !dbg !871 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !873, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata i8* %1, metadata !874, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !772, metadata !DIExpression()) #6, !dbg !877
  call void @llvm.dbg.value(metadata i8* %0, metadata !775, metadata !DIExpression()) #6, !dbg !877
  call void @llvm.dbg.value(metadata i8* null, metadata !776, metadata !DIExpression()) #6, !dbg !877
  call void @llvm.dbg.value(metadata i8* undef, metadata !875, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata i8 undef, metadata !875, metadata !DIExpression()), !dbg !876
  %3 = tail call i8* @malloc(i32 1024) #7, !dbg !879
  call void @llvm.dbg.value(metadata i8* undef, metadata !875, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata i8* undef, metadata !875, metadata !DIExpression()), !dbg !876
  %4 = icmp eq i8* %3, null, !dbg !880
  br i1 %4, label %7, label %5, !dbg !881

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !882
  store i8 0, i8* %6, align 1, !dbg !883, !tbaa !798
  br label %7, !dbg !884

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ], !dbg !885
  call void @llvm.dbg.value(metadata i8* undef, metadata !875, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !616, metadata !DIExpression()) #6, !dbg !886
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), metadata !619, metadata !DIExpression()) #6, !dbg !886
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0)) #7, !dbg !888
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !616, metadata !DIExpression()) #6, !dbg !889
  call void @llvm.dbg.value(metadata i8* %1, metadata !619, metadata !DIExpression()) #6, !dbg !889
  %10 = icmp eq i8* %1, null, !dbg !891
  br i1 %10, label %11, label %13, !dbg !892

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !893
  br label %15, !dbg !894

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #7, !dbg !895
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ], !dbg !896
  call void @llvm.dbg.value(metadata i8* undef, metadata !875, metadata !DIExpression()), !dbg !876
  %17 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 4, !dbg !897, !tbaa !898
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !809, metadata !DIExpression()) #6, !dbg !899
  br i1 %4, label %18, label %19, !dbg !901

18:                                               ; preds = %15
  tail call void %17(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !897
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !834, metadata !DIExpression()) #6, !dbg !902
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !904
  br label %32, !dbg !905

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !821, metadata !DIExpression()) #6, !dbg !906
  %20 = ptrtoint i8* %16 to i32, !dbg !908
  %21 = ptrtoint i8* %3 to i32, !dbg !908
  %22 = sub i32 1, %21, !dbg !908
  %23 = add i32 %22, %20, !dbg !909
  %24 = sext i32 %23 to i64, !dbg !910
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %24) #7, !dbg !911
  tail call void %17(i8* nonnull %3) #7, !dbg !897
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !834, metadata !DIExpression()) #6, !dbg !902
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !821, metadata !DIExpression()) #6, !dbg !912
  %26 = ptrtoint i8* %16 to i32, !dbg !914
  %27 = ptrtoint i8* %3 to i32, !dbg !914
  %28 = sub i32 1, %27, !dbg !914
  %29 = add i32 %28, %26, !dbg !915
  %30 = sext i32 %29 to i64, !dbg !916
  %31 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %30) #7, !dbg !917
  br label %32

32:                                               ; preds = %18, %19
  call void @free(i8* %3) #7, !dbg !918
  ret void, !dbg !919
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_matlab_print(i8* %0, i8* %1) #2 !dbg !920 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !922, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i8* %1, metadata !923, metadata !DIExpression()), !dbg !924
  %3 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 4, !dbg !925, !tbaa !898
  tail call void %3(i8* %1) #7, !dbg !925
  ret void, !dbg !926
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_matlab_init(i8* %0) local_unnamed_addr #4 !dbg !927 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !931, metadata !DIExpression()), !dbg !932
  %2 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 4, !dbg !933, !tbaa !898
  %3 = icmp eq void (i8*)* %2, null, !dbg !935
  br i1 %3, label %4, label %216, !dbg !936

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %0, metadata !937, metadata !DIExpression()) #6, !dbg !947
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), metadata !942, metadata !DIExpression()) #6, !dbg !947
  call void @llvm.dbg.value(metadata i1 true, metadata !943, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !947
  %5 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)) #7, !dbg !950
  call void @llvm.dbg.value(metadata i8* %5, metadata !944, metadata !DIExpression()) #6, !dbg !947
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %26, !dbg !951

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !959
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !959
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !959
  %8 = tail call i8* @malloc(i32 1024) #7, !dbg !962
  %9 = icmp eq i8* %8, null, !dbg !967
  br i1 %9, label %12, label %10, !dbg !969

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i32 1023, !dbg !970
  store i8 0, i8* %11, align 1, !dbg !972, !tbaa !798
  br label %12, !dbg !973

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !974
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !979
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !979
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #7, !dbg !981
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !984
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !984
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)) #7, !dbg !986
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !987
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !987
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #7, !dbg !989
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !993
  br i1 %9, label %17, label %18, !dbg !995

17:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !997
  br label %25, !dbg !1000

18:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !1004
  %19 = ptrtoint i8* %16 to i32, !dbg !1007
  %20 = ptrtoint i8* %8 to i32, !dbg !1007
  %21 = sub i32 1, %20, !dbg !1007
  %22 = add i32 %21, %19, !dbg !1008
  %23 = sext i32 %22 to i64, !dbg !1009
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %23) #7, !dbg !1010
  tail call void @halide_error(i8* %0, i8* nonnull %8) #7, !dbg !1011
  br label %25

25:                                               ; preds = %18, %17
  tail call void @free(i8* %8) #7, !dbg !1014
  br label %28, !dbg !1017

26:                                               ; preds = %4
  %27 = bitcast i8* %5 to void (i8*)*, !dbg !1018
  call void @llvm.dbg.value(metadata void (i8*)* %27, metadata !944, metadata !DIExpression()) #6, !dbg !947
  br label %28, !dbg !1019

28:                                               ; preds = %25, %26
  %29 = phi void (i8*)* [ null, %25 ], [ %27, %26 ], !dbg !947
  store void (i8*)* %29, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 4, !dbg !1020, !tbaa !898
  call void @llvm.dbg.value(metadata i8* %0, metadata !1021, metadata !DIExpression()) #6, !dbg !1031
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0), metadata !1026, metadata !DIExpression()) #6, !dbg !1031
  call void @llvm.dbg.value(metadata i1 false, metadata !1027, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1031
  %30 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0)) #7, !dbg !1033
  call void @llvm.dbg.value(metadata i8* %30, metadata !1028, metadata !DIExpression()) #6, !dbg !1031
  call void @llvm.dbg.value(metadata i8* %30, metadata !1028, metadata !DIExpression()) #6, !dbg !1031
  store i8* %30, i8** bitcast (i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E to i8**), align 4, !dbg !1034, !tbaa !898
  call void @llvm.dbg.value(metadata i8* %0, metadata !1035, metadata !DIExpression()) #6, !dbg !1045
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), metadata !1040, metadata !DIExpression()) #6, !dbg !1045
  call void @llvm.dbg.value(metadata i1 false, metadata !1041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1045
  %31 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0)) #7, !dbg !1047
  call void @llvm.dbg.value(metadata i8* %31, metadata !1042, metadata !DIExpression()) #6, !dbg !1045
  call void @llvm.dbg.value(metadata i8* %31, metadata !1042, metadata !DIExpression()) #6, !dbg !1045
  store i8* %31, i8** bitcast (i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E to i8**), align 4, !dbg !1048, !tbaa !898
  call void @llvm.dbg.value(metadata i8* %0, metadata !1049, metadata !DIExpression()) #6, !dbg !1059
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), metadata !1054, metadata !DIExpression()) #6, !dbg !1059
  call void @llvm.dbg.value(metadata i1 false, metadata !1055, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1059
  %32 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0)) #7, !dbg !1061
  call void @llvm.dbg.value(metadata i8* %32, metadata !1056, metadata !DIExpression()) #6, !dbg !1059
  call void @llvm.dbg.value(metadata i8* %32, metadata !1056, metadata !DIExpression()) #6, !dbg !1059
  store i8* %32, i8** bitcast (i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E to i8**), align 4, !dbg !1062, !tbaa !898
  call void @llvm.dbg.value(metadata i8* %0, metadata !1063, metadata !DIExpression()) #6, !dbg !1073
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), metadata !1068, metadata !DIExpression()) #6, !dbg !1073
  call void @llvm.dbg.value(metadata i1 false, metadata !1069, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1073
  %33 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0)) #7, !dbg !1075
  call void @llvm.dbg.value(metadata i8* %33, metadata !1070, metadata !DIExpression()) #6, !dbg !1073
  call void @llvm.dbg.value(metadata i8* %33, metadata !1070, metadata !DIExpression()) #6, !dbg !1073
  store i8* %33, i8** bitcast (i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E to i8**), align 4, !dbg !1076, !tbaa !898
  call void @llvm.dbg.value(metadata i8* %0, metadata !1077, metadata !DIExpression()) #6, !dbg !1087
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), metadata !1082, metadata !DIExpression()) #6, !dbg !1087
  call void @llvm.dbg.value(metadata i1 true, metadata !1083, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1087
  %34 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0)) #7, !dbg !1089
  call void @llvm.dbg.value(metadata i8* %34, metadata !1084, metadata !DIExpression()) #6, !dbg !1087
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %55, !dbg !1090

36:                                               ; preds = %28
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !1092
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !1092
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !1092
  %37 = tail call i8* @malloc(i32 1024) #7, !dbg !1095
  %38 = icmp eq i8* %37, null, !dbg !1096
  br i1 %38, label %41, label %39, !dbg !1097

39:                                               ; preds = %36
  %40 = getelementptr inbounds i8, i8* %37, i32 1023, !dbg !1098
  store i8 0, i8* %40, align 1, !dbg !1099, !tbaa !798
  br label %41, !dbg !1100

41:                                               ; preds = %39, %36
  %42 = phi i8* [ %40, %39 ], [ null, %36 ], !dbg !1101
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1102
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1102
  %43 = tail call i8* @halide_string_to_string(i8* %37, i8* %42, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #7, !dbg !1104
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1105
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1105
  %44 = tail call i8* @halide_string_to_string(i8* %43, i8* %42, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0)) #7, !dbg !1107
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1108
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1108
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %42, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #7, !dbg !1110
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !1111
  br i1 %38, label %46, label %47, !dbg !1113

46:                                               ; preds = %41
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !1114
  br label %54, !dbg !1115

47:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !1116
  %48 = ptrtoint i8* %45 to i32, !dbg !1118
  %49 = ptrtoint i8* %37 to i32, !dbg !1118
  %50 = sub i32 1, %49, !dbg !1118
  %51 = add i32 %50, %48, !dbg !1119
  %52 = sext i32 %51 to i64, !dbg !1120
  %53 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %37, i64 %52) #7, !dbg !1121
  tail call void @halide_error(i8* %0, i8* nonnull %37) #7, !dbg !1122
  br label %54

54:                                               ; preds = %47, %46
  tail call void @free(i8* %37) #7, !dbg !1123
  br label %57, !dbg !1124

55:                                               ; preds = %28
  %56 = bitcast i8* %34 to i32 (%struct.mxArray*)*, !dbg !1125
  call void @llvm.dbg.value(metadata i32 (%struct.mxArray*)* %56, metadata !1084, metadata !DIExpression()) #6, !dbg !1087
  br label %57, !dbg !1126

57:                                               ; preds = %54, %55
  %58 = phi i32 (%struct.mxArray*)* [ null, %54 ], [ %56, %55 ], !dbg !1087
  store i32 (%struct.mxArray*)* %58, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex12mxGetClassIDE, align 4, !dbg !1127, !tbaa !898
  call void @llvm.dbg.value(metadata i8* %0, metadata !1128, metadata !DIExpression()) #6, !dbg !1138
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), metadata !1133, metadata !DIExpression()) #6, !dbg !1138
  call void @llvm.dbg.value(metadata i1 true, metadata !1134, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1138
  %59 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0)) #7, !dbg !1140
  call void @llvm.dbg.value(metadata i8* %59, metadata !1135, metadata !DIExpression()) #6, !dbg !1138
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %80, !dbg !1141

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !1143
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !1143
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !1143
  %62 = tail call i8* @malloc(i32 1024) #7, !dbg !1146
  %63 = icmp eq i8* %62, null, !dbg !1147
  br i1 %63, label %66, label %64, !dbg !1148

64:                                               ; preds = %61
  %65 = getelementptr inbounds i8, i8* %62, i32 1023, !dbg !1149
  store i8 0, i8* %65, align 1, !dbg !1150, !tbaa !798
  br label %66, !dbg !1151

66:                                               ; preds = %64, %61
  %67 = phi i8* [ %65, %64 ], [ null, %61 ], !dbg !1152
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1153
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1153
  %68 = tail call i8* @halide_string_to_string(i8* %62, i8* %67, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #7, !dbg !1155
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1156
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1156
  %69 = tail call i8* @halide_string_to_string(i8* %68, i8* %67, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0)) #7, !dbg !1158
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1159
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1159
  %70 = tail call i8* @halide_string_to_string(i8* %69, i8* %67, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #7, !dbg !1161
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !1162
  br i1 %63, label %71, label %72, !dbg !1164

71:                                               ; preds = %66
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !1165
  br label %79, !dbg !1166

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !1167
  %73 = ptrtoint i8* %70 to i32, !dbg !1169
  %74 = ptrtoint i8* %62 to i32, !dbg !1169
  %75 = sub i32 1, %74, !dbg !1169
  %76 = add i32 %75, %73, !dbg !1170
  %77 = sext i32 %76 to i64, !dbg !1171
  %78 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %62, i64 %77) #7, !dbg !1172
  tail call void @halide_error(i8* %0, i8* nonnull %62) #7, !dbg !1173
  br label %79

79:                                               ; preds = %72, %71
  tail call void @free(i8* %62) #7, !dbg !1174
  br label %82, !dbg !1175

80:                                               ; preds = %57
  %81 = bitcast i8* %59 to i8* (%struct.mxArray*)*, !dbg !1176
  call void @llvm.dbg.value(metadata i8* (%struct.mxArray*)* %81, metadata !1135, metadata !DIExpression()) #6, !dbg !1138
  br label %82, !dbg !1177

82:                                               ; preds = %79, %80
  %83 = phi i8* (%struct.mxArray*)* [ null, %79 ], [ %81, %80 ], !dbg !1138
  store i8* (%struct.mxArray*)* %83, i8* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex9mxGetDataE, align 4, !dbg !1178, !tbaa !898
  call void @llvm.dbg.value(metadata i8* %0, metadata !1179, metadata !DIExpression()) #6, !dbg !1189
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), metadata !1184, metadata !DIExpression()) #6, !dbg !1189
  call void @llvm.dbg.value(metadata i1 true, metadata !1185, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1189
  %84 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0)) #7, !dbg !1191
  call void @llvm.dbg.value(metadata i8* %84, metadata !1186, metadata !DIExpression()) #6, !dbg !1189
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %105, !dbg !1192

86:                                               ; preds = %82
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !1194
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !1194
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !1194
  %87 = tail call i8* @malloc(i32 1024) #7, !dbg !1197
  %88 = icmp eq i8* %87, null, !dbg !1198
  br i1 %88, label %91, label %89, !dbg !1199

89:                                               ; preds = %86
  %90 = getelementptr inbounds i8, i8* %87, i32 1023, !dbg !1200
  store i8 0, i8* %90, align 1, !dbg !1201, !tbaa !798
  br label %91, !dbg !1202

91:                                               ; preds = %89, %86
  %92 = phi i8* [ %90, %89 ], [ null, %86 ], !dbg !1203
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1204
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1204
  %93 = tail call i8* @halide_string_to_string(i8* %87, i8* %92, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #7, !dbg !1206
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1207
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1207
  %94 = tail call i8* @halide_string_to_string(i8* %93, i8* %92, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0)) #7, !dbg !1209
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1210
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1210
  %95 = tail call i8* @halide_string_to_string(i8* %94, i8* %92, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #7, !dbg !1212
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !1213
  br i1 %88, label %96, label %97, !dbg !1215

96:                                               ; preds = %91
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !1216
  br label %104, !dbg !1217

97:                                               ; preds = %91
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !1218
  %98 = ptrtoint i8* %95 to i32, !dbg !1220
  %99 = ptrtoint i8* %87 to i32, !dbg !1220
  %100 = sub i32 1, %99, !dbg !1220
  %101 = add i32 %100, %98, !dbg !1221
  %102 = sext i32 %101 to i64, !dbg !1222
  %103 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %87, i64 %102) #7, !dbg !1223
  tail call void @halide_error(i8* %0, i8* nonnull %87) #7, !dbg !1224
  br label %104

104:                                              ; preds = %97, %96
  tail call void @free(i8* %87) #7, !dbg !1225
  br label %107, !dbg !1226

105:                                              ; preds = %82
  %106 = bitcast i8* %84 to i1 (%struct.mxArray*)*, !dbg !1227
  call void @llvm.dbg.value(metadata i1 (%struct.mxArray*)* %106, metadata !1186, metadata !DIExpression()) #6, !dbg !1189
  br label %107, !dbg !1228

107:                                              ; preds = %104, %105
  %108 = phi i1 (%struct.mxArray*)* [ null, %104 ], [ %106, %105 ], !dbg !1189
  store i1 (%struct.mxArray*)* %108, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsNumericE, align 4, !dbg !1229, !tbaa !898
  call void @llvm.dbg.value(metadata i8* %0, metadata !1179, metadata !DIExpression()) #6, !dbg !1230
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), metadata !1184, metadata !DIExpression()) #6, !dbg !1230
  call void @llvm.dbg.value(metadata i1 true, metadata !1185, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1230
  %109 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0)) #7, !dbg !1232
  call void @llvm.dbg.value(metadata i8* %109, metadata !1186, metadata !DIExpression()) #6, !dbg !1230
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %130, !dbg !1233

111:                                              ; preds = %107
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !1234
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !1234
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !1234
  %112 = tail call i8* @malloc(i32 1024) #7, !dbg !1236
  %113 = icmp eq i8* %112, null, !dbg !1237
  br i1 %113, label %116, label %114, !dbg !1238

114:                                              ; preds = %111
  %115 = getelementptr inbounds i8, i8* %112, i32 1023, !dbg !1239
  store i8 0, i8* %115, align 1, !dbg !1240, !tbaa !798
  br label %116, !dbg !1241

116:                                              ; preds = %114, %111
  %117 = phi i8* [ %115, %114 ], [ null, %111 ], !dbg !1242
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1243
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1243
  %118 = tail call i8* @halide_string_to_string(i8* %112, i8* %117, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #7, !dbg !1245
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1246
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1246
  %119 = tail call i8* @halide_string_to_string(i8* %118, i8* %117, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0)) #7, !dbg !1248
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1249
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1249
  %120 = tail call i8* @halide_string_to_string(i8* %119, i8* %117, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #7, !dbg !1251
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !1252
  br i1 %113, label %121, label %122, !dbg !1254

121:                                              ; preds = %116
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !1255
  br label %129, !dbg !1256

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !1257
  %123 = ptrtoint i8* %120 to i32, !dbg !1259
  %124 = ptrtoint i8* %112 to i32, !dbg !1259
  %125 = sub i32 1, %124, !dbg !1259
  %126 = add i32 %125, %123, !dbg !1260
  %127 = sext i32 %126 to i64, !dbg !1261
  %128 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %112, i64 %127) #7, !dbg !1262
  tail call void @halide_error(i8* %0, i8* nonnull %112) #7, !dbg !1263
  br label %129

129:                                              ; preds = %122, %121
  tail call void @free(i8* %112) #7, !dbg !1264
  br label %132, !dbg !1265

130:                                              ; preds = %107
  %131 = bitcast i8* %109 to i1 (%struct.mxArray*)*, !dbg !1266
  call void @llvm.dbg.value(metadata i1 (%struct.mxArray*)* %131, metadata !1186, metadata !DIExpression()) #6, !dbg !1230
  br label %132, !dbg !1267

132:                                              ; preds = %129, %130
  %133 = phi i1 (%struct.mxArray*)* [ null, %129 ], [ %131, %130 ], !dbg !1230
  store i1 (%struct.mxArray*)* %133, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsLogicalE, align 4, !dbg !1268, !tbaa !898
  call void @llvm.dbg.value(metadata i8* %0, metadata !1179, metadata !DIExpression()) #6, !dbg !1269
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), metadata !1184, metadata !DIExpression()) #6, !dbg !1269
  call void @llvm.dbg.value(metadata i1 true, metadata !1185, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1269
  %134 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0)) #7, !dbg !1271
  call void @llvm.dbg.value(metadata i8* %134, metadata !1186, metadata !DIExpression()) #6, !dbg !1269
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %155, !dbg !1272

136:                                              ; preds = %132
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !1273
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !1273
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !1273
  %137 = tail call i8* @malloc(i32 1024) #7, !dbg !1275
  %138 = icmp eq i8* %137, null, !dbg !1276
  br i1 %138, label %141, label %139, !dbg !1277

139:                                              ; preds = %136
  %140 = getelementptr inbounds i8, i8* %137, i32 1023, !dbg !1278
  store i8 0, i8* %140, align 1, !dbg !1279, !tbaa !798
  br label %141, !dbg !1280

141:                                              ; preds = %139, %136
  %142 = phi i8* [ %140, %139 ], [ null, %136 ], !dbg !1281
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1282
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1282
  %143 = tail call i8* @halide_string_to_string(i8* %137, i8* %142, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #7, !dbg !1284
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1285
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1285
  %144 = tail call i8* @halide_string_to_string(i8* %143, i8* %142, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0)) #7, !dbg !1287
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1288
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1288
  %145 = tail call i8* @halide_string_to_string(i8* %144, i8* %142, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #7, !dbg !1290
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !1291
  br i1 %138, label %146, label %147, !dbg !1293

146:                                              ; preds = %141
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !1294
  br label %154, !dbg !1295

147:                                              ; preds = %141
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !1296
  %148 = ptrtoint i8* %145 to i32, !dbg !1298
  %149 = ptrtoint i8* %137 to i32, !dbg !1298
  %150 = sub i32 1, %149, !dbg !1298
  %151 = add i32 %150, %148, !dbg !1299
  %152 = sext i32 %151 to i64, !dbg !1300
  %153 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %137, i64 %152) #7, !dbg !1301
  tail call void @halide_error(i8* %0, i8* nonnull %137) #7, !dbg !1302
  br label %154

154:                                              ; preds = %147, %146
  tail call void @free(i8* %137) #7, !dbg !1303
  br label %157, !dbg !1304

155:                                              ; preds = %132
  %156 = bitcast i8* %134 to i1 (%struct.mxArray*)*, !dbg !1305
  call void @llvm.dbg.value(metadata i1 (%struct.mxArray*)* %156, metadata !1186, metadata !DIExpression()) #6, !dbg !1269
  br label %157, !dbg !1306

157:                                              ; preds = %154, %155
  %158 = phi i1 (%struct.mxArray*)* [ null, %154 ], [ %156, %155 ], !dbg !1269
  store i1 (%struct.mxArray*)* %158, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsComplexE, align 4, !dbg !1307, !tbaa !898
  call void @llvm.dbg.value(metadata i8* %0, metadata !1308, metadata !DIExpression()) #6, !dbg !1318
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), metadata !1313, metadata !DIExpression()) #6, !dbg !1318
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1318
  %159 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0)) #7, !dbg !1320
  call void @llvm.dbg.value(metadata i8* %159, metadata !1315, metadata !DIExpression()) #6, !dbg !1318
  %160 = icmp eq i8* %159, null
  br i1 %160, label %161, label %180, !dbg !1321

161:                                              ; preds = %157
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !1323
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !1323
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !1323
  %162 = tail call i8* @malloc(i32 1024) #7, !dbg !1326
  %163 = icmp eq i8* %162, null, !dbg !1327
  br i1 %163, label %166, label %164, !dbg !1328

164:                                              ; preds = %161
  %165 = getelementptr inbounds i8, i8* %162, i32 1023, !dbg !1329
  store i8 0, i8* %165, align 1, !dbg !1330, !tbaa !798
  br label %166, !dbg !1331

166:                                              ; preds = %164, %161
  %167 = phi i8* [ %165, %164 ], [ null, %161 ], !dbg !1332
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1333
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1333
  %168 = tail call i8* @halide_string_to_string(i8* %162, i8* %167, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #7, !dbg !1335
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1336
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1336
  %169 = tail call i8* @halide_string_to_string(i8* %168, i8* %167, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0)) #7, !dbg !1338
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1339
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1339
  %170 = tail call i8* @halide_string_to_string(i8* %169, i8* %167, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #7, !dbg !1341
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !1342
  br i1 %163, label %171, label %172, !dbg !1344

171:                                              ; preds = %166
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !1345
  br label %179, !dbg !1346

172:                                              ; preds = %166
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !1347
  %173 = ptrtoint i8* %170 to i32, !dbg !1349
  %174 = ptrtoint i8* %162 to i32, !dbg !1349
  %175 = sub i32 1, %174, !dbg !1349
  %176 = add i32 %175, %173, !dbg !1350
  %177 = sext i32 %176 to i64, !dbg !1351
  %178 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %162, i64 %177) #7, !dbg !1352
  tail call void @halide_error(i8* %0, i8* nonnull %162) #7, !dbg !1353
  br label %179

179:                                              ; preds = %172, %171
  tail call void @free(i8* %162) #7, !dbg !1354
  br label %182, !dbg !1355

180:                                              ; preds = %157
  %181 = bitcast i8* %159 to double (%struct.mxArray*)*, !dbg !1356
  call void @llvm.dbg.value(metadata double (%struct.mxArray*)* %181, metadata !1315, metadata !DIExpression()) #6, !dbg !1318
  br label %182, !dbg !1357

182:                                              ; preds = %179, %180
  %183 = phi double (%struct.mxArray*)* [ null, %179 ], [ %181, %180 ], !dbg !1318
  store double (%struct.mxArray*)* %183, double (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxGetScalarE, align 4, !dbg !1358, !tbaa !898
  call void @llvm.dbg.value(metadata i8* %0, metadata !1021, metadata !DIExpression()) #6, !dbg !1359
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), metadata !1026, metadata !DIExpression()) #6, !dbg !1359
  call void @llvm.dbg.value(metadata i1 true, metadata !1027, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1359
  %184 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0)) #7, !dbg !1361
  call void @llvm.dbg.value(metadata i8* %184, metadata !1028, metadata !DIExpression()) #6, !dbg !1359
  %185 = icmp eq i8* %184, null
  br i1 %185, label %186, label %205, !dbg !1362

186:                                              ; preds = %182
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !1364
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !1364
  %187 = tail call i8* @malloc(i32 1024) #7, !dbg !1367
  %188 = icmp eq i8* %187, null, !dbg !1368
  br i1 %188, label %191, label %189, !dbg !1369

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, i8* %187, i32 1023, !dbg !1370
  store i8 0, i8* %190, align 1, !dbg !1371, !tbaa !798
  br label %191, !dbg !1372

191:                                              ; preds = %189, %186
  %192 = phi i8* [ %190, %189 ], [ null, %186 ], !dbg !1373
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1374
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1374
  %193 = tail call i8* @halide_string_to_string(i8* %187, i8* %192, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #7, !dbg !1376
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1377
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1377
  %194 = tail call i8* @halide_string_to_string(i8* %193, i8* %192, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0)) #7, !dbg !1379
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1380
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1380
  %195 = tail call i8* @halide_string_to_string(i8* %194, i8* %192, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #7, !dbg !1382
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !1383
  br i1 %188, label %196, label %197, !dbg !1385

196:                                              ; preds = %191
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !1386
  br label %204, !dbg !1387

197:                                              ; preds = %191
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !1388
  %198 = ptrtoint i8* %195 to i32, !dbg !1390
  %199 = ptrtoint i8* %187 to i32, !dbg !1390
  %200 = sub i32 1, %199, !dbg !1390
  %201 = add i32 %200, %198, !dbg !1391
  %202 = sext i32 %201 to i64, !dbg !1392
  %203 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %187, i64 %202) #7, !dbg !1393
  tail call void @halide_error(i8* %0, i8* nonnull %187) #7, !dbg !1394
  br label %204

204:                                              ; preds = %197, %196
  tail call void @free(i8* %187) #7, !dbg !1395
  br label %207, !dbg !1396

205:                                              ; preds = %182
  %206 = bitcast i8* %184 to i32 (%struct.mxArray*)*, !dbg !1397
  call void @llvm.dbg.value(metadata i32 (%struct.mxArray*)* %206, metadata !1028, metadata !DIExpression()) #6, !dbg !1359
  br label %207, !dbg !1398

207:                                              ; preds = %204, %205
  %208 = phi i32 (%struct.mxArray*)* [ null, %204 ], [ %206, %205 ], !dbg !1359
  store i32 (%struct.mxArray*)* %208, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex16mxGetElementSizeE, align 4, !dbg !1399, !tbaa !898
  call void @llvm.dbg.value(metadata i8* %0, metadata !1400, metadata !DIExpression()) #6, !dbg !1410
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), metadata !1405, metadata !DIExpression()) #6, !dbg !1410
  call void @llvm.dbg.value(metadata i1 false, metadata !1406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1410
  %209 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0)) #7, !dbg !1412
  call void @llvm.dbg.value(metadata i8* %209, metadata !1407, metadata !DIExpression()) #6, !dbg !1410
  call void @llvm.dbg.value(metadata i8* %209, metadata !1407, metadata !DIExpression()) #6, !dbg !1410
  store i8* %209, i8** bitcast (%struct.mxArray* (i32, i32, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_730E to i8**), align 4, !dbg !1413, !tbaa !898
  call void @llvm.dbg.value(metadata i8* %0, metadata !1414, metadata !DIExpression()) #6, !dbg !1424
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0), metadata !1419, metadata !DIExpression()) #6, !dbg !1424
  call void @llvm.dbg.value(metadata i1 false, metadata !1420, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1424
  %210 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0)) #7, !dbg !1426
  call void @llvm.dbg.value(metadata i8* %210, metadata !1421, metadata !DIExpression()) #6, !dbg !1424
  call void @llvm.dbg.value(metadata i8* %210, metadata !1421, metadata !DIExpression()) #6, !dbg !1424
  store i8* %210, i8** bitcast (%struct.mxArray* (i32, i32, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_700E to i8**), align 4, !dbg !1427, !tbaa !898
  %211 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 4, !dbg !1428, !tbaa !898
  %212 = icmp eq void (i8*)* %211, null, !dbg !1428
  br i1 %212, label %216, label %213, !dbg !1431

213:                                              ; preds = %207
  %214 = tail call void (i8*, i8*)* @halide_set_custom_print(void (i8*, i8*)* nonnull @halide_matlab_print) #7, !dbg !1432
  %215 = tail call void (i8*, i8*)* @halide_set_error_handler(void (i8*, i8*)* nonnull @halide_matlab_error) #7, !dbg !1433
  br label %216, !dbg !1434

216:                                              ; preds = %207, %1, %213
  %217 = phi i32 [ 0, %213 ], [ 0, %1 ], [ -20, %207 ], !dbg !932
  ret i32 %217, !dbg !1435
}

declare !dbg !1436 extern_weak dso_local void (i8*, i8*)* @halide_set_custom_print(void (i8*, i8*)*) local_unnamed_addr #5

declare !dbg !1440 extern_weak dso_local void (i8*, i8*)* @halide_set_error_handler(void (i8*, i8*)*) local_unnamed_addr #5

; Function Attrs: nounwind
define weak dso_local i32 @halide_matlab_array_to_halide_buffer_t(i8* %0, %struct.mxArray* %1, %struct.halide_filter_argument_t* %2, %struct.halide_buffer_t* %3) local_unnamed_addr #4 !dbg !1441 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1445, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata %struct.mxArray* %1, metadata !1446, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata %struct.halide_filter_argument_t* %2, metadata !1447, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1448, metadata !DIExpression()), !dbg !1459
  %5 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsComplexE, align 4, !dbg !1460, !tbaa !898
  %6 = tail call zeroext i1 %5(%struct.mxArray* %1) #7, !dbg !1460
  br i1 %6, label %7, label %34, !dbg !1462

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !1463
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !1463
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !1463
  %8 = tail call i8* @malloc(i32 1024) #7, !dbg !1466
  %9 = icmp eq i8* %8, null, !dbg !1467
  br i1 %9, label %12, label %10, !dbg !1468

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i32 1023, !dbg !1469
  store i8 0, i8* %11, align 1, !dbg !1470, !tbaa !798
  br label %12, !dbg !1471

12:                                               ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !1472
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1473
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1473
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i32 0, i32 0)) #7, !dbg !1475
  %15 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0, !dbg !1476
  %16 = load i8*, i8** %15, align 4, !dbg !1476, !tbaa !729
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1477
  call void @llvm.dbg.value(metadata i8* %16, metadata !978, metadata !DIExpression()) #6, !dbg !1477
  %17 = icmp eq i8* %16, null, !dbg !1479
  br i1 %17, label %18, label %20, !dbg !1480

18:                                               ; preds = %12
  %19 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !1481
  br label %22, !dbg !1483

20:                                               ; preds = %12
  %21 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull %16) #7, !dbg !1484
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i8* [ %21, %20 ], [ %19, %18 ], !dbg !1485
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1486
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1486
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %13, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #7, !dbg !1488
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !1489
  br i1 %9, label %25, label %26, !dbg !1491

25:                                               ; preds = %22
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !1492
  br label %33, !dbg !1493

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !1494
  %27 = ptrtoint i8* %24 to i32, !dbg !1496
  %28 = ptrtoint i8* %8 to i32, !dbg !1496
  %29 = add i32 %27, 1, !dbg !1496
  %30 = sub i32 %29, %28, !dbg !1497
  %31 = sext i32 %30 to i64, !dbg !1498
  %32 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %31) #7, !dbg !1499
  tail call void @halide_error(i8* %0, i8* nonnull %8) #7, !dbg !1500
  br label %33

33:                                               ; preds = %26, %25
  tail call void @free(i8* %8) #7, !dbg !1501
  br label %221, !dbg !1502

34:                                               ; preds = %4
  call void @llvm.dbg.value(metadata %struct.mxArray* %1, metadata !1503, metadata !DIExpression()) #6, !dbg !1506
  %35 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E, align 4, !dbg !1508, !tbaa !898
  %36 = icmp eq i32 (%struct.mxArray*)* %35, null, !dbg !1508
  br i1 %36, label %39, label %37, !dbg !1510

37:                                               ; preds = %34
  %38 = tail call i32 %35(%struct.mxArray* %1) #7, !dbg !1511
  br label %42, !dbg !1513

39:                                               ; preds = %34
  %40 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E, align 4, !dbg !1514, !tbaa !898
  %41 = tail call i32 %40(%struct.mxArray* %1) #7, !dbg !1514
  br label %42, !dbg !1516

42:                                               ; preds = %37, %39
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ], !dbg !1517
  call void @llvm.dbg.value(metadata i32 %43, metadata !1449, metadata !DIExpression()), !dbg !1459
  %44 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 2, !dbg !1518
  %45 = load i32, i32* %44, align 4, !dbg !1518, !tbaa !690
  call void @llvm.dbg.value(metadata i32 %45, metadata !1450, metadata !DIExpression()), !dbg !1459
  %46 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 3, !dbg !1519
  %47 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %46, i32 0, i32 0, !dbg !1520
  %48 = load i8, i8* %47, align 4, !dbg !1520, !tbaa !708
  %49 = zext i8 %48 to i32, !dbg !1521
  %50 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 3, i32 1, !dbg !1522
  %51 = load i8, i8* %50, align 1, !dbg !1522, !tbaa !711
  %52 = zext i8 %51 to i32, !dbg !1523
  %53 = tail call i32 @_ZN6Halide7Runtime3mex12get_class_idEii(i32 %49, i32 %52) #8, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %53, metadata !1451, metadata !DIExpression()), !dbg !1459
  %54 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex12mxGetClassIDE, align 4, !dbg !1525, !tbaa !898
  %55 = tail call i32 %54(%struct.mxArray* %1) #7, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %55, metadata !1452, metadata !DIExpression()), !dbg !1459
  %56 = icmp eq i32 %55, %53, !dbg !1526
  br i1 %56, label %57, label %60, !dbg !1528

57:                                               ; preds = %42
  %58 = icmp slt i32 %43, 0, !dbg !1529
  %59 = select i1 %58, i32 %43, i32 0, !dbg !1529
  br label %105, !dbg !1529

60:                                               ; preds = %42
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !1530
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !1530
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !1530
  %61 = tail call i8* @malloc(i32 1024) #7, !dbg !1533
  %62 = icmp eq i8* %61, null, !dbg !1534
  br i1 %62, label %65, label %63, !dbg !1535

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, i8* %61, i32 1023, !dbg !1536
  store i8 0, i8* %64, align 1, !dbg !1537, !tbaa !798
  br label %65, !dbg !1538

65:                                               ; preds = %60, %63
  %66 = phi i8* [ %64, %63 ], [ null, %60 ], !dbg !1539
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1540
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1540
  %67 = tail call i8* @halide_string_to_string(i8* %61, i8* %66, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0)) #7, !dbg !1542
  %68 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %53) #8, !dbg !1543
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1544
  call void @llvm.dbg.value(metadata i8* %68, metadata !978, metadata !DIExpression()) #6, !dbg !1544
  %69 = icmp eq i8* %68, null, !dbg !1546
  br i1 %69, label %70, label %72, !dbg !1547

70:                                               ; preds = %65
  %71 = tail call i8* @halide_string_to_string(i8* %67, i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !1548
  br label %74, !dbg !1549

72:                                               ; preds = %65
  %73 = tail call i8* @halide_string_to_string(i8* %67, i8* %66, i8* nonnull %68) #7, !dbg !1550
  br label %74

74:                                               ; preds = %70, %72
  %75 = phi i8* [ %73, %72 ], [ %71, %70 ], !dbg !1551
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1552
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1552
  %76 = tail call i8* @halide_string_to_string(i8* %75, i8* %66, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0)) #7, !dbg !1554
  %77 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0, !dbg !1555
  %78 = load i8*, i8** %77, align 4, !dbg !1555, !tbaa !729
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1556
  call void @llvm.dbg.value(metadata i8* %78, metadata !978, metadata !DIExpression()) #6, !dbg !1556
  %79 = icmp eq i8* %78, null, !dbg !1558
  br i1 %79, label %80, label %82, !dbg !1559

80:                                               ; preds = %74
  %81 = tail call i8* @halide_string_to_string(i8* %76, i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !1560
  br label %84, !dbg !1561

82:                                               ; preds = %74
  %83 = tail call i8* @halide_string_to_string(i8* %76, i8* %66, i8* nonnull %78) #7, !dbg !1562
  br label %84

84:                                               ; preds = %80, %82
  %85 = phi i8* [ %83, %82 ], [ %81, %80 ], !dbg !1563
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1564
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1564
  %86 = tail call i8* @halide_string_to_string(i8* %85, i8* %66, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0)) #7, !dbg !1566
  %87 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %55) #8, !dbg !1567
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1568
  call void @llvm.dbg.value(metadata i8* %87, metadata !978, metadata !DIExpression()) #6, !dbg !1568
  %88 = icmp eq i8* %87, null, !dbg !1570
  br i1 %88, label %89, label %91, !dbg !1571

89:                                               ; preds = %84
  %90 = tail call i8* @halide_string_to_string(i8* %86, i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !1572
  br label %93, !dbg !1573

91:                                               ; preds = %84
  %92 = tail call i8* @halide_string_to_string(i8* %86, i8* %66, i8* nonnull %87) #7, !dbg !1574
  br label %93

93:                                               ; preds = %89, %91
  %94 = phi i8* [ %92, %91 ], [ %90, %89 ], !dbg !1575
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1576
  %95 = tail call i8* @halide_string_to_string(i8* %94, i8* %66, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #7, !dbg !1578
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !1579
  br i1 %62, label %96, label %97, !dbg !1581

96:                                               ; preds = %93
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !1582
  br label %104, !dbg !1583

97:                                               ; preds = %93
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !1584
  %98 = ptrtoint i8* %95 to i32, !dbg !1586
  %99 = ptrtoint i8* %61 to i32, !dbg !1586
  %100 = add i32 %98, 1, !dbg !1586
  %101 = sub i32 %100, %99, !dbg !1587
  %102 = sext i32 %101 to i64, !dbg !1588
  %103 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %61, i64 %102) #7, !dbg !1589
  tail call void @halide_error(i8* %0, i8* nonnull %61) #7, !dbg !1590
  br label %104

104:                                              ; preds = %96, %97
  call void @free(i8* %61) #7, !dbg !1591
  br label %221, !dbg !1592

105:                                              ; preds = %57, %117
  %106 = phi i32 [ %109, %117 ], [ %43, %57 ], !dbg !1459
  call void @llvm.dbg.value(metadata i32 %106, metadata !1449, metadata !DIExpression()), !dbg !1459
  %107 = icmp sgt i32 %106, 0, !dbg !1593
  br i1 %107, label %108, label %122, !dbg !1594

108:                                              ; preds = %105
  %109 = add nsw i32 %106, -1, !dbg !1595
  call void @llvm.dbg.value(metadata %struct.mxArray* %1, metadata !1596, metadata !DIExpression()) #6, !dbg !1602
  call void @llvm.dbg.value(metadata i32 %109, metadata !1601, metadata !DIExpression()) #6, !dbg !1602
  %110 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E, align 4, !dbg !1604, !tbaa !898
  %111 = icmp eq i32* (%struct.mxArray*)* %110, null, !dbg !1604
  br i1 %111, label %114, label %112, !dbg !1606

112:                                              ; preds = %108
  %113 = tail call i32* %110(%struct.mxArray* %1) #7, !dbg !1607
  br label %117, !dbg !1609

114:                                              ; preds = %108
  %115 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E, align 4, !dbg !1610, !tbaa !898
  %116 = tail call i32* %115(%struct.mxArray* %1) #7, !dbg !1610
  br label %117, !dbg !1612

117:                                              ; preds = %112, %114
  %118 = phi i32* [ %113, %112 ], [ %116, %114 ]
  %119 = getelementptr inbounds i32, i32* %118, i32 %109, !dbg !1613
  %120 = load i32, i32* %119, align 4, !dbg !1613, !tbaa !1614
  %121 = icmp eq i32 %120, 1, !dbg !1615
  br i1 %121, label %105, label %122, !dbg !1529, !llvm.loop !1616

122:                                              ; preds = %105, %117
  %123 = phi i32 [ %59, %105 ], [ %106, %117 ], !dbg !1459
  %124 = icmp sgt i32 %123, %45, !dbg !1618
  br i1 %124, label %125, label %158, !dbg !1620

125:                                              ; preds = %122
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !1621
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !1621
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !1621
  %126 = tail call i8* @malloc(i32 1024) #7, !dbg !1624
  %127 = icmp eq i8* %126, null, !dbg !1625
  br i1 %127, label %130, label %128, !dbg !1626

128:                                              ; preds = %125
  %129 = getelementptr inbounds i8, i8* %126, i32 1023, !dbg !1627
  store i8 0, i8* %129, align 1, !dbg !1628, !tbaa !798
  br label %130, !dbg !1629

130:                                              ; preds = %125, %128
  %131 = phi i8* [ %129, %128 ], [ null, %125 ], !dbg !1630
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1631
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1631
  %132 = tail call i8* @halide_string_to_string(i8* %126, i8* %131, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i32 0, i32 0)) #7, !dbg !1633
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1634, metadata !DIExpression()) #6, !dbg !1638
  call void @llvm.dbg.value(metadata i32 %45, metadata !1637, metadata !DIExpression()) #6, !dbg !1638
  %133 = sext i32 %45 to i64, !dbg !1640
  %134 = tail call i8* @halide_int64_to_string(i8* %132, i8* %131, i64 %133, i32 1) #7, !dbg !1641
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1642
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1642
  %135 = tail call i8* @halide_string_to_string(i8* %134, i8* %131, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0)) #7, !dbg !1644
  %136 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0, !dbg !1645
  %137 = load i8*, i8** %136, align 4, !dbg !1645, !tbaa !729
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1646
  call void @llvm.dbg.value(metadata i8* %137, metadata !978, metadata !DIExpression()) #6, !dbg !1646
  %138 = icmp eq i8* %137, null, !dbg !1648
  br i1 %138, label %139, label %141, !dbg !1649

139:                                              ; preds = %130
  %140 = tail call i8* @halide_string_to_string(i8* %135, i8* %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !1650
  br label %143, !dbg !1651

141:                                              ; preds = %130
  %142 = tail call i8* @halide_string_to_string(i8* %135, i8* %131, i8* nonnull %137) #7, !dbg !1652
  br label %143

143:                                              ; preds = %139, %141
  %144 = phi i8* [ %142, %141 ], [ %140, %139 ], !dbg !1653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1654
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1654
  %145 = tail call i8* @halide_string_to_string(i8* %144, i8* %131, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0)) #7, !dbg !1656
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1634, metadata !DIExpression()) #6, !dbg !1657
  call void @llvm.dbg.value(metadata i32 %123, metadata !1637, metadata !DIExpression()) #6, !dbg !1657
  %146 = sext i32 %123 to i64, !dbg !1659
  %147 = tail call i8* @halide_int64_to_string(i8* %145, i8* %131, i64 %146, i32 1) #7, !dbg !1660
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1661
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1661
  %148 = tail call i8* @halide_string_to_string(i8* %147, i8* %131, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #7, !dbg !1663
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !1664
  br i1 %127, label %149, label %150, !dbg !1666

149:                                              ; preds = %143
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !1667
  br label %157, !dbg !1668

150:                                              ; preds = %143
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !1669
  %151 = ptrtoint i8* %148 to i32, !dbg !1671
  %152 = ptrtoint i8* %126 to i32, !dbg !1671
  %153 = add i32 %151, 1, !dbg !1671
  %154 = sub i32 %153, %152, !dbg !1672
  %155 = sext i32 %154 to i64, !dbg !1673
  %156 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %126, i64 %155) #7, !dbg !1674
  tail call void @halide_error(i8* %0, i8* nonnull %126) #7, !dbg !1675
  br label %157

157:                                              ; preds = %149, %150
  call void @free(i8* %126) #7, !dbg !1676
  br label %221, !dbg !1677

158:                                              ; preds = %122
  %159 = load i8* (%struct.mxArray*)*, i8* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex9mxGetDataE, align 4, !dbg !1678, !tbaa !898
  %160 = tail call i8* %159(%struct.mxArray* %1) #7, !dbg !1678
  %161 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 2, !dbg !1679
  store i8* %160, i8** %161, align 4, !dbg !1680, !tbaa !1681
  %162 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 0, !dbg !1684
  %163 = bitcast %struct.halide_type_t* %46 to i32*, !dbg !1684
  %164 = bitcast i8* %162 to i32*, !dbg !1684
  %165 = load i32, i32* %163, align 4, !dbg !1684
  store i32 %165, i32* %164, align 8, !dbg !1684
  %166 = load i32, i32* %44, align 4, !dbg !1685, !tbaa !690
  %167 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5, !dbg !1686
  store i32 %166, i32* %167, align 4, !dbg !1687, !tbaa !1688
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1689, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i1 true, metadata !1692, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1693
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1695, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 1, metadata !1698, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i1 true, metadata !1699, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1700
  %168 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 3, !dbg !1702
  %169 = load i64, i64* %168, align 8, !dbg !1705, !tbaa !1706
  %170 = or i64 %169, 1, !dbg !1705
  store i64 %170, i64* %168, align 8, !dbg !1705, !tbaa !1706
  call void @llvm.dbg.value(metadata i32 0, metadata !1453, metadata !DIExpression()), !dbg !1707
  %171 = icmp sgt i32 %123, 0, !dbg !1708
  %172 = icmp sgt i32 %45, 0, !dbg !1710
  %173 = and i1 %171, %172, !dbg !1710
  br i1 %173, label %174, label %176, !dbg !1711

174:                                              ; preds = %158
  %175 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  br label %180, !dbg !1711

176:                                              ; preds = %189, %158
  call void @llvm.dbg.value(metadata i32 2, metadata !1455, metadata !DIExpression()), !dbg !1712
  %177 = icmp sgt i32 %45, 2, !dbg !1713
  %178 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %179 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %178, align 8, !tbaa !1715
  br i1 %177, label %202, label %199, !dbg !1716

180:                                              ; preds = %174, %189
  %181 = phi i32 [ 0, %174 ], [ %195, %189 ]
  call void @llvm.dbg.value(metadata i32 %181, metadata !1453, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata %struct.mxArray* %1, metadata !1596, metadata !DIExpression()) #6, !dbg !1717
  call void @llvm.dbg.value(metadata i32 %181, metadata !1601, metadata !DIExpression()) #6, !dbg !1717
  %182 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E, align 4, !dbg !1720, !tbaa !898
  %183 = icmp eq i32* (%struct.mxArray*)* %182, null, !dbg !1720
  br i1 %183, label %186, label %184, !dbg !1721

184:                                              ; preds = %180
  %185 = tail call i32* %182(%struct.mxArray* %1) #7, !dbg !1722
  br label %189, !dbg !1723

186:                                              ; preds = %180
  %187 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E, align 4, !dbg !1724, !tbaa !898
  %188 = tail call i32* %187(%struct.mxArray* %1) #7, !dbg !1724
  br label %189, !dbg !1725

189:                                              ; preds = %184, %186
  %190 = phi i32* [ %185, %184 ], [ %188, %186 ]
  %191 = getelementptr inbounds i32, i32* %190, i32 %181, !dbg !1726
  %192 = load i32, i32* %191, align 4, !dbg !1726, !tbaa !1614
  %193 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %175, align 8, !dbg !1727, !tbaa !1715
  %194 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %193, i32 %181, i32 1, !dbg !1728
  store i32 %192, i32* %194, align 4, !dbg !1729, !tbaa !1730
  %195 = add nuw nsw i32 %181, 1, !dbg !1732
  call void @llvm.dbg.value(metadata i32 %195, metadata !1453, metadata !DIExpression()), !dbg !1707
  %196 = icmp slt i32 %195, %123, !dbg !1708
  %197 = icmp slt i32 %195, %45, !dbg !1710
  %198 = and i1 %196, %197, !dbg !1710
  br i1 %198, label %180, label %176, !dbg !1711, !llvm.loop !1733

199:                                              ; preds = %208, %176
  %200 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %179, i32 0, i32 2, !dbg !1735
  store i32 1, i32* %200, align 4, !dbg !1736, !tbaa !1737
  call void @llvm.dbg.value(metadata i32 1, metadata !1457, metadata !DIExpression()), !dbg !1738
  %201 = icmp sgt i32 %45, 1, !dbg !1739
  br i1 %201, label %211, label %221, !dbg !1741

202:                                              ; preds = %176, %208
  %203 = phi i32 [ %209, %208 ], [ 2, %176 ]
  call void @llvm.dbg.value(metadata i32 %203, metadata !1455, metadata !DIExpression()), !dbg !1712
  %204 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %179, i32 %203, i32 1, !dbg !1742
  %205 = load i32, i32* %204, align 4, !dbg !1742, !tbaa !1730
  %206 = icmp eq i32 %205, 0, !dbg !1745
  br i1 %206, label %207, label %208, !dbg !1746

207:                                              ; preds = %202
  store i32 1, i32* %204, align 4, !dbg !1747, !tbaa !1730
  br label %208, !dbg !1749

208:                                              ; preds = %202, %207
  %209 = add nuw nsw i32 %203, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i32 %209, metadata !1455, metadata !DIExpression()), !dbg !1712
  %210 = icmp slt i32 %209, %45, !dbg !1713
  br i1 %210, label %202, label %199, !dbg !1716, !llvm.loop !1751

211:                                              ; preds = %199, %211
  %212 = phi i32 [ %217, %211 ], [ 1, %199 ], !dbg !1753
  %213 = phi i32 [ %219, %211 ], [ 1, %199 ]
  call void @llvm.dbg.value(metadata i32 %213, metadata !1457, metadata !DIExpression()), !dbg !1738
  %214 = add nsw i32 %213, -1, !dbg !1755
  %215 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %179, i32 %214, i32 1, !dbg !1756
  %216 = load i32, i32* %215, align 4, !dbg !1756, !tbaa !1730
  %217 = mul nsw i32 %212, %216, !dbg !1757
  %218 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %179, i32 %213, i32 2, !dbg !1758
  store i32 %217, i32* %218, align 4, !dbg !1759, !tbaa !1737
  %219 = add nuw nsw i32 %213, 1, !dbg !1760
  call void @llvm.dbg.value(metadata i32 %219, metadata !1457, metadata !DIExpression()), !dbg !1738
  %220 = icmp slt i32 %219, %45, !dbg !1739
  br i1 %220, label %211, label %221, !dbg !1741, !llvm.loop !1761

221:                                              ; preds = %211, %199, %104, %157, %33
  %222 = phi i32 [ -21, %33 ], [ -21, %104 ], [ -21, %157 ], [ 0, %199 ], [ 0, %211 ], !dbg !1459
  ret i32 %222, !dbg !1763
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_matlab_array_to_scalar(i8* %0, %struct.mxArray* %1, %struct.halide_filter_argument_t* %2, i8* %3) local_unnamed_addr #4 !dbg !1764 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1768, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata %struct.mxArray* %1, metadata !1769, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata %struct.halide_filter_argument_t* %2, metadata !1770, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %3, metadata !1771, metadata !DIExpression()), !dbg !1778
  %5 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsComplexE, align 4, !dbg !1779, !tbaa !898
  %6 = tail call zeroext i1 %5(%struct.mxArray* %1) #7, !dbg !1779
  br i1 %6, label %7, label %34, !dbg !1781

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !1782
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !1782
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !1782
  %8 = tail call i8* @malloc(i32 1024) #7, !dbg !1785
  %9 = icmp eq i8* %8, null, !dbg !1786
  br i1 %9, label %12, label %10, !dbg !1787

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i32 1023, !dbg !1788
  store i8 0, i8* %11, align 1, !dbg !1789, !tbaa !798
  br label %12, !dbg !1790

12:                                               ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !1791
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1792
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1792
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i32 0, i32 0)) #7, !dbg !1794
  %15 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0, !dbg !1795
  %16 = load i8*, i8** %15, align 4, !dbg !1795, !tbaa !729
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1796
  call void @llvm.dbg.value(metadata i8* %16, metadata !978, metadata !DIExpression()) #6, !dbg !1796
  %17 = icmp eq i8* %16, null, !dbg !1798
  br i1 %17, label %18, label %20, !dbg !1799

18:                                               ; preds = %12
  %19 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !1800
  br label %22, !dbg !1801

20:                                               ; preds = %12
  %21 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull %16) #7, !dbg !1802
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i8* [ %21, %20 ], [ %19, %18 ], !dbg !1803
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1804
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1804
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %13, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #7, !dbg !1806
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !1807
  br i1 %9, label %25, label %26, !dbg !1809

25:                                               ; preds = %22
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !1810
  br label %33, !dbg !1811

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !1812
  %27 = ptrtoint i8* %24 to i32, !dbg !1814
  %28 = ptrtoint i8* %8 to i32, !dbg !1814
  %29 = add i32 %27, 1, !dbg !1814
  %30 = sub i32 %29, %28, !dbg !1815
  %31 = sext i32 %30 to i64, !dbg !1816
  %32 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %31) #7, !dbg !1817
  tail call void @halide_error(i8* %0, i8* nonnull %8) #7, !dbg !1818
  br label %33

33:                                               ; preds = %26, %25
  tail call void @free(i8* %8) #7, !dbg !1819
  br label %230, !dbg !1820

34:                                               ; preds = %4
  call void @llvm.dbg.value(metadata %struct.mxArray* %1, metadata !1503, metadata !DIExpression()) #6, !dbg !1821
  %35 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E, align 4, !dbg !1823, !tbaa !898
  %36 = icmp eq i32 (%struct.mxArray*)* %35, null, !dbg !1823
  br i1 %36, label %39, label %37, !dbg !1824

37:                                               ; preds = %34
  %38 = tail call i32 %35(%struct.mxArray* %1) #7, !dbg !1825
  br label %42, !dbg !1826

39:                                               ; preds = %34
  %40 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E, align 4, !dbg !1827, !tbaa !898
  %41 = tail call i32 %40(%struct.mxArray* %1) #7, !dbg !1827
  br label %42, !dbg !1828

42:                                               ; preds = %37, %39
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ], !dbg !1829
  call void @llvm.dbg.value(metadata i32 %43, metadata !1772, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i32 0, metadata !1773, metadata !DIExpression()), !dbg !1830
  %44 = icmp sgt i32 %43, 0, !dbg !1831
  br i1 %44, label %47, label %89, !dbg !1833

45:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i32 %61, metadata !1773, metadata !DIExpression()), !dbg !1830
  %46 = icmp slt i32 %61, %43, !dbg !1831
  br i1 %46, label %47, label %89, !dbg !1833, !llvm.loop !1834

47:                                               ; preds = %42, %45
  %48 = phi i32 [ %61, %45 ], [ 0, %42 ]
  call void @llvm.dbg.value(metadata i32 %48, metadata !1773, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata %struct.mxArray* %1, metadata !1596, metadata !DIExpression()) #6, !dbg !1836
  call void @llvm.dbg.value(metadata i32 %48, metadata !1601, metadata !DIExpression()) #6, !dbg !1836
  %49 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E, align 4, !dbg !1840, !tbaa !898
  %50 = icmp eq i32* (%struct.mxArray*)* %49, null, !dbg !1840
  br i1 %50, label %53, label %51, !dbg !1841

51:                                               ; preds = %47
  %52 = tail call i32* %49(%struct.mxArray* %1) #7, !dbg !1842
  br label %56, !dbg !1843

53:                                               ; preds = %47
  %54 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E, align 4, !dbg !1844, !tbaa !898
  %55 = tail call i32* %54(%struct.mxArray* %1) #7, !dbg !1844
  br label %56, !dbg !1845

56:                                               ; preds = %51, %53
  %57 = phi i32* [ %52, %51 ], [ %55, %53 ]
  %58 = getelementptr inbounds i32, i32* %57, i32 %48, !dbg !1846
  %59 = load i32, i32* %58, align 4, !dbg !1846, !tbaa !1614
  %60 = icmp eq i32 %59, 1, !dbg !1847
  %61 = add nuw nsw i32 %48, 1, !dbg !1848
  call void @llvm.dbg.value(metadata i32 %61, metadata !1773, metadata !DIExpression()), !dbg !1830
  br i1 %60, label %45, label %62, !dbg !1849

62:                                               ; preds = %56
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !1850
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !1850
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !1850
  %63 = tail call i8* @malloc(i32 1024) #7, !dbg !1853
  %64 = icmp eq i8* %63, null, !dbg !1854
  br i1 %64, label %67, label %65, !dbg !1855

65:                                               ; preds = %62
  %66 = getelementptr inbounds i8, i8* %63, i32 1023, !dbg !1856
  store i8 0, i8* %66, align 1, !dbg !1857, !tbaa !798
  br label %67, !dbg !1858

67:                                               ; preds = %62, %65
  %68 = phi i8* [ %66, %65 ], [ null, %62 ], !dbg !1859
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1860
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1860
  %69 = tail call i8* @halide_string_to_string(i8* %63, i8* %68, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i32 0, i32 0)) #7, !dbg !1862
  %70 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0, !dbg !1863
  %71 = load i8*, i8** %70, align 4, !dbg !1863, !tbaa !729
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1864
  call void @llvm.dbg.value(metadata i8* %71, metadata !978, metadata !DIExpression()) #6, !dbg !1864
  %72 = icmp eq i8* %71, null, !dbg !1866
  br i1 %72, label %73, label %75, !dbg !1867

73:                                               ; preds = %67
  %74 = tail call i8* @halide_string_to_string(i8* %69, i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !1868
  br label %77, !dbg !1869

75:                                               ; preds = %67
  %76 = tail call i8* @halide_string_to_string(i8* %69, i8* %68, i8* nonnull %71) #7, !dbg !1870
  br label %77

77:                                               ; preds = %73, %75
  %78 = phi i8* [ %76, %75 ], [ %74, %73 ], !dbg !1871
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1872
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1872
  %79 = tail call i8* @halide_string_to_string(i8* %78, i8* %68, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #7, !dbg !1874
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !1875
  br i1 %64, label %80, label %81, !dbg !1877

80:                                               ; preds = %77
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !1878
  br label %88, !dbg !1879

81:                                               ; preds = %77
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !1880
  %82 = ptrtoint i8* %79 to i32, !dbg !1882
  %83 = ptrtoint i8* %63 to i32, !dbg !1882
  %84 = add i32 %82, 1, !dbg !1882
  %85 = sub i32 %84, %83, !dbg !1883
  %86 = sext i32 %85 to i64, !dbg !1884
  %87 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %63, i64 %86) #7, !dbg !1885
  tail call void @halide_error(i8* %0, i8* nonnull %63) #7, !dbg !1886
  br label %88

88:                                               ; preds = %81, %80
  tail call void @free(i8* %63) #7, !dbg !1887
  br label %230

89:                                               ; preds = %45, %42
  %90 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsLogicalE, align 4, !dbg !1888, !tbaa !898
  %91 = tail call zeroext i1 %90(%struct.mxArray* %1) #7, !dbg !1888
  br i1 %91, label %133, label %92, !dbg !1890

92:                                               ; preds = %89
  %93 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsNumericE, align 4, !dbg !1891, !tbaa !898
  %94 = tail call zeroext i1 %93(%struct.mxArray* %1) #7, !dbg !1891
  br i1 %94, label %133, label %95, !dbg !1892

95:                                               ; preds = %92
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !1893
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !1893
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !1893
  %96 = tail call i8* @malloc(i32 1024) #7, !dbg !1896
  %97 = icmp eq i8* %96, null, !dbg !1897
  br i1 %97, label %100, label %98, !dbg !1898

98:                                               ; preds = %95
  %99 = getelementptr inbounds i8, i8* %96, i32 1023, !dbg !1899
  store i8 0, i8* %99, align 1, !dbg !1900, !tbaa !798
  br label %100, !dbg !1901

100:                                              ; preds = %95, %98
  %101 = phi i8* [ %99, %98 ], [ null, %95 ], !dbg !1902
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1903
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.52, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1903
  %102 = tail call i8* @halide_string_to_string(i8* %96, i8* %101, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.52, i32 0, i32 0)) #7, !dbg !1905
  %103 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0, !dbg !1906
  %104 = load i8*, i8** %103, align 4, !dbg !1906, !tbaa !729
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1907
  call void @llvm.dbg.value(metadata i8* %104, metadata !978, metadata !DIExpression()) #6, !dbg !1907
  %105 = icmp eq i8* %104, null, !dbg !1909
  br i1 %105, label %106, label %108, !dbg !1910

106:                                              ; preds = %100
  %107 = tail call i8* @halide_string_to_string(i8* %102, i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !1911
  br label %110, !dbg !1912

108:                                              ; preds = %100
  %109 = tail call i8* @halide_string_to_string(i8* %102, i8* %101, i8* nonnull %104) #7, !dbg !1913
  br label %110

110:                                              ; preds = %106, %108
  %111 = phi i8* [ %109, %108 ], [ %107, %106 ], !dbg !1914
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1915
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1915
  %112 = tail call i8* @halide_string_to_string(i8* %111, i8* %101, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0)) #7, !dbg !1917
  %113 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex12mxGetClassIDE, align 4, !dbg !1918, !tbaa !898
  %114 = tail call i32 %113(%struct.mxArray* %1) #7, !dbg !1918
  %115 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %114) #8, !dbg !1919
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1920
  call void @llvm.dbg.value(metadata i8* %115, metadata !978, metadata !DIExpression()) #6, !dbg !1920
  %116 = icmp eq i8* %115, null, !dbg !1922
  br i1 %116, label %117, label %119, !dbg !1923

117:                                              ; preds = %110
  %118 = tail call i8* @halide_string_to_string(i8* %112, i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !1924
  br label %121, !dbg !1925

119:                                              ; preds = %110
  %120 = tail call i8* @halide_string_to_string(i8* %112, i8* %101, i8* nonnull %115) #7, !dbg !1926
  br label %121

121:                                              ; preds = %117, %119
  %122 = phi i8* [ %120, %119 ], [ %118, %117 ], !dbg !1927
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !1928
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !1928
  %123 = tail call i8* @halide_string_to_string(i8* %122, i8* %101, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #7, !dbg !1930
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !1931
  br i1 %97, label %124, label %125, !dbg !1933

124:                                              ; preds = %121
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !1934
  br label %132, !dbg !1935

125:                                              ; preds = %121
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !1936
  %126 = ptrtoint i8* %123 to i32, !dbg !1938
  %127 = ptrtoint i8* %96 to i32, !dbg !1938
  %128 = add i32 %126, 1, !dbg !1938
  %129 = sub i32 %128, %127, !dbg !1939
  %130 = sext i32 %129 to i64, !dbg !1940
  %131 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %96, i64 %130) #7, !dbg !1941
  tail call void @halide_error(i8* %0, i8* nonnull %96) #7, !dbg !1942
  br label %132

132:                                              ; preds = %124, %125
  call void @free(i8* %96) #7, !dbg !1943
  br label %230, !dbg !1944

133:                                              ; preds = %92, %89
  %134 = load double (%struct.mxArray*)*, double (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxGetScalarE, align 4, !dbg !1945, !tbaa !898
  %135 = tail call double %134(%struct.mxArray* %1) #7, !dbg !1945
  call void @llvm.dbg.value(metadata double %135, metadata !1775, metadata !DIExpression()), !dbg !1778
  %136 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 3, i32 0, !dbg !1946
  %137 = load i8, i8* %136, align 4, !dbg !1946, !tbaa !708
  call void @llvm.dbg.value(metadata i8 %137, metadata !1776, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1778
  %138 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 3, i32 1, !dbg !1947
  %139 = load i8, i8* %138, align 1, !dbg !1947, !tbaa !711
  call void @llvm.dbg.value(metadata i8 %139, metadata !1777, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1778
  switch i8 %137, label %203 [
    i8 0, label %140
    i8 1, label %155
    i8 2, label %170
    i8 3, label %176
  ], !dbg !1948

140:                                              ; preds = %133
  call void @llvm.dbg.value(metadata i8 %139, metadata !1777, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1778
  switch i8 %139, label %203 [
    i8 1, label %141
    i8 8, label %144
    i8 16, label %146
    i8 32, label %149
    i8 64, label %152
  ], !dbg !1949

141:                                              ; preds = %140
  %142 = fcmp une double %135, 0.000000e+00, !dbg !1952
  %143 = zext i1 %142 to i8, !dbg !1954
  store i8 %143, i8* %3, align 1, !dbg !1954, !tbaa !1955
  br label %230, !dbg !1956

144:                                              ; preds = %140
  %145 = fptosi double %135 to i8, !dbg !1957
  store i8 %145, i8* %3, align 1, !dbg !1958, !tbaa !798
  br label %230, !dbg !1959

146:                                              ; preds = %140
  %147 = fptosi double %135 to i16, !dbg !1960
  %148 = bitcast i8* %3 to i16*, !dbg !1961
  store i16 %147, i16* %148, align 2, !dbg !1962, !tbaa !1963
  br label %230, !dbg !1964

149:                                              ; preds = %140
  %150 = fptosi double %135 to i32, !dbg !1965
  %151 = bitcast i8* %3 to i32*, !dbg !1966
  store i32 %150, i32* %151, align 4, !dbg !1967, !tbaa !1614
  br label %230, !dbg !1968

152:                                              ; preds = %140
  %153 = fptosi double %135 to i64, !dbg !1969
  %154 = bitcast i8* %3 to i64*, !dbg !1970
  store i64 %153, i64* %154, align 8, !dbg !1971, !tbaa !1972
  br label %230, !dbg !1973

155:                                              ; preds = %133
  switch i8 %139, label %203 [
    i8 1, label %156
    i8 8, label %159
    i8 16, label %161
    i8 32, label %164
    i8 64, label %167
  ], !dbg !1974

156:                                              ; preds = %155
  %157 = fcmp une double %135, 0.000000e+00, !dbg !1977
  %158 = zext i1 %157 to i8, !dbg !1979
  store i8 %158, i8* %3, align 1, !dbg !1979, !tbaa !1955
  br label %230, !dbg !1980

159:                                              ; preds = %155
  %160 = fptoui double %135 to i8, !dbg !1981
  store i8 %160, i8* %3, align 1, !dbg !1982, !tbaa !798
  br label %230, !dbg !1983

161:                                              ; preds = %155
  %162 = fptoui double %135 to i16, !dbg !1984
  %163 = bitcast i8* %3 to i16*, !dbg !1985
  store i16 %162, i16* %163, align 2, !dbg !1986, !tbaa !1963
  br label %230, !dbg !1987

164:                                              ; preds = %155
  %165 = fptoui double %135 to i32, !dbg !1988
  %166 = bitcast i8* %3 to i32*, !dbg !1989
  store i32 %165, i32* %166, align 4, !dbg !1990, !tbaa !1614
  br label %230, !dbg !1991

167:                                              ; preds = %155
  %168 = fptoui double %135 to i64, !dbg !1992
  %169 = bitcast i8* %3 to i64*, !dbg !1993
  store i64 %168, i64* %169, align 8, !dbg !1994, !tbaa !1972
  br label %230, !dbg !1995

170:                                              ; preds = %133
  switch i8 %139, label %203 [
    i8 32, label %171
    i8 64, label %174
  ], !dbg !1996

171:                                              ; preds = %170
  %172 = fptrunc double %135 to float, !dbg !1999
  %173 = bitcast i8* %3 to float*, !dbg !2001
  store float %172, float* %173, align 4, !dbg !2002, !tbaa !2003
  br label %230, !dbg !2005

174:                                              ; preds = %170
  %175 = bitcast i8* %3 to double*, !dbg !2006
  store double %135, double* %175, align 8, !dbg !2007, !tbaa !2008
  br label %230, !dbg !2010

176:                                              ; preds = %133
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !2011
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !2011
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !2011
  %177 = tail call i8* @malloc(i32 1024) #7, !dbg !2015
  %178 = icmp eq i8* %177, null, !dbg !2016
  br i1 %178, label %181, label %179, !dbg !2017

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %177, i32 1023, !dbg !2018
  store i8 0, i8* %180, align 1, !dbg !2019, !tbaa !798
  br label %181, !dbg !2020

181:                                              ; preds = %176, %179
  %182 = phi i8* [ %180, %179 ], [ null, %176 ], !dbg !2021
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !2022
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !2022
  %183 = tail call i8* @halide_string_to_string(i8* %177, i8* %182, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0)) #7, !dbg !2024
  %184 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0, !dbg !2025
  %185 = load i8*, i8** %184, align 4, !dbg !2025, !tbaa !729
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !2026
  call void @llvm.dbg.value(metadata i8* %185, metadata !978, metadata !DIExpression()) #6, !dbg !2026
  %186 = icmp eq i8* %185, null, !dbg !2028
  br i1 %186, label %187, label %189, !dbg !2029

187:                                              ; preds = %181
  %188 = tail call i8* @halide_string_to_string(i8* %183, i8* %182, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !2030
  br label %191, !dbg !2031

189:                                              ; preds = %181
  %190 = tail call i8* @halide_string_to_string(i8* %183, i8* %182, i8* nonnull %185) #7, !dbg !2032
  br label %191

191:                                              ; preds = %187, %189
  %192 = phi i8* [ %190, %189 ], [ %188, %187 ], !dbg !2033
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !2034
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !2034
  %193 = tail call i8* @halide_string_to_string(i8* %192, i8* %182, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i32 0, i32 0)) #7, !dbg !2036
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !2037
  br i1 %178, label %194, label %195, !dbg !2039

194:                                              ; preds = %191
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !2040
  br label %202, !dbg !2041

195:                                              ; preds = %191
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !2042
  %196 = ptrtoint i8* %193 to i32, !dbg !2044
  %197 = ptrtoint i8* %177 to i32, !dbg !2044
  %198 = add i32 %196, 1, !dbg !2044
  %199 = sub i32 %198, %197, !dbg !2045
  %200 = sext i32 %199 to i64, !dbg !2046
  %201 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %177, i64 %200) #7, !dbg !2047
  tail call void @halide_error(i8* %0, i8* nonnull %177) #7, !dbg !2048
  br label %202

202:                                              ; preds = %195, %194
  tail call void @free(i8* %177) #7, !dbg !2049
  br label %230, !dbg !2050

203:                                              ; preds = %133, %155, %170, %140
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !2051
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !2051
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !2051
  %204 = tail call i8* @malloc(i32 1024) #7, !dbg !2053
  %205 = icmp eq i8* %204, null, !dbg !2054
  br i1 %205, label %208, label %206, !dbg !2055

206:                                              ; preds = %203
  %207 = getelementptr inbounds i8, i8* %204, i32 1023, !dbg !2056
  store i8 0, i8* %207, align 1, !dbg !2057, !tbaa !798
  br label %208, !dbg !2058

208:                                              ; preds = %203, %206
  %209 = phi i8* [ %207, %206 ], [ null, %203 ], !dbg !2059
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !2060
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !2060
  %210 = tail call i8* @halide_string_to_string(i8* %204, i8* %209, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i32 0, i32 0)) #7, !dbg !2062
  %211 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0, !dbg !2063
  %212 = load i8*, i8** %211, align 4, !dbg !2063, !tbaa !729
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !2064
  call void @llvm.dbg.value(metadata i8* %212, metadata !978, metadata !DIExpression()) #6, !dbg !2064
  %213 = icmp eq i8* %212, null, !dbg !2066
  br i1 %213, label %214, label %216, !dbg !2067

214:                                              ; preds = %208
  %215 = tail call i8* @halide_string_to_string(i8* %210, i8* %209, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !2068
  br label %218, !dbg !2069

216:                                              ; preds = %208
  %217 = tail call i8* @halide_string_to_string(i8* %210, i8* %209, i8* nonnull %212) #7, !dbg !2070
  br label %218

218:                                              ; preds = %214, %216
  %219 = phi i8* [ %217, %216 ], [ %215, %214 ], !dbg !2071
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !2072
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.57, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !2072
  %220 = tail call i8* @halide_string_to_string(i8* %219, i8* %209, i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.57, i32 0, i32 0)) #7, !dbg !2074
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !2075
  br i1 %205, label %221, label %222, !dbg !2077

221:                                              ; preds = %218
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !2078
  br label %229, !dbg !2079

222:                                              ; preds = %218
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !2080
  %223 = ptrtoint i8* %220 to i32, !dbg !2082
  %224 = ptrtoint i8* %204 to i32, !dbg !2082
  %225 = add i32 %223, 1, !dbg !2082
  %226 = sub i32 %225, %224, !dbg !2083
  %227 = sext i32 %226 to i64, !dbg !2084
  %228 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %204, i64 %227) #7, !dbg !2085
  tail call void @halide_error(i8* %0, i8* nonnull %204) #7, !dbg !2086
  br label %229

229:                                              ; preds = %222, %221
  tail call void @free(i8* %204) #7, !dbg !2087
  br label %230, !dbg !2088

230:                                              ; preds = %88, %132, %229, %202, %174, %171, %167, %164, %161, %159, %156, %152, %149, %146, %144, %141, %33
  %231 = phi i32 [ -1, %33 ], [ -21, %132 ], [ -21, %88 ], [ -22, %229 ], [ 0, %152 ], [ 0, %149 ], [ 0, %146 ], [ 0, %144 ], [ 0, %141 ], [ 0, %167 ], [ 0, %164 ], [ 0, %161 ], [ 0, %159 ], [ 0, %156 ], [ 0, %174 ], [ 0, %171 ], [ -21, %202 ], !dbg !1778
  ret i32 %231, !dbg !2089
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_matlab_call_pipeline(i8* %0, i32 (i8**)* %1, %struct.halide_filter_metadata_t* %2, i32 %3, %struct.mxArray** %4, i32 %5, %struct.mxArray** %6) local_unnamed_addr #4 !dbg !2090 {
  %8 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2099, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 (i8**)* %1, metadata !2100, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata %struct.halide_filter_metadata_t* %2, metadata !2101, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 %3, metadata !2102, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata %struct.mxArray** %4, metadata !2103, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 %5, metadata !2104, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata %struct.mxArray** %6, metadata !2105, metadata !DIExpression()), !dbg !2135
  %9 = tail call i32 @halide_matlab_init(i8* %0) #8, !dbg !2136
  call void @llvm.dbg.value(metadata i32 %9, metadata !2106, metadata !DIExpression()), !dbg !2135
  %10 = icmp eq i32 %9, 0, !dbg !2137
  br i1 %10, label %11, label %185, !dbg !2139

11:                                               ; preds = %7
  %12 = bitcast i32* %8 to i8*, !dbg !2140
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12), !dbg !2140
  call void @llvm.dbg.value(metadata i32* %8, metadata !2108, metadata !DIExpression()), !dbg !2135
  %13 = icmp sgt i32 %3, 0, !dbg !2141
  br i1 %13, label %14, label %27, !dbg !2143

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 1, metadata !2144, metadata !DIExpression()) #6, !dbg !2150
  call void @llvm.dbg.value(metadata i32 1, metadata !2147, metadata !DIExpression()) #6, !dbg !2150
  call void @llvm.dbg.value(metadata i32 12, metadata !2148, metadata !DIExpression()) #6, !dbg !2150
  call void @llvm.dbg.value(metadata i32 0, metadata !2149, metadata !DIExpression()) #6, !dbg !2150
  %15 = load %struct.mxArray* (i32, i32, i32, i32)*, %struct.mxArray* (i32, i32, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_730E, align 4, !dbg !2153, !tbaa !898
  %16 = icmp eq %struct.mxArray* (i32, i32, i32, i32)* %15, null, !dbg !2153
  br i1 %16, label %19, label %17, !dbg !2155

17:                                               ; preds = %14
  %18 = tail call %struct.mxArray* %15(i32 1, i32 1, i32 12, i32 0) #7, !dbg !2156
  br label %22, !dbg !2158

19:                                               ; preds = %14
  %20 = load %struct.mxArray* (i32, i32, i32, i32)*, %struct.mxArray* (i32, i32, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_700E, align 4, !dbg !2159, !tbaa !898
  %21 = tail call %struct.mxArray* %20(i32 1, i32 1, i32 12, i32 0) #7, !dbg !2159
  br label %22, !dbg !2161

22:                                               ; preds = %17, %19
  %23 = phi %struct.mxArray* [ %18, %17 ], [ %21, %19 ], !dbg !2162
  store %struct.mxArray* %23, %struct.mxArray** %4, align 4, !dbg !2163, !tbaa !898
  call void @llvm.dbg.value(metadata %struct.mxArray* %23, metadata !2164, metadata !DIExpression()) #6, !dbg !2171
  %24 = load i8* (%struct.mxArray*)*, i8* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex9mxGetDataE, align 4, !dbg !2173, !tbaa !898
  %25 = tail call i8* %24(%struct.mxArray* %23) #7, !dbg !2173
  %26 = bitcast i8* %25 to i32*, !dbg !2174
  call void @llvm.dbg.value(metadata i32* %26, metadata !2108, metadata !DIExpression()), !dbg !2135
  br label %27, !dbg !2175

27:                                               ; preds = %22, %11
  %28 = phi i32* [ %26, %22 ], [ %8, %11 ], !dbg !2135
  call void @llvm.dbg.value(metadata i32* %28, metadata !2108, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32* %28, metadata !2109, metadata !DIExpression()), !dbg !2135
  store i32 -1, i32* %28, align 4, !dbg !2176, !tbaa !1614
  %29 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i32 0, i32 1, !dbg !2177
  %30 = load i32, i32* %29, align 4, !dbg !2177, !tbaa !656
  %31 = icmp eq i32 %30, %5, !dbg !2179
  br i1 %31, label %69, label %32, !dbg !2180

32:                                               ; preds = %27
  %33 = icmp sgt i32 %5, 0, !dbg !2181
  br i1 %33, label %34, label %68, !dbg !2184

34:                                               ; preds = %32
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !2185
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !2185
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !2185
  %35 = tail call i8* @malloc(i32 1024) #7, !dbg !2188
  %36 = icmp eq i8* %35, null, !dbg !2189
  br i1 %36, label %39, label %37, !dbg !2190

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, i8* %35, i32 1023, !dbg !2191
  store i8 0, i8* %38, align 1, !dbg !2192, !tbaa !798
  br label %39, !dbg !2193

39:                                               ; preds = %34, %37
  %40 = phi i8* [ %38, %37 ], [ null, %34 ], !dbg !2194
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !2195
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !2195
  %41 = tail call i8* @halide_string_to_string(i8* %35, i8* %40, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0)) #7, !dbg !2197
  %42 = load i32, i32* %29, align 4, !dbg !2198, !tbaa !656
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1634, metadata !DIExpression()) #6, !dbg !2199
  call void @llvm.dbg.value(metadata i32 %42, metadata !1637, metadata !DIExpression()) #6, !dbg !2199
  %43 = sext i32 %42 to i64, !dbg !2201
  %44 = tail call i8* @halide_int64_to_string(i8* %41, i8* %40, i64 %43, i32 1) #7, !dbg !2202
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !2203
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !2203
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %40, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i32 0, i32 0)) #7, !dbg !2205
  %46 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i32 0, i32 4, !dbg !2206
  %47 = load i8*, i8** %46, align 4, !dbg !2206, !tbaa !637
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !2207
  call void @llvm.dbg.value(metadata i8* %47, metadata !978, metadata !DIExpression()) #6, !dbg !2207
  %48 = icmp eq i8* %47, null, !dbg !2209
  br i1 %48, label %49, label %51, !dbg !2210

49:                                               ; preds = %39
  %50 = tail call i8* @halide_string_to_string(i8* %45, i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !2211
  br label %53, !dbg !2212

51:                                               ; preds = %39
  %52 = tail call i8* @halide_string_to_string(i8* %45, i8* %40, i8* nonnull %47) #7, !dbg !2213
  br label %53

53:                                               ; preds = %49, %51
  %54 = phi i8* [ %52, %51 ], [ %50, %49 ], !dbg !2214
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !2215
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !2215
  %55 = tail call i8* @halide_string_to_string(i8* %54, i8* %40, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0)) #7, !dbg !2217
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1634, metadata !DIExpression()) #6, !dbg !2218
  call void @llvm.dbg.value(metadata i32 %5, metadata !1637, metadata !DIExpression()) #6, !dbg !2218
  %56 = zext i32 %5 to i64, !dbg !2220
  %57 = tail call i8* @halide_int64_to_string(i8* %55, i8* %40, i64 %56, i32 1) #7, !dbg !2221
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !2222
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !2222
  %58 = tail call i8* @halide_string_to_string(i8* %57, i8* %40, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #7, !dbg !2224
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !2225
  br i1 %36, label %59, label %60, !dbg !2227

59:                                               ; preds = %53
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !2228
  br label %67, !dbg !2229

60:                                               ; preds = %53
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !2230
  %61 = ptrtoint i8* %58 to i32, !dbg !2232
  %62 = ptrtoint i8* %35 to i32, !dbg !2232
  %63 = add i32 %61, 1, !dbg !2232
  %64 = sub i32 %63, %62, !dbg !2233
  %65 = sext i32 %64 to i64, !dbg !2234
  %66 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %35, i64 %65) #7, !dbg !2235
  tail call void @halide_error(i8* %0, i8* nonnull %35) #7, !dbg !2236
  br label %67

67:                                               ; preds = %59, %60
  call void @free(i8* %35) #7, !dbg !2237
  br label %68, !dbg !2238

68:                                               ; preds = %67, %32
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #8, !dbg !2239
  br label %183, !dbg !2240

69:                                               ; preds = %27
  %70 = icmp sgt i32 %3, 1, !dbg !2241
  br i1 %70, label %71, label %101, !dbg !2243

71:                                               ; preds = %69
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !953, metadata !DIExpression()) #6, !dbg !2244
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()) #6, !dbg !2244
  call void @llvm.dbg.value(metadata i8* null, metadata !957, metadata !DIExpression()) #6, !dbg !2244
  %72 = tail call i8* @malloc(i32 1024) #7, !dbg !2247
  %73 = icmp eq i8* %72, null, !dbg !2248
  br i1 %73, label %76, label %74, !dbg !2249

74:                                               ; preds = %71
  %75 = getelementptr inbounds i8, i8* %72, i32 1023, !dbg !2250
  store i8 0, i8* %75, align 1, !dbg !2251, !tbaa !798
  br label %76, !dbg !2252

76:                                               ; preds = %71, %74
  %77 = phi i8* [ %75, %74 ], [ null, %71 ], !dbg !2253
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !2254
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.60, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !2254
  %78 = tail call i8* @halide_string_to_string(i8* %72, i8* %77, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.60, i32 0, i32 0)) #7, !dbg !2256
  %79 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i32 0, i32 4, !dbg !2257
  %80 = load i8*, i8** %79, align 4, !dbg !2257, !tbaa !637
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !2258
  call void @llvm.dbg.value(metadata i8* %80, metadata !978, metadata !DIExpression()) #6, !dbg !2258
  %81 = icmp eq i8* %80, null, !dbg !2260
  br i1 %81, label %82, label %84, !dbg !2261

82:                                               ; preds = %76
  %83 = tail call i8* @halide_string_to_string(i8* %78, i8* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #7, !dbg !2262
  br label %86, !dbg !2263

84:                                               ; preds = %76
  %85 = tail call i8* @halide_string_to_string(i8* %78, i8* %77, i8* nonnull %80) #7, !dbg !2264
  br label %86

86:                                               ; preds = %82, %84
  %87 = phi i8* [ %85, %84 ], [ %83, %82 ], !dbg !2265
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !2266
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !2266
  %88 = tail call i8* @halide_string_to_string(i8* %87, i8* %77, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0)) #7, !dbg !2268
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1634, metadata !DIExpression()) #6, !dbg !2269
  call void @llvm.dbg.value(metadata i32 %3, metadata !1637, metadata !DIExpression()) #6, !dbg !2269
  %89 = zext i32 %3 to i64, !dbg !2271
  %90 = tail call i8* @halide_int64_to_string(i8* %88, i8* %77, i64 %89, i32 1) #7, !dbg !2272
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !975, metadata !DIExpression()) #6, !dbg !2273
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), metadata !978, metadata !DIExpression()) #6, !dbg !2273
  %91 = tail call i8* @halide_string_to_string(i8* %90, i8* %77, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #7, !dbg !2275
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !990, metadata !DIExpression()) #6, !dbg !2276
  br i1 %73, label %92, label %93, !dbg !2278

92:                                               ; preds = %86
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #7, !dbg !2279
  br label %100, !dbg !2280

93:                                               ; preds = %86
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1001, metadata !DIExpression()) #6, !dbg !2281
  %94 = ptrtoint i8* %91 to i32, !dbg !2283
  %95 = ptrtoint i8* %72 to i32, !dbg !2283
  %96 = add i32 %94, 1, !dbg !2283
  %97 = sub i32 %96, %95, !dbg !2284
  %98 = sext i32 %97 to i64, !dbg !2285
  %99 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %72, i64 %98) #7, !dbg !2286
  tail call void @halide_error(i8* %0, i8* nonnull %72) #7, !dbg !2287
  br label %100

100:                                              ; preds = %92, %93
  call void @free(i8* %72) #7, !dbg !2288
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #8, !dbg !2289
  br label %183, !dbg !2290

101:                                              ; preds = %69
  %102 = shl i32 %5, 2, !dbg !2291
  %103 = alloca i8, i32 %102, align 8, !dbg !2292
  %104 = bitcast i8* %103 to i8**, !dbg !2293
  call void @llvm.dbg.value(metadata i8** %104, metadata !2111, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 0, metadata !2112, metadata !DIExpression()), !dbg !2294
  %105 = icmp sgt i32 %5, 0, !dbg !2295
  br i1 %105, label %108, label %106, !dbg !2296

106:                                              ; preds = %101
  %107 = call i32 %1(i8** nonnull %104) #7, !dbg !2297
  store i32 %107, i32* %28, align 4, !dbg !2298, !tbaa !1614
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()), !dbg !2299
  br label %183, !dbg !2300

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i32 0, i32 2
  br label %110, !dbg !2296

110:                                              ; preds = %108, %152
  %111 = phi i32 [ 0, %108 ], [ %153, %152 ]
  call void @llvm.dbg.value(metadata i32 %111, metadata !2112, metadata !DIExpression()), !dbg !2294
  %112 = getelementptr inbounds %struct.mxArray*, %struct.mxArray** %6, i32 %111, !dbg !2301
  %113 = load %struct.mxArray*, %struct.mxArray** %112, align 4, !dbg !2301, !tbaa !898
  call void @llvm.dbg.value(metadata %struct.mxArray* %113, metadata !2114, metadata !DIExpression()), !dbg !2302
  %114 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %109, align 4, !dbg !2303, !tbaa !660
  %115 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %114, i32 %111, !dbg !2304
  call void @llvm.dbg.value(metadata %struct.halide_filter_argument_t* %115, metadata !2117, metadata !DIExpression()), !dbg !2302
  %116 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %114, i32 %111, i32 1, !dbg !2305
  %117 = load i32, i32* %116, align 4, !dbg !2305, !tbaa !664
  %118 = add i32 %117, -1, !dbg !2306
  %119 = icmp ult i32 %118, 2, !dbg !2306
  br i1 %119, label %120, label %137, !dbg !2306

120:                                              ; preds = %110
  %121 = alloca %struct.halide_buffer_t, align 8, !dbg !2307
  %122 = bitcast %struct.halide_buffer_t* %121 to i8*
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %121, metadata !2118, metadata !DIExpression()), !dbg !2308
  %123 = call i8* @memset(i8* nonnull %122, i32 0, i32 40) #7, !dbg !2309
  %124 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %114, i32 %111, i32 2, !dbg !2310
  %125 = load i32, i32* %124, align 4, !dbg !2310, !tbaa !690
  %126 = shl i32 %125, 4, !dbg !2311
  %127 = alloca i8, i32 %126, align 8, !dbg !2312
  %128 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %121, i32 0, i32 6, !dbg !2313
  %129 = bitcast %struct.halide_dimension_t** %128 to i8**, !dbg !2314
  store i8* %127, i8** %129, align 8, !dbg !2314, !tbaa !1715
  %130 = call i8* @memset(i8* nonnull %127, i32 0, i32 %126) #7, !dbg !2315
  %131 = call i32 @halide_matlab_array_to_halide_buffer_t(i8* %0, %struct.mxArray* %113, %struct.halide_filter_argument_t* nonnull %115, %struct.halide_buffer_t* nonnull %121) #8, !dbg !2316
  store i32 %131, i32* %28, align 4, !dbg !2317, !tbaa !1614
  %132 = icmp eq i32 %131, 0, !dbg !2318
  br i1 %132, label %133, label %136, !dbg !2320

133:                                              ; preds = %120
  %134 = getelementptr inbounds i8*, i8** %104, i32 %111, !dbg !2321
  %135 = bitcast i8** %134 to %struct.halide_buffer_t**, !dbg !2322
  store %struct.halide_buffer_t* %121, %struct.halide_buffer_t** %135, align 4, !dbg !2322, !tbaa !898
  br label %152

136:                                              ; preds = %120
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #8, !dbg !2323
  br label %183

137:                                              ; preds = %110
  %138 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %114, i32 %111, i32 3, i32 1, !dbg !2325
  %139 = load i8, i8* %138, align 1, !dbg !2325, !tbaa !711
  %140 = zext i8 %139 to i32, !dbg !2326
  %141 = add nuw nsw i32 %140, 7, !dbg !2327
  %142 = lshr i32 %141, 3, !dbg !2328
  call void @llvm.dbg.value(metadata i32* undef, metadata !2329, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i32* undef, metadata !2336, metadata !DIExpression()), !dbg !2337
  %143 = icmp ugt i32 %142, 8, !dbg !2339
  %144 = select i1 %143, i32 %142, i32 8, !dbg !2339
  call void @llvm.dbg.value(metadata i32 %144, metadata !2121, metadata !DIExpression()), !dbg !2340
  %145 = alloca i8, i32 %144, align 8, !dbg !2341
  call void @llvm.dbg.value(metadata i8* %145, metadata !2123, metadata !DIExpression()), !dbg !2340
  %146 = call i8* @memset(i8* nonnull %145, i32 0, i32 %144) #7, !dbg !2342
  %147 = call i32 @halide_matlab_array_to_scalar(i8* %0, %struct.mxArray* %113, %struct.halide_filter_argument_t* nonnull %115, i8* nonnull %145) #8, !dbg !2343
  store i32 %147, i32* %28, align 4, !dbg !2344, !tbaa !1614
  %148 = icmp eq i32 %147, 0, !dbg !2345
  br i1 %148, label %149, label %151, !dbg !2347

149:                                              ; preds = %137
  %150 = getelementptr inbounds i8*, i8** %104, i32 %111, !dbg !2348
  store i8* %145, i8** %150, align 4, !dbg !2349, !tbaa !898
  br label %152

151:                                              ; preds = %137
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #8, !dbg !2350
  br label %183

152:                                              ; preds = %149, %133
  %153 = add nuw nsw i32 %111, 1, !dbg !2352
  call void @llvm.dbg.value(metadata i32 %153, metadata !2112, metadata !DIExpression()), !dbg !2294
  %154 = icmp slt i32 %153, %5, !dbg !2295
  br i1 %154, label %110, label %155, !dbg !2296, !llvm.loop !2353

155:                                              ; preds = %152
  %156 = call i32 %1(i8** nonnull %104) #7, !dbg !2297
  store i32 %156, i32* %28, align 4, !dbg !2298, !tbaa !1614
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()), !dbg !2299
  br i1 %105, label %157, label %183, !dbg !2300

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i32 0, i32 2
  br label %159, !dbg !2300

159:                                              ; preds = %157, %180
  %160 = phi i32 [ 0, %157 ], [ %181, %180 ]
  call void @llvm.dbg.value(metadata i32 %160, metadata !2124, metadata !DIExpression()), !dbg !2299
  %161 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %158, align 4, !dbg !2355, !tbaa !660
  call void @llvm.dbg.value(metadata %struct.halide_filter_argument_t* undef, metadata !2126, metadata !DIExpression()), !dbg !2356
  %162 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %161, i32 %160, i32 1, !dbg !2357
  %163 = load i32, i32* %162, align 4, !dbg !2357, !tbaa !664
  %164 = icmp eq i32 %163, 2, !dbg !2358
  br i1 %164, label %165, label %171, !dbg !2359

165:                                              ; preds = %159
  %166 = getelementptr inbounds i8*, i8** %104, i32 %160, !dbg !2360
  %167 = bitcast i8** %166 to %struct.halide_buffer_t**, !dbg !2360
  %168 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %167, align 4, !dbg !2360, !tbaa !898
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %168, metadata !2129, metadata !DIExpression()), !dbg !2361
  %169 = call i32 @halide_copy_to_host(i8* %0, %struct.halide_buffer_t* %168) #7, !dbg !2362
  %170 = load i32, i32* %162, align 4, !dbg !2363, !tbaa !664
  br label %171, !dbg !2364

171:                                              ; preds = %165, %159
  %172 = phi i32 [ %170, %165 ], [ %163, %159 ], !dbg !2363
  %173 = add i32 %172, -1, !dbg !2365
  %174 = icmp ult i32 %173, 2, !dbg !2365
  br i1 %174, label %175, label %180, !dbg !2365

175:                                              ; preds = %171
  %176 = getelementptr inbounds i8*, i8** %104, i32 %160, !dbg !2366
  %177 = bitcast i8** %176 to %struct.halide_buffer_t**, !dbg !2366
  %178 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %177, align 4, !dbg !2366, !tbaa !898
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %178, metadata !2132, metadata !DIExpression()), !dbg !2367
  %179 = call i32 @halide_device_free(i8* %0, %struct.halide_buffer_t* %178) #7, !dbg !2368
  br label %180, !dbg !2369

180:                                              ; preds = %171, %175
  %181 = add nuw nsw i32 %160, 1, !dbg !2370
  call void @llvm.dbg.value(metadata i32 %181, metadata !2124, metadata !DIExpression()), !dbg !2299
  %182 = icmp slt i32 %181, %5, !dbg !2371
  br i1 %182, label %159, label %183, !dbg !2300, !llvm.loop !2372

183:                                              ; preds = %180, %106, %155, %151, %136, %100, %68
  %184 = load i32, i32* %28, align 4, !dbg !2135, !tbaa !1614
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12), !dbg !2374
  br label %185

185:                                              ; preds = %7, %183
  %186 = phi i32 [ %184, %183 ], [ %9, %7 ], !dbg !2135
  ret i32 %186, !dbg !2374
}

declare !dbg !2375 dso_local i8* @memset(i8*, i32, i32) local_unnamed_addr #5

declare !dbg !2378 dso_local i32 @halide_copy_to_host(i8*, %struct.halide_buffer_t*) local_unnamed_addr #5

declare !dbg !2379 dso_local i32 @halide_device_free(i8*, %struct.halide_buffer_t*) local_unnamed_addr #5

declare !dbg !2380 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #5

declare !dbg !2383 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #5

declare !dbg !2386 dso_local i8* @malloc(i32) local_unnamed_addr #5

declare !dbg !2389 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #5

declare !dbg !2390 dso_local void @free(i8*) local_unnamed_addr #5

declare !dbg !2393 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #5

declare !dbg !2396 extern_weak dso_local i8* @halide_get_symbol(i8*) local_unnamed_addr #5

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

!llvm.dbg.cu = !{!111}
!llvm.module.flags = !{!448, !449, !450}
!llvm.ident = !{!451}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mexWarnMsgTxt", linkageName: "_ZN6Halide7Runtime3mex13mexWarnMsgTxtE", scope: !2, file: !5, line: 32, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "mex", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/mex_functions.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 32)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "mxGetNumberOfDimensions_730", linkageName: "_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E", scope: !2, file: !5, line: 59, type: !14, isLocal: false, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !20}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 27, baseType: !19)
!18 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "mxArray", file: !18, line: 167, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS7mxArray")
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "mxGetNumberOfDimensions_700", linkageName: "_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E", scope: !2, file: !5, line: 60, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 32)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !20}
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "mxGetDimensions_730", linkageName: "_ZN6Halide7Runtime3mex19mxGetDimensions_730E", scope: !2, file: !5, line: 61, type: !31, isLocal: false, isDefinition: true)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !20}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "mxGetDimensions_700", linkageName: "_ZN6Halide7Runtime3mex19mxGetDimensions_700E", scope: !2, file: !5, line: 62, type: !38, isLocal: false, isDefinition: true)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 32)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !20}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "mxGetClassID", linkageName: "_ZN6Halide7Runtime3mex12mxGetClassIDE", scope: !2, file: !5, line: 77, type: !45, isLocal: false, isDefinition: true)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 32)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !20}
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mxClassID", scope: !2, file: !49, line: 26, baseType: !19, size: 32, elements: !50, identifier: "_ZTSN6Halide7Runtime3mex9mxClassIDE")
!49 = !DIFile(filename: "src/runtime/matlab.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!51 = !DIEnumerator(name: "mxUNKNOWN_CLASS", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "mxCELL_CLASS", value: 1, isUnsigned: true)
!53 = !DIEnumerator(name: "mxSTRUCT_CLASS", value: 2, isUnsigned: true)
!54 = !DIEnumerator(name: "mxLOGICAL_CLASS", value: 3, isUnsigned: true)
!55 = !DIEnumerator(name: "mxCHAR_CLASS", value: 4, isUnsigned: true)
!56 = !DIEnumerator(name: "mxVOID_CLASS", value: 5, isUnsigned: true)
!57 = !DIEnumerator(name: "mxDOUBLE_CLASS", value: 6, isUnsigned: true)
!58 = !DIEnumerator(name: "mxSINGLE_CLASS", value: 7, isUnsigned: true)
!59 = !DIEnumerator(name: "mxINT8_CLASS", value: 8, isUnsigned: true)
!60 = !DIEnumerator(name: "mxUINT8_CLASS", value: 9, isUnsigned: true)
!61 = !DIEnumerator(name: "mxINT16_CLASS", value: 10, isUnsigned: true)
!62 = !DIEnumerator(name: "mxUINT16_CLASS", value: 11, isUnsigned: true)
!63 = !DIEnumerator(name: "mxINT32_CLASS", value: 12, isUnsigned: true)
!64 = !DIEnumerator(name: "mxUINT32_CLASS", value: 13, isUnsigned: true)
!65 = !DIEnumerator(name: "mxINT64_CLASS", value: 14, isUnsigned: true)
!66 = !DIEnumerator(name: "mxUINT64_CLASS", value: 15, isUnsigned: true)
!67 = !DIEnumerator(name: "mxFUNCTION_CLASS", value: 16, isUnsigned: true)
!68 = !DIEnumerator(name: "mxOPAQUE_CLASS", value: 17, isUnsigned: true)
!69 = !DIEnumerator(name: "mxOBJECT_CLASS", value: 18, isUnsigned: true)
!70 = !DIEnumerator(name: "mxINDEX_CLASS", value: 13, isUnsigned: true)
!71 = !DIEnumerator(name: "mxSPARSE_CLASS", value: 5, isUnsigned: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "mxGetData", linkageName: "_ZN6Halide7Runtime3mex9mxGetDataE", scope: !2, file: !5, line: 78, type: !74, isLocal: false, isDefinition: true)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 32)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !20}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "mxIsNumeric", linkageName: "_ZN6Halide7Runtime3mex11mxIsNumericE", scope: !2, file: !5, line: 80, type: !80, isLocal: false, isDefinition: true)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 32)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !20}
!83 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "mxIsLogical", linkageName: "_ZN6Halide7Runtime3mex11mxIsLogicalE", scope: !2, file: !5, line: 82, type: !80, isLocal: false, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "mxIsComplex", linkageName: "_ZN6Halide7Runtime3mex11mxIsComplexE", scope: !2, file: !5, line: 90, type: !80, isLocal: false, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "mxGetScalar", linkageName: "_ZN6Halide7Runtime3mex11mxGetScalarE", scope: !2, file: !5, line: 110, type: !90, isLocal: false, isDefinition: true)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 32)
!91 = !DISubroutineType(types: !92)
!92 = !{!93, !20}
!93 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "mxGetElementSize", linkageName: "_ZN6Halide7Runtime3mex16mxGetElementSizeE", scope: !2, file: !5, line: 122, type: !14, isLocal: false, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "mxCreateNumericMatrix_730", linkageName: "_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_730E", scope: !2, file: !5, line: 140, type: !98, isLocal: false, isDefinition: true)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 32)
!99 = !DISubroutineType(types: !100)
!100 = !{!101, !17, !17, !48, !102}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mxComplexity", scope: !2, file: !49, line: 55, baseType: !19, size: 32, elements: !103, identifier: "_ZTSN6Halide7Runtime3mex12mxComplexityE")
!103 = !{!104, !105}
!104 = !DIEnumerator(name: "mxREAL", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "mxCOMPLEX", value: 1, isUnsigned: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "mxCreateNumericMatrix_700", linkageName: "_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_700E", scope: !2, file: !5, line: 141, type: !108, isLocal: false, isDefinition: true)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!109 = !DISubroutineType(types: !110)
!110 = !{!101, !28, !28, !48, !102}
!111 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !112, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !113, retainedTypes: !180, globals: !444, imports: !445, splitDebugInlining: false, nameTableKind: None)
!112 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/matlab.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!113 = !{!48, !102, !114, !124, !128, !133}
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !115, line: 403, baseType: !116, size: 8, elements: !118, identifier: "_ZTS18halide_type_code_t")
!115 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !18, line: 16, baseType: !117)
!117 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !{!119, !120, !121, !122, !123}
!119 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!121 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!122 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!123 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !115, line: 1415, baseType: !19, size: 32, elements: !125, identifier: "_ZTS19halide_buffer_flags")
!125 = !{!126, !127}
!126 = !DIEnumerator(name: "halide_buffer_flag_host_dirty", value: 1, isUnsigned: true)
!127 = !DIEnumerator(name: "halide_buffer_flag_device_dirty", value: 2, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_argument_kind_t", file: !115, line: 1598, baseType: !19, size: 32, elements: !129, identifier: "_ZTS22halide_argument_kind_t")
!129 = !{!130, !131, !132}
!130 = !DIEnumerator(name: "halide_argument_kind_input_scalar", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "halide_argument_kind_input_buffer", value: 1, isUnsigned: true)
!132 = !DIEnumerator(name: "halide_argument_kind_output_buffer", value: 2, isUnsigned: true)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_error_code_t", file: !115, line: 990, baseType: !28, size: 32, elements: !134, identifier: "_ZTS19halide_error_code_t")
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!135 = !DIEnumerator(name: "halide_error_code_success", value: 0)
!136 = !DIEnumerator(name: "halide_error_code_generic_error", value: -1)
!137 = !DIEnumerator(name: "halide_error_code_explicit_bounds_too_small", value: -2)
!138 = !DIEnumerator(name: "halide_error_code_bad_type", value: -3)
!139 = !DIEnumerator(name: "halide_error_code_access_out_of_bounds", value: -4)
!140 = !DIEnumerator(name: "halide_error_code_buffer_allocation_too_large", value: -5)
!141 = !DIEnumerator(name: "halide_error_code_buffer_extents_too_large", value: -6)
!142 = !DIEnumerator(name: "halide_error_code_constraints_make_required_region_smaller", value: -7)
!143 = !DIEnumerator(name: "halide_error_code_constraint_violated", value: -8)
!144 = !DIEnumerator(name: "halide_error_code_param_too_small", value: -9)
!145 = !DIEnumerator(name: "halide_error_code_param_too_large", value: -10)
!146 = !DIEnumerator(name: "halide_error_code_out_of_memory", value: -11)
!147 = !DIEnumerator(name: "halide_error_code_buffer_argument_is_null", value: -12)
!148 = !DIEnumerator(name: "halide_error_code_debug_to_file_failed", value: -13)
!149 = !DIEnumerator(name: "halide_error_code_copy_to_host_failed", value: -14)
!150 = !DIEnumerator(name: "halide_error_code_copy_to_device_failed", value: -15)
!151 = !DIEnumerator(name: "halide_error_code_device_malloc_failed", value: -16)
!152 = !DIEnumerator(name: "halide_error_code_device_sync_failed", value: -17)
!153 = !DIEnumerator(name: "halide_error_code_device_free_failed", value: -18)
!154 = !DIEnumerator(name: "halide_error_code_no_device_interface", value: -19)
!155 = !DIEnumerator(name: "halide_error_code_matlab_init_failed", value: -20)
!156 = !DIEnumerator(name: "halide_error_code_matlab_bad_param_type", value: -21)
!157 = !DIEnumerator(name: "halide_error_code_internal_error", value: -22)
!158 = !DIEnumerator(name: "halide_error_code_device_run_failed", value: -23)
!159 = !DIEnumerator(name: "halide_error_code_unaligned_host_ptr", value: -24)
!160 = !DIEnumerator(name: "halide_error_code_bad_fold", value: -25)
!161 = !DIEnumerator(name: "halide_error_code_fold_factor_too_small", value: -26)
!162 = !DIEnumerator(name: "halide_error_code_requirement_failed", value: -27)
!163 = !DIEnumerator(name: "halide_error_code_buffer_extents_negative", value: -28)
!164 = !DIEnumerator(name: "halide_error_code_unused_29", value: -29)
!165 = !DIEnumerator(name: "halide_error_code_unused_30", value: -30)
!166 = !DIEnumerator(name: "halide_error_code_specialize_fail", value: -31)
!167 = !DIEnumerator(name: "halide_error_code_device_wrap_native_failed", value: -32)
!168 = !DIEnumerator(name: "halide_error_code_device_detach_native_failed", value: -33)
!169 = !DIEnumerator(name: "halide_error_code_host_is_null", value: -34)
!170 = !DIEnumerator(name: "halide_error_code_bad_extern_fold", value: -35)
!171 = !DIEnumerator(name: "halide_error_code_device_interface_no_device", value: -36)
!172 = !DIEnumerator(name: "halide_error_code_host_and_device_dirty", value: -37)
!173 = !DIEnumerator(name: "halide_error_code_buffer_is_null", value: -38)
!174 = !DIEnumerator(name: "halide_error_code_device_buffer_copy_failed", value: -39)
!175 = !DIEnumerator(name: "halide_error_code_device_crop_unsupported", value: -40)
!176 = !DIEnumerator(name: "halide_error_code_device_crop_failed", value: -41)
!177 = !DIEnumerator(name: "halide_error_code_incompatible_device_interface", value: -42)
!178 = !DIEnumerator(name: "halide_error_code_bad_dimensions", value: -43)
!179 = !DIEnumerator(name: "halide_error_code_device_dirty_with_no_device_support", value: -44)
!180 = !{!181, !336, !213, !417, !418, !420, !421, !423, !424, !208, !425, !116, !239, !426, !222, !427, !217, !428, !229, !429, !93, !430, !431, !432, !341, !188, !6, !433, !25, !436, !38, !45, !74, !80, !90, !441, !108, !330}
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !183, file: !182, line: 199, baseType: !185)
!182 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!183 = !DINamespace(scope: !184)
!184 = !DINamespace(name: "Internal", scope: !3)
!185 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !183, file: !182, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !186, templateParams: !414)
!186 = !{!187, !189, !190, !191, !192, !193, !197, !201, !205, !210, !214, !219, !223, !226, !230, !235, !241, !274, !396, !399, !402, !407, !408, !411, !412, !413}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !185, file: !182, line: 32, baseType: !188, size: 32, flags: DIFlagPublic)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !185, file: !182, line: 32, baseType: !188, size: 32, offset: 32, flags: DIFlagPublic)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !185, file: !182, line: 32, baseType: !188, size: 32, offset: 64, flags: DIFlagPublic)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !185, file: !182, line: 33, baseType: !77, size: 32, offset: 96, flags: DIFlagPublic)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !185, file: !182, line: 34, baseType: !83, size: 8, offset: 128, flags: DIFlagPublic)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !185, file: !182, line: 35, baseType: !194, size: 8, offset: 136, flags: DIFlagPublic)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 1)
!197 = !DISubprogram(name: "Printer", scope: !185, file: !182, line: 37, type: !198, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !200, !77, !188}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!201 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !185, file: !182, line: 57, type: !202, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!202 = !DISubroutineType(types: !203)
!203 = !{!204, !200, !9}
!204 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !185, size: 32)
!205 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !185, file: !182, line: 67, type: !206, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubroutineType(types: !207)
!207 = !{!204, !200, !208}
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !18, line: 9, baseType: !209)
!209 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!210 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !185, file: !182, line: 72, type: !211, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!211 = !DISubroutineType(types: !212)
!212 = !{!204, !200, !213}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !18, line: 11, baseType: !28)
!214 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !185, file: !182, line: 77, type: !215, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!215 = !DISubroutineType(types: !216)
!216 = !{!204, !200, !217}
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !18, line: 10, baseType: !218)
!218 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!219 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEj", scope: !185, file: !182, line: 82, type: !220, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DISubroutineType(types: !221)
!221 = !{!204, !200, !222}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 12, baseType: !19)
!223 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !185, file: !182, line: 87, type: !224, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!224 = !DISubroutineType(types: !225)
!225 = !{!204, !200, !93}
!226 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEf", scope: !185, file: !182, line: 92, type: !227, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!227 = !DISubroutineType(types: !228)
!228 = !{!204, !200, !229}
!229 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!230 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !185, file: !182, line: 97, type: !231, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DISubroutineType(types: !232)
!232 = !{!204, !200, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!235 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE23write_float16_from_bitsEt", scope: !185, file: !182, line: 102, type: !236, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!236 = !DISubroutineType(types: !237)
!237 = !{!204, !200, !238}
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !18, line: 14, baseType: !240)
!240 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!241 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !185, file: !182, line: 108, type: !242, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!242 = !DISubroutineType(types: !243)
!243 = !{!204, !200, !244}
!244 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !245, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !115, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !247, identifier: "_ZTS13halide_type_t")
!247 = !{!248, !250, !251, !252, !256, !259, !263, !266, !267, !268, !271}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !246, file: !115, line: 434, baseType: !249, size: 8, align: 8)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !115, line: 413, baseType: !114)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !246, file: !115, line: 442, baseType: !116, size: 8, align: 8, offset: 8)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !246, file: !115, line: 446, baseType: !239, size: 16, align: 16, offset: 16)
!252 = !DISubprogram(name: "halide_type_t", scope: !246, file: !115, line: 453, type: !253, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !255, !249, !116, !239}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!256 = !DISubprogram(name: "halide_type_t", scope: !246, file: !115, line: 459, type: !257, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !255}
!259 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !246, file: !115, line: 463, type: !260, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!260 = !DISubroutineType(types: !261)
!261 = !{!246, !262, !239}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!263 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !246, file: !115, line: 468, type: !264, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DISubroutineType(types: !265)
!265 = !{!83, !262, !244}
!266 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !246, file: !115, line: 472, type: !264, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !246, file: !115, line: 476, type: !264, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!268 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !246, file: !115, line: 481, type: !269, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!269 = !DISubroutineType(types: !270)
!270 = !{!28, !262}
!271 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !246, file: !115, line: 485, type: !272, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!272 = !DISubroutineType(types: !273)
!273 = !{!222, !262}
!274 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK15halide_buffer_t", scope: !185, file: !182, line: 113, type: !275, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!275 = !DISubroutineType(types: !276)
!276 = !{!204, !200, !277}
!277 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !278, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !115, line: 1550, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !115, line: 1423, size: 320, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !281, identifier: "_ZTS15halide_buffer_t")
!281 = !{!282, !283, !335, !337, !338, !339, !340, !363, !364, !369, !373, !376, !377, !380, !381, !384, !387, !388, !389, !392, !395}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !280, file: !115, line: 1425, baseType: !217, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !280, file: !115, line: 1428, baseType: !284, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !115, line: 723, size: 512, flags: DIFlagTypePassByValue, elements: !287, identifier: "_ZTS25halide_device_interface_t")
!287 = !{!288, !293, !297, !298, !302, !303, !304, !305, !306, !310, !316, !320, !321, !325, !326, !331}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !286, file: !115, line: 724, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 32)
!290 = !DISubroutineType(types: !291)
!291 = !{!28, !77, !292, !284}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !286, file: !115, line: 726, baseType: !294, size: 32, offset: 32)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 32)
!295 = !DISubroutineType(types: !296)
!296 = !{!28, !77, !292}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !286, file: !115, line: 727, baseType: !294, size: 32, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !286, file: !115, line: 728, baseType: !299, size: 32, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 32)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !77, !284}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !286, file: !115, line: 730, baseType: !294, size: 32, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !286, file: !115, line: 731, baseType: !289, size: 32, offset: 160)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !286, file: !115, line: 733, baseType: !289, size: 32, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !286, file: !115, line: 735, baseType: !294, size: 32, offset: 224)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !286, file: !115, line: 736, baseType: !307, size: 32, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 32)
!308 = !DISubroutineType(types: !309)
!309 = !{!28, !77, !292, !284, !292}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !286, file: !115, line: 738, baseType: !311, size: 32, offset: 288)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 32)
!312 = !DISubroutineType(types: !313)
!313 = !{!28, !77, !314, !292}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !286, file: !115, line: 740, baseType: !317, size: 32, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 32)
!318 = !DISubroutineType(types: !319)
!319 = !{!28, !77, !314, !28, !28, !292}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !286, file: !115, line: 742, baseType: !294, size: 32, offset: 352)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !286, file: !115, line: 743, baseType: !322, size: 32, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 32)
!323 = !DISubroutineType(types: !324)
!324 = !{!28, !77, !292, !217, !284}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !286, file: !115, line: 745, baseType: !294, size: 32, offset: 416)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !286, file: !115, line: 746, baseType: !327, size: 32, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 32)
!328 = !DISubroutineType(types: !329)
!329 = !{!28, !77, !330, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !286, file: !115, line: 747, baseType: !332, size: 32, offset: 480)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !115, line: 707, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS30halide_device_interface_impl_t")
!335 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !280, file: !115, line: 1433, baseType: !336, size: 32, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !115, line: 1436, baseType: !217, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !280, file: !115, line: 1439, baseType: !246, size: 32, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !280, file: !115, line: 1442, baseType: !213, size: 32, offset: 224)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !280, file: !115, line: 1446, baseType: !341, size: 32, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !115, line: 1409, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !115, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !344, identifier: "_ZTS18halide_dimension_t")
!344 = !{!345, !346, !347, !348, !349, !353, !356, !362}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !343, file: !115, line: 1383, baseType: !213, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !343, file: !115, line: 1383, baseType: !213, size: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !343, file: !115, line: 1383, baseType: !213, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !115, line: 1386, baseType: !222, size: 32, offset: 96)
!349 = !DISubprogram(name: "halide_dimension_t", scope: !343, file: !115, line: 1388, type: !350, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!353 = !DISubprogram(name: "halide_dimension_t", scope: !343, file: !115, line: 1389, type: !354, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !352, !213, !213, !213, !222}
!356 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !343, file: !115, line: 1393, type: !357, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DISubroutineType(types: !358)
!358 = !{!83, !359, !361}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!361 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !360, size: 32)
!362 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !343, file: !115, line: 1400, type: !357, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !280, file: !115, line: 1449, baseType: !77, size: 32, offset: 288)
!364 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !280, file: !115, line: 1454, type: !365, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!365 = !DISubroutineType(types: !366)
!366 = !{!83, !367, !368}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !115, line: 1416, baseType: !124)
!369 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !280, file: !115, line: 1458, type: !370, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !372, !368, !83}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!373 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !280, file: !115, line: 1466, type: !374, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!374 = !DISubroutineType(types: !375)
!375 = !{!83, !367}
!376 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !280, file: !115, line: 1470, type: !374, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!377 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !280, file: !115, line: 1474, type: !378, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !372, !83}
!380 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !280, file: !115, line: 1478, type: !378, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!381 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !280, file: !115, line: 1485, type: !382, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = !DISubroutineType(types: !383)
!383 = !{!17, !367}
!384 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !280, file: !115, line: 1495, type: !385, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DISubroutineType(types: !386)
!386 = !{!336, !367}
!387 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !280, file: !115, line: 1506, type: !385, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!388 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !280, file: !115, line: 1518, type: !382, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!389 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !280, file: !115, line: 1523, type: !390, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DISubroutineType(types: !391)
!391 = !{!336, !367, !41}
!392 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !280, file: !115, line: 1534, type: !393, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DISubroutineType(types: !394)
!394 = !{!28, !372, !77}
!395 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !280, file: !115, line: 1545, type: !374, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!396 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !185, file: !182, line: 119, type: !397, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!397 = !DISubroutineType(types: !398)
!398 = !{!9, !200}
!399 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !185, file: !182, line: 131, type: !400, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !200}
!402 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !185, file: !182, line: 139, type: !403, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!403 = !DISubroutineType(types: !404)
!404 = !{!217, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!407 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE8capacityEv", scope: !185, file: !182, line: 143, type: !403, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!408 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5eraseEi", scope: !185, file: !182, line: 148, type: !409, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !200, !28}
!411 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE16allocation_errorEv", scope: !185, file: !182, line: 158, type: !397, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!412 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !185, file: !182, line: 162, type: !400, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DISubprogram(name: "~Printer", scope: !185, file: !182, line: 166, type: !400, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!414 = !{!415, !416}
!415 = !DITemplateValueParameter(name: "type", type: !28, value: i32 1)
!416 = !DITemplateValueParameter(name: "length", type: !218, value: i64 1024)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !18, line: 15, baseType: !419)
!419 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !18, line: 13, baseType: !422)
!422 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 32)
!434 = !DISubroutineType(types: !435)
!435 = !{!19, !20}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 32)
!437 = !DISubroutineType(types: !438)
!438 = !{!439, !20}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 32)
!442 = !DISubroutineType(types: !443)
!443 = !{!101, !19, !19, !48, !102}
!444 = !{!0, !12, !23, !29, !36, !43, !72, !78, !84, !86, !88, !94, !96, !106}
!445 = !{!446, !447}
!446 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !111, entity: !184, file: !18, line: 225)
!447 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !111, entity: !2, file: !49, line: 214)
!448 = !{i32 7, !"Dwarf Version", i32 4}
!449 = !{i32 2, !"Debug Info Version", i32 3}
!450 = !{i32 1, !"wchar_size", i32 4}
!451 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!452 = distinct !DISubprogram(name: "get_class_id", linkageName: "_ZN6Halide7Runtime3mex12get_class_idEii", scope: !2, file: !49, line: 78, type: !453, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{!48, !213, !213}
!455 = !{!456, !457}
!456 = !DILocalVariable(name: "type_code", arg: 1, scope: !452, file: !49, line: 78, type: !213)
!457 = !DILocalVariable(name: "type_bits", arg: 2, scope: !452, file: !49, line: 78, type: !213)
!458 = !DILocation(line: 0, scope: !452)
!459 = !DILocation(line: 79, column: 5, scope: !452)
!460 = !DILocation(line: 81, column: 9, scope: !461)
!461 = distinct !DILexicalBlock(scope: !452, file: !49, line: 79, column: 24)
!462 = !DILocation(line: 85, column: 13, scope: !463)
!463 = distinct !DILexicalBlock(scope: !461, file: !49, line: 81, column: 28)
!464 = !DILocation(line: 87, column: 13, scope: !463)
!465 = !DILocation(line: 89, column: 13, scope: !463)
!466 = !DILocation(line: 91, column: 13, scope: !463)
!467 = !DILocation(line: 93, column: 9, scope: !461)
!468 = !DILocation(line: 95, column: 9, scope: !461)
!469 = !DILocation(line: 99, column: 13, scope: !470)
!470 = distinct !DILexicalBlock(scope: !461, file: !49, line: 95, column: 28)
!471 = !DILocation(line: 101, column: 13, scope: !470)
!472 = !DILocation(line: 103, column: 13, scope: !470)
!473 = !DILocation(line: 105, column: 13, scope: !470)
!474 = !DILocation(line: 107, column: 9, scope: !461)
!475 = !DILocation(line: 109, column: 9, scope: !461)
!476 = !DILocation(line: 118, column: 1, scope: !452)
!477 = distinct !DISubprogram(name: "get_class_name", linkageName: "_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE", scope: !2, file: !49, line: 121, type: !478, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{!9, !48}
!480 = !{!481}
!481 = !DILocalVariable(name: "id", arg: 1, scope: !477, file: !49, line: 121, type: !48)
!482 = !DILocation(line: 0, scope: !477)
!483 = !DILocation(line: 122, column: 5, scope: !477)
!484 = !DILocation(line: 126, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !477, file: !49, line: 122, column: 17)
!486 = !DILocation(line: 128, column: 9, scope: !485)
!487 = !DILocation(line: 130, column: 9, scope: !485)
!488 = !DILocation(line: 132, column: 9, scope: !485)
!489 = !DILocation(line: 134, column: 9, scope: !485)
!490 = !DILocation(line: 136, column: 9, scope: !485)
!491 = !DILocation(line: 138, column: 9, scope: !485)
!492 = !DILocation(line: 140, column: 9, scope: !485)
!493 = !DILocation(line: 142, column: 9, scope: !485)
!494 = !DILocation(line: 144, column: 9, scope: !485)
!495 = !DILocation(line: 146, column: 9, scope: !485)
!496 = !DILocation(line: 148, column: 9, scope: !485)
!497 = !DILocation(line: 150, column: 9, scope: !485)
!498 = !DILocation(line: 152, column: 9, scope: !485)
!499 = !DILocation(line: 154, column: 9, scope: !485)
!500 = !DILocation(line: 156, column: 9, scope: !485)
!501 = !DILocation(line: 158, column: 9, scope: !485)
!502 = !DILocation(line: 160, column: 9, scope: !485)
!503 = !DILocation(line: 0, scope: !485)
!504 = !DILocation(line: 162, column: 1, scope: !477)
!505 = distinct !DISubprogram(name: "halide_matlab_describe_pipeline", scope: !49, file: !49, line: 218, type: !506, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !607)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !508, !576}
!508 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !509, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringstream", scope: !183, file: !182, line: 200, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<2, 1024>", scope: !183, file: !182, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !511, templateParams: !574)
!511 = !{!512, !513, !514, !515, !516, !517, !518, !522, !526, !529, !532, !535, !538, !541, !544, !547, !550, !553, !556, !559, !562, !567, !568, !571, !572, !573}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !510, file: !182, line: 32, baseType: !188, size: 32, flags: DIFlagPublic)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !510, file: !182, line: 32, baseType: !188, size: 32, offset: 32, flags: DIFlagPublic)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !510, file: !182, line: 32, baseType: !188, size: 32, offset: 64, flags: DIFlagPublic)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !510, file: !182, line: 33, baseType: !77, size: 32, offset: 96, flags: DIFlagPublic)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !510, file: !182, line: 34, baseType: !83, size: 8, offset: 128, flags: DIFlagPublic)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !510, file: !182, line: 35, baseType: !194, size: 8, offset: 136, flags: DIFlagPublic)
!518 = !DISubprogram(name: "Printer", scope: !510, file: !182, line: 37, type: !519, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !521, !77, !188}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!522 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEPKc", scope: !510, file: !182, line: 57, type: !523, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!523 = !DISubroutineType(types: !524)
!524 = !{!525, !521, !9}
!525 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !510, size: 32)
!526 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEx", scope: !510, file: !182, line: 67, type: !527, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!527 = !DISubroutineType(types: !528)
!528 = !{!525, !521, !208}
!529 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEi", scope: !510, file: !182, line: 72, type: !530, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!530 = !DISubroutineType(types: !531)
!531 = !{!525, !521, !213}
!532 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEy", scope: !510, file: !182, line: 77, type: !533, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!533 = !DISubroutineType(types: !534)
!534 = !{!525, !521, !217}
!535 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEj", scope: !510, file: !182, line: 82, type: !536, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!536 = !DISubroutineType(types: !537)
!537 = !{!525, !521, !222}
!538 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEd", scope: !510, file: !182, line: 87, type: !539, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!539 = !DISubroutineType(types: !540)
!540 = !{!525, !521, !93}
!541 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEf", scope: !510, file: !182, line: 92, type: !542, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!542 = !DISubroutineType(types: !543)
!543 = !{!525, !521, !229}
!544 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEPKv", scope: !510, file: !182, line: 97, type: !545, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!545 = !DISubroutineType(types: !546)
!546 = !{!525, !521, !233}
!547 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE23write_float16_from_bitsEt", scope: !510, file: !182, line: 102, type: !548, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!548 = !DISubroutineType(types: !549)
!549 = !{!525, !521, !238}
!550 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsERK13halide_type_t", scope: !510, file: !182, line: 108, type: !551, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!551 = !DISubroutineType(types: !552)
!552 = !{!525, !521, !244}
!553 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsERK15halide_buffer_t", scope: !510, file: !182, line: 113, type: !554, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!554 = !DISubroutineType(types: !555)
!555 = !{!525, !521, !277}
!556 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE3strEv", scope: !510, file: !182, line: 119, type: !557, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!557 = !DISubroutineType(types: !558)
!558 = !{!9, !521}
!559 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5clearEv", scope: !510, file: !182, line: 131, type: !560, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !521}
!562 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE4sizeEv", scope: !510, file: !182, line: 139, type: !563, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!563 = !DISubroutineType(types: !564)
!564 = !{!217, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!567 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE8capacityEv", scope: !510, file: !182, line: 143, type: !563, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!568 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5eraseEi", scope: !510, file: !182, line: 148, type: !569, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !521, !28}
!571 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE16allocation_errorEv", scope: !510, file: !182, line: 158, type: !557, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!572 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE28msan_annotate_is_initializedEv", scope: !510, file: !182, line: 162, type: !560, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!573 = !DISubprogram(name: "~Printer", scope: !510, file: !182, line: 166, type: !560, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!574 = !{!575, !416}
!575 = !DITemplateValueParameter(name: "type", type: !28, value: i32 2)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_filter_metadata_t", file: !115, line: 1648, size: 160, flags: DIFlagTypePassByValue, elements: !579, identifier: "_ZTS24halide_filter_metadata_t")
!579 = !{!580, !582, !583, !584, !605, !606}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "VERSION", scope: !578, file: !115, line: 1650, baseType: !581, flags: DIFlagStaticMember, extraData: i32 1)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !578, file: !115, line: 1654, baseType: !213, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "num_arguments", scope: !578, file: !115, line: 1657, baseType: !213, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !578, file: !115, line: 1663, baseType: !585, size: 32, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_filter_argument_t", file: !115, line: 1631, size: 288, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !588, identifier: "_ZTS24halide_filter_argument_t")
!588 = !{!589, !590, !591, !592, !593, !597, !598, !599, !600}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !587, file: !115, line: 1632, baseType: !9, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !587, file: !115, line: 1633, baseType: !213, size: 32, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !587, file: !115, line: 1634, baseType: !213, size: 32, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !115, line: 1635, baseType: !246, size: 32, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "scalar_def", scope: !587, file: !115, line: 1639, baseType: !594, size: 32, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_scalar_value_t", file: !115, line: 1576, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS21halide_scalar_value_t")
!597 = !DIDerivedType(tag: DW_TAG_member, name: "scalar_min", scope: !587, file: !115, line: 1639, baseType: !594, size: 32, offset: 160)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "scalar_max", scope: !587, file: !115, line: 1639, baseType: !594, size: 32, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "scalar_estimate", scope: !587, file: !115, line: 1639, baseType: !594, size: 32, offset: 224)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_estimates", scope: !587, file: !115, line: 1645, baseType: !601, size: 32, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !578, file: !115, line: 1667, baseType: !9, size: 32, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !578, file: !115, line: 1670, baseType: !9, size: 32, offset: 128)
!607 = !{!608, !609, !610, !612}
!608 = !DILocalVariable(name: "desc", arg: 1, scope: !505, file: !49, line: 218, type: !508)
!609 = !DILocalVariable(name: "metadata", arg: 2, scope: !505, file: !49, line: 218, type: !576)
!610 = !DILocalVariable(name: "i", scope: !611, file: !49, line: 220, type: !28)
!611 = distinct !DILexicalBlock(scope: !505, file: !49, line: 220, column: 5)
!612 = !DILocalVariable(name: "arg", scope: !613, file: !49, line: 221, type: !585)
!613 = distinct !DILexicalBlock(scope: !614, file: !49, line: 220, column: 55)
!614 = distinct !DILexicalBlock(scope: !611, file: !49, line: 220, column: 5)
!615 = !DILocation(line: 0, scope: !505)
!616 = !DILocalVariable(name: "this", arg: 1, scope: !617, type: !620, flags: DIFlagArtificial | DIFlagObjectPointer)
!617 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEPKc", scope: !510, file: !182, line: 57, type: !523, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, declaration: !522, retainedNodes: !618)
!618 = !{!616, !619}
!619 = !DILocalVariable(name: "arg", arg: 2, scope: !617, file: !182, line: 57, type: !9)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 32)
!621 = !DILocation(line: 0, scope: !617, inlinedAt: !622)
!622 = distinct !DILocation(line: 219, column: 10, scope: !505)
!623 = !DILocation(line: 62, column: 43, scope: !624, inlinedAt: !622)
!624 = distinct !DILexicalBlock(scope: !625, file: !182, line: 61, column: 16)
!625 = distinct !DILexicalBlock(scope: !617, file: !182, line: 59, column: 13)
!626 = !{!627, !628, i64 4}
!627 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEE", !628, i64 0, !628, i64 4, !628, i64 8, !628, i64 12, !631, i64 16, !629, i64 17}
!628 = !{!"any pointer", !629, i64 0}
!629 = !{!"omnipotent char", !630, i64 0}
!630 = !{!"Simple C++ TBAA"}
!631 = !{!"bool", !629, i64 0}
!632 = !DILocation(line: 62, column: 48, scope: !624, inlinedAt: !622)
!633 = !{!627, !628, i64 8}
!634 = !DILocation(line: 62, column: 19, scope: !624, inlinedAt: !622)
!635 = !DILocation(line: 62, column: 17, scope: !624, inlinedAt: !622)
!636 = !DILocation(line: 219, column: 33, scope: !505)
!637 = !{!638, !628, i64 16}
!638 = !{!"_ZTS24halide_filter_metadata_t", !639, i64 0, !639, i64 4, !628, i64 8, !628, i64 12, !628, i64 16}
!639 = !{!"int", !629, i64 0}
!640 = !DILocation(line: 0, scope: !617, inlinedAt: !641)
!641 = distinct !DILocation(line: 219, column: 20, scope: !505)
!642 = !DILocation(line: 59, column: 17, scope: !625, inlinedAt: !641)
!643 = !DILocation(line: 0, scope: !625, inlinedAt: !641)
!644 = !DILocation(line: 59, column: 13, scope: !617, inlinedAt: !641)
!645 = !DILocation(line: 60, column: 19, scope: !646, inlinedAt: !641)
!646 = distinct !DILexicalBlock(scope: !625, file: !182, line: 59, column: 29)
!647 = !DILocation(line: 61, column: 9, scope: !646, inlinedAt: !641)
!648 = !DILocation(line: 62, column: 19, scope: !624, inlinedAt: !641)
!649 = !DILocation(line: 0, scope: !617, inlinedAt: !650)
!650 = distinct !DILocation(line: 219, column: 38, scope: !505)
!651 = !DILocation(line: 62, column: 48, scope: !624, inlinedAt: !650)
!652 = !DILocation(line: 62, column: 19, scope: !624, inlinedAt: !650)
!653 = !DILocation(line: 62, column: 17, scope: !624, inlinedAt: !650)
!654 = !DILocation(line: 0, scope: !611)
!655 = !DILocation(line: 220, column: 35, scope: !614)
!656 = !{!638, !639, i64 4}
!657 = !DILocation(line: 220, column: 23, scope: !614)
!658 = !DILocation(line: 220, column: 5, scope: !611)
!659 = !DILocation(line: 221, column: 58, scope: !613)
!660 = !{!638, !628, i64 8}
!661 = !DILocation(line: 0, scope: !613)
!662 = !DILocation(line: 225, column: 18, scope: !663)
!663 = distinct !DILexicalBlock(scope: !613, file: !49, line: 225, column: 13)
!664 = !{!665, !639, i64 4}
!665 = !{!"_ZTS24halide_filter_argument_t", !628, i64 0, !639, i64 4, !639, i64 8, !666, i64 12, !628, i64 16, !628, i64 20, !628, i64 24, !628, i64 28, !628, i64 32}
!666 = !{!"_ZTS13halide_type_t", !667, i64 0, !629, i64 1, !668, i64 2}
!667 = !{!"_ZTS18halide_type_code_t", !629, i64 0}
!668 = !{!"short", !629, i64 0}
!669 = !DILocation(line: 225, column: 23, scope: !663)
!670 = !DILocation(line: 225, column: 13, scope: !613)
!671 = !DILocation(line: 0, scope: !617, inlinedAt: !672)
!672 = distinct !DILocation(line: 226, column: 18, scope: !673)
!673 = distinct !DILexicalBlock(scope: !663, file: !49, line: 225, column: 62)
!674 = !DILocation(line: 62, column: 48, scope: !624, inlinedAt: !672)
!675 = !DILocation(line: 62, column: 19, scope: !624, inlinedAt: !672)
!676 = !DILocation(line: 62, column: 17, scope: !624, inlinedAt: !672)
!677 = !DILocation(line: 228, column: 18, scope: !678)
!678 = distinct !DILexicalBlock(scope: !613, file: !49, line: 228, column: 13)
!679 = !DILocation(line: 227, column: 9, scope: !673)
!680 = !DILocation(line: 228, column: 61, scope: !678)
!681 = !DILocation(line: 0, scope: !617, inlinedAt: !682)
!682 = distinct !DILocation(line: 232, column: 18, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !49, line: 231, column: 68)
!684 = distinct !DILexicalBlock(scope: !678, file: !49, line: 231, column: 20)
!685 = !DILocation(line: 62, column: 48, scope: !624, inlinedAt: !682)
!686 = !DILocation(line: 62, column: 19, scope: !624, inlinedAt: !682)
!687 = !DILocation(line: 233, column: 9, scope: !683)
!688 = !DILocation(line: 230, column: 26, scope: !689)
!689 = distinct !DILexicalBlock(scope: !678, file: !49, line: 229, column: 61)
!690 = !{!665, !639, i64 8}
!691 = !DILocalVariable(name: "this", arg: 1, scope: !692, type: !620, flags: DIFlagArtificial | DIFlagObjectPointer)
!692 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EElsEi", scope: !510, file: !182, line: 72, type: !530, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, declaration: !529, retainedNodes: !693)
!693 = !{!691, !694}
!694 = !DILocalVariable(name: "arg", arg: 2, scope: !692, file: !182, line: 72, type: !213)
!695 = !DILocation(line: 0, scope: !692, inlinedAt: !696)
!696 = distinct !DILocation(line: 230, column: 18, scope: !689)
!697 = !DILocation(line: 73, column: 43, scope: !692, inlinedAt: !696)
!698 = !DILocation(line: 73, column: 48, scope: !692, inlinedAt: !696)
!699 = !DILocation(line: 73, column: 15, scope: !692, inlinedAt: !696)
!700 = !DILocation(line: 73, column: 13, scope: !692, inlinedAt: !696)
!701 = !DILocation(line: 0, scope: !617, inlinedAt: !702)
!702 = distinct !DILocation(line: 230, column: 37, scope: !689)
!703 = !DILocation(line: 62, column: 48, scope: !624, inlinedAt: !702)
!704 = !DILocation(line: 62, column: 19, scope: !624, inlinedAt: !702)
!705 = !DILocation(line: 231, column: 9, scope: !689)
!706 = !DILocation(line: 0, scope: !678)
!707 = !DILocation(line: 234, column: 55, scope: !613)
!708 = !{!665, !667, i64 12}
!709 = !DILocation(line: 234, column: 45, scope: !613)
!710 = !DILocation(line: 234, column: 71, scope: !613)
!711 = !{!665, !629, i64 13}
!712 = !DILocation(line: 234, column: 61, scope: !613)
!713 = !DILocation(line: 234, column: 32, scope: !613)
!714 = !DILocation(line: 234, column: 17, scope: !613)
!715 = !DILocation(line: 0, scope: !617, inlinedAt: !716)
!716 = distinct !DILocation(line: 234, column: 14, scope: !613)
!717 = !DILocation(line: 59, column: 17, scope: !625, inlinedAt: !716)
!718 = !DILocation(line: 0, scope: !625, inlinedAt: !716)
!719 = !DILocation(line: 59, column: 13, scope: !617, inlinedAt: !716)
!720 = !DILocation(line: 62, column: 19, scope: !624, inlinedAt: !716)
!721 = !DILocation(line: 60, column: 19, scope: !646, inlinedAt: !716)
!722 = !DILocation(line: 61, column: 9, scope: !646, inlinedAt: !716)
!723 = !DILocation(line: 0, scope: !617, inlinedAt: !724)
!724 = distinct !DILocation(line: 235, column: 14, scope: !613)
!725 = !DILocation(line: 62, column: 48, scope: !624, inlinedAt: !724)
!726 = !DILocation(line: 62, column: 19, scope: !624, inlinedAt: !724)
!727 = !DILocation(line: 62, column: 17, scope: !624, inlinedAt: !724)
!728 = !DILocation(line: 235, column: 30, scope: !613)
!729 = !{!665, !628, i64 0}
!730 = !DILocation(line: 0, scope: !617, inlinedAt: !731)
!731 = distinct !DILocation(line: 235, column: 22, scope: !613)
!732 = !DILocation(line: 59, column: 17, scope: !625, inlinedAt: !731)
!733 = !DILocation(line: 0, scope: !625, inlinedAt: !731)
!734 = !DILocation(line: 59, column: 13, scope: !617, inlinedAt: !731)
!735 = !DILocation(line: 62, column: 19, scope: !624, inlinedAt: !731)
!736 = !DILocation(line: 60, column: 19, scope: !646, inlinedAt: !731)
!737 = !DILocation(line: 61, column: 9, scope: !646, inlinedAt: !731)
!738 = !DILocation(line: 0, scope: !617, inlinedAt: !739)
!739 = distinct !DILocation(line: 235, column: 35, scope: !613)
!740 = !DILocation(line: 62, column: 48, scope: !624, inlinedAt: !739)
!741 = !DILocation(line: 62, column: 19, scope: !624, inlinedAt: !739)
!742 = !DILocation(line: 62, column: 17, scope: !624, inlinedAt: !739)
!743 = !DILocation(line: 62, column: 43, scope: !624, inlinedAt: !744)
!744 = distinct !DILocation(line: 237, column: 10, scope: !505)
!745 = !DILocation(line: 0, scope: !617, inlinedAt: !744)
!746 = !DILocation(line: 62, column: 48, scope: !624, inlinedAt: !744)
!747 = !DILocation(line: 62, column: 19, scope: !624, inlinedAt: !744)
!748 = !DILocation(line: 62, column: 17, scope: !624, inlinedAt: !744)
!749 = !DILocation(line: 238, column: 1, scope: !505)
!750 = !DILocation(line: 0, scope: !617, inlinedAt: !751)
!751 = distinct !DILocation(line: 223, column: 18, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !49, line: 222, column: 20)
!753 = distinct !DILexicalBlock(scope: !613, file: !49, line: 222, column: 13)
!754 = !DILocation(line: 62, column: 48, scope: !624, inlinedAt: !751)
!755 = !DILocation(line: 62, column: 19, scope: !624, inlinedAt: !751)
!756 = !DILocation(line: 62, column: 17, scope: !624, inlinedAt: !751)
!757 = !DILocation(line: 220, column: 51, scope: !614)
!758 = distinct !{!758, !658, !759, !760, !761}
!759 = !DILocation(line: 236, column: 5, scope: !611)
!760 = !{!"llvm.loop.mustprogress"}
!761 = !{!"llvm.loop.peeled.count", i32 1}
!762 = distinct !DISubprogram(name: "halide_matlab_note_pipeline_description", scope: !49, file: !49, line: 240, type: !763, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !765)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !77, !576}
!765 = !{!766, !767, !768}
!766 = !DILocalVariable(name: "user_context", arg: 1, scope: !762, file: !49, line: 240, type: !77)
!767 = !DILocalVariable(name: "metadata", arg: 2, scope: !762, file: !49, line: 240, type: !576)
!768 = !DILocalVariable(name: "desc", scope: !762, file: !49, line: 241, type: !509)
!769 = !DILocation(line: 0, scope: !762)
!770 = !DILocation(line: 241, column: 5, scope: !762)
!771 = !DILocation(line: 241, column: 18, scope: !762)
!772 = !DILocalVariable(name: "this", arg: 1, scope: !773, type: !620, flags: DIFlagArtificial | DIFlagObjectPointer)
!773 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEC2EPvPc", scope: !510, file: !182, line: 37, type: !519, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, declaration: !518, retainedNodes: !774)
!774 = !{!772, !775, !776}
!775 = !DILocalVariable(name: "ctx", arg: 2, scope: !773, file: !182, line: 37, type: !77)
!776 = !DILocalVariable(name: "mem", arg: 3, scope: !773, file: !182, line: 37, type: !188)
!777 = !DILocation(line: 0, scope: !773, inlinedAt: !778)
!778 = distinct !DILocation(line: 241, column: 18, scope: !762)
!779 = !DILocation(line: 38, column: 11, scope: !773, inlinedAt: !778)
!780 = !{!627, !628, i64 12}
!781 = !DILocation(line: 38, column: 30, scope: !773, inlinedAt: !778)
!782 = !{!627, !631, i64 16}
!783 = !DILocation(line: 44, column: 27, scope: !784, inlinedAt: !778)
!784 = distinct !DILexicalBlock(scope: !785, file: !182, line: 43, column: 16)
!785 = distinct !DILexicalBlock(scope: !786, file: !182, line: 41, column: 20)
!786 = distinct !DILexicalBlock(scope: !787, file: !182, line: 39, column: 13)
!787 = distinct !DILexicalBlock(scope: !773, file: !182, line: 38, column: 54)
!788 = !DILocation(line: 44, column: 13, scope: !784, inlinedAt: !778)
!789 = !DILocation(line: 44, column: 17, scope: !784, inlinedAt: !778)
!790 = !{!627, !628, i64 0}
!791 = !DILocation(line: 47, column: 9, scope: !787, inlinedAt: !778)
!792 = !DILocation(line: 48, column: 13, scope: !793, inlinedAt: !778)
!793 = distinct !DILexicalBlock(scope: !787, file: !182, line: 48, column: 13)
!794 = !DILocation(line: 48, column: 13, scope: !787, inlinedAt: !778)
!795 = !DILocation(line: 49, column: 23, scope: !796, inlinedAt: !778)
!796 = distinct !DILexicalBlock(scope: !793, file: !182, line: 48, column: 18)
!797 = !DILocation(line: 50, column: 18, scope: !796, inlinedAt: !778)
!798 = !{!629, !629, i64 0}
!799 = !DILocation(line: 51, column: 9, scope: !796, inlinedAt: !778)
!800 = !DILocation(line: 0, scope: !793, inlinedAt: !778)
!801 = !DILocation(line: 53, column: 13, scope: !802, inlinedAt: !778)
!802 = distinct !DILexicalBlock(scope: !793, file: !182, line: 51, column: 16)
!803 = !DILocation(line: 53, column: 17, scope: !802, inlinedAt: !778)
!804 = !DILocation(line: 0, scope: !617, inlinedAt: !805)
!805 = distinct !DILocation(line: 242, column: 10, scope: !762)
!806 = !DILocation(line: 62, column: 19, scope: !624, inlinedAt: !805)
!807 = !DILocation(line: 62, column: 17, scope: !624, inlinedAt: !805)
!808 = !DILocation(line: 243, column: 5, scope: !762)
!809 = !DILocalVariable(name: "this", arg: 1, scope: !810, type: !620, flags: DIFlagArtificial | DIFlagObjectPointer)
!810 = distinct !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE3strEv", scope: !510, file: !182, line: 119, type: !557, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, declaration: !556, retainedNodes: !811)
!811 = !{!809}
!812 = !DILocation(line: 0, scope: !810, inlinedAt: !813)
!813 = distinct !DILocation(line: 244, column: 37, scope: !762)
!814 = !DILocation(line: 120, column: 13, scope: !815, inlinedAt: !813)
!815 = distinct !DILexicalBlock(scope: !810, file: !182, line: 120, column: 13)
!816 = !DILocation(line: 120, column: 13, scope: !810, inlinedAt: !813)
!817 = !DILocation(line: 122, column: 17, scope: !818, inlinedAt: !813)
!818 = distinct !DILexicalBlock(scope: !819, file: !182, line: 121, column: 46)
!819 = distinct !DILexicalBlock(scope: !820, file: !182, line: 121, column: 17)
!820 = distinct !DILexicalBlock(scope: !815, file: !182, line: 120, column: 18)
!821 = !DILocalVariable(name: "this", arg: 1, scope: !822, type: !620, flags: DIFlagArtificial | DIFlagObjectPointer)
!822 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE28msan_annotate_is_initializedEv", scope: !510, file: !182, line: 162, type: !560, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, declaration: !572, retainedNodes: !823)
!823 = !{!821}
!824 = !DILocation(line: 0, scope: !822, inlinedAt: !825)
!825 = distinct !DILocation(line: 122, column: 17, scope: !818, inlinedAt: !813)
!826 = !DILocation(line: 163, column: 81, scope: !822, inlinedAt: !825)
!827 = !DILocation(line: 163, column: 87, scope: !822, inlinedAt: !825)
!828 = !DILocation(line: 163, column: 77, scope: !822, inlinedAt: !825)
!829 = !DILocation(line: 163, column: 15, scope: !822, inlinedAt: !825)
!830 = !DILocation(line: 124, column: 20, scope: !820, inlinedAt: !813)
!831 = !DILocation(line: 124, column: 13, scope: !820, inlinedAt: !813)
!832 = !DILocation(line: 0, scope: !815, inlinedAt: !813)
!833 = !DILocation(line: 244, column: 5, scope: !762)
!834 = !DILocalVariable(name: "this", arg: 1, scope: !835, type: !620, flags: DIFlagArtificial | DIFlagObjectPointer)
!835 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EED2Ev", scope: !510, file: !182, line: 166, type: !560, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, declaration: !573, retainedNodes: !836)
!836 = !{!834}
!837 = !DILocation(line: 0, scope: !835, inlinedAt: !838)
!838 = distinct !DILocation(line: 245, column: 1, scope: !762)
!839 = !DILocation(line: 167, column: 14, scope: !840, inlinedAt: !838)
!840 = distinct !DILexicalBlock(scope: !841, file: !182, line: 167, column: 13)
!841 = distinct !DILexicalBlock(scope: !835, file: !182, line: 166, column: 16)
!842 = !DILocation(line: 167, column: 13, scope: !841, inlinedAt: !838)
!843 = !DILocation(line: 168, column: 26, scope: !844, inlinedAt: !838)
!844 = distinct !DILexicalBlock(scope: !840, file: !182, line: 167, column: 19)
!845 = !DILocation(line: 168, column: 13, scope: !844, inlinedAt: !838)
!846 = !DILocation(line: 169, column: 9, scope: !844, inlinedAt: !838)
!847 = !DILocation(line: 170, column: 13, scope: !848, inlinedAt: !838)
!848 = distinct !DILexicalBlock(scope: !840, file: !182, line: 169, column: 16)
!849 = !DILocation(line: 0, scope: !822, inlinedAt: !850)
!850 = distinct !DILocation(line: 170, column: 13, scope: !848, inlinedAt: !838)
!851 = !DILocation(line: 163, column: 81, scope: !822, inlinedAt: !850)
!852 = !DILocation(line: 163, column: 87, scope: !822, inlinedAt: !850)
!853 = !DILocation(line: 163, column: 77, scope: !822, inlinedAt: !850)
!854 = !DILocation(line: 163, column: 15, scope: !822, inlinedAt: !850)
!855 = !DILocation(line: 180, column: 13, scope: !856, inlinedAt: !838)
!856 = distinct !DILexicalBlock(scope: !841, file: !182, line: 180, column: 13)
!857 = !{i8 0, i8 2}
!858 = !DILocation(line: 180, column: 21, scope: !856, inlinedAt: !838)
!859 = !DILocation(line: 180, column: 24, scope: !856, inlinedAt: !838)
!860 = !DILocation(line: 180, column: 31, scope: !856, inlinedAt: !838)
!861 = !DILocation(line: 180, column: 28, scope: !856, inlinedAt: !838)
!862 = !DILocation(line: 180, column: 13, scope: !841, inlinedAt: !838)
!863 = !DILocation(line: 181, column: 13, scope: !864, inlinedAt: !838)
!864 = distinct !DILexicalBlock(scope: !856, file: !182, line: 180, column: 40)
!865 = !DILocation(line: 182, column: 9, scope: !864, inlinedAt: !838)
!866 = !DILocation(line: 245, column: 1, scope: !762)
!867 = !DISubprogram(name: "halide_print", scope: !115, file: !115, line: 97, type: !868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !77, !9}
!870 = !{}
!871 = distinct !DISubprogram(name: "halide_matlab_error", scope: !49, file: !49, line: 247, type: !868, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !872)
!872 = !{!873, !874, !875}
!873 = !DILocalVariable(name: "user_context", arg: 1, scope: !871, file: !49, line: 247, type: !77)
!874 = !DILocalVariable(name: "msg", arg: 2, scope: !871, file: !49, line: 247, type: !9)
!875 = !DILocalVariable(name: "error_msg", scope: !871, file: !49, line: 250, type: !509)
!876 = !DILocation(line: 0, scope: !871)
!877 = !DILocation(line: 0, scope: !773, inlinedAt: !878)
!878 = distinct !DILocation(line: 250, column: 18, scope: !871)
!879 = !DILocation(line: 44, column: 27, scope: !784, inlinedAt: !878)
!880 = !DILocation(line: 48, column: 13, scope: !793, inlinedAt: !878)
!881 = !DILocation(line: 48, column: 13, scope: !787, inlinedAt: !878)
!882 = !DILocation(line: 49, column: 23, scope: !796, inlinedAt: !878)
!883 = !DILocation(line: 50, column: 18, scope: !796, inlinedAt: !878)
!884 = !DILocation(line: 51, column: 9, scope: !796, inlinedAt: !878)
!885 = !DILocation(line: 0, scope: !793, inlinedAt: !878)
!886 = !DILocation(line: 0, scope: !617, inlinedAt: !887)
!887 = distinct !DILocation(line: 251, column: 15, scope: !871)
!888 = !DILocation(line: 62, column: 19, scope: !624, inlinedAt: !887)
!889 = !DILocation(line: 0, scope: !617, inlinedAt: !890)
!890 = distinct !DILocation(line: 251, column: 37, scope: !871)
!891 = !DILocation(line: 59, column: 17, scope: !625, inlinedAt: !890)
!892 = !DILocation(line: 59, column: 13, scope: !617, inlinedAt: !890)
!893 = !DILocation(line: 60, column: 19, scope: !646, inlinedAt: !890)
!894 = !DILocation(line: 61, column: 9, scope: !646, inlinedAt: !890)
!895 = !DILocation(line: 62, column: 19, scope: !624, inlinedAt: !890)
!896 = !DILocation(line: 0, scope: !625, inlinedAt: !890)
!897 = !DILocation(line: 252, column: 5, scope: !871)
!898 = !{!628, !628, i64 0}
!899 = !DILocation(line: 0, scope: !810, inlinedAt: !900)
!900 = distinct !DILocation(line: 252, column: 29, scope: !871)
!901 = !DILocation(line: 120, column: 13, scope: !810, inlinedAt: !900)
!902 = !DILocation(line: 0, scope: !835, inlinedAt: !903)
!903 = distinct !DILocation(line: 253, column: 1, scope: !871)
!904 = !DILocation(line: 168, column: 13, scope: !844, inlinedAt: !903)
!905 = !DILocation(line: 169, column: 9, scope: !844, inlinedAt: !903)
!906 = !DILocation(line: 0, scope: !822, inlinedAt: !907)
!907 = distinct !DILocation(line: 122, column: 17, scope: !818, inlinedAt: !900)
!908 = !DILocation(line: 163, column: 81, scope: !822, inlinedAt: !907)
!909 = !DILocation(line: 163, column: 87, scope: !822, inlinedAt: !907)
!910 = !DILocation(line: 163, column: 77, scope: !822, inlinedAt: !907)
!911 = !DILocation(line: 163, column: 15, scope: !822, inlinedAt: !907)
!912 = !DILocation(line: 0, scope: !822, inlinedAt: !913)
!913 = distinct !DILocation(line: 170, column: 13, scope: !848, inlinedAt: !903)
!914 = !DILocation(line: 163, column: 81, scope: !822, inlinedAt: !913)
!915 = !DILocation(line: 163, column: 87, scope: !822, inlinedAt: !913)
!916 = !DILocation(line: 163, column: 77, scope: !822, inlinedAt: !913)
!917 = !DILocation(line: 163, column: 15, scope: !822, inlinedAt: !913)
!918 = !DILocation(line: 181, column: 13, scope: !864, inlinedAt: !903)
!919 = !DILocation(line: 253, column: 1, scope: !871)
!920 = distinct !DISubprogram(name: "halide_matlab_print", scope: !49, file: !49, line: 255, type: !868, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !921)
!921 = !{!922, !923}
!922 = !DILocalVariable(arg: 1, scope: !920, file: !49, line: 255, type: !77)
!923 = !DILocalVariable(name: "msg", arg: 2, scope: !920, file: !49, line: 255, type: !9)
!924 = !DILocation(line: 0, scope: !920)
!925 = !DILocation(line: 256, column: 5, scope: !920)
!926 = !DILocation(line: 257, column: 1, scope: !920)
!927 = distinct !DISubprogram(name: "halide_matlab_init", scope: !49, file: !49, line: 259, type: !928, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !930)
!928 = !DISubroutineType(types: !929)
!929 = !{!28, !77}
!930 = !{!931}
!931 = !DILocalVariable(name: "user_context", arg: 1, scope: !927, file: !49, line: 259, type: !77)
!932 = !DILocation(line: 0, scope: !927)
!933 = !DILocation(line: 261, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !927, file: !49, line: 261, column: 9)
!935 = !DILocation(line: 261, column: 23, scope: !934)
!936 = !DILocation(line: 261, column: 9, scope: !927)
!937 = !DILocalVariable(name: "user_context", arg: 1, scope: !938, file: !49, line: 176, type: !77)
!938 = distinct !DISubprogram(name: "get_mex_symbol<void (*)(const char *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFvPKcEEET_PvS4_b", scope: !2, file: !49, line: 176, type: !939, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, templateParams: !945, retainedNodes: !941)
!939 = !DISubroutineType(types: !940)
!940 = !{!6, !77, !9, !83}
!941 = !{!937, !942, !943, !944}
!942 = !DILocalVariable(name: "name", arg: 2, scope: !938, file: !49, line: 176, type: !9)
!943 = !DILocalVariable(name: "required", arg: 3, scope: !938, file: !49, line: 176, type: !83)
!944 = !DILocalVariable(name: "s", scope: !938, file: !49, line: 177, type: !6)
!945 = !{!946}
!946 = !DITemplateTypeParameter(name: "T", type: !6)
!947 = !DILocation(line: 0, scope: !938, inlinedAt: !948)
!948 = distinct !DILocation(line: 32, column: 1, scope: !949)
!949 = !DILexicalBlockFile(scope: !927, file: !5, discriminator: 0)
!950 = !DILocation(line: 177, column: 14, scope: !938, inlinedAt: !948)
!951 = !DILocation(line: 178, column: 18, scope: !952, inlinedAt: !948)
!952 = distinct !DILexicalBlock(scope: !938, file: !49, line: 178, column: 9)
!953 = !DILocalVariable(name: "this", arg: 1, scope: !954, type: !958, flags: DIFlagArtificial | DIFlagObjectPointer)
!954 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !185, file: !182, line: 37, type: !198, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, declaration: !197, retainedNodes: !955)
!955 = !{!953, !956, !957}
!956 = !DILocalVariable(name: "ctx", arg: 2, scope: !954, file: !182, line: 37, type: !77)
!957 = !DILocalVariable(name: "mem", arg: 3, scope: !954, file: !182, line: 37, type: !188)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 32)
!959 = !DILocation(line: 0, scope: !954, inlinedAt: !960)
!960 = distinct !DILocation(line: 179, column: 9, scope: !961, inlinedAt: !948)
!961 = distinct !DILexicalBlock(scope: !952, file: !49, line: 178, column: 35)
!962 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !960)
!963 = distinct !DILexicalBlock(scope: !964, file: !182, line: 43, column: 16)
!964 = distinct !DILexicalBlock(scope: !965, file: !182, line: 41, column: 20)
!965 = distinct !DILexicalBlock(scope: !966, file: !182, line: 39, column: 13)
!966 = distinct !DILexicalBlock(scope: !954, file: !182, line: 38, column: 54)
!967 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !960)
!968 = distinct !DILexicalBlock(scope: !966, file: !182, line: 48, column: 13)
!969 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !960)
!970 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !960)
!971 = distinct !DILexicalBlock(scope: !968, file: !182, line: 48, column: 18)
!972 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !960)
!973 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !960)
!974 = !DILocation(line: 0, scope: !968, inlinedAt: !960)
!975 = !DILocalVariable(name: "this", arg: 1, scope: !976, type: !958, flags: DIFlagArtificial | DIFlagObjectPointer)
!976 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !185, file: !182, line: 57, type: !202, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, declaration: !201, retainedNodes: !977)
!977 = !{!975, !978}
!978 = !DILocalVariable(name: "arg", arg: 2, scope: !976, file: !182, line: 57, type: !9)
!979 = !DILocation(line: 0, scope: !976, inlinedAt: !980)
!980 = distinct !DILocation(line: 179, column: 29, scope: !961, inlinedAt: !948)
!981 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !980)
!982 = distinct !DILexicalBlock(scope: !983, file: !182, line: 61, column: 16)
!983 = distinct !DILexicalBlock(scope: !976, file: !182, line: 59, column: 13)
!984 = !DILocation(line: 0, scope: !976, inlinedAt: !985)
!985 = distinct !DILocation(line: 179, column: 54, scope: !961, inlinedAt: !948)
!986 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !985)
!987 = !DILocation(line: 0, scope: !976, inlinedAt: !988)
!988 = distinct !DILocation(line: 179, column: 62, scope: !961, inlinedAt: !948)
!989 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !988)
!990 = !DILocalVariable(name: "this", arg: 1, scope: !991, type: !958, flags: DIFlagArtificial | DIFlagObjectPointer)
!991 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !185, file: !182, line: 166, type: !400, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, declaration: !413, retainedNodes: !992)
!992 = !{!990}
!993 = !DILocation(line: 0, scope: !991, inlinedAt: !994)
!994 = distinct !DILocation(line: 179, column: 9, scope: !961, inlinedAt: !948)
!995 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !994)
!996 = distinct !DILexicalBlock(scope: !991, file: !182, line: 166, column: 16)
!997 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !994)
!998 = distinct !DILexicalBlock(scope: !999, file: !182, line: 167, column: 19)
!999 = distinct !DILexicalBlock(scope: !996, file: !182, line: 167, column: 13)
!1000 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !994)
!1001 = !DILocalVariable(name: "this", arg: 1, scope: !1002, type: !958, flags: DIFlagArtificial | DIFlagObjectPointer)
!1002 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !185, file: !182, line: 162, type: !400, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, declaration: !412, retainedNodes: !1003)
!1003 = !{!1001}
!1004 = !DILocation(line: 0, scope: !1002, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !994)
!1006 = distinct !DILexicalBlock(scope: !999, file: !182, line: 169, column: 16)
!1007 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !1005)
!1008 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !1005)
!1009 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !1005)
!1010 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !1005)
!1011 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !994)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !182, line: 171, column: 39)
!1013 = distinct !DILexicalBlock(scope: !1006, file: !182, line: 171, column: 17)
!1014 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !994)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !182, line: 180, column: 40)
!1016 = distinct !DILexicalBlock(scope: !996, file: !182, line: 180, column: 13)
!1017 = !DILocation(line: 180, column: 9, scope: !961, inlinedAt: !948)
!1018 = !DILocation(line: 177, column: 11, scope: !938, inlinedAt: !948)
!1019 = !DILocation(line: 182, column: 5, scope: !938, inlinedAt: !948)
!1020 = !DILocation(line: 32, column: 1, scope: !949)
!1021 = !DILocalVariable(name: "user_context", arg: 1, scope: !1022, file: !49, line: 176, type: !77)
!1022 = distinct !DISubprogram(name: "get_mex_symbol<unsigned int (*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFjPK7mxArrayEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1023, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, templateParams: !1029, retainedNodes: !1025)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!433, !77, !9, !83}
!1025 = !{!1021, !1026, !1027, !1028}
!1026 = !DILocalVariable(name: "name", arg: 2, scope: !1022, file: !49, line: 176, type: !9)
!1027 = !DILocalVariable(name: "required", arg: 3, scope: !1022, file: !49, line: 176, type: !83)
!1028 = !DILocalVariable(name: "s", scope: !1022, file: !49, line: 177, type: !433)
!1029 = !{!1030}
!1030 = !DITemplateTypeParameter(name: "T", type: !433)
!1031 = !DILocation(line: 0, scope: !1022, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 59, column: 1, scope: !949)
!1033 = !DILocation(line: 177, column: 14, scope: !1022, inlinedAt: !1032)
!1034 = !DILocation(line: 59, column: 1, scope: !949)
!1035 = !DILocalVariable(name: "user_context", arg: 1, scope: !1036, file: !49, line: 176, type: !77)
!1036 = distinct !DISubprogram(name: "get_mex_symbol<int (*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFiPK7mxArrayEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1037, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, templateParams: !1043, retainedNodes: !1039)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!25, !77, !9, !83}
!1039 = !{!1035, !1040, !1041, !1042}
!1040 = !DILocalVariable(name: "name", arg: 2, scope: !1036, file: !49, line: 176, type: !9)
!1041 = !DILocalVariable(name: "required", arg: 3, scope: !1036, file: !49, line: 176, type: !83)
!1042 = !DILocalVariable(name: "s", scope: !1036, file: !49, line: 177, type: !25)
!1043 = !{!1044}
!1044 = !DITemplateTypeParameter(name: "T", type: !25)
!1045 = !DILocation(line: 0, scope: !1036, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 60, column: 1, scope: !949)
!1047 = !DILocation(line: 177, column: 14, scope: !1036, inlinedAt: !1046)
!1048 = !DILocation(line: 60, column: 1, scope: !949)
!1049 = !DILocalVariable(name: "user_context", arg: 1, scope: !1050, file: !49, line: 176, type: !77)
!1050 = distinct !DISubprogram(name: "get_mex_symbol<const unsigned int *(*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFPKjPK7mxArrayEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1051, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, templateParams: !1057, retainedNodes: !1053)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!436, !77, !9, !83}
!1053 = !{!1049, !1054, !1055, !1056}
!1054 = !DILocalVariable(name: "name", arg: 2, scope: !1050, file: !49, line: 176, type: !9)
!1055 = !DILocalVariable(name: "required", arg: 3, scope: !1050, file: !49, line: 176, type: !83)
!1056 = !DILocalVariable(name: "s", scope: !1050, file: !49, line: 177, type: !436)
!1057 = !{!1058}
!1058 = !DITemplateTypeParameter(name: "T", type: !436)
!1059 = !DILocation(line: 0, scope: !1050, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 61, column: 1, scope: !949)
!1061 = !DILocation(line: 177, column: 14, scope: !1050, inlinedAt: !1060)
!1062 = !DILocation(line: 61, column: 1, scope: !949)
!1063 = !DILocalVariable(name: "user_context", arg: 1, scope: !1064, file: !49, line: 176, type: !77)
!1064 = distinct !DISubprogram(name: "get_mex_symbol<const int *(*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFPKiPK7mxArrayEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1065, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, templateParams: !1071, retainedNodes: !1067)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!38, !77, !9, !83}
!1067 = !{!1063, !1068, !1069, !1070}
!1068 = !DILocalVariable(name: "name", arg: 2, scope: !1064, file: !49, line: 176, type: !9)
!1069 = !DILocalVariable(name: "required", arg: 3, scope: !1064, file: !49, line: 176, type: !83)
!1070 = !DILocalVariable(name: "s", scope: !1064, file: !49, line: 177, type: !38)
!1071 = !{!1072}
!1072 = !DITemplateTypeParameter(name: "T", type: !38)
!1073 = !DILocation(line: 0, scope: !1064, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 62, column: 1, scope: !949)
!1075 = !DILocation(line: 177, column: 14, scope: !1064, inlinedAt: !1074)
!1076 = !DILocation(line: 62, column: 1, scope: !949)
!1077 = !DILocalVariable(name: "user_context", arg: 1, scope: !1078, file: !49, line: 176, type: !77)
!1078 = distinct !DISubprogram(name: "get_mex_symbol<Halide::Runtime::mex::mxClassID (*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFNS1_9mxClassIDEPK7mxArrayEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1079, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, templateParams: !1085, retainedNodes: !1081)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!45, !77, !9, !83}
!1081 = !{!1077, !1082, !1083, !1084}
!1082 = !DILocalVariable(name: "name", arg: 2, scope: !1078, file: !49, line: 176, type: !9)
!1083 = !DILocalVariable(name: "required", arg: 3, scope: !1078, file: !49, line: 176, type: !83)
!1084 = !DILocalVariable(name: "s", scope: !1078, file: !49, line: 177, type: !45)
!1085 = !{!1086}
!1086 = !DITemplateTypeParameter(name: "T", type: !45)
!1087 = !DILocation(line: 0, scope: !1078, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 77, column: 1, scope: !949)
!1089 = !DILocation(line: 177, column: 14, scope: !1078, inlinedAt: !1088)
!1090 = !DILocation(line: 178, column: 18, scope: !1091, inlinedAt: !1088)
!1091 = distinct !DILexicalBlock(scope: !1078, file: !49, line: 178, column: 9)
!1092 = !DILocation(line: 0, scope: !954, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 179, column: 9, scope: !1094, inlinedAt: !1088)
!1094 = distinct !DILexicalBlock(scope: !1091, file: !49, line: 178, column: 35)
!1095 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !1093)
!1096 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !1093)
!1097 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !1093)
!1098 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !1093)
!1099 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !1093)
!1100 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !1093)
!1101 = !DILocation(line: 0, scope: !968, inlinedAt: !1093)
!1102 = !DILocation(line: 0, scope: !976, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 179, column: 29, scope: !1094, inlinedAt: !1088)
!1104 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1103)
!1105 = !DILocation(line: 0, scope: !976, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 179, column: 54, scope: !1094, inlinedAt: !1088)
!1107 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1106)
!1108 = !DILocation(line: 0, scope: !976, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 179, column: 62, scope: !1094, inlinedAt: !1088)
!1110 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1109)
!1111 = !DILocation(line: 0, scope: !991, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 179, column: 9, scope: !1094, inlinedAt: !1088)
!1113 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !1112)
!1114 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !1112)
!1115 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !1112)
!1116 = !DILocation(line: 0, scope: !1002, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !1112)
!1118 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !1117)
!1119 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !1117)
!1120 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !1117)
!1121 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !1117)
!1122 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !1112)
!1123 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !1112)
!1124 = !DILocation(line: 180, column: 9, scope: !1094, inlinedAt: !1088)
!1125 = !DILocation(line: 177, column: 11, scope: !1078, inlinedAt: !1088)
!1126 = !DILocation(line: 182, column: 5, scope: !1078, inlinedAt: !1088)
!1127 = !DILocation(line: 77, column: 1, scope: !949)
!1128 = !DILocalVariable(name: "user_context", arg: 1, scope: !1129, file: !49, line: 176, type: !77)
!1129 = distinct !DISubprogram(name: "get_mex_symbol<void *(*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFPvPK7mxArrayEEET_S3_PKcb", scope: !2, file: !49, line: 176, type: !1130, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, templateParams: !1136, retainedNodes: !1132)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!74, !77, !9, !83}
!1132 = !{!1128, !1133, !1134, !1135}
!1133 = !DILocalVariable(name: "name", arg: 2, scope: !1129, file: !49, line: 176, type: !9)
!1134 = !DILocalVariable(name: "required", arg: 3, scope: !1129, file: !49, line: 176, type: !83)
!1135 = !DILocalVariable(name: "s", scope: !1129, file: !49, line: 177, type: !74)
!1136 = !{!1137}
!1137 = !DITemplateTypeParameter(name: "T", type: !74)
!1138 = !DILocation(line: 0, scope: !1129, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 78, column: 1, scope: !949)
!1140 = !DILocation(line: 177, column: 14, scope: !1129, inlinedAt: !1139)
!1141 = !DILocation(line: 178, column: 18, scope: !1142, inlinedAt: !1139)
!1142 = distinct !DILexicalBlock(scope: !1129, file: !49, line: 178, column: 9)
!1143 = !DILocation(line: 0, scope: !954, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 179, column: 9, scope: !1145, inlinedAt: !1139)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !49, line: 178, column: 35)
!1146 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !1144)
!1147 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !1144)
!1148 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !1144)
!1149 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !1144)
!1150 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !1144)
!1151 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !1144)
!1152 = !DILocation(line: 0, scope: !968, inlinedAt: !1144)
!1153 = !DILocation(line: 0, scope: !976, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 179, column: 29, scope: !1145, inlinedAt: !1139)
!1155 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1154)
!1156 = !DILocation(line: 0, scope: !976, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 179, column: 54, scope: !1145, inlinedAt: !1139)
!1158 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1157)
!1159 = !DILocation(line: 0, scope: !976, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 179, column: 62, scope: !1145, inlinedAt: !1139)
!1161 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1160)
!1162 = !DILocation(line: 0, scope: !991, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 179, column: 9, scope: !1145, inlinedAt: !1139)
!1164 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !1163)
!1165 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !1163)
!1166 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !1163)
!1167 = !DILocation(line: 0, scope: !1002, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !1163)
!1169 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !1168)
!1170 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !1168)
!1171 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !1168)
!1172 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !1168)
!1173 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !1163)
!1174 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !1163)
!1175 = !DILocation(line: 180, column: 9, scope: !1145, inlinedAt: !1139)
!1176 = !DILocation(line: 177, column: 11, scope: !1129, inlinedAt: !1139)
!1177 = !DILocation(line: 182, column: 5, scope: !1129, inlinedAt: !1139)
!1178 = !DILocation(line: 78, column: 1, scope: !949)
!1179 = !DILocalVariable(name: "user_context", arg: 1, scope: !1180, file: !49, line: 176, type: !77)
!1180 = distinct !DISubprogram(name: "get_mex_symbol<bool (*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFbPK7mxArrayEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1181, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, templateParams: !1187, retainedNodes: !1183)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!80, !77, !9, !83}
!1183 = !{!1179, !1184, !1185, !1186}
!1184 = !DILocalVariable(name: "name", arg: 2, scope: !1180, file: !49, line: 176, type: !9)
!1185 = !DILocalVariable(name: "required", arg: 3, scope: !1180, file: !49, line: 176, type: !83)
!1186 = !DILocalVariable(name: "s", scope: !1180, file: !49, line: 177, type: !80)
!1187 = !{!1188}
!1188 = !DITemplateTypeParameter(name: "T", type: !80)
!1189 = !DILocation(line: 0, scope: !1180, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 80, column: 1, scope: !949)
!1191 = !DILocation(line: 177, column: 14, scope: !1180, inlinedAt: !1190)
!1192 = !DILocation(line: 178, column: 18, scope: !1193, inlinedAt: !1190)
!1193 = distinct !DILexicalBlock(scope: !1180, file: !49, line: 178, column: 9)
!1194 = !DILocation(line: 0, scope: !954, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 179, column: 9, scope: !1196, inlinedAt: !1190)
!1196 = distinct !DILexicalBlock(scope: !1193, file: !49, line: 178, column: 35)
!1197 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !1195)
!1198 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !1195)
!1199 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !1195)
!1200 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !1195)
!1201 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !1195)
!1202 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !1195)
!1203 = !DILocation(line: 0, scope: !968, inlinedAt: !1195)
!1204 = !DILocation(line: 0, scope: !976, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 179, column: 29, scope: !1196, inlinedAt: !1190)
!1206 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1205)
!1207 = !DILocation(line: 0, scope: !976, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 179, column: 54, scope: !1196, inlinedAt: !1190)
!1209 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1208)
!1210 = !DILocation(line: 0, scope: !976, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 179, column: 62, scope: !1196, inlinedAt: !1190)
!1212 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1211)
!1213 = !DILocation(line: 0, scope: !991, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 179, column: 9, scope: !1196, inlinedAt: !1190)
!1215 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !1214)
!1216 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !1214)
!1217 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !1214)
!1218 = !DILocation(line: 0, scope: !1002, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !1214)
!1220 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !1219)
!1221 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !1219)
!1222 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !1219)
!1223 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !1219)
!1224 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !1214)
!1225 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !1214)
!1226 = !DILocation(line: 180, column: 9, scope: !1196, inlinedAt: !1190)
!1227 = !DILocation(line: 177, column: 11, scope: !1180, inlinedAt: !1190)
!1228 = !DILocation(line: 182, column: 5, scope: !1180, inlinedAt: !1190)
!1229 = !DILocation(line: 80, column: 1, scope: !949)
!1230 = !DILocation(line: 0, scope: !1180, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 82, column: 1, scope: !949)
!1232 = !DILocation(line: 177, column: 14, scope: !1180, inlinedAt: !1231)
!1233 = !DILocation(line: 178, column: 18, scope: !1193, inlinedAt: !1231)
!1234 = !DILocation(line: 0, scope: !954, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 179, column: 9, scope: !1196, inlinedAt: !1231)
!1236 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !1235)
!1237 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !1235)
!1238 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !1235)
!1239 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !1235)
!1240 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !1235)
!1241 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !1235)
!1242 = !DILocation(line: 0, scope: !968, inlinedAt: !1235)
!1243 = !DILocation(line: 0, scope: !976, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 179, column: 29, scope: !1196, inlinedAt: !1231)
!1245 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1244)
!1246 = !DILocation(line: 0, scope: !976, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 179, column: 54, scope: !1196, inlinedAt: !1231)
!1248 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1247)
!1249 = !DILocation(line: 0, scope: !976, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 179, column: 62, scope: !1196, inlinedAt: !1231)
!1251 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1250)
!1252 = !DILocation(line: 0, scope: !991, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 179, column: 9, scope: !1196, inlinedAt: !1231)
!1254 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !1253)
!1255 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !1253)
!1256 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !1253)
!1257 = !DILocation(line: 0, scope: !1002, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !1253)
!1259 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !1258)
!1260 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !1258)
!1261 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !1258)
!1262 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !1258)
!1263 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !1253)
!1264 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !1253)
!1265 = !DILocation(line: 180, column: 9, scope: !1196, inlinedAt: !1231)
!1266 = !DILocation(line: 177, column: 11, scope: !1180, inlinedAt: !1231)
!1267 = !DILocation(line: 182, column: 5, scope: !1180, inlinedAt: !1231)
!1268 = !DILocation(line: 82, column: 1, scope: !949)
!1269 = !DILocation(line: 0, scope: !1180, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 90, column: 1, scope: !949)
!1271 = !DILocation(line: 177, column: 14, scope: !1180, inlinedAt: !1270)
!1272 = !DILocation(line: 178, column: 18, scope: !1193, inlinedAt: !1270)
!1273 = !DILocation(line: 0, scope: !954, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 179, column: 9, scope: !1196, inlinedAt: !1270)
!1275 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !1274)
!1276 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !1274)
!1277 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !1274)
!1278 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !1274)
!1279 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !1274)
!1280 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !1274)
!1281 = !DILocation(line: 0, scope: !968, inlinedAt: !1274)
!1282 = !DILocation(line: 0, scope: !976, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 179, column: 29, scope: !1196, inlinedAt: !1270)
!1284 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1283)
!1285 = !DILocation(line: 0, scope: !976, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 179, column: 54, scope: !1196, inlinedAt: !1270)
!1287 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1286)
!1288 = !DILocation(line: 0, scope: !976, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 179, column: 62, scope: !1196, inlinedAt: !1270)
!1290 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1289)
!1291 = !DILocation(line: 0, scope: !991, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 179, column: 9, scope: !1196, inlinedAt: !1270)
!1293 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !1292)
!1294 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !1292)
!1295 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !1292)
!1296 = !DILocation(line: 0, scope: !1002, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !1292)
!1298 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !1297)
!1299 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !1297)
!1300 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !1297)
!1301 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !1297)
!1302 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !1292)
!1303 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !1292)
!1304 = !DILocation(line: 180, column: 9, scope: !1196, inlinedAt: !1270)
!1305 = !DILocation(line: 177, column: 11, scope: !1180, inlinedAt: !1270)
!1306 = !DILocation(line: 182, column: 5, scope: !1180, inlinedAt: !1270)
!1307 = !DILocation(line: 90, column: 1, scope: !949)
!1308 = !DILocalVariable(name: "user_context", arg: 1, scope: !1309, file: !49, line: 176, type: !77)
!1309 = distinct !DISubprogram(name: "get_mex_symbol<double (*)(const mxArray *)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFdPK7mxArrayEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1310, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, templateParams: !1316, retainedNodes: !1312)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!90, !77, !9, !83}
!1312 = !{!1308, !1313, !1314, !1315}
!1313 = !DILocalVariable(name: "name", arg: 2, scope: !1309, file: !49, line: 176, type: !9)
!1314 = !DILocalVariable(name: "required", arg: 3, scope: !1309, file: !49, line: 176, type: !83)
!1315 = !DILocalVariable(name: "s", scope: !1309, file: !49, line: 177, type: !90)
!1316 = !{!1317}
!1317 = !DITemplateTypeParameter(name: "T", type: !90)
!1318 = !DILocation(line: 0, scope: !1309, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 110, column: 1, scope: !949)
!1320 = !DILocation(line: 177, column: 14, scope: !1309, inlinedAt: !1319)
!1321 = !DILocation(line: 178, column: 18, scope: !1322, inlinedAt: !1319)
!1322 = distinct !DILexicalBlock(scope: !1309, file: !49, line: 178, column: 9)
!1323 = !DILocation(line: 0, scope: !954, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 179, column: 9, scope: !1325, inlinedAt: !1319)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !49, line: 178, column: 35)
!1326 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !1324)
!1327 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !1324)
!1328 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !1324)
!1329 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !1324)
!1330 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !1324)
!1331 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !1324)
!1332 = !DILocation(line: 0, scope: !968, inlinedAt: !1324)
!1333 = !DILocation(line: 0, scope: !976, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 179, column: 29, scope: !1325, inlinedAt: !1319)
!1335 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1334)
!1336 = !DILocation(line: 0, scope: !976, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 179, column: 54, scope: !1325, inlinedAt: !1319)
!1338 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1337)
!1339 = !DILocation(line: 0, scope: !976, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 179, column: 62, scope: !1325, inlinedAt: !1319)
!1341 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1340)
!1342 = !DILocation(line: 0, scope: !991, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 179, column: 9, scope: !1325, inlinedAt: !1319)
!1344 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !1343)
!1345 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !1343)
!1346 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !1343)
!1347 = !DILocation(line: 0, scope: !1002, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !1343)
!1349 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !1348)
!1350 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !1348)
!1351 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !1348)
!1352 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !1348)
!1353 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !1343)
!1354 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !1343)
!1355 = !DILocation(line: 180, column: 9, scope: !1325, inlinedAt: !1319)
!1356 = !DILocation(line: 177, column: 11, scope: !1309, inlinedAt: !1319)
!1357 = !DILocation(line: 182, column: 5, scope: !1309, inlinedAt: !1319)
!1358 = !DILocation(line: 110, column: 1, scope: !949)
!1359 = !DILocation(line: 0, scope: !1022, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 122, column: 1, scope: !949)
!1361 = !DILocation(line: 177, column: 14, scope: !1022, inlinedAt: !1360)
!1362 = !DILocation(line: 178, column: 18, scope: !1363, inlinedAt: !1360)
!1363 = distinct !DILexicalBlock(scope: !1022, file: !49, line: 178, column: 9)
!1364 = !DILocation(line: 0, scope: !954, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 179, column: 9, scope: !1366, inlinedAt: !1360)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !49, line: 178, column: 35)
!1367 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !1365)
!1368 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !1365)
!1369 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !1365)
!1370 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !1365)
!1371 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !1365)
!1372 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !1365)
!1373 = !DILocation(line: 0, scope: !968, inlinedAt: !1365)
!1374 = !DILocation(line: 0, scope: !976, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 179, column: 29, scope: !1366, inlinedAt: !1360)
!1376 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1375)
!1377 = !DILocation(line: 0, scope: !976, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 179, column: 54, scope: !1366, inlinedAt: !1360)
!1379 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1378)
!1380 = !DILocation(line: 0, scope: !976, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 179, column: 62, scope: !1366, inlinedAt: !1360)
!1382 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1381)
!1383 = !DILocation(line: 0, scope: !991, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 179, column: 9, scope: !1366, inlinedAt: !1360)
!1385 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !1384)
!1386 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !1384)
!1387 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !1384)
!1388 = !DILocation(line: 0, scope: !1002, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !1384)
!1390 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !1389)
!1391 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !1389)
!1392 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !1389)
!1393 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !1389)
!1394 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !1384)
!1395 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !1384)
!1396 = !DILocation(line: 180, column: 9, scope: !1366, inlinedAt: !1360)
!1397 = !DILocation(line: 177, column: 11, scope: !1022, inlinedAt: !1360)
!1398 = !DILocation(line: 182, column: 5, scope: !1022, inlinedAt: !1360)
!1399 = !DILocation(line: 122, column: 1, scope: !949)
!1400 = !DILocalVariable(name: "user_context", arg: 1, scope: !1401, file: !49, line: 176, type: !77)
!1401 = distinct !DISubprogram(name: "get_mex_symbol<mxArray *(*)(unsigned int, unsigned int, Halide::Runtime::mex::mxClassID, Halide::Runtime::mex::mxComplexity)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFP7mxArrayjjNS1_9mxClassIDENS1_12mxComplexityEEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1402, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, templateParams: !1408, retainedNodes: !1404)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!441, !77, !9, !83}
!1404 = !{!1400, !1405, !1406, !1407}
!1405 = !DILocalVariable(name: "name", arg: 2, scope: !1401, file: !49, line: 176, type: !9)
!1406 = !DILocalVariable(name: "required", arg: 3, scope: !1401, file: !49, line: 176, type: !83)
!1407 = !DILocalVariable(name: "s", scope: !1401, file: !49, line: 177, type: !441)
!1408 = !{!1409}
!1409 = !DITemplateTypeParameter(name: "T", type: !441)
!1410 = !DILocation(line: 0, scope: !1401, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 140, column: 1, scope: !949)
!1412 = !DILocation(line: 177, column: 14, scope: !1401, inlinedAt: !1411)
!1413 = !DILocation(line: 140, column: 1, scope: !949)
!1414 = !DILocalVariable(name: "user_context", arg: 1, scope: !1415, file: !49, line: 176, type: !77)
!1415 = distinct !DISubprogram(name: "get_mex_symbol<mxArray *(*)(int, int, Halide::Runtime::mex::mxClassID, Halide::Runtime::mex::mxComplexity)>", linkageName: "_ZN6Halide7Runtime3mex14get_mex_symbolIPFP7mxArrayiiNS1_9mxClassIDENS1_12mxComplexityEEEET_PvPKcb", scope: !2, file: !49, line: 176, type: !1416, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, templateParams: !1422, retainedNodes: !1418)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!108, !77, !9, !83}
!1418 = !{!1414, !1419, !1420, !1421}
!1419 = !DILocalVariable(name: "name", arg: 2, scope: !1415, file: !49, line: 176, type: !9)
!1420 = !DILocalVariable(name: "required", arg: 3, scope: !1415, file: !49, line: 176, type: !83)
!1421 = !DILocalVariable(name: "s", scope: !1415, file: !49, line: 177, type: !108)
!1422 = !{!1423}
!1423 = !DITemplateTypeParameter(name: "T", type: !108)
!1424 = !DILocation(line: 0, scope: !1415, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 141, column: 1, scope: !949)
!1426 = !DILocation(line: 177, column: 14, scope: !1415, inlinedAt: !1425)
!1427 = !DILocation(line: 141, column: 1, scope: !949)
!1428 = !DILocation(line: 275, column: 10, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !49, line: 275, column: 9)
!1430 = !DILexicalBlockFile(scope: !927, file: !49, discriminator: 0)
!1431 = !DILocation(line: 275, column: 9, scope: !1430)
!1432 = !DILocation(line: 284, column: 5, scope: !1430)
!1433 = !DILocation(line: 285, column: 5, scope: !1430)
!1434 = !DILocation(line: 287, column: 5, scope: !1430)
!1435 = !DILocation(line: 288, column: 1, scope: !1430)
!1436 = !DISubprogram(name: "halide_set_custom_print", scope: !115, file: !115, line: 100, type: !1437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1439, !1439}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 32)
!1440 = !DISubprogram(name: "halide_set_error_handler", scope: !115, file: !115, line: 114, type: !1437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!1441 = distinct !DISubprogram(name: "halide_matlab_array_to_halide_buffer_t", scope: !49, file: !49, line: 291, type: !1442, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !1444)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!28, !77, !20, !585, !432}
!1444 = !{!1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1455, !1457}
!1445 = !DILocalVariable(name: "user_context", arg: 1, scope: !1441, file: !49, line: 291, type: !77)
!1446 = !DILocalVariable(name: "arr", arg: 2, scope: !1441, file: !49, line: 292, type: !20)
!1447 = !DILocalVariable(name: "arg", arg: 3, scope: !1441, file: !49, line: 293, type: !585)
!1448 = !DILocalVariable(name: "buf", arg: 4, scope: !1441, file: !49, line: 294, type: !432)
!1449 = !DILocalVariable(name: "dim_count", scope: !1441, file: !49, line: 301, type: !28)
!1450 = !DILocalVariable(name: "expected_dims", scope: !1441, file: !49, line: 302, type: !28)
!1451 = !DILocalVariable(name: "arg_class_id", scope: !1441, file: !49, line: 305, type: !48)
!1452 = !DILocalVariable(name: "class_id", scope: !1441, file: !49, line: 306, type: !48)
!1453 = !DILocalVariable(name: "i", scope: !1454, file: !49, line: 333, type: !28)
!1454 = distinct !DILexicalBlock(scope: !1441, file: !49, line: 333, column: 5)
!1455 = !DILocalVariable(name: "i", scope: !1456, file: !49, line: 338, type: !28)
!1456 = distinct !DILexicalBlock(scope: !1441, file: !49, line: 338, column: 5)
!1457 = !DILocalVariable(name: "i", scope: !1458, file: !49, line: 346, type: !28)
!1458 = distinct !DILexicalBlock(scope: !1441, file: !49, line: 346, column: 5)
!1459 = !DILocation(line: 0, scope: !1441)
!1460 = !DILocation(line: 296, column: 9, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1441, file: !49, line: 296, column: 9)
!1462 = !DILocation(line: 296, column: 9, scope: !1441)
!1463 = !DILocation(line: 0, scope: !954, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 297, column: 9, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !49, line: 296, column: 27)
!1466 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !1464)
!1467 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !1464)
!1468 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !1464)
!1469 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !1464)
!1470 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !1464)
!1471 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !1464)
!1472 = !DILocation(line: 0, scope: !968, inlinedAt: !1464)
!1473 = !DILocation(line: 0, scope: !976, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 297, column: 29, scope: !1465)
!1475 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1474)
!1476 = !DILocation(line: 297, column: 88, scope: !1465)
!1477 = !DILocation(line: 0, scope: !976, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 297, column: 80, scope: !1465)
!1479 = !DILocation(line: 59, column: 17, scope: !983, inlinedAt: !1478)
!1480 = !DILocation(line: 59, column: 13, scope: !976, inlinedAt: !1478)
!1481 = !DILocation(line: 60, column: 19, scope: !1482, inlinedAt: !1478)
!1482 = distinct !DILexicalBlock(scope: !983, file: !182, line: 59, column: 29)
!1483 = !DILocation(line: 61, column: 9, scope: !1482, inlinedAt: !1478)
!1484 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1478)
!1485 = !DILocation(line: 0, scope: !983, inlinedAt: !1478)
!1486 = !DILocation(line: 0, scope: !976, inlinedAt: !1487)
!1487 = distinct !DILocation(line: 297, column: 93, scope: !1465)
!1488 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1487)
!1489 = !DILocation(line: 0, scope: !991, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 297, column: 9, scope: !1465)
!1491 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !1490)
!1492 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !1490)
!1493 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !1490)
!1494 = !DILocation(line: 0, scope: !1002, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !1490)
!1496 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !1495)
!1497 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !1495)
!1498 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !1495)
!1499 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !1495)
!1500 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !1490)
!1501 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !1490)
!1502 = !DILocation(line: 298, column: 9, scope: !1465)
!1503 = !DILocalVariable(name: "a", arg: 1, scope: !1504, file: !49, line: 186, type: !20)
!1504 = distinct !DISubprogram(name: "get_number_of_dimensions", linkageName: "_ZN6Halide7Runtime3mex24get_number_of_dimensionsEPK7mxArray", scope: !2, file: !49, line: 186, type: !15, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !1505)
!1505 = !{!1503}
!1506 = !DILocation(line: 0, scope: !1504, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 301, column: 21, scope: !1441)
!1508 = !DILocation(line: 187, column: 9, scope: !1509, inlinedAt: !1507)
!1509 = distinct !DILexicalBlock(scope: !1504, file: !49, line: 187, column: 9)
!1510 = !DILocation(line: 187, column: 9, scope: !1504, inlinedAt: !1507)
!1511 = !DILocation(line: 188, column: 16, scope: !1512, inlinedAt: !1507)
!1512 = distinct !DILexicalBlock(scope: !1509, file: !49, line: 187, column: 38)
!1513 = !DILocation(line: 188, column: 9, scope: !1512, inlinedAt: !1507)
!1514 = !DILocation(line: 190, column: 16, scope: !1515, inlinedAt: !1507)
!1515 = distinct !DILexicalBlock(scope: !1509, file: !49, line: 189, column: 12)
!1516 = !DILocation(line: 190, column: 9, scope: !1515, inlinedAt: !1507)
!1517 = !DILocation(line: 0, scope: !1509, inlinedAt: !1507)
!1518 = !DILocation(line: 302, column: 30, scope: !1441)
!1519 = !DILocation(line: 305, column: 48, scope: !1441)
!1520 = !DILocation(line: 305, column: 53, scope: !1441)
!1521 = !DILocation(line: 305, column: 43, scope: !1441)
!1522 = !DILocation(line: 305, column: 69, scope: !1441)
!1523 = !DILocation(line: 305, column: 59, scope: !1441)
!1524 = !DILocation(line: 305, column: 30, scope: !1441)
!1525 = !DILocation(line: 306, column: 26, scope: !1441)
!1526 = !DILocation(line: 307, column: 18, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1441, file: !49, line: 307, column: 9)
!1528 = !DILocation(line: 307, column: 9, scope: !1441)
!1529 = !DILocation(line: 318, column: 5, scope: !1441)
!1530 = !DILocation(line: 0, scope: !954, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 308, column: 9, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1527, file: !49, line: 307, column: 35)
!1533 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !1531)
!1534 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !1531)
!1535 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !1531)
!1536 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !1531)
!1537 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !1531)
!1538 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !1531)
!1539 = !DILocation(line: 0, scope: !968, inlinedAt: !1531)
!1540 = !DILocation(line: 0, scope: !976, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 308, column: 29, scope: !1532)
!1542 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1541)
!1543 = !DILocation(line: 308, column: 61, scope: !1532)
!1544 = !DILocation(line: 0, scope: !976, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 308, column: 58, scope: !1532)
!1546 = !DILocation(line: 59, column: 17, scope: !983, inlinedAt: !1545)
!1547 = !DILocation(line: 59, column: 13, scope: !976, inlinedAt: !1545)
!1548 = !DILocation(line: 60, column: 19, scope: !1482, inlinedAt: !1545)
!1549 = !DILocation(line: 61, column: 9, scope: !1482, inlinedAt: !1545)
!1550 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1545)
!1551 = !DILocation(line: 0, scope: !983, inlinedAt: !1545)
!1552 = !DILocation(line: 0, scope: !976, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 309, column: 29, scope: !1532)
!1554 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1553)
!1555 = !DILocation(line: 309, column: 57, scope: !1532)
!1556 = !DILocation(line: 0, scope: !976, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 309, column: 49, scope: !1532)
!1558 = !DILocation(line: 59, column: 17, scope: !983, inlinedAt: !1557)
!1559 = !DILocation(line: 59, column: 13, scope: !976, inlinedAt: !1557)
!1560 = !DILocation(line: 60, column: 19, scope: !1482, inlinedAt: !1557)
!1561 = !DILocation(line: 61, column: 9, scope: !1482, inlinedAt: !1557)
!1562 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1557)
!1563 = !DILocation(line: 0, scope: !983, inlinedAt: !1557)
!1564 = !DILocation(line: 0, scope: !976, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 310, column: 29, scope: !1532)
!1566 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1565)
!1567 = !DILocation(line: 310, column: 50, scope: !1532)
!1568 = !DILocation(line: 0, scope: !976, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 310, column: 47, scope: !1532)
!1570 = !DILocation(line: 59, column: 17, scope: !983, inlinedAt: !1569)
!1571 = !DILocation(line: 59, column: 13, scope: !976, inlinedAt: !1569)
!1572 = !DILocation(line: 60, column: 19, scope: !1482, inlinedAt: !1569)
!1573 = !DILocation(line: 61, column: 9, scope: !1482, inlinedAt: !1569)
!1574 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1569)
!1575 = !DILocation(line: 0, scope: !983, inlinedAt: !1569)
!1576 = !DILocation(line: 0, scope: !976, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 310, column: 75, scope: !1532)
!1578 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1577)
!1579 = !DILocation(line: 0, scope: !991, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 308, column: 9, scope: !1532)
!1581 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !1580)
!1582 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !1580)
!1583 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !1580)
!1584 = !DILocation(line: 0, scope: !1002, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !1580)
!1586 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !1585)
!1587 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !1585)
!1588 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !1585)
!1589 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !1585)
!1590 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !1580)
!1591 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !1580)
!1592 = !DILocation(line: 311, column: 9, scope: !1532)
!1593 = !DILocation(line: 318, column: 22, scope: !1441)
!1594 = !DILocation(line: 318, column: 26, scope: !1441)
!1595 = !DILocation(line: 318, column: 58, scope: !1441)
!1596 = !DILocalVariable(name: "a", arg: 1, scope: !1597, file: !49, line: 194, type: !20)
!1597 = distinct !DISubprogram(name: "get_dimension", linkageName: "_ZN6Halide7Runtime3mex13get_dimensionEPK7mxArrayj", scope: !2, file: !49, line: 194, type: !1598, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !1600)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!17, !20, !17}
!1600 = !{!1596, !1601}
!1601 = !DILocalVariable(name: "n", arg: 2, scope: !1597, file: !49, line: 194, type: !17)
!1602 = !DILocation(line: 0, scope: !1597, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 318, column: 29, scope: !1441)
!1604 = !DILocation(line: 195, column: 9, scope: !1605, inlinedAt: !1603)
!1605 = distinct !DILexicalBlock(scope: !1597, file: !49, line: 195, column: 9)
!1606 = !DILocation(line: 195, column: 9, scope: !1597, inlinedAt: !1603)
!1607 = !DILocation(line: 196, column: 16, scope: !1608, inlinedAt: !1603)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !49, line: 195, column: 30)
!1609 = !DILocation(line: 196, column: 9, scope: !1608, inlinedAt: !1603)
!1610 = !DILocation(line: 198, column: 16, scope: !1611, inlinedAt: !1603)
!1611 = distinct !DILexicalBlock(scope: !1605, file: !49, line: 197, column: 12)
!1612 = !DILocation(line: 198, column: 9, scope: !1611, inlinedAt: !1603)
!1613 = !DILocation(line: 0, scope: !1605, inlinedAt: !1603)
!1614 = !{!639, !639, i64 0}
!1615 = !DILocation(line: 318, column: 63, scope: !1441)
!1616 = distinct !{!1616, !1529, !1617, !760}
!1617 = !DILocation(line: 320, column: 5, scope: !1441)
!1618 = !DILocation(line: 321, column: 19, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1441, file: !49, line: 321, column: 9)
!1620 = !DILocation(line: 321, column: 9, scope: !1441)
!1621 = !DILocation(line: 0, scope: !954, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 322, column: 9, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !49, line: 321, column: 36)
!1624 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !1622)
!1625 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !1622)
!1626 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !1622)
!1627 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !1622)
!1628 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !1622)
!1629 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !1622)
!1630 = !DILocation(line: 0, scope: !968, inlinedAt: !1622)
!1631 = !DILocation(line: 0, scope: !976, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 322, column: 29, scope: !1623)
!1633 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1632)
!1634 = !DILocalVariable(name: "this", arg: 1, scope: !1635, type: !958, flags: DIFlagArtificial | DIFlagObjectPointer)
!1635 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !185, file: !182, line: 72, type: !211, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, declaration: !210, retainedNodes: !1636)
!1636 = !{!1634, !1637}
!1637 = !DILocalVariable(name: "arg", arg: 2, scope: !1635, file: !182, line: 72, type: !213)
!1638 = !DILocation(line: 0, scope: !1635, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 322, column: 58, scope: !1623)
!1640 = !DILocation(line: 73, column: 48, scope: !1635, inlinedAt: !1639)
!1641 = !DILocation(line: 73, column: 15, scope: !1635, inlinedAt: !1639)
!1642 = !DILocation(line: 0, scope: !976, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 323, column: 29, scope: !1623)
!1644 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1643)
!1645 = !DILocation(line: 323, column: 57, scope: !1623)
!1646 = !DILocation(line: 0, scope: !976, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 323, column: 49, scope: !1623)
!1648 = !DILocation(line: 59, column: 17, scope: !983, inlinedAt: !1647)
!1649 = !DILocation(line: 59, column: 13, scope: !976, inlinedAt: !1647)
!1650 = !DILocation(line: 60, column: 19, scope: !1482, inlinedAt: !1647)
!1651 = !DILocation(line: 61, column: 9, scope: !1482, inlinedAt: !1647)
!1652 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1647)
!1653 = !DILocation(line: 0, scope: !983, inlinedAt: !1647)
!1654 = !DILocation(line: 0, scope: !976, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 324, column: 29, scope: !1623)
!1656 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1655)
!1657 = !DILocation(line: 0, scope: !1635, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 324, column: 55, scope: !1623)
!1659 = !DILocation(line: 73, column: 48, scope: !1635, inlinedAt: !1658)
!1660 = !DILocation(line: 73, column: 15, scope: !1635, inlinedAt: !1658)
!1661 = !DILocation(line: 0, scope: !976, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 324, column: 68, scope: !1623)
!1663 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1662)
!1664 = !DILocation(line: 0, scope: !991, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 322, column: 9, scope: !1623)
!1666 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !1665)
!1667 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !1665)
!1668 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !1665)
!1669 = !DILocation(line: 0, scope: !1002, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !1665)
!1671 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !1670)
!1672 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !1670)
!1673 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !1670)
!1674 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !1670)
!1675 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !1665)
!1676 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !1665)
!1677 = !DILocation(line: 325, column: 9, scope: !1623)
!1678 = !DILocation(line: 328, column: 28, scope: !1441)
!1679 = !DILocation(line: 328, column: 10, scope: !1441)
!1680 = !DILocation(line: 328, column: 15, scope: !1441)
!1681 = !{!1682, !628, i64 12}
!1682 = !{!"_ZTS15halide_buffer_t", !1683, i64 0, !628, i64 8, !628, i64 12, !1683, i64 16, !666, i64 24, !639, i64 28, !628, i64 32, !628, i64 36}
!1683 = !{!"long long", !629, i64 0}
!1684 = !DILocation(line: 329, column: 15, scope: !1441)
!1685 = !DILocation(line: 330, column: 28, scope: !1441)
!1686 = !DILocation(line: 330, column: 10, scope: !1441)
!1687 = !DILocation(line: 330, column: 21, scope: !1441)
!1688 = !{!1682, !639, i64 28}
!1689 = !DILocalVariable(name: "this", arg: 1, scope: !1690, type: !292, flags: DIFlagArtificial | DIFlagObjectPointer)
!1690 = distinct !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !280, file: !115, line: 1474, type: !378, scopeLine: 1474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, declaration: !377, retainedNodes: !1691)
!1691 = !{!1689, !1692}
!1692 = !DILocalVariable(name: "v", arg: 2, scope: !1690, file: !115, line: 1474, type: !83)
!1693 = !DILocation(line: 0, scope: !1690, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 331, column: 10, scope: !1441)
!1695 = !DILocalVariable(name: "this", arg: 1, scope: !1696, type: !292, flags: DIFlagArtificial | DIFlagObjectPointer)
!1696 = distinct !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !280, file: !115, line: 1458, type: !370, scopeLine: 1458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, declaration: !369, retainedNodes: !1697)
!1697 = !{!1695, !1698, !1699}
!1698 = !DILocalVariable(name: "flag", arg: 2, scope: !1696, file: !115, line: 1458, type: !368)
!1699 = !DILocalVariable(name: "value", arg: 3, scope: !1696, file: !115, line: 1458, type: !83)
!1700 = !DILocation(line: 0, scope: !1696, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 1475, column: 9, scope: !1690, inlinedAt: !1694)
!1702 = !DILocation(line: 1460, column: 13, scope: !1703, inlinedAt: !1701)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !115, line: 1459, column: 20)
!1704 = distinct !DILexicalBlock(scope: !1696, file: !115, line: 1459, column: 13)
!1705 = !DILocation(line: 1460, column: 19, scope: !1703, inlinedAt: !1701)
!1706 = !{!1682, !1683, i64 16}
!1707 = !DILocation(line: 0, scope: !1454)
!1708 = !DILocation(line: 333, column: 23, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1454, file: !49, line: 333, column: 5)
!1710 = !DILocation(line: 333, column: 35, scope: !1709)
!1711 = !DILocation(line: 333, column: 5, scope: !1454)
!1712 = !DILocation(line: 0, scope: !1456)
!1713 = !DILocation(line: 338, column: 23, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1456, file: !49, line: 338, column: 5)
!1715 = !{!1682, !628, i64 32}
!1716 = !DILocation(line: 338, column: 5, scope: !1456)
!1717 = !DILocation(line: 0, scope: !1597, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 334, column: 51, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1709, file: !49, line: 333, column: 62)
!1720 = !DILocation(line: 195, column: 9, scope: !1605, inlinedAt: !1718)
!1721 = !DILocation(line: 195, column: 9, scope: !1597, inlinedAt: !1718)
!1722 = !DILocation(line: 196, column: 16, scope: !1608, inlinedAt: !1718)
!1723 = !DILocation(line: 196, column: 9, scope: !1608, inlinedAt: !1718)
!1724 = !DILocation(line: 198, column: 16, scope: !1611, inlinedAt: !1718)
!1725 = !DILocation(line: 198, column: 9, scope: !1611, inlinedAt: !1718)
!1726 = !DILocation(line: 0, scope: !1605, inlinedAt: !1718)
!1727 = !DILocation(line: 334, column: 14, scope: !1719)
!1728 = !DILocation(line: 334, column: 21, scope: !1719)
!1729 = !DILocation(line: 334, column: 28, scope: !1719)
!1730 = !{!1731, !639, i64 4}
!1731 = !{!"_ZTS18halide_dimension_t", !639, i64 0, !639, i64 4, !639, i64 8, !639, i64 12}
!1732 = !DILocation(line: 333, column: 58, scope: !1709)
!1733 = distinct !{!1733, !1711, !1734, !760}
!1734 = !DILocation(line: 335, column: 5, scope: !1454)
!1735 = !DILocation(line: 345, column: 17, scope: !1441)
!1736 = !DILocation(line: 345, column: 24, scope: !1441)
!1737 = !{!1731, !639, i64 8}
!1738 = !DILocation(line: 0, scope: !1458)
!1739 = !DILocation(line: 346, column: 23, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1458, file: !49, line: 346, column: 5)
!1741 = !DILocation(line: 346, column: 5, scope: !1458)
!1742 = !DILocation(line: 339, column: 25, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !49, line: 339, column: 13)
!1744 = distinct !DILexicalBlock(scope: !1714, file: !49, line: 338, column: 45)
!1745 = !DILocation(line: 339, column: 32, scope: !1743)
!1746 = !DILocation(line: 339, column: 13, scope: !1744)
!1747 = !DILocation(line: 340, column: 32, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1743, file: !49, line: 339, column: 38)
!1749 = !DILocation(line: 341, column: 9, scope: !1748)
!1750 = !DILocation(line: 338, column: 41, scope: !1714)
!1751 = distinct !{!1751, !1716, !1752, !760}
!1752 = !DILocation(line: 342, column: 5, scope: !1456)
!1753 = !DILocation(line: 347, column: 71, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1740, file: !49, line: 346, column: 45)
!1755 = !DILocation(line: 347, column: 41, scope: !1754)
!1756 = !DILocation(line: 347, column: 46, scope: !1754)
!1757 = !DILocation(line: 347, column: 53, scope: !1754)
!1758 = !DILocation(line: 347, column: 21, scope: !1754)
!1759 = !DILocation(line: 347, column: 28, scope: !1754)
!1760 = !DILocation(line: 346, column: 41, scope: !1740)
!1761 = distinct !{!1761, !1741, !1762, !760}
!1762 = !DILocation(line: 348, column: 5, scope: !1458)
!1763 = !DILocation(line: 351, column: 1, scope: !1441)
!1764 = distinct !DISubprogram(name: "halide_matlab_array_to_scalar", scope: !49, file: !49, line: 354, type: !1765, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !1767)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!28, !77, !20, !585, !77}
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1775, !1776, !1777}
!1768 = !DILocalVariable(name: "user_context", arg: 1, scope: !1764, file: !49, line: 354, type: !77)
!1769 = !DILocalVariable(name: "arr", arg: 2, scope: !1764, file: !49, line: 355, type: !20)
!1770 = !DILocalVariable(name: "arg", arg: 3, scope: !1764, file: !49, line: 355, type: !585)
!1771 = !DILocalVariable(name: "scalar", arg: 4, scope: !1764, file: !49, line: 355, type: !77)
!1772 = !DILocalVariable(name: "dim_count", scope: !1764, file: !49, line: 362, type: !28)
!1773 = !DILocalVariable(name: "i", scope: !1774, file: !49, line: 363, type: !28)
!1774 = distinct !DILexicalBlock(scope: !1764, file: !49, line: 363, column: 5)
!1775 = !DILocalVariable(name: "value", scope: !1764, file: !49, line: 375, type: !93)
!1776 = !DILocalVariable(name: "type_code", scope: !1764, file: !49, line: 376, type: !213)
!1777 = !DILocalVariable(name: "type_bits", scope: !1764, file: !49, line: 377, type: !213)
!1778 = !DILocation(line: 0, scope: !1764)
!1779 = !DILocation(line: 356, column: 9, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1764, file: !49, line: 356, column: 9)
!1781 = !DILocation(line: 356, column: 9, scope: !1764)
!1782 = !DILocation(line: 0, scope: !954, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 357, column: 9, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !49, line: 356, column: 27)
!1785 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !1783)
!1786 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !1783)
!1787 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !1783)
!1788 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !1783)
!1789 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !1783)
!1790 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !1783)
!1791 = !DILocation(line: 0, scope: !968, inlinedAt: !1783)
!1792 = !DILocation(line: 0, scope: !976, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 357, column: 29, scope: !1784)
!1794 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1793)
!1795 = !DILocation(line: 357, column: 88, scope: !1784)
!1796 = !DILocation(line: 0, scope: !976, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 357, column: 80, scope: !1784)
!1798 = !DILocation(line: 59, column: 17, scope: !983, inlinedAt: !1797)
!1799 = !DILocation(line: 59, column: 13, scope: !976, inlinedAt: !1797)
!1800 = !DILocation(line: 60, column: 19, scope: !1482, inlinedAt: !1797)
!1801 = !DILocation(line: 61, column: 9, scope: !1482, inlinedAt: !1797)
!1802 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1797)
!1803 = !DILocation(line: 0, scope: !983, inlinedAt: !1797)
!1804 = !DILocation(line: 0, scope: !976, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 357, column: 93, scope: !1784)
!1806 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1805)
!1807 = !DILocation(line: 0, scope: !991, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 357, column: 9, scope: !1784)
!1809 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !1808)
!1810 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !1808)
!1811 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !1808)
!1812 = !DILocation(line: 0, scope: !1002, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !1808)
!1814 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !1813)
!1815 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !1813)
!1816 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !1813)
!1817 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !1813)
!1818 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !1808)
!1819 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !1808)
!1820 = !DILocation(line: 358, column: 9, scope: !1784)
!1821 = !DILocation(line: 0, scope: !1504, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 362, column: 21, scope: !1764)
!1823 = !DILocation(line: 187, column: 9, scope: !1509, inlinedAt: !1822)
!1824 = !DILocation(line: 187, column: 9, scope: !1504, inlinedAt: !1822)
!1825 = !DILocation(line: 188, column: 16, scope: !1512, inlinedAt: !1822)
!1826 = !DILocation(line: 188, column: 9, scope: !1512, inlinedAt: !1822)
!1827 = !DILocation(line: 190, column: 16, scope: !1515, inlinedAt: !1822)
!1828 = !DILocation(line: 190, column: 9, scope: !1515, inlinedAt: !1822)
!1829 = !DILocation(line: 0, scope: !1509, inlinedAt: !1822)
!1830 = !DILocation(line: 0, scope: !1774)
!1831 = !DILocation(line: 363, column: 23, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1774, file: !49, line: 363, column: 5)
!1833 = !DILocation(line: 363, column: 5, scope: !1774)
!1834 = distinct !{!1834, !1833, !1835, !760}
!1835 = !DILocation(line: 368, column: 5, scope: !1774)
!1836 = !DILocation(line: 0, scope: !1597, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 364, column: 13, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !49, line: 364, column: 13)
!1839 = distinct !DILexicalBlock(scope: !1832, file: !49, line: 363, column: 41)
!1840 = !DILocation(line: 195, column: 9, scope: !1605, inlinedAt: !1837)
!1841 = !DILocation(line: 195, column: 9, scope: !1597, inlinedAt: !1837)
!1842 = !DILocation(line: 196, column: 16, scope: !1608, inlinedAt: !1837)
!1843 = !DILocation(line: 196, column: 9, scope: !1608, inlinedAt: !1837)
!1844 = !DILocation(line: 198, column: 16, scope: !1611, inlinedAt: !1837)
!1845 = !DILocation(line: 198, column: 9, scope: !1611, inlinedAt: !1837)
!1846 = !DILocation(line: 0, scope: !1605, inlinedAt: !1837)
!1847 = !DILocation(line: 364, column: 35, scope: !1838)
!1848 = !DILocation(line: 363, column: 37, scope: !1832)
!1849 = !DILocation(line: 364, column: 13, scope: !1839)
!1850 = !DILocation(line: 0, scope: !954, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 365, column: 13, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1838, file: !49, line: 364, column: 41)
!1853 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !1851)
!1854 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !1851)
!1855 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !1851)
!1856 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !1851)
!1857 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !1851)
!1858 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !1851)
!1859 = !DILocation(line: 0, scope: !968, inlinedAt: !1851)
!1860 = !DILocation(line: 0, scope: !976, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 365, column: 33, scope: !1852)
!1862 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1861)
!1863 = !DILocation(line: 365, column: 86, scope: !1852)
!1864 = !DILocation(line: 0, scope: !976, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 365, column: 78, scope: !1852)
!1866 = !DILocation(line: 59, column: 17, scope: !983, inlinedAt: !1865)
!1867 = !DILocation(line: 59, column: 13, scope: !976, inlinedAt: !1865)
!1868 = !DILocation(line: 60, column: 19, scope: !1482, inlinedAt: !1865)
!1869 = !DILocation(line: 61, column: 9, scope: !1482, inlinedAt: !1865)
!1870 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1865)
!1871 = !DILocation(line: 0, scope: !983, inlinedAt: !1865)
!1872 = !DILocation(line: 0, scope: !976, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 365, column: 91, scope: !1852)
!1874 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1873)
!1875 = !DILocation(line: 0, scope: !991, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 365, column: 13, scope: !1852)
!1877 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !1876)
!1878 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !1876)
!1879 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !1876)
!1880 = !DILocation(line: 0, scope: !1002, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !1876)
!1882 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !1881)
!1883 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !1881)
!1884 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !1881)
!1885 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !1881)
!1886 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !1876)
!1887 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !1876)
!1888 = !DILocation(line: 369, column: 10, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1764, file: !49, line: 369, column: 9)
!1890 = !DILocation(line: 369, column: 27, scope: !1889)
!1891 = !DILocation(line: 369, column: 31, scope: !1889)
!1892 = !DILocation(line: 369, column: 9, scope: !1764)
!1893 = !DILocation(line: 0, scope: !954, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 370, column: 9, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1889, file: !49, line: 369, column: 49)
!1896 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !1894)
!1897 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !1894)
!1898 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !1894)
!1899 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !1894)
!1900 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !1894)
!1901 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !1894)
!1902 = !DILocation(line: 0, scope: !968, inlinedAt: !1894)
!1903 = !DILocation(line: 0, scope: !976, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 370, column: 29, scope: !1895)
!1905 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1904)
!1906 = !DILocation(line: 370, column: 90, scope: !1895)
!1907 = !DILocation(line: 0, scope: !976, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 370, column: 82, scope: !1895)
!1909 = !DILocation(line: 59, column: 17, scope: !983, inlinedAt: !1908)
!1910 = !DILocation(line: 59, column: 13, scope: !976, inlinedAt: !1908)
!1911 = !DILocation(line: 60, column: 19, scope: !1482, inlinedAt: !1908)
!1912 = !DILocation(line: 61, column: 9, scope: !1482, inlinedAt: !1908)
!1913 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1908)
!1914 = !DILocation(line: 0, scope: !983, inlinedAt: !1908)
!1915 = !DILocation(line: 0, scope: !976, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 371, column: 29, scope: !1895)
!1917 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1916)
!1918 = !DILocation(line: 371, column: 59, scope: !1895)
!1919 = !DILocation(line: 371, column: 44, scope: !1895)
!1920 = !DILocation(line: 0, scope: !976, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 371, column: 41, scope: !1895)
!1922 = !DILocation(line: 59, column: 17, scope: !983, inlinedAt: !1921)
!1923 = !DILocation(line: 59, column: 13, scope: !976, inlinedAt: !1921)
!1924 = !DILocation(line: 60, column: 19, scope: !1482, inlinedAt: !1921)
!1925 = !DILocation(line: 61, column: 9, scope: !1482, inlinedAt: !1921)
!1926 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1921)
!1927 = !DILocation(line: 0, scope: !983, inlinedAt: !1921)
!1928 = !DILocation(line: 0, scope: !976, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 371, column: 78, scope: !1895)
!1930 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !1929)
!1931 = !DILocation(line: 0, scope: !991, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 370, column: 9, scope: !1895)
!1933 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !1932)
!1934 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !1932)
!1935 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !1932)
!1936 = !DILocation(line: 0, scope: !1002, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !1932)
!1938 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !1937)
!1939 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !1937)
!1940 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !1937)
!1941 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !1937)
!1942 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !1932)
!1943 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !1932)
!1944 = !DILocation(line: 372, column: 9, scope: !1895)
!1945 = !DILocation(line: 375, column: 20, scope: !1764)
!1946 = !DILocation(line: 376, column: 35, scope: !1764)
!1947 = !DILocation(line: 377, column: 35, scope: !1764)
!1948 = !DILocation(line: 379, column: 9, scope: !1764)
!1949 = !DILocation(line: 380, column: 9, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !49, line: 379, column: 39)
!1951 = distinct !DILexicalBlock(scope: !1764, file: !49, line: 379, column: 9)
!1952 = !DILocation(line: 382, column: 55, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1950, file: !49, line: 380, column: 28)
!1954 = !DILocation(line: 382, column: 47, scope: !1953)
!1955 = !{!631, !631, i64 0}
!1956 = !DILocation(line: 383, column: 13, scope: !1953)
!1957 = !DILocation(line: 385, column: 71, scope: !1953)
!1958 = !DILocation(line: 385, column: 49, scope: !1953)
!1959 = !DILocation(line: 386, column: 13, scope: !1953)
!1960 = !DILocation(line: 388, column: 73, scope: !1953)
!1961 = !DILocation(line: 388, column: 14, scope: !1953)
!1962 = !DILocation(line: 388, column: 50, scope: !1953)
!1963 = !{!668, !668, i64 0}
!1964 = !DILocation(line: 389, column: 13, scope: !1953)
!1965 = !DILocation(line: 391, column: 73, scope: !1953)
!1966 = !DILocation(line: 391, column: 14, scope: !1953)
!1967 = !DILocation(line: 391, column: 50, scope: !1953)
!1968 = !DILocation(line: 392, column: 13, scope: !1953)
!1969 = !DILocation(line: 394, column: 73, scope: !1953)
!1970 = !DILocation(line: 394, column: 14, scope: !1953)
!1971 = !DILocation(line: 394, column: 50, scope: !1953)
!1972 = !{!1683, !1683, i64 0}
!1973 = !DILocation(line: 395, column: 13, scope: !1953)
!1974 = !DILocation(line: 398, column: 9, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !49, line: 397, column: 47)
!1976 = distinct !DILexicalBlock(scope: !1951, file: !49, line: 397, column: 16)
!1977 = !DILocation(line: 400, column: 55, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1975, file: !49, line: 398, column: 28)
!1979 = !DILocation(line: 400, column: 47, scope: !1978)
!1980 = !DILocation(line: 401, column: 13, scope: !1978)
!1981 = !DILocation(line: 403, column: 73, scope: !1978)
!1982 = !DILocation(line: 403, column: 50, scope: !1978)
!1983 = !DILocation(line: 404, column: 13, scope: !1978)
!1984 = !DILocation(line: 406, column: 75, scope: !1978)
!1985 = !DILocation(line: 406, column: 14, scope: !1978)
!1986 = !DILocation(line: 406, column: 51, scope: !1978)
!1987 = !DILocation(line: 407, column: 13, scope: !1978)
!1988 = !DILocation(line: 409, column: 75, scope: !1978)
!1989 = !DILocation(line: 409, column: 14, scope: !1978)
!1990 = !DILocation(line: 409, column: 51, scope: !1978)
!1991 = !DILocation(line: 410, column: 13, scope: !1978)
!1992 = !DILocation(line: 412, column: 75, scope: !1978)
!1993 = !DILocation(line: 412, column: 14, scope: !1978)
!1994 = !DILocation(line: 412, column: 51, scope: !1978)
!1995 = !DILocation(line: 413, column: 13, scope: !1978)
!1996 = !DILocation(line: 416, column: 9, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !49, line: 415, column: 48)
!1998 = distinct !DILexicalBlock(scope: !1976, file: !49, line: 415, column: 16)
!1999 = !DILocation(line: 418, column: 69, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1997, file: !49, line: 416, column: 28)
!2001 = !DILocation(line: 418, column: 14, scope: !2000)
!2002 = !DILocation(line: 418, column: 48, scope: !2000)
!2003 = !{!2004, !2004, i64 0}
!2004 = !{!"float", !629, i64 0}
!2005 = !DILocation(line: 419, column: 13, scope: !2000)
!2006 = !DILocation(line: 421, column: 14, scope: !2000)
!2007 = !DILocation(line: 421, column: 49, scope: !2000)
!2008 = !{!2009, !2009, i64 0}
!2009 = !{!"double", !629, i64 0}
!2010 = !DILocation(line: 422, column: 13, scope: !2000)
!2011 = !DILocation(line: 0, scope: !954, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 425, column: 9, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !49, line: 424, column: 49)
!2014 = distinct !DILexicalBlock(scope: !1998, file: !49, line: 424, column: 16)
!2015 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !2012)
!2016 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !2012)
!2017 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !2012)
!2018 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !2012)
!2019 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !2012)
!2020 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !2012)
!2021 = !DILocation(line: 0, scope: !968, inlinedAt: !2012)
!2022 = !DILocation(line: 0, scope: !976, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 425, column: 29, scope: !2013)
!2024 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !2023)
!2025 = !DILocation(line: 425, column: 53, scope: !2013)
!2026 = !DILocation(line: 0, scope: !976, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 425, column: 45, scope: !2013)
!2028 = !DILocation(line: 59, column: 17, scope: !983, inlinedAt: !2027)
!2029 = !DILocation(line: 59, column: 13, scope: !976, inlinedAt: !2027)
!2030 = !DILocation(line: 60, column: 19, scope: !1482, inlinedAt: !2027)
!2031 = !DILocation(line: 61, column: 9, scope: !1482, inlinedAt: !2027)
!2032 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !2027)
!2033 = !DILocation(line: 0, scope: !983, inlinedAt: !2027)
!2034 = !DILocation(line: 0, scope: !976, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 425, column: 58, scope: !2013)
!2036 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !2035)
!2037 = !DILocation(line: 0, scope: !991, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 425, column: 9, scope: !2013)
!2039 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !2038)
!2040 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !2038)
!2041 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !2038)
!2042 = !DILocation(line: 0, scope: !1002, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !2038)
!2044 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !2043)
!2045 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !2043)
!2046 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !2043)
!2047 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !2043)
!2048 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !2038)
!2049 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !2038)
!2050 = !DILocation(line: 426, column: 9, scope: !2013)
!2051 = !DILocation(line: 0, scope: !954, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 428, column: 5, scope: !1764)
!2053 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !2052)
!2054 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !2052)
!2055 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !2052)
!2056 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !2052)
!2057 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !2052)
!2058 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !2052)
!2059 = !DILocation(line: 0, scope: !968, inlinedAt: !2052)
!2060 = !DILocation(line: 0, scope: !976, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 428, column: 25, scope: !1764)
!2062 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !2061)
!2063 = !DILocation(line: 428, column: 59, scope: !1764)
!2064 = !DILocation(line: 0, scope: !976, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 428, column: 51, scope: !1764)
!2066 = !DILocation(line: 59, column: 17, scope: !983, inlinedAt: !2065)
!2067 = !DILocation(line: 59, column: 13, scope: !976, inlinedAt: !2065)
!2068 = !DILocation(line: 60, column: 19, scope: !1482, inlinedAt: !2065)
!2069 = !DILocation(line: 61, column: 9, scope: !1482, inlinedAt: !2065)
!2070 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !2065)
!2071 = !DILocation(line: 0, scope: !983, inlinedAt: !2065)
!2072 = !DILocation(line: 0, scope: !976, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 428, column: 64, scope: !1764)
!2074 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !2073)
!2075 = !DILocation(line: 0, scope: !991, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 428, column: 5, scope: !1764)
!2077 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !2076)
!2078 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !2076)
!2079 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !2076)
!2080 = !DILocation(line: 0, scope: !1002, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !2076)
!2082 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !2081)
!2083 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !2081)
!2084 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !2081)
!2085 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !2081)
!2086 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !2076)
!2087 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !2076)
!2088 = !DILocation(line: 429, column: 5, scope: !1764)
!2089 = !DILocation(line: 430, column: 1, scope: !1764)
!2090 = distinct !DISubprogram(name: "halide_matlab_call_pipeline", scope: !49, file: !49, line: 432, type: !2091, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !2098)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!28, !77, !2093, !576, !28, !2096, !28, !2097}
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 32)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!28, !431}
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 32)
!2098 = !{!2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2111, !2112, !2114, !2117, !2118, !2121, !2123, !2124, !2126, !2129, !2132}
!2099 = !DILocalVariable(name: "user_context", arg: 1, scope: !2090, file: !49, line: 432, type: !77)
!2100 = !DILocalVariable(name: "pipeline", arg: 2, scope: !2090, file: !49, line: 433, type: !2093)
!2101 = !DILocalVariable(name: "metadata", arg: 3, scope: !2090, file: !49, line: 433, type: !576)
!2102 = !DILocalVariable(name: "nlhs", arg: 4, scope: !2090, file: !49, line: 434, type: !28)
!2103 = !DILocalVariable(name: "plhs", arg: 5, scope: !2090, file: !49, line: 434, type: !2096)
!2104 = !DILocalVariable(name: "nrhs", arg: 6, scope: !2090, file: !49, line: 434, type: !28)
!2105 = !DILocalVariable(name: "prhs", arg: 7, scope: !2090, file: !49, line: 434, type: !2097)
!2106 = !DILocalVariable(name: "init_result", scope: !2090, file: !49, line: 436, type: !28)
!2107 = !DILocalVariable(name: "result_storage", scope: !2090, file: !49, line: 441, type: !213)
!2108 = !DILocalVariable(name: "result_ptr", scope: !2090, file: !49, line: 442, type: !424)
!2109 = !DILocalVariable(name: "result", scope: !2090, file: !49, line: 447, type: !2110)
!2110 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !213, size: 32)
!2111 = !DILocalVariable(name: "args", scope: !2090, file: !49, line: 472, type: !431)
!2112 = !DILocalVariable(name: "i", scope: !2113, file: !49, line: 473, type: !28)
!2113 = distinct !DILexicalBlock(scope: !2090, file: !49, line: 473, column: 5)
!2114 = !DILocalVariable(name: "arg", scope: !2115, file: !49, line: 474, type: !20)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !49, line: 473, column: 36)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !49, line: 473, column: 5)
!2117 = !DILocalVariable(name: "arg_metadata", scope: !2115, file: !49, line: 475, type: !585)
!2118 = !DILocalVariable(name: "buf", scope: !2119, file: !49, line: 479, type: !432)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !49, line: 478, column: 71)
!2120 = distinct !DILexicalBlock(scope: !2115, file: !49, line: 477, column: 13)
!2121 = !DILocalVariable(name: "size_bytes", scope: !2122, file: !49, line: 490, type: !17)
!2122 = distinct !DILexicalBlock(scope: !2120, file: !49, line: 489, column: 16)
!2123 = !DILocalVariable(name: "scalar", scope: !2122, file: !49, line: 491, type: !77)
!2124 = !DILocalVariable(name: "i", scope: !2125, file: !49, line: 505, type: !28)
!2125 = distinct !DILexicalBlock(scope: !2090, file: !49, line: 505, column: 5)
!2126 = !DILocalVariable(name: "arg_metadata", scope: !2127, file: !49, line: 506, type: !585)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !49, line: 505, column: 36)
!2128 = distinct !DILexicalBlock(scope: !2125, file: !49, line: 505, column: 5)
!2129 = !DILocalVariable(name: "buf", scope: !2130, file: !49, line: 509, type: !432)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !49, line: 508, column: 71)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !49, line: 508, column: 13)
!2132 = !DILocalVariable(name: "buf", scope: !2133, file: !49, line: 514, type: !432)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !49, line: 513, column: 71)
!2134 = distinct !DILexicalBlock(scope: !2127, file: !49, line: 512, column: 13)
!2135 = !DILocation(line: 0, scope: !2090)
!2136 = !DILocation(line: 436, column: 23, scope: !2090)
!2137 = !DILocation(line: 437, column: 21, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2090, file: !49, line: 437, column: 9)
!2139 = !DILocation(line: 437, column: 9, scope: !2090)
!2140 = !DILocation(line: 441, column: 5, scope: !2090)
!2141 = !DILocation(line: 443, column: 14, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2090, file: !49, line: 443, column: 9)
!2143 = !DILocation(line: 443, column: 9, scope: !2090)
!2144 = !DILocalVariable(name: "M", arg: 1, scope: !2145, file: !49, line: 202, type: !17)
!2145 = distinct !DISubprogram(name: "create_numeric_matrix", linkageName: "_ZN6Halide7Runtime3mex21create_numeric_matrixEjjNS1_9mxClassIDENS1_12mxComplexityE", scope: !2, file: !49, line: 202, type: !99, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !2146)
!2146 = !{!2144, !2147, !2148, !2149}
!2147 = !DILocalVariable(name: "N", arg: 2, scope: !2145, file: !49, line: 202, type: !17)
!2148 = !DILocalVariable(name: "type", arg: 3, scope: !2145, file: !49, line: 202, type: !48)
!2149 = !DILocalVariable(name: "complexity", arg: 4, scope: !2145, file: !49, line: 202, type: !102)
!2150 = !DILocation(line: 0, scope: !2145, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 444, column: 19, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2142, file: !49, line: 443, column: 19)
!2153 = !DILocation(line: 203, column: 9, scope: !2154, inlinedAt: !2151)
!2154 = distinct !DILexicalBlock(scope: !2145, file: !49, line: 203, column: 9)
!2155 = !DILocation(line: 203, column: 9, scope: !2145, inlinedAt: !2151)
!2156 = !DILocation(line: 204, column: 16, scope: !2157, inlinedAt: !2151)
!2157 = distinct !DILexicalBlock(scope: !2154, file: !49, line: 203, column: 36)
!2158 = !DILocation(line: 204, column: 9, scope: !2157, inlinedAt: !2151)
!2159 = !DILocation(line: 206, column: 16, scope: !2160, inlinedAt: !2151)
!2160 = distinct !DILexicalBlock(scope: !2154, file: !49, line: 205, column: 12)
!2161 = !DILocation(line: 206, column: 9, scope: !2160, inlinedAt: !2151)
!2162 = !DILocation(line: 0, scope: !2154, inlinedAt: !2151)
!2163 = !DILocation(line: 444, column: 17, scope: !2152)
!2164 = !DILocalVariable(name: "a", arg: 1, scope: !2165, file: !49, line: 166, type: !101)
!2165 = distinct !DISubprogram(name: "get_data<int>", linkageName: "_ZN6Halide7Runtime3mex8get_dataIiEEPT_P7mxArray", scope: !2, file: !49, line: 166, type: !2166, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, templateParams: !2169, retainedNodes: !2168)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!330, !101}
!2168 = !{!2164}
!2169 = !{!2170}
!2170 = !DITemplateTypeParameter(name: "T", type: !28)
!2171 = !DILocation(line: 0, scope: !2165, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 445, column: 22, scope: !2152)
!2173 = !DILocation(line: 167, column: 17, scope: !2165, inlinedAt: !2172)
!2174 = !DILocation(line: 167, column: 12, scope: !2165, inlinedAt: !2172)
!2175 = !DILocation(line: 446, column: 5, scope: !2152)
!2176 = !DILocation(line: 450, column: 12, scope: !2090)
!2177 = !DILocation(line: 453, column: 27, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2090, file: !49, line: 453, column: 9)
!2179 = !DILocation(line: 453, column: 14, scope: !2178)
!2180 = !DILocation(line: 453, column: 9, scope: !2090)
!2181 = !DILocation(line: 454, column: 18, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !49, line: 454, column: 13)
!2183 = distinct !DILexicalBlock(scope: !2178, file: !49, line: 453, column: 42)
!2184 = !DILocation(line: 454, column: 13, scope: !2183)
!2185 = !DILocation(line: 0, scope: !954, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 456, column: 13, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2182, file: !49, line: 454, column: 23)
!2188 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !2186)
!2189 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !2186)
!2190 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !2186)
!2191 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !2186)
!2192 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !2186)
!2193 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !2186)
!2194 = !DILocation(line: 0, scope: !968, inlinedAt: !2186)
!2195 = !DILocation(line: 0, scope: !976, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 456, column: 33, scope: !2187)
!2197 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !2196)
!2198 = !DILocation(line: 456, column: 61, scope: !2187)
!2199 = !DILocation(line: 0, scope: !1635, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 456, column: 48, scope: !2187)
!2201 = !DILocation(line: 73, column: 48, scope: !1635, inlinedAt: !2200)
!2202 = !DILocation(line: 73, column: 15, scope: !1635, inlinedAt: !2200)
!2203 = !DILocation(line: 0, scope: !976, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 457, column: 33, scope: !2187)
!2205 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !2204)
!2206 = !DILocation(line: 457, column: 83, scope: !2187)
!2207 = !DILocation(line: 0, scope: !976, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 457, column: 70, scope: !2187)
!2209 = !DILocation(line: 59, column: 17, scope: !983, inlinedAt: !2208)
!2210 = !DILocation(line: 59, column: 13, scope: !976, inlinedAt: !2208)
!2211 = !DILocation(line: 60, column: 19, scope: !1482, inlinedAt: !2208)
!2212 = !DILocation(line: 61, column: 9, scope: !1482, inlinedAt: !2208)
!2213 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !2208)
!2214 = !DILocation(line: 0, scope: !983, inlinedAt: !2208)
!2215 = !DILocation(line: 0, scope: !976, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 458, column: 33, scope: !2187)
!2217 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !2216)
!2218 = !DILocation(line: 0, scope: !1635, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 458, column: 45, scope: !2187)
!2220 = !DILocation(line: 73, column: 48, scope: !1635, inlinedAt: !2219)
!2221 = !DILocation(line: 73, column: 15, scope: !1635, inlinedAt: !2219)
!2222 = !DILocation(line: 0, scope: !976, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 458, column: 53, scope: !2187)
!2224 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !2223)
!2225 = !DILocation(line: 0, scope: !991, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 456, column: 13, scope: !2187)
!2227 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !2226)
!2228 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !2226)
!2229 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !2226)
!2230 = !DILocation(line: 0, scope: !1002, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !2226)
!2232 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !2231)
!2233 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !2231)
!2234 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !2231)
!2235 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !2231)
!2236 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !2226)
!2237 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !2226)
!2238 = !DILocation(line: 459, column: 9, scope: !2187)
!2239 = !DILocation(line: 460, column: 9, scope: !2183)
!2240 = !DILocation(line: 461, column: 9, scope: !2183)
!2241 = !DILocation(line: 465, column: 14, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2090, file: !49, line: 465, column: 9)
!2243 = !DILocation(line: 465, column: 9, scope: !2090)
!2244 = !DILocation(line: 0, scope: !954, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 466, column: 9, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2242, file: !49, line: 465, column: 19)
!2247 = !DILocation(line: 44, column: 27, scope: !963, inlinedAt: !2245)
!2248 = !DILocation(line: 48, column: 13, scope: !968, inlinedAt: !2245)
!2249 = !DILocation(line: 48, column: 13, scope: !966, inlinedAt: !2245)
!2250 = !DILocation(line: 49, column: 23, scope: !971, inlinedAt: !2245)
!2251 = !DILocation(line: 50, column: 18, scope: !971, inlinedAt: !2245)
!2252 = !DILocation(line: 51, column: 9, scope: !971, inlinedAt: !2245)
!2253 = !DILocation(line: 0, scope: !968, inlinedAt: !2245)
!2254 = !DILocation(line: 0, scope: !976, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 466, column: 29, scope: !2246)
!2256 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !2255)
!2257 = !DILocation(line: 466, column: 102, scope: !2246)
!2258 = !DILocation(line: 0, scope: !976, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 466, column: 89, scope: !2246)
!2260 = !DILocation(line: 59, column: 17, scope: !983, inlinedAt: !2259)
!2261 = !DILocation(line: 59, column: 13, scope: !976, inlinedAt: !2259)
!2262 = !DILocation(line: 60, column: 19, scope: !1482, inlinedAt: !2259)
!2263 = !DILocation(line: 61, column: 9, scope: !1482, inlinedAt: !2259)
!2264 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !2259)
!2265 = !DILocation(line: 0, scope: !983, inlinedAt: !2259)
!2266 = !DILocation(line: 0, scope: !976, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 467, column: 29, scope: !2246)
!2268 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !2267)
!2269 = !DILocation(line: 0, scope: !1635, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 467, column: 41, scope: !2246)
!2271 = !DILocation(line: 73, column: 48, scope: !1635, inlinedAt: !2270)
!2272 = !DILocation(line: 73, column: 15, scope: !1635, inlinedAt: !2270)
!2273 = !DILocation(line: 0, scope: !976, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 467, column: 49, scope: !2246)
!2275 = !DILocation(line: 62, column: 19, scope: !982, inlinedAt: !2274)
!2276 = !DILocation(line: 0, scope: !991, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 466, column: 9, scope: !2246)
!2278 = !DILocation(line: 167, column: 13, scope: !996, inlinedAt: !2277)
!2279 = !DILocation(line: 168, column: 13, scope: !998, inlinedAt: !2277)
!2280 = !DILocation(line: 169, column: 9, scope: !998, inlinedAt: !2277)
!2281 = !DILocation(line: 0, scope: !1002, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 170, column: 13, scope: !1006, inlinedAt: !2277)
!2283 = !DILocation(line: 163, column: 81, scope: !1002, inlinedAt: !2282)
!2284 = !DILocation(line: 163, column: 87, scope: !1002, inlinedAt: !2282)
!2285 = !DILocation(line: 163, column: 77, scope: !1002, inlinedAt: !2282)
!2286 = !DILocation(line: 163, column: 15, scope: !1002, inlinedAt: !2282)
!2287 = !DILocation(line: 172, column: 17, scope: !1012, inlinedAt: !2277)
!2288 = !DILocation(line: 181, column: 13, scope: !1015, inlinedAt: !2277)
!2289 = !DILocation(line: 468, column: 9, scope: !2246)
!2290 = !DILocation(line: 469, column: 9, scope: !2246)
!2291 = !DILocation(line: 472, column: 50, scope: !2090)
!2292 = !DILocation(line: 472, column: 28, scope: !2090)
!2293 = !DILocation(line: 472, column: 19, scope: !2090)
!2294 = !DILocation(line: 0, scope: !2113)
!2295 = !DILocation(line: 473, column: 23, scope: !2116)
!2296 = !DILocation(line: 473, column: 5, scope: !2113)
!2297 = !DILocation(line: 502, column: 14, scope: !2090)
!2298 = !DILocation(line: 502, column: 12, scope: !2090)
!2299 = !DILocation(line: 0, scope: !2125)
!2300 = !DILocation(line: 505, column: 5, scope: !2125)
!2301 = !DILocation(line: 474, column: 30, scope: !2115)
!2302 = !DILocation(line: 0, scope: !2115)
!2303 = !DILocation(line: 475, column: 67, scope: !2115)
!2304 = !DILocation(line: 475, column: 57, scope: !2115)
!2305 = !DILocation(line: 477, column: 27, scope: !2120)
!2306 = !DILocation(line: 477, column: 69, scope: !2120)
!2307 = !DILocation(line: 479, column: 55, scope: !2119)
!2308 = !DILocation(line: 0, scope: !2119)
!2309 = !DILocation(line: 480, column: 13, scope: !2119)
!2310 = !DILocation(line: 481, column: 106, scope: !2119)
!2311 = !DILocation(line: 481, column: 90, scope: !2119)
!2312 = !DILocation(line: 481, column: 46, scope: !2119)
!2313 = !DILocation(line: 481, column: 18, scope: !2119)
!2314 = !DILocation(line: 481, column: 22, scope: !2119)
!2315 = !DILocation(line: 482, column: 13, scope: !2119)
!2316 = !DILocation(line: 483, column: 22, scope: !2119)
!2317 = !DILocation(line: 483, column: 20, scope: !2119)
!2318 = !DILocation(line: 484, column: 24, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2119, file: !49, line: 484, column: 17)
!2320 = !DILocation(line: 484, column: 17, scope: !2119)
!2321 = !DILocation(line: 488, column: 13, scope: !2119)
!2322 = !DILocation(line: 488, column: 21, scope: !2119)
!2323 = !DILocation(line: 485, column: 17, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2319, file: !49, line: 484, column: 30)
!2325 = !DILocation(line: 490, column: 60, scope: !2122)
!2326 = !DILocation(line: 490, column: 41, scope: !2122)
!2327 = !DILocation(line: 490, column: 65, scope: !2122)
!2328 = !DILocation(line: 490, column: 70, scope: !2122)
!2329 = !DILocalVariable(name: "a", arg: 1, scope: !2330, file: !18, line: 203, type: !2334)
!2330 = distinct !DISubprogram(name: "max<int>", linkageName: "_ZN12_GLOBAL__N_13maxIiEET_RKS1_S3_", scope: !2331, file: !18, line: 203, type: !2332, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, templateParams: !2169, retainedNodes: !2335)
!2331 = !DINamespace(scope: null)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!28, !2334, !2334}
!2334 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !42, size: 32)
!2335 = !{!2329, !2336}
!2336 = !DILocalVariable(name: "b", arg: 2, scope: !2330, file: !18, line: 203, type: !2334)
!2337 = !DILocation(line: 0, scope: !2330, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 490, column: 33, scope: !2122)
!2339 = !DILocation(line: 204, column: 12, scope: !2330, inlinedAt: !2338)
!2340 = !DILocation(line: 0, scope: !2122)
!2341 = !DILocation(line: 491, column: 28, scope: !2122)
!2342 = !DILocation(line: 492, column: 13, scope: !2122)
!2343 = !DILocation(line: 493, column: 22, scope: !2122)
!2344 = !DILocation(line: 493, column: 20, scope: !2122)
!2345 = !DILocation(line: 494, column: 24, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2122, file: !49, line: 494, column: 17)
!2347 = !DILocation(line: 494, column: 17, scope: !2122)
!2348 = !DILocation(line: 498, column: 13, scope: !2122)
!2349 = !DILocation(line: 498, column: 21, scope: !2122)
!2350 = !DILocation(line: 495, column: 17, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2346, file: !49, line: 494, column: 30)
!2352 = !DILocation(line: 473, column: 32, scope: !2116)
!2353 = distinct !{!2353, !2296, !2354, !760}
!2354 = !DILocation(line: 500, column: 5, scope: !2113)
!2355 = !DILocation(line: 506, column: 67, scope: !2127)
!2356 = !DILocation(line: 0, scope: !2127)
!2357 = !DILocation(line: 508, column: 27, scope: !2131)
!2358 = !DILocation(line: 508, column: 32, scope: !2131)
!2359 = !DILocation(line: 508, column: 13, scope: !2127)
!2360 = !DILocation(line: 509, column: 55, scope: !2130)
!2361 = !DILocation(line: 0, scope: !2130)
!2362 = !DILocation(line: 510, column: 13, scope: !2130)
!2363 = !DILocation(line: 512, column: 27, scope: !2134)
!2364 = !DILocation(line: 511, column: 9, scope: !2130)
!2365 = !DILocation(line: 512, column: 69, scope: !2134)
!2366 = !DILocation(line: 514, column: 55, scope: !2133)
!2367 = !DILocation(line: 0, scope: !2133)
!2368 = !DILocation(line: 515, column: 13, scope: !2133)
!2369 = !DILocation(line: 516, column: 9, scope: !2133)
!2370 = !DILocation(line: 505, column: 32, scope: !2128)
!2371 = !DILocation(line: 505, column: 23, scope: !2128)
!2372 = distinct !{!2372, !2300, !2373, !760}
!2373 = !DILocation(line: 517, column: 5, scope: !2125)
!2374 = !DILocation(line: 520, column: 1, scope: !2090)
!2375 = !DISubprogram(name: "memset", scope: !18, file: !18, line: 96, type: !2376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!77, !77, !28, !19}
!2378 = !DISubprogram(name: "halide_copy_to_host", scope: !115, file: !115, line: 761, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!2379 = !DISubprogram(name: "halide_device_free", scope: !115, file: !115, line: 837, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!2380 = !DISubprogram(name: "halide_string_to_string", scope: !18, file: !18, line: 120, type: !2381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!188, !188, !188, !9}
!2383 = !DISubprogram(name: "halide_int64_to_string", scope: !18, file: !18, line: 122, type: !2384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!188, !188, !188, !209, !28}
!2386 = !DISubprogram(name: "malloc", scope: !18, file: !18, line: 87, type: !2387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!77, !19}
!2389 = !DISubprogram(name: "halide_error", scope: !115, file: !115, line: 111, type: !868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!2390 = !DISubprogram(name: "free", scope: !18, file: !18, line: 86, type: !2391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{null, !77}
!2393 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !115, file: !115, line: 973, type: !2394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!28, !77, !233, !218}
!2396 = !DISubprogram(name: "halide_get_symbol", scope: !115, file: !115, line: 375, type: !2397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !870)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!77, !9}
