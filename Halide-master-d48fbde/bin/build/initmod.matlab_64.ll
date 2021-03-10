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
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type opaque
%struct.halide_dimension_t = type { i32, i32, i32, i32 }

@_ZN6Halide7Runtime3mex13mexWarnMsgTxtE = local_unnamed_addr global void (i8*)* null, align 8
@_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E = local_unnamed_addr global i64 (%struct.mxArray*)* null, align 8
@_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E = local_unnamed_addr global i32 (%struct.mxArray*)* null, align 8
@_ZN6Halide7Runtime3mex19mxGetDimensions_730E = local_unnamed_addr global i64* (%struct.mxArray*)* null, align 8
@_ZN6Halide7Runtime3mex19mxGetDimensions_700E = local_unnamed_addr global i32* (%struct.mxArray*)* null, align 8
@_ZN6Halide7Runtime3mex12mxGetClassIDE = local_unnamed_addr global i32 (%struct.mxArray*)* null, align 8
@_ZN6Halide7Runtime3mex9mxGetDataE = local_unnamed_addr global i8* (%struct.mxArray*)* null, align 8
@_ZN6Halide7Runtime3mex11mxIsNumericE = local_unnamed_addr global i1 (%struct.mxArray*)* null, align 8
@_ZN6Halide7Runtime3mex11mxIsLogicalE = local_unnamed_addr global i1 (%struct.mxArray*)* null, align 8
@_ZN6Halide7Runtime3mex11mxIsComplexE = local_unnamed_addr global i1 (%struct.mxArray*)* null, align 8
@_ZN6Halide7Runtime3mex11mxGetScalarE = local_unnamed_addr global double (%struct.mxArray*)* null, align 8
@_ZN6Halide7Runtime3mex16mxGetElementSizeE = local_unnamed_addr global i64 (%struct.mxArray*)* null, align 8
@_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_730E = local_unnamed_addr global %struct.mxArray* (i64, i64, i32, i32)* null, align 8
@_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_700E = local_unnamed_addr global %struct.mxArray* (i32, i32, i32, i32)* null, align 8
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
define weak i32 @_ZN6Halide7Runtime3mex12get_class_idEii(i32 %0, i32 %1) local_unnamed_addr #0 {
  switch i32 %0, label %20 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %15
  ]

3:                                                ; preds = %2
  switch i32 %1, label %8 [
    i32 1, label %20
    i32 8, label %4
    i32 16, label %5
    i32 32, label %6
    i32 64, label %7
  ]

4:                                                ; preds = %3
  br label %20

5:                                                ; preds = %3
  br label %20

6:                                                ; preds = %3
  br label %20

7:                                                ; preds = %3
  br label %20

8:                                                ; preds = %3
  br label %20

9:                                                ; preds = %2
  switch i32 %1, label %14 [
    i32 1, label %20
    i32 8, label %10
    i32 16, label %11
    i32 32, label %12
    i32 64, label %13
  ]

10:                                               ; preds = %9
  br label %20

11:                                               ; preds = %9
  br label %20

12:                                               ; preds = %9
  br label %20

13:                                               ; preds = %9
  br label %20

14:                                               ; preds = %9
  br label %20

15:                                               ; preds = %2
  %16 = icmp eq i32 %1, 64
  %17 = select i1 %16, i32 6, i32 0
  %18 = icmp eq i32 %1, 32
  %19 = select i1 %18, i32 7, i32 %17
  br label %20

20:                                               ; preds = %2, %15, %9, %3, %14, %13, %12, %11, %10, %8, %7, %6, %5, %4
  %21 = phi i32 [ 0, %14 ], [ 15, %13 ], [ 13, %12 ], [ 11, %11 ], [ 9, %10 ], [ 0, %8 ], [ 14, %7 ], [ 12, %6 ], [ 10, %5 ], [ 8, %4 ], [ 3, %3 ], [ 3, %9 ], [ %19, %15 ], [ 0, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind willreturn mustprogress
define weak i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %0) local_unnamed_addr #0 {
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
  ]

2:                                                ; preds = %1
  br label %20

3:                                                ; preds = %1
  br label %20

4:                                                ; preds = %1
  br label %20

5:                                                ; preds = %1
  br label %20

6:                                                ; preds = %1
  br label %20

7:                                                ; preds = %1
  br label %20

8:                                                ; preds = %1
  br label %20

9:                                                ; preds = %1
  br label %20

10:                                               ; preds = %1
  br label %20

11:                                               ; preds = %1
  br label %20

12:                                               ; preds = %1
  br label %20

13:                                               ; preds = %1
  br label %20

14:                                               ; preds = %1
  br label %20

15:                                               ; preds = %1
  br label %20

16:                                               ; preds = %1
  br label %20

17:                                               ; preds = %1
  br label %20

18:                                               ; preds = %1
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %1, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %21 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), %19 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), %18 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %17 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), %16 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), %15 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), %14 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), %13 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %12 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), %11 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), %10 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), %9 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %8 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %7 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %6 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %5 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %4 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %3 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %2 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %1 ]
  ret i8* %21
}

; Function Attrs: nounwind mustprogress
define weak void @halide_matlab_describe_pipeline(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(34) %0, %struct.halide_filter_metadata_t* %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i64 0, i32 1
  %4 = load i8*, i8** %3, align 8, !tbaa !3
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i64 0, i32 2
  %6 = load i8*, i8** %5, align 8, !tbaa !9
  %7 = tail call i8* @halide_string_to_string(i8* %4, i8* %6, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #5
  store i8* %7, i8** %3, align 8, !tbaa !3
  %8 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %1, i64 0, i32 4
  %9 = load i8*, i8** %8, align 8, !tbaa !10
  %10 = icmp eq i8* %9, null
  %11 = load i8*, i8** %5, align 8, !tbaa !9
  br i1 %10, label %12, label %14

12:                                               ; preds = %2
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %16

14:                                               ; preds = %2
  %15 = tail call i8* @halide_string_to_string(i8* %7, i8* %11, i8* nonnull %9) #5
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ]
  store i8* %17, i8** %3, align 8, !tbaa !3
  %18 = load i8*, i8** %5, align 8, !tbaa !9
  %19 = tail call i8* @halide_string_to_string(i8* %17, i8* %18, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #5
  store i8* %19, i8** %3, align 8, !tbaa !3
  %20 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %1, i64 0, i32 1
  %21 = load i32, i32* %20, align 4, !tbaa !13
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %84

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %1, i64 0, i32 2
  %25 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %24, align 8, !tbaa !14
  %26 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i64 0, i32 1
  %27 = load i32, i32* %26, align 8, !tbaa !15
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i64 0, i32 1
  %31 = load i8*, i8** %5, align 8, !tbaa !9
  %32 = tail call i8* @halide_string_to_string(i8* %19, i8* %31, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #5
  store i8* %32, i8** %3, align 8, !tbaa !3
  %33 = load i32, i32* %30, align 8, !tbaa !15
  br label %34

34:                                               ; preds = %29, %23
  %35 = phi i8* [ %32, %29 ], [ %19, %23 ]
  %36 = phi i32 [ %33, %29 ], [ %27, %23 ]
  switch i32 %36, label %50 [
    i32 2, label %40
    i32 1, label %40
    i32 0, label %37
  ]

37:                                               ; preds = %34
  %38 = load i8*, i8** %5, align 8, !tbaa !9
  %39 = tail call i8* @halide_string_to_string(i8* %35, i8* %38, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #5
  br label %48

40:                                               ; preds = %34, %34
  %41 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i64 0, i32 2
  %42 = load i32, i32* %41, align 4, !tbaa !20
  %43 = load i8*, i8** %5, align 8, !tbaa !9
  %44 = sext i32 %42 to i64
  %45 = tail call i8* @halide_int64_to_string(i8* %35, i8* %43, i64 %44, i32 1) #5
  store i8* %45, i8** %3, align 8, !tbaa !3
  %46 = load i8*, i8** %5, align 8, !tbaa !9
  %47 = tail call i8* @halide_string_to_string(i8* %45, i8* %46, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #5
  br label %48

48:                                               ; preds = %37, %40
  %49 = phi i8* [ %47, %40 ], [ %39, %37 ]
  store i8* %49, i8** %3, align 8, !tbaa !3
  br label %50

50:                                               ; preds = %48, %34
  %51 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i64 0, i32 3, i32 0
  %52 = load i8, i8* %51, align 8, !tbaa !21
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i64 0, i32 3, i32 1
  %55 = load i8, i8* %54, align 1, !tbaa !22
  %56 = zext i8 %55 to i32
  %57 = tail call i32 @_ZN6Halide7Runtime3mex12get_class_idEii(i32 %53, i32 %56) #6
  %58 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %57) #6
  %59 = icmp eq i8* %58, null
  %60 = load i8*, i8** %3, align 8, !tbaa !3
  %61 = load i8*, i8** %5, align 8, !tbaa !9
  br i1 %59, label %64, label %62

62:                                               ; preds = %50
  %63 = tail call i8* @halide_string_to_string(i8* %60, i8* %61, i8* nonnull %58) #5
  br label %66

64:                                               ; preds = %50
  %65 = tail call i8* @halide_string_to_string(i8* %60, i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i8* [ %63, %62 ], [ %65, %64 ]
  store i8* %67, i8** %3, align 8, !tbaa !3
  %68 = load i8*, i8** %5, align 8, !tbaa !9
  %69 = tail call i8* @halide_string_to_string(i8* %67, i8* %68, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)) #5
  store i8* %69, i8** %3, align 8, !tbaa !3
  %70 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i64 0, i32 0
  %71 = load i8*, i8** %70, align 8, !tbaa !23
  %72 = icmp eq i8* %71, null
  %73 = load i8*, i8** %5, align 8, !tbaa !9
  br i1 %72, label %76, label %74

74:                                               ; preds = %66
  %75 = tail call i8* @halide_string_to_string(i8* %69, i8* %73, i8* nonnull %71) #5
  br label %78

76:                                               ; preds = %66
  %77 = tail call i8* @halide_string_to_string(i8* %69, i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i8* [ %75, %74 ], [ %77, %76 ]
  store i8* %79, i8** %3, align 8, !tbaa !3
  %80 = load i8*, i8** %5, align 8, !tbaa !9
  %81 = tail call i8* @halide_string_to_string(i8* %79, i8* %80, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #5
  store i8* %81, i8** %3, align 8, !tbaa !3
  %82 = load i32, i32* %20, align 4, !tbaa !13
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %88, label %84

84:                                               ; preds = %145, %78, %16
  %85 = phi i8* [ %19, %16 ], [ %81, %78 ], [ %148, %145 ]
  %86 = load i8*, i8** %5, align 8, !tbaa !9
  %87 = tail call i8* @halide_string_to_string(i8* %85, i8* %86, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #5
  store i8* %87, i8** %3, align 8, !tbaa !3
  ret void

88:                                               ; preds = %78, %145
  %89 = phi i8* [ %148, %145 ], [ %81, %78 ]
  %90 = phi i64 [ %149, %145 ], [ 1, %78 ]
  %91 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %24, align 8, !tbaa !14
  %92 = load i8*, i8** %5, align 8, !tbaa !9
  %93 = tail call i8* @halide_string_to_string(i8* %89, i8* %92, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #5
  store i8* %93, i8** %3, align 8, !tbaa !3
  %94 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i64 %90, i32 1
  %95 = load i32, i32* %94, align 8, !tbaa !15
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i8*, i8** %5, align 8, !tbaa !9
  %99 = tail call i8* @halide_string_to_string(i8* %93, i8* %98, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #5
  store i8* %99, i8** %3, align 8, !tbaa !3
  %100 = load i32, i32* %94, align 8, !tbaa !15
  br label %101

101:                                              ; preds = %97, %88
  %102 = phi i8* [ %99, %97 ], [ %93, %88 ]
  %103 = phi i32 [ %100, %97 ], [ %95, %88 ]
  switch i32 %103, label %117 [
    i32 2, label %104
    i32 1, label %104
    i32 0, label %112
  ]

104:                                              ; preds = %101, %101
  %105 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i64 %90, i32 2
  %106 = load i32, i32* %105, align 4, !tbaa !20
  %107 = load i8*, i8** %5, align 8, !tbaa !9
  %108 = sext i32 %106 to i64
  %109 = tail call i8* @halide_int64_to_string(i8* %102, i8* %107, i64 %108, i32 1) #5
  store i8* %109, i8** %3, align 8, !tbaa !3
  %110 = load i8*, i8** %5, align 8, !tbaa !9
  %111 = tail call i8* @halide_string_to_string(i8* %109, i8* %110, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #5
  br label %115

112:                                              ; preds = %101
  %113 = load i8*, i8** %5, align 8, !tbaa !9
  %114 = tail call i8* @halide_string_to_string(i8* %102, i8* %113, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #5
  br label %115

115:                                              ; preds = %104, %112
  %116 = phi i8* [ %114, %112 ], [ %111, %104 ]
  store i8* %116, i8** %3, align 8, !tbaa !3
  br label %117

117:                                              ; preds = %115, %101
  %118 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i64 %90, i32 3, i32 0
  %119 = load i8, i8* %118, align 8, !tbaa !21
  %120 = zext i8 %119 to i32
  %121 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i64 %90, i32 3, i32 1
  %122 = load i8, i8* %121, align 1, !tbaa !22
  %123 = zext i8 %122 to i32
  %124 = tail call i32 @_ZN6Halide7Runtime3mex12get_class_idEii(i32 %120, i32 %123) #6
  %125 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %124) #6
  %126 = icmp eq i8* %125, null
  %127 = load i8*, i8** %3, align 8, !tbaa !3
  %128 = load i8*, i8** %5, align 8, !tbaa !9
  br i1 %126, label %129, label %131

129:                                              ; preds = %117
  %130 = tail call i8* @halide_string_to_string(i8* %127, i8* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %133

131:                                              ; preds = %117
  %132 = tail call i8* @halide_string_to_string(i8* %127, i8* %128, i8* nonnull %125) #5
  br label %133

133:                                              ; preds = %129, %131
  %134 = phi i8* [ %132, %131 ], [ %130, %129 ]
  store i8* %134, i8** %3, align 8, !tbaa !3
  %135 = load i8*, i8** %5, align 8, !tbaa !9
  %136 = tail call i8* @halide_string_to_string(i8* %134, i8* %135, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)) #5
  store i8* %136, i8** %3, align 8, !tbaa !3
  %137 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i64 %90, i32 0
  %138 = load i8*, i8** %137, align 8, !tbaa !23
  %139 = icmp eq i8* %138, null
  %140 = load i8*, i8** %5, align 8, !tbaa !9
  br i1 %139, label %141, label %143

141:                                              ; preds = %133
  %142 = tail call i8* @halide_string_to_string(i8* %136, i8* %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %145

143:                                              ; preds = %133
  %144 = tail call i8* @halide_string_to_string(i8* %136, i8* %140, i8* nonnull %138) #5
  br label %145

145:                                              ; preds = %141, %143
  %146 = phi i8* [ %144, %143 ], [ %142, %141 ]
  store i8* %146, i8** %3, align 8, !tbaa !3
  %147 = load i8*, i8** %5, align 8, !tbaa !9
  %148 = tail call i8* @halide_string_to_string(i8* %146, i8* %147, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #5
  store i8* %148, i8** %3, align 8, !tbaa !3
  %149 = add nuw nsw i64 %90, 1
  %150 = load i32, i32* %20, align 4, !tbaa !13
  %151 = sext i32 %150 to i64
  %152 = icmp slt i64 %149, %151
  br i1 %152, label %88, label %84, !llvm.loop !24
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* %1) local_unnamed_addr #3 {
  %3 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %4 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 3
  store i8* %0, i8** %5, align 8, !tbaa !27
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 4
  store i8 1, i8* %6, align 8, !tbaa !28
  %7 = tail call i8* @malloc(i64 1024) #5
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 0
  store i8* %7, i8** %8, align 8, !tbaa !29
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 1
  %10 = icmp eq i8* %7, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, i8* %7, i64 1023
  store i8 0, i8* %12, align 1, !tbaa !30
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi i8* [ %12, %11 ], [ null, %2 ]
  %15 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = tail call i8* @halide_string_to_string(i8* %7, i8* %14, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0)) #5
  store i8* %16, i8** %9, align 8, !tbaa !3
  call void @halide_matlab_describe_pipeline(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 8 dereferenceable(34) %3, %struct.halide_filter_metadata_t* %1) #6
  %17 = load i8*, i8** %8, align 8, !tbaa !29
  %18 = icmp eq i8* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %9, align 8, !tbaa !3
  %21 = load i8*, i8** %5, align 8, !tbaa !27
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %17 to i64
  %24 = sub i64 1, %23
  %25 = add i64 %24, %22
  %26 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %21, i8* nonnull %17, i64 %25) #5
  %27 = load i8*, i8** %8, align 8, !tbaa !29
  br label %28

28:                                               ; preds = %13, %19
  %29 = phi i8* [ %27, %19 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0), %13 ]
  call void @halide_print(i8* %0, i8* %29) #5
  %30 = load i8*, i8** %8, align 8, !tbaa !29
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8, !tbaa !27
  call void @halide_error(i8* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %42

34:                                               ; preds = %28
  %35 = load i8*, i8** %9, align 8, !tbaa !3
  %36 = load i8*, i8** %5, align 8, !tbaa !27
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %30 to i64
  %39 = sub i64 1, %38
  %40 = add i64 %39, %37
  %41 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %36, i8* nonnull %30, i64 %40) #5
  br label %42

42:                                               ; preds = %34, %32
  %43 = load i8, i8* %6, align 8, !tbaa !28, !range !31
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8, !tbaa !29
  %47 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i64 0, i32 5, i64 0
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  call void @free(i8* %46) #5
  br label %50

50:                                               ; preds = %42, %45, %49
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  ret void
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind
define weak void @halide_matlab_error(i8* %0, i8* %1) #3 {
  %3 = tail call i8* @malloc(i64 1024) #5
  %4 = icmp eq i8* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 1023
  store i8 0, i8* %6, align 1, !tbaa !30
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ]
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0)) #5
  %10 = icmp eq i8* %1, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %15

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #5
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ]
  %17 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 8, !tbaa !32
  br i1 %4, label %18, label %19

18:                                               ; preds = %15
  tail call void %17(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %30

19:                                               ; preds = %15
  %20 = ptrtoint i8* %16 to i64
  %21 = ptrtoint i8* %3 to i64
  %22 = sub i64 1, %21
  %23 = add i64 %22, %20
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %23) #5
  tail call void %17(i8* nonnull %3) #5
  %25 = ptrtoint i8* %16 to i64
  %26 = ptrtoint i8* %3 to i64
  %27 = sub i64 1, %26
  %28 = add i64 %27, %25
  %29 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %28) #5
  br label %30

30:                                               ; preds = %18, %19
  call void @free(i8* %3) #5
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @halide_matlab_print(i8* %0, i8* %1) #1 {
  %3 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 8, !tbaa !32
  tail call void %3(i8* %1) #5
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_matlab_init(i8* %0) local_unnamed_addr #3 {
  %2 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 8, !tbaa !32
  %3 = icmp eq void (i8*)* %2, null
  br i1 %3, label %4, label %208

4:                                                ; preds = %1
  %5 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0)) #5
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %4
  %8 = tail call i8* @malloc(i64 1024) #5
  %9 = icmp eq i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023
  store i8 0, i8* %11, align 1, !tbaa !30
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ]
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #5
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0)) #5
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #5
  br i1 %9, label %17, label %18

17:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %24

18:                                               ; preds = %12
  %19 = ptrtoint i8* %16 to i64
  %20 = ptrtoint i8* %8 to i64
  %21 = sub i64 1, %20
  %22 = add i64 %21, %19
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %22) #5
  tail call void @halide_error(i8* %0, i8* nonnull %8) #5
  br label %24

24:                                               ; preds = %18, %17
  tail call void @free(i8* %8) #5
  br label %27

25:                                               ; preds = %4
  %26 = bitcast i8* %5 to void (i8*)*
  br label %27

27:                                               ; preds = %24, %25
  %28 = phi void (i8*)* [ null, %24 ], [ %26, %25 ]
  store void (i8*)* %28, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 8, !tbaa !32
  %29 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0)) #5
  store i8* %29, i8** bitcast (i64 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E to i8**), align 8, !tbaa !32
  %30 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0)) #5
  store i8* %30, i8** bitcast (i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E to i8**), align 8, !tbaa !32
  %31 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0)) #5
  store i8* %31, i8** bitcast (i64* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E to i8**), align 8, !tbaa !32
  %32 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0)) #5
  store i8* %32, i8** bitcast (i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E to i8**), align 8, !tbaa !32
  %33 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0)) #5
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %27
  %36 = tail call i8* @malloc(i64 1024) #5
  %37 = icmp eq i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, i8* %36, i64 1023
  store i8 0, i8* %39, align 1, !tbaa !30
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i8* [ %39, %38 ], [ null, %35 ]
  %42 = tail call i8* @halide_string_to_string(i8* %36, i8* %41, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #5
  %43 = tail call i8* @halide_string_to_string(i8* %42, i8* %41, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0)) #5
  %44 = tail call i8* @halide_string_to_string(i8* %43, i8* %41, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #5
  br i1 %37, label %45, label %46

45:                                               ; preds = %40
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %52

46:                                               ; preds = %40
  %47 = ptrtoint i8* %44 to i64
  %48 = ptrtoint i8* %36 to i64
  %49 = sub i64 1, %48
  %50 = add i64 %49, %47
  %51 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %36, i64 %50) #5
  tail call void @halide_error(i8* %0, i8* nonnull %36) #5
  br label %52

52:                                               ; preds = %46, %45
  tail call void @free(i8* %36) #5
  br label %55

53:                                               ; preds = %27
  %54 = bitcast i8* %33 to i32 (%struct.mxArray*)*
  br label %55

55:                                               ; preds = %52, %53
  %56 = phi i32 (%struct.mxArray*)* [ null, %52 ], [ %54, %53 ]
  store i32 (%struct.mxArray*)* %56, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex12mxGetClassIDE, align 8, !tbaa !32
  %57 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0)) #5
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = tail call i8* @malloc(i64 1024) #5
  %61 = icmp eq i8* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %60, i64 1023
  store i8 0, i8* %63, align 1, !tbaa !30
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i8* [ %63, %62 ], [ null, %59 ]
  %66 = tail call i8* @halide_string_to_string(i8* %60, i8* %65, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #5
  %67 = tail call i8* @halide_string_to_string(i8* %66, i8* %65, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0)) #5
  %68 = tail call i8* @halide_string_to_string(i8* %67, i8* %65, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #5
  br i1 %61, label %69, label %70

69:                                               ; preds = %64
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %76

70:                                               ; preds = %64
  %71 = ptrtoint i8* %68 to i64
  %72 = ptrtoint i8* %60 to i64
  %73 = sub i64 1, %72
  %74 = add i64 %73, %71
  %75 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %60, i64 %74) #5
  tail call void @halide_error(i8* %0, i8* nonnull %60) #5
  br label %76

76:                                               ; preds = %70, %69
  tail call void @free(i8* %60) #5
  br label %79

77:                                               ; preds = %55
  %78 = bitcast i8* %57 to i8* (%struct.mxArray*)*
  br label %79

79:                                               ; preds = %76, %77
  %80 = phi i8* (%struct.mxArray*)* [ null, %76 ], [ %78, %77 ]
  store i8* (%struct.mxArray*)* %80, i8* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex9mxGetDataE, align 8, !tbaa !32
  %81 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #5
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %101

83:                                               ; preds = %79
  %84 = tail call i8* @malloc(i64 1024) #5
  %85 = icmp eq i8* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, i8* %84, i64 1023
  store i8 0, i8* %87, align 1, !tbaa !30
  br label %88

88:                                               ; preds = %86, %83
  %89 = phi i8* [ %87, %86 ], [ null, %83 ]
  %90 = tail call i8* @halide_string_to_string(i8* %84, i8* %89, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #5
  %91 = tail call i8* @halide_string_to_string(i8* %90, i8* %89, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #5
  %92 = tail call i8* @halide_string_to_string(i8* %91, i8* %89, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #5
  br i1 %85, label %93, label %94

93:                                               ; preds = %88
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %100

94:                                               ; preds = %88
  %95 = ptrtoint i8* %92 to i64
  %96 = ptrtoint i8* %84 to i64
  %97 = sub i64 1, %96
  %98 = add i64 %97, %95
  %99 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %84, i64 %98) #5
  tail call void @halide_error(i8* %0, i8* nonnull %84) #5
  br label %100

100:                                              ; preds = %94, %93
  tail call void @free(i8* %84) #5
  br label %103

101:                                              ; preds = %79
  %102 = bitcast i8* %81 to i1 (%struct.mxArray*)*
  br label %103

103:                                              ; preds = %100, %101
  %104 = phi i1 (%struct.mxArray*)* [ null, %100 ], [ %102, %101 ]
  store i1 (%struct.mxArray*)* %104, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsNumericE, align 8, !tbaa !32
  %105 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0)) #5
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %125

107:                                              ; preds = %103
  %108 = tail call i8* @malloc(i64 1024) #5
  %109 = icmp eq i8* %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds i8, i8* %108, i64 1023
  store i8 0, i8* %111, align 1, !tbaa !30
  br label %112

112:                                              ; preds = %110, %107
  %113 = phi i8* [ %111, %110 ], [ null, %107 ]
  %114 = tail call i8* @halide_string_to_string(i8* %108, i8* %113, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #5
  %115 = tail call i8* @halide_string_to_string(i8* %114, i8* %113, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0)) #5
  %116 = tail call i8* @halide_string_to_string(i8* %115, i8* %113, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #5
  br i1 %109, label %117, label %118

117:                                              ; preds = %112
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %124

118:                                              ; preds = %112
  %119 = ptrtoint i8* %116 to i64
  %120 = ptrtoint i8* %108 to i64
  %121 = sub i64 1, %120
  %122 = add i64 %121, %119
  %123 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %108, i64 %122) #5
  tail call void @halide_error(i8* %0, i8* nonnull %108) #5
  br label %124

124:                                              ; preds = %118, %117
  tail call void @free(i8* %108) #5
  br label %127

125:                                              ; preds = %103
  %126 = bitcast i8* %105 to i1 (%struct.mxArray*)*
  br label %127

127:                                              ; preds = %124, %125
  %128 = phi i1 (%struct.mxArray*)* [ null, %124 ], [ %126, %125 ]
  store i1 (%struct.mxArray*)* %128, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsLogicalE, align 8, !tbaa !32
  %129 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0)) #5
  %130 = icmp eq i8* %129, null
  br i1 %130, label %131, label %149

131:                                              ; preds = %127
  %132 = tail call i8* @malloc(i64 1024) #5
  %133 = icmp eq i8* %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds i8, i8* %132, i64 1023
  store i8 0, i8* %135, align 1, !tbaa !30
  br label %136

136:                                              ; preds = %134, %131
  %137 = phi i8* [ %135, %134 ], [ null, %131 ]
  %138 = tail call i8* @halide_string_to_string(i8* %132, i8* %137, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #5
  %139 = tail call i8* @halide_string_to_string(i8* %138, i8* %137, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0)) #5
  %140 = tail call i8* @halide_string_to_string(i8* %139, i8* %137, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #5
  br i1 %133, label %141, label %142

141:                                              ; preds = %136
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %148

142:                                              ; preds = %136
  %143 = ptrtoint i8* %140 to i64
  %144 = ptrtoint i8* %132 to i64
  %145 = sub i64 1, %144
  %146 = add i64 %145, %143
  %147 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %132, i64 %146) #5
  tail call void @halide_error(i8* %0, i8* nonnull %132) #5
  br label %148

148:                                              ; preds = %142, %141
  tail call void @free(i8* %132) #5
  br label %151

149:                                              ; preds = %127
  %150 = bitcast i8* %129 to i1 (%struct.mxArray*)*
  br label %151

151:                                              ; preds = %148, %149
  %152 = phi i1 (%struct.mxArray*)* [ null, %148 ], [ %150, %149 ]
  store i1 (%struct.mxArray*)* %152, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsComplexE, align 8, !tbaa !32
  %153 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)) #5
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %173

155:                                              ; preds = %151
  %156 = tail call i8* @malloc(i64 1024) #5
  %157 = icmp eq i8* %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds i8, i8* %156, i64 1023
  store i8 0, i8* %159, align 1, !tbaa !30
  br label %160

160:                                              ; preds = %158, %155
  %161 = phi i8* [ %159, %158 ], [ null, %155 ]
  %162 = tail call i8* @halide_string_to_string(i8* %156, i8* %161, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #5
  %163 = tail call i8* @halide_string_to_string(i8* %162, i8* %161, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)) #5
  %164 = tail call i8* @halide_string_to_string(i8* %163, i8* %161, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #5
  br i1 %157, label %165, label %166

165:                                              ; preds = %160
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %172

166:                                              ; preds = %160
  %167 = ptrtoint i8* %164 to i64
  %168 = ptrtoint i8* %156 to i64
  %169 = sub i64 1, %168
  %170 = add i64 %169, %167
  %171 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %156, i64 %170) #5
  tail call void @halide_error(i8* %0, i8* nonnull %156) #5
  br label %172

172:                                              ; preds = %166, %165
  tail call void @free(i8* %156) #5
  br label %175

173:                                              ; preds = %151
  %174 = bitcast i8* %153 to double (%struct.mxArray*)*
  br label %175

175:                                              ; preds = %172, %173
  %176 = phi double (%struct.mxArray*)* [ null, %172 ], [ %174, %173 ]
  store double (%struct.mxArray*)* %176, double (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxGetScalarE, align 8, !tbaa !32
  %177 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0)) #5
  %178 = icmp eq i8* %177, null
  br i1 %178, label %179, label %197

179:                                              ; preds = %175
  %180 = tail call i8* @malloc(i64 1024) #5
  %181 = icmp eq i8* %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds i8, i8* %180, i64 1023
  store i8 0, i8* %183, align 1, !tbaa !30
  br label %184

184:                                              ; preds = %182, %179
  %185 = phi i8* [ %183, %182 ], [ null, %179 ]
  %186 = tail call i8* @halide_string_to_string(i8* %180, i8* %185, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0)) #5
  %187 = tail call i8* @halide_string_to_string(i8* %186, i8* %185, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0)) #5
  %188 = tail call i8* @halide_string_to_string(i8* %187, i8* %185, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #5
  br i1 %181, label %189, label %190

189:                                              ; preds = %184
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %196

190:                                              ; preds = %184
  %191 = ptrtoint i8* %188 to i64
  %192 = ptrtoint i8* %180 to i64
  %193 = sub i64 1, %192
  %194 = add i64 %193, %191
  %195 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %180, i64 %194) #5
  tail call void @halide_error(i8* %0, i8* nonnull %180) #5
  br label %196

196:                                              ; preds = %190, %189
  tail call void @free(i8* %180) #5
  br label %199

197:                                              ; preds = %175
  %198 = bitcast i8* %177 to i64 (%struct.mxArray*)*
  br label %199

199:                                              ; preds = %196, %197
  %200 = phi i64 (%struct.mxArray*)* [ null, %196 ], [ %198, %197 ]
  store i64 (%struct.mxArray*)* %200, i64 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex16mxGetElementSizeE, align 8, !tbaa !32
  %201 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0)) #5
  store i8* %201, i8** bitcast (%struct.mxArray* (i64, i64, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_730E to i8**), align 8, !tbaa !32
  %202 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i64 0, i64 0)) #5
  store i8* %202, i8** bitcast (%struct.mxArray* (i32, i32, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_700E to i8**), align 8, !tbaa !32
  %203 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 8, !tbaa !32
  %204 = icmp eq void (i8*)* %203, null
  br i1 %204, label %208, label %205

205:                                              ; preds = %199
  %206 = tail call void (i8*, i8*)* @halide_set_custom_print(void (i8*, i8*)* nonnull @halide_matlab_print) #5
  %207 = tail call void (i8*, i8*)* @halide_set_error_handler(void (i8*, i8*)* nonnull @halide_matlab_error) #5
  br label %208

208:                                              ; preds = %199, %1, %205
  %209 = phi i32 [ 0, %205 ], [ 0, %1 ], [ -20, %199 ]
  ret i32 %209
}

declare extern_weak void (i8*, i8*)* @halide_set_custom_print(void (i8*, i8*)*) local_unnamed_addr #4

declare extern_weak void (i8*, i8*)* @halide_set_error_handler(void (i8*, i8*)*) local_unnamed_addr #4

; Function Attrs: nounwind
define weak i32 @halide_matlab_array_to_halide_buffer_t(i8* %0, %struct.mxArray* %1, %struct.halide_filter_argument_t* %2, %struct.halide_buffer_t* %3) local_unnamed_addr #3 {
  %5 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsComplexE, align 8, !tbaa !32
  %6 = tail call zeroext i1 %5(%struct.mxArray* %1) #5
  br i1 %6, label %7, label %33

7:                                                ; preds = %4
  %8 = tail call i8* @malloc(i64 1024) #5
  %9 = icmp eq i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023
  store i8 0, i8* %11, align 1, !tbaa !30
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ null, %7 ]
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i64 0, i64 0)) #5
  %15 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !23
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %22

20:                                               ; preds = %12
  %21 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull %16) #5
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i8* [ %21, %20 ], [ %19, %18 ]
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %13, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #5
  br i1 %9, label %25, label %26

25:                                               ; preds = %22
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %32

26:                                               ; preds = %22
  %27 = ptrtoint i8* %24 to i64
  %28 = ptrtoint i8* %8 to i64
  %29 = add i64 %27, 1
  %30 = sub i64 %29, %28
  %31 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %30) #5
  tail call void @halide_error(i8* %0, i8* nonnull %8) #5
  br label %32

32:                                               ; preds = %26, %25
  tail call void @free(i8* %8) #5
  br label %238

33:                                               ; preds = %4
  %34 = load i64 (%struct.mxArray*)*, i64 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E, align 8, !tbaa !32
  %35 = icmp eq i64 (%struct.mxArray*)* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = tail call i64 %34(%struct.mxArray* %1) #5
  br label %42

38:                                               ; preds = %33
  %39 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E, align 8, !tbaa !32
  %40 = tail call i32 %39(%struct.mxArray* %1) #5
  %41 = zext i32 %40 to i64
  br label %42

42:                                               ; preds = %36, %38
  %43 = phi i64 [ %37, %36 ], [ %41, %38 ]
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 2
  %46 = load i32, i32* %45, align 4, !tbaa !20
  %47 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 3
  %48 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %47, i64 0, i32 0
  %49 = load i8, i8* %48, align 8, !tbaa !21
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 3, i32 1
  %52 = load i8, i8* %51, align 1, !tbaa !22
  %53 = zext i8 %52 to i32
  %54 = tail call i32 @_ZN6Halide7Runtime3mex12get_class_idEii(i32 %50, i32 %53) #6
  %55 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex12mxGetClassIDE, align 8, !tbaa !32
  %56 = tail call i32 %55(%struct.mxArray* %1) #5
  %57 = icmp eq i32 %56, %54
  br i1 %57, label %58, label %62

58:                                               ; preds = %42
  %59 = and i64 %43, 4294967295
  %60 = icmp slt i32 %44, 0
  %61 = select i1 %60, i32 %44, i32 0
  br label %106

62:                                               ; preds = %42
  %63 = tail call i8* @malloc(i64 1024) #5
  %64 = icmp eq i8* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds i8, i8* %63, i64 1023
  store i8 0, i8* %66, align 1, !tbaa !30
  br label %67

67:                                               ; preds = %62, %65
  %68 = phi i8* [ %66, %65 ], [ null, %62 ]
  %69 = tail call i8* @halide_string_to_string(i8* %63, i8* %68, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i64 0, i64 0)) #5
  %70 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %54) #6
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = tail call i8* @halide_string_to_string(i8* %69, i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %76

74:                                               ; preds = %67
  %75 = tail call i8* @halide_string_to_string(i8* %69, i8* %68, i8* nonnull %70) #5
  br label %76

76:                                               ; preds = %72, %74
  %77 = phi i8* [ %75, %74 ], [ %73, %72 ]
  %78 = tail call i8* @halide_string_to_string(i8* %77, i8* %68, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0)) #5
  %79 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0
  %80 = load i8*, i8** %79, align 8, !tbaa !23
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = tail call i8* @halide_string_to_string(i8* %78, i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %86

84:                                               ; preds = %76
  %85 = tail call i8* @halide_string_to_string(i8* %78, i8* %68, i8* nonnull %80) #5
  br label %86

86:                                               ; preds = %82, %84
  %87 = phi i8* [ %85, %84 ], [ %83, %82 ]
  %88 = tail call i8* @halide_string_to_string(i8* %87, i8* %68, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0)) #5
  %89 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %56) #6
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = tail call i8* @halide_string_to_string(i8* %88, i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %95

93:                                               ; preds = %86
  %94 = tail call i8* @halide_string_to_string(i8* %88, i8* %68, i8* nonnull %89) #5
  br label %95

95:                                               ; preds = %91, %93
  %96 = phi i8* [ %94, %93 ], [ %92, %91 ]
  %97 = tail call i8* @halide_string_to_string(i8* %96, i8* %68, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #5
  br i1 %64, label %98, label %99

98:                                               ; preds = %95
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %105

99:                                               ; preds = %95
  %100 = ptrtoint i8* %97 to i64
  %101 = ptrtoint i8* %63 to i64
  %102 = add i64 %100, 1
  %103 = sub i64 %102, %101
  %104 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %63, i64 %103) #5
  tail call void @halide_error(i8* %0, i8* nonnull %63) #5
  br label %105

105:                                              ; preds = %98, %99
  call void @free(i8* %63) #5
  br label %238

106:                                              ; preds = %58, %124
  %107 = phi i64 [ %59, %58 ], [ %111, %124 ]
  %108 = trunc i64 %107 to i32
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %106
  %111 = add nsw i64 %107, -1
  %112 = load i64* (%struct.mxArray*)*, i64* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E, align 8, !tbaa !32
  %113 = icmp eq i64* (%struct.mxArray*)* %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = tail call i64* %112(%struct.mxArray* %1) #5
  %116 = getelementptr inbounds i64, i64* %115, i64 %111
  %117 = load i64, i64* %116, align 8, !tbaa !33
  br label %124

118:                                              ; preds = %110
  %119 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E, align 8, !tbaa !32
  %120 = tail call i32* %119(%struct.mxArray* %1) #5
  %121 = getelementptr inbounds i32, i32* %120, i64 %111
  %122 = load i32, i32* %121, align 4, !tbaa !35
  %123 = sext i32 %122 to i64
  br label %124

124:                                              ; preds = %114, %118
  %125 = phi i64 [ %117, %114 ], [ %123, %118 ]
  %126 = icmp eq i64 %125, 1
  br i1 %126, label %106, label %127, !llvm.loop !36

127:                                              ; preds = %124
  %128 = trunc i64 %107 to i32
  br label %129

129:                                              ; preds = %106, %127
  %130 = phi i32 [ %128, %127 ], [ %61, %106 ]
  %131 = icmp sgt i32 %130, %46
  br i1 %131, label %132, label %164

132:                                              ; preds = %129
  %133 = tail call i8* @malloc(i64 1024) #5
  %134 = icmp eq i8* %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds i8, i8* %133, i64 1023
  store i8 0, i8* %136, align 1, !tbaa !30
  br label %137

137:                                              ; preds = %132, %135
  %138 = phi i8* [ %136, %135 ], [ null, %132 ]
  %139 = tail call i8* @halide_string_to_string(i8* %133, i8* %138, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0)) #5
  %140 = sext i32 %46 to i64
  %141 = tail call i8* @halide_int64_to_string(i8* %139, i8* %138, i64 %140, i32 1) #5
  %142 = tail call i8* @halide_string_to_string(i8* %141, i8* %138, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0)) #5
  %143 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0
  %144 = load i8*, i8** %143, align 8, !tbaa !23
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %137
  %147 = tail call i8* @halide_string_to_string(i8* %142, i8* %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %150

148:                                              ; preds = %137
  %149 = tail call i8* @halide_string_to_string(i8* %142, i8* %138, i8* nonnull %144) #5
  br label %150

150:                                              ; preds = %146, %148
  %151 = phi i8* [ %149, %148 ], [ %147, %146 ]
  %152 = tail call i8* @halide_string_to_string(i8* %151, i8* %138, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0)) #5
  %153 = sext i32 %130 to i64
  %154 = tail call i8* @halide_int64_to_string(i8* %152, i8* %138, i64 %153, i32 1) #5
  %155 = tail call i8* @halide_string_to_string(i8* %154, i8* %138, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #5
  br i1 %134, label %156, label %157

156:                                              ; preds = %150
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %163

157:                                              ; preds = %150
  %158 = ptrtoint i8* %155 to i64
  %159 = ptrtoint i8* %133 to i64
  %160 = add i64 %158, 1
  %161 = sub i64 %160, %159
  %162 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %133, i64 %161) #5
  tail call void @halide_error(i8* %0, i8* nonnull %133) #5
  br label %163

163:                                              ; preds = %156, %157
  call void @free(i8* %133) #5
  br label %238

164:                                              ; preds = %129
  %165 = load i8* (%struct.mxArray*)*, i8* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex9mxGetDataE, align 8, !tbaa !32
  %166 = tail call i8* %165(%struct.mxArray* %1) #5
  %167 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2
  store i8* %166, i8** %167, align 8, !tbaa !37
  %168 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 0
  %169 = bitcast %struct.halide_type_t* %47 to i32*
  %170 = bitcast i8* %168 to i32*
  %171 = load i32, i32* %169, align 8
  store i32 %171, i32* %170, align 8
  %172 = load i32, i32* %45, align 4, !tbaa !20
  %173 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5
  store i32 %172, i32* %173, align 4, !tbaa !40
  %174 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 3
  %175 = load i64, i64* %174, align 8, !tbaa !41
  %176 = or i64 %175, 1
  store i64 %176, i64* %174, align 8, !tbaa !41
  %177 = icmp sgt i32 %130, 0
  %178 = icmp sgt i32 %46, 0
  %179 = and i1 %177, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %164
  %181 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %182 = add nsw i32 %130, -1
  %183 = add nsw i32 %46, -1
  %184 = icmp ult i32 %182, %183
  %185 = select i1 %184, i32 %130, i32 %46
  %186 = zext i32 %185 to i64
  br label %193

187:                                              ; preds = %207, %164
  %188 = icmp sgt i32 %46, 2
  %189 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %190 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %189, align 8, !tbaa !42
  br i1 %188, label %191, label %214

191:                                              ; preds = %187
  %192 = zext i32 %46 to i64
  br label %219

193:                                              ; preds = %180, %207
  %194 = phi i64 [ 0, %180 ], [ %212, %207 ]
  %195 = load i64* (%struct.mxArray*)*, i64* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E, align 8, !tbaa !32
  %196 = icmp eq i64* (%struct.mxArray*)* %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = tail call i64* %195(%struct.mxArray* %1) #5
  %199 = getelementptr inbounds i64, i64* %198, i64 %194
  %200 = load i64, i64* %199, align 8, !tbaa !33
  br label %207

201:                                              ; preds = %193
  %202 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E, align 8, !tbaa !32
  %203 = tail call i32* %202(%struct.mxArray* %1) #5
  %204 = getelementptr inbounds i32, i32* %203, i64 %194
  %205 = load i32, i32* %204, align 4, !tbaa !35
  %206 = zext i32 %205 to i64
  br label %207

207:                                              ; preds = %197, %201
  %208 = phi i64 [ %200, %197 ], [ %206, %201 ]
  %209 = trunc i64 %208 to i32
  %210 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %181, align 8, !tbaa !42
  %211 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %210, i64 %194, i32 1
  store i32 %209, i32* %211, align 4, !tbaa !43
  %212 = add nuw nsw i64 %194, 1
  %213 = icmp eq i64 %212, %186
  br i1 %213, label %187, label %193, !llvm.loop !45

214:                                              ; preds = %225, %187
  %215 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %190, i64 0, i32 2
  store i32 1, i32* %215, align 4, !tbaa !46
  %216 = icmp sgt i32 %46, 1
  br i1 %216, label %217, label %238

217:                                              ; preds = %214
  %218 = zext i32 %46 to i64
  br label %228

219:                                              ; preds = %191, %225
  %220 = phi i64 [ 2, %191 ], [ %226, %225 ]
  %221 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %190, i64 %220, i32 1
  %222 = load i32, i32* %221, align 4, !tbaa !43
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  store i32 1, i32* %221, align 4, !tbaa !43
  br label %225

225:                                              ; preds = %219, %224
  %226 = add nuw nsw i64 %220, 1
  %227 = icmp eq i64 %226, %192
  br i1 %227, label %214, label %219, !llvm.loop !47

228:                                              ; preds = %217, %228
  %229 = phi i32 [ 1, %217 ], [ %234, %228 ]
  %230 = phi i64 [ 1, %217 ], [ %236, %228 ]
  %231 = add nsw i64 %230, -1
  %232 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %190, i64 %231, i32 1
  %233 = load i32, i32* %232, align 4, !tbaa !43
  %234 = mul nsw i32 %229, %233
  %235 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %190, i64 %230, i32 2
  store i32 %234, i32* %235, align 4, !tbaa !46
  %236 = add nuw nsw i64 %230, 1
  %237 = icmp eq i64 %236, %218
  br i1 %237, label %238, label %228, !llvm.loop !48

238:                                              ; preds = %228, %214, %105, %163, %32
  %239 = phi i32 [ -21, %32 ], [ -21, %105 ], [ -21, %163 ], [ 0, %214 ], [ 0, %228 ]
  ret i32 %239
}

; Function Attrs: nounwind
define weak i32 @halide_matlab_array_to_scalar(i8* %0, %struct.mxArray* %1, %struct.halide_filter_argument_t* %2, i8* %3) local_unnamed_addr #3 {
  %5 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsComplexE, align 8, !tbaa !32
  %6 = tail call zeroext i1 %5(%struct.mxArray* %1) #5
  br i1 %6, label %7, label %33

7:                                                ; preds = %4
  %8 = tail call i8* @malloc(i64 1024) #5
  %9 = icmp eq i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023
  store i8 0, i8* %11, align 1, !tbaa !30
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ null, %7 ]
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i64 0, i64 0)) #5
  %15 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !23
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %22

20:                                               ; preds = %12
  %21 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull %16) #5
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i8* [ %21, %20 ], [ %19, %18 ]
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %13, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #5
  br i1 %9, label %25, label %26

25:                                               ; preds = %22
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %32

26:                                               ; preds = %22
  %27 = ptrtoint i8* %24 to i64
  %28 = ptrtoint i8* %8 to i64
  %29 = add i64 %27, 1
  %30 = sub i64 %29, %28
  %31 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %30) #5
  tail call void @halide_error(i8* %0, i8* nonnull %8) #5
  br label %32

32:                                               ; preds = %26, %25
  tail call void @free(i8* %8) #5
  br label %232

33:                                               ; preds = %4
  %34 = load i64 (%struct.mxArray*)*, i64 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E, align 8, !tbaa !32
  %35 = icmp eq i64 (%struct.mxArray*)* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = tail call i64 %34(%struct.mxArray* %1) #5
  br label %42

38:                                               ; preds = %33
  %39 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E, align 8, !tbaa !32
  %40 = tail call i32 %39(%struct.mxArray* %1) #5
  %41 = zext i32 %40 to i64
  br label %42

42:                                               ; preds = %36, %38
  %43 = phi i64 [ %37, %36 ], [ %41, %38 ]
  %44 = trunc i64 %43 to i32
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %94

46:                                               ; preds = %42
  %47 = and i64 %43, 4294967295
  br label %50

48:                                               ; preds = %64
  %49 = icmp eq i64 %67, %47
  br i1 %49, label %94, label %50, !llvm.loop !49

50:                                               ; preds = %46, %48
  %51 = phi i64 [ 0, %46 ], [ %67, %48 ]
  %52 = load i64* (%struct.mxArray*)*, i64* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E, align 8, !tbaa !32
  %53 = icmp eq i64* (%struct.mxArray*)* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = tail call i64* %52(%struct.mxArray* %1) #5
  %56 = getelementptr inbounds i64, i64* %55, i64 %51
  %57 = load i64, i64* %56, align 8, !tbaa !33
  br label %64

58:                                               ; preds = %50
  %59 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E, align 8, !tbaa !32
  %60 = tail call i32* %59(%struct.mxArray* %1) #5
  %61 = getelementptr inbounds i32, i32* %60, i64 %51
  %62 = load i32, i32* %61, align 4, !tbaa !35
  %63 = sext i32 %62 to i64
  br label %64

64:                                               ; preds = %54, %58
  %65 = phi i64 [ %57, %54 ], [ %63, %58 ]
  %66 = icmp eq i64 %65, 1
  %67 = add nuw nsw i64 %51, 1
  br i1 %66, label %48, label %68

68:                                               ; preds = %64
  %69 = tail call i8* @malloc(i64 1024) #5
  %70 = icmp eq i8* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds i8, i8* %69, i64 1023
  store i8 0, i8* %72, align 1, !tbaa !30
  br label %73

73:                                               ; preds = %68, %71
  %74 = phi i8* [ %72, %71 ], [ null, %68 ]
  %75 = tail call i8* @halide_string_to_string(i8* %69, i8* %74, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i64 0, i64 0)) #5
  %76 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0
  %77 = load i8*, i8** %76, align 8, !tbaa !23
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = tail call i8* @halide_string_to_string(i8* %75, i8* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %83

81:                                               ; preds = %73
  %82 = tail call i8* @halide_string_to_string(i8* %75, i8* %74, i8* nonnull %77) #5
  br label %83

83:                                               ; preds = %79, %81
  %84 = phi i8* [ %82, %81 ], [ %80, %79 ]
  %85 = tail call i8* @halide_string_to_string(i8* %84, i8* %74, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #5
  br i1 %70, label %86, label %87

86:                                               ; preds = %83
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %93

87:                                               ; preds = %83
  %88 = ptrtoint i8* %85 to i64
  %89 = ptrtoint i8* %69 to i64
  %90 = add i64 %88, 1
  %91 = sub i64 %90, %89
  %92 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %69, i64 %91) #5
  tail call void @halide_error(i8* %0, i8* nonnull %69) #5
  br label %93

93:                                               ; preds = %87, %86
  tail call void @free(i8* %69) #5
  br label %232

94:                                               ; preds = %48, %42
  %95 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsLogicalE, align 8, !tbaa !32
  %96 = tail call zeroext i1 %95(%struct.mxArray* %1) #5
  br i1 %96, label %137, label %97

97:                                               ; preds = %94
  %98 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsNumericE, align 8, !tbaa !32
  %99 = tail call zeroext i1 %98(%struct.mxArray* %1) #5
  br i1 %99, label %137, label %100

100:                                              ; preds = %97
  %101 = tail call i8* @malloc(i64 1024) #5
  %102 = icmp eq i8* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds i8, i8* %101, i64 1023
  store i8 0, i8* %104, align 1, !tbaa !30
  br label %105

105:                                              ; preds = %100, %103
  %106 = phi i8* [ %104, %103 ], [ null, %100 ]
  %107 = tail call i8* @halide_string_to_string(i8* %101, i8* %106, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.52, i64 0, i64 0)) #5
  %108 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0
  %109 = load i8*, i8** %108, align 8, !tbaa !23
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = tail call i8* @halide_string_to_string(i8* %107, i8* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %115

113:                                              ; preds = %105
  %114 = tail call i8* @halide_string_to_string(i8* %107, i8* %106, i8* nonnull %109) #5
  br label %115

115:                                              ; preds = %111, %113
  %116 = phi i8* [ %114, %113 ], [ %112, %111 ]
  %117 = tail call i8* @halide_string_to_string(i8* %116, i8* %106, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0)) #5
  %118 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex12mxGetClassIDE, align 8, !tbaa !32
  %119 = tail call i32 %118(%struct.mxArray* %1) #5
  %120 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %119) #6
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = tail call i8* @halide_string_to_string(i8* %117, i8* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %126

124:                                              ; preds = %115
  %125 = tail call i8* @halide_string_to_string(i8* %117, i8* %106, i8* nonnull %120) #5
  br label %126

126:                                              ; preds = %122, %124
  %127 = phi i8* [ %125, %124 ], [ %123, %122 ]
  %128 = tail call i8* @halide_string_to_string(i8* %127, i8* %106, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #5
  br i1 %102, label %129, label %130

129:                                              ; preds = %126
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %136

130:                                              ; preds = %126
  %131 = ptrtoint i8* %128 to i64
  %132 = ptrtoint i8* %101 to i64
  %133 = add i64 %131, 1
  %134 = sub i64 %133, %132
  %135 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %101, i64 %134) #5
  tail call void @halide_error(i8* %0, i8* nonnull %101) #5
  br label %136

136:                                              ; preds = %129, %130
  call void @free(i8* %101) #5
  br label %232

137:                                              ; preds = %97, %94
  %138 = load double (%struct.mxArray*)*, double (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxGetScalarE, align 8, !tbaa !32
  %139 = tail call double %138(%struct.mxArray* %1) #5
  %140 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 3, i32 0
  %141 = load i8, i8* %140, align 8, !tbaa !21
  %142 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 3, i32 1
  %143 = load i8, i8* %142, align 1, !tbaa !22
  switch i8 %141, label %206 [
    i8 0, label %144
    i8 1, label %159
    i8 2, label %174
    i8 3, label %180
  ]

144:                                              ; preds = %137
  switch i8 %143, label %206 [
    i8 1, label %145
    i8 8, label %148
    i8 16, label %150
    i8 32, label %153
    i8 64, label %156
  ]

145:                                              ; preds = %144
  %146 = fcmp une double %139, 0.000000e+00
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %3, align 1, !tbaa !50
  br label %232

148:                                              ; preds = %144
  %149 = fptosi double %139 to i8
  store i8 %149, i8* %3, align 1, !tbaa !30
  br label %232

150:                                              ; preds = %144
  %151 = fptosi double %139 to i16
  %152 = bitcast i8* %3 to i16*
  store i16 %151, i16* %152, align 2, !tbaa !51
  br label %232

153:                                              ; preds = %144
  %154 = fptosi double %139 to i32
  %155 = bitcast i8* %3 to i32*
  store i32 %154, i32* %155, align 4, !tbaa !35
  br label %232

156:                                              ; preds = %144
  %157 = fptosi double %139 to i64
  %158 = bitcast i8* %3 to i64*
  store i64 %157, i64* %158, align 8, !tbaa !52
  br label %232

159:                                              ; preds = %137
  switch i8 %143, label %206 [
    i8 1, label %160
    i8 8, label %163
    i8 16, label %165
    i8 32, label %168
    i8 64, label %171
  ]

160:                                              ; preds = %159
  %161 = fcmp une double %139, 0.000000e+00
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %3, align 1, !tbaa !50
  br label %232

163:                                              ; preds = %159
  %164 = fptoui double %139 to i8
  store i8 %164, i8* %3, align 1, !tbaa !30
  br label %232

165:                                              ; preds = %159
  %166 = fptoui double %139 to i16
  %167 = bitcast i8* %3 to i16*
  store i16 %166, i16* %167, align 2, !tbaa !51
  br label %232

168:                                              ; preds = %159
  %169 = fptoui double %139 to i32
  %170 = bitcast i8* %3 to i32*
  store i32 %169, i32* %170, align 4, !tbaa !35
  br label %232

171:                                              ; preds = %159
  %172 = fptoui double %139 to i64
  %173 = bitcast i8* %3 to i64*
  store i64 %172, i64* %173, align 8, !tbaa !52
  br label %232

174:                                              ; preds = %137
  switch i8 %143, label %206 [
    i8 32, label %175
    i8 64, label %178
  ]

175:                                              ; preds = %174
  %176 = fptrunc double %139 to float
  %177 = bitcast i8* %3 to float*
  store float %176, float* %177, align 4, !tbaa !53
  br label %232

178:                                              ; preds = %174
  %179 = bitcast i8* %3 to double*
  store double %139, double* %179, align 8, !tbaa !55
  br label %232

180:                                              ; preds = %137
  %181 = tail call i8* @malloc(i64 1024) #5
  %182 = icmp eq i8* %181, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds i8, i8* %181, i64 1023
  store i8 0, i8* %184, align 1, !tbaa !30
  br label %185

185:                                              ; preds = %180, %183
  %186 = phi i8* [ %184, %183 ], [ null, %180 ]
  %187 = tail call i8* @halide_string_to_string(i8* %181, i8* %186, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0)) #5
  %188 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0
  %189 = load i8*, i8** %188, align 8, !tbaa !23
  %190 = icmp eq i8* %189, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = tail call i8* @halide_string_to_string(i8* %187, i8* %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %195

193:                                              ; preds = %185
  %194 = tail call i8* @halide_string_to_string(i8* %187, i8* %186, i8* nonnull %189) #5
  br label %195

195:                                              ; preds = %191, %193
  %196 = phi i8* [ %194, %193 ], [ %192, %191 ]
  %197 = tail call i8* @halide_string_to_string(i8* %196, i8* %186, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i64 0, i64 0)) #5
  br i1 %182, label %198, label %199

198:                                              ; preds = %195
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %205

199:                                              ; preds = %195
  %200 = ptrtoint i8* %197 to i64
  %201 = ptrtoint i8* %181 to i64
  %202 = add i64 %200, 1
  %203 = sub i64 %202, %201
  %204 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %181, i64 %203) #5
  tail call void @halide_error(i8* %0, i8* nonnull %181) #5
  br label %205

205:                                              ; preds = %199, %198
  tail call void @free(i8* %181) #5
  br label %232

206:                                              ; preds = %137, %159, %174, %144
  %207 = tail call i8* @malloc(i64 1024) #5
  %208 = icmp eq i8* %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, i8* %207, i64 1023
  store i8 0, i8* %210, align 1, !tbaa !30
  br label %211

211:                                              ; preds = %206, %209
  %212 = phi i8* [ %210, %209 ], [ null, %206 ]
  %213 = tail call i8* @halide_string_to_string(i8* %207, i8* %212, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0)) #5
  %214 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i64 0, i32 0
  %215 = load i8*, i8** %214, align 8, !tbaa !23
  %216 = icmp eq i8* %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %211
  %218 = tail call i8* @halide_string_to_string(i8* %213, i8* %212, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %221

219:                                              ; preds = %211
  %220 = tail call i8* @halide_string_to_string(i8* %213, i8* %212, i8* nonnull %215) #5
  br label %221

221:                                              ; preds = %217, %219
  %222 = phi i8* [ %220, %219 ], [ %218, %217 ]
  %223 = tail call i8* @halide_string_to_string(i8* %222, i8* %212, i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.57, i64 0, i64 0)) #5
  br i1 %208, label %224, label %225

224:                                              ; preds = %221
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %231

225:                                              ; preds = %221
  %226 = ptrtoint i8* %223 to i64
  %227 = ptrtoint i8* %207 to i64
  %228 = add i64 %226, 1
  %229 = sub i64 %228, %227
  %230 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %207, i64 %229) #5
  tail call void @halide_error(i8* %0, i8* nonnull %207) #5
  br label %231

231:                                              ; preds = %225, %224
  tail call void @free(i8* %207) #5
  br label %232

232:                                              ; preds = %93, %136, %231, %205, %178, %175, %171, %168, %165, %163, %160, %156, %153, %150, %148, %145, %32
  %233 = phi i32 [ -1, %32 ], [ -21, %136 ], [ -21, %93 ], [ -22, %231 ], [ 0, %156 ], [ 0, %153 ], [ 0, %150 ], [ 0, %148 ], [ 0, %145 ], [ 0, %171 ], [ 0, %168 ], [ 0, %165 ], [ 0, %163 ], [ 0, %160 ], [ 0, %178 ], [ 0, %175 ], [ -21, %205 ]
  ret i32 %233
}

; Function Attrs: nounwind
define weak i32 @halide_matlab_call_pipeline(i8* %0, i32 (i8**)* %1, %struct.halide_filter_metadata_t* %2, i32 %3, %struct.mxArray** %4, i32 %5, %struct.mxArray** %6) local_unnamed_addr #3 {
  %8 = alloca i32, align 4
  %9 = tail call i32 @halide_matlab_init(i8* %0) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %186

11:                                               ; preds = %7
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12)
  %13 = icmp sgt i32 %3, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.mxArray* (i64, i64, i32, i32)*, %struct.mxArray* (i64, i64, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_730E, align 8, !tbaa !32
  %16 = icmp eq %struct.mxArray* (i64, i64, i32, i32)* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call %struct.mxArray* %15(i64 1, i64 1, i32 12, i32 0) #5
  br label %22

19:                                               ; preds = %14
  %20 = load %struct.mxArray* (i32, i32, i32, i32)*, %struct.mxArray* (i32, i32, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_700E, align 8, !tbaa !32
  %21 = tail call %struct.mxArray* %20(i32 1, i32 1, i32 12, i32 0) #5
  br label %22

22:                                               ; preds = %17, %19
  %23 = phi %struct.mxArray* [ %18, %17 ], [ %21, %19 ]
  store %struct.mxArray* %23, %struct.mxArray** %4, align 8, !tbaa !32
  %24 = load i8* (%struct.mxArray*)*, i8* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex9mxGetDataE, align 8, !tbaa !32
  %25 = tail call i8* %24(%struct.mxArray* %23) #5
  %26 = bitcast i8* %25 to i32*
  br label %27

27:                                               ; preds = %22, %11
  %28 = phi i32* [ %26, %22 ], [ %8, %11 ]
  store i32 -1, i32* %28, align 4, !tbaa !35
  %29 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i64 0, i32 1
  %30 = load i32, i32* %29, align 4, !tbaa !13
  %31 = icmp eq i32 %30, %5
  br i1 %31, label %68, label %32

32:                                               ; preds = %27
  %33 = icmp sgt i32 %5, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %32
  %35 = tail call i8* @malloc(i64 1024) #5
  %36 = icmp eq i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, i8* %35, i64 1023
  store i8 0, i8* %38, align 1, !tbaa !30
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi i8* [ %38, %37 ], [ null, %34 ]
  %41 = tail call i8* @halide_string_to_string(i8* %35, i8* %40, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0)) #5
  %42 = load i32, i32* %29, align 4, !tbaa !13
  %43 = sext i32 %42 to i64
  %44 = tail call i8* @halide_int64_to_string(i8* %41, i8* %40, i64 %43, i32 1) #5
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %40, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i64 0, i64 0)) #5
  %46 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i64 0, i32 4
  %47 = load i8*, i8** %46, align 8, !tbaa !10
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = tail call i8* @halide_string_to_string(i8* %45, i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %53

51:                                               ; preds = %39
  %52 = tail call i8* @halide_string_to_string(i8* %45, i8* %40, i8* nonnull %47) #5
  br label %53

53:                                               ; preds = %49, %51
  %54 = phi i8* [ %52, %51 ], [ %50, %49 ]
  %55 = tail call i8* @halide_string_to_string(i8* %54, i8* %40, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0)) #5
  %56 = zext i32 %5 to i64
  %57 = tail call i8* @halide_int64_to_string(i8* %55, i8* %40, i64 %56, i32 1) #5
  %58 = tail call i8* @halide_string_to_string(i8* %57, i8* %40, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #5
  br i1 %36, label %59, label %60

59:                                               ; preds = %53
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %66

60:                                               ; preds = %53
  %61 = ptrtoint i8* %58 to i64
  %62 = ptrtoint i8* %35 to i64
  %63 = add i64 %61, 1
  %64 = sub i64 %63, %62
  %65 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %35, i64 %64) #5
  tail call void @halide_error(i8* %0, i8* nonnull %35) #5
  br label %66

66:                                               ; preds = %59, %60
  call void @free(i8* %35) #5
  br label %67

67:                                               ; preds = %66, %32
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #6
  br label %184

68:                                               ; preds = %27
  %69 = icmp sgt i32 %3, 1
  br i1 %69, label %70, label %99

70:                                               ; preds = %68
  %71 = tail call i8* @malloc(i64 1024) #5
  %72 = icmp eq i8* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds i8, i8* %71, i64 1023
  store i8 0, i8* %74, align 1, !tbaa !30
  br label %75

75:                                               ; preds = %70, %73
  %76 = phi i8* [ %74, %73 ], [ null, %70 ]
  %77 = tail call i8* @halide_string_to_string(i8* %71, i8* %76, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.60, i64 0, i64 0)) #5
  %78 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i64 0, i32 4
  %79 = load i8*, i8** %78, align 8, !tbaa !10
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = tail call i8* @halide_string_to_string(i8* %77, i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %85

83:                                               ; preds = %75
  %84 = tail call i8* @halide_string_to_string(i8* %77, i8* %76, i8* nonnull %79) #5
  br label %85

85:                                               ; preds = %81, %83
  %86 = phi i8* [ %84, %83 ], [ %82, %81 ]
  %87 = tail call i8* @halide_string_to_string(i8* %86, i8* %76, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0)) #5
  %88 = zext i32 %3 to i64
  %89 = tail call i8* @halide_int64_to_string(i8* %87, i8* %76, i64 %88, i32 1) #5
  %90 = tail call i8* @halide_string_to_string(i8* %89, i8* %76, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #5
  br i1 %72, label %91, label %92

91:                                               ; preds = %85
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %98

92:                                               ; preds = %85
  %93 = ptrtoint i8* %90 to i64
  %94 = ptrtoint i8* %71 to i64
  %95 = add i64 %93, 1
  %96 = sub i64 %95, %94
  %97 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %71, i64 %96) #5
  tail call void @halide_error(i8* %0, i8* nonnull %71) #5
  br label %98

98:                                               ; preds = %91, %92
  call void @free(i8* %71) #5
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #6
  br label %184

99:                                               ; preds = %68
  %100 = sext i32 %5 to i64
  %101 = alloca i8*, i64 %100, align 8
  %102 = icmp sgt i32 %5, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = call i32 %1(i8** nonnull %101) #5
  store i32 %104, i32* %28, align 4, !tbaa !35
  br label %184

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i64 0, i32 2
  %107 = zext i32 %5 to i64
  br label %108

108:                                              ; preds = %105, %152
  %109 = phi i64 [ 0, %105 ], [ %153, %152 ]
  %110 = getelementptr inbounds %struct.mxArray*, %struct.mxArray** %6, i64 %109
  %111 = load %struct.mxArray*, %struct.mxArray** %110, align 8, !tbaa !32
  %112 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %106, align 8, !tbaa !14
  %113 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %112, i64 %109
  %114 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %112, i64 %109, i32 1
  %115 = load i32, i32* %114, align 8, !tbaa !15
  %116 = add i32 %115, -1
  %117 = icmp ult i32 %116, 2
  br i1 %117, label %118, label %136

118:                                              ; preds = %108
  %119 = alloca %struct.halide_buffer_t, align 8
  %120 = bitcast %struct.halide_buffer_t* %119 to i8*
  %121 = call i8* @memset(i8* nonnull %120, i32 0, i64 56) #5
  %122 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %112, i64 %109, i32 2
  %123 = load i32, i32* %122, align 4, !tbaa !20
  %124 = sext i32 %123 to i64
  %125 = alloca %struct.halide_dimension_t, i64 %124, align 8
  %126 = bitcast %struct.halide_dimension_t* %125 to i8*
  %127 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %119, i64 0, i32 6
  store %struct.halide_dimension_t* %125, %struct.halide_dimension_t** %127, align 8, !tbaa !42
  %128 = shl nsw i64 %124, 4
  %129 = call i8* @memset(i8* nonnull %126, i32 0, i64 %128) #5
  %130 = call i32 @halide_matlab_array_to_halide_buffer_t(i8* %0, %struct.mxArray* %111, %struct.halide_filter_argument_t* nonnull %113, %struct.halide_buffer_t* nonnull %119) #6
  store i32 %130, i32* %28, align 4, !tbaa !35
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %118
  %133 = getelementptr inbounds i8*, i8** %101, i64 %109
  %134 = bitcast i8** %133 to %struct.halide_buffer_t**
  store %struct.halide_buffer_t* %119, %struct.halide_buffer_t** %134, align 8, !tbaa !32
  br label %152

135:                                              ; preds = %118
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #6
  br label %184

136:                                              ; preds = %108
  %137 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %112, i64 %109, i32 3, i32 1
  %138 = load i8, i8* %137, align 1, !tbaa !22
  %139 = zext i8 %138 to i32
  %140 = add nuw nsw i32 %139, 7
  %141 = lshr i32 %140, 3
  %142 = icmp ugt i32 %141, 8
  %143 = select i1 %142, i32 %141, i32 8
  %144 = zext i32 %143 to i64
  %145 = alloca i8, i64 %144, align 8
  %146 = call i8* @memset(i8* nonnull %145, i32 0, i64 %144) #5
  %147 = call i32 @halide_matlab_array_to_scalar(i8* %0, %struct.mxArray* %111, %struct.halide_filter_argument_t* nonnull %113, i8* nonnull %145) #6
  store i32 %147, i32* %28, align 4, !tbaa !35
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %136
  %150 = getelementptr inbounds i8*, i8** %101, i64 %109
  store i8* %145, i8** %150, align 8, !tbaa !32
  br label %152

151:                                              ; preds = %136
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #6
  br label %184

152:                                              ; preds = %149, %132
  %153 = add nuw nsw i64 %109, 1
  %154 = icmp eq i64 %153, %107
  br i1 %154, label %155, label %108, !llvm.loop !57

155:                                              ; preds = %152
  %156 = call i32 %1(i8** nonnull %101) #5
  store i32 %156, i32* %28, align 4, !tbaa !35
  br i1 %102, label %157, label %184

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i64 0, i32 2
  %159 = zext i32 %5 to i64
  br label %160

160:                                              ; preds = %157, %181
  %161 = phi i64 [ 0, %157 ], [ %182, %181 ]
  %162 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %158, align 8, !tbaa !14
  %163 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %162, i64 %161, i32 1
  %164 = load i32, i32* %163, align 8, !tbaa !15
  %165 = icmp eq i32 %164, 2
  br i1 %165, label %166, label %172

166:                                              ; preds = %160
  %167 = getelementptr inbounds i8*, i8** %101, i64 %161
  %168 = bitcast i8** %167 to %struct.halide_buffer_t**
  %169 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %168, align 8, !tbaa !32
  %170 = call i32 @halide_copy_to_host(i8* %0, %struct.halide_buffer_t* %169) #5
  %171 = load i32, i32* %163, align 8, !tbaa !15
  br label %172

172:                                              ; preds = %166, %160
  %173 = phi i32 [ %171, %166 ], [ %164, %160 ]
  %174 = add i32 %173, -1
  %175 = icmp ult i32 %174, 2
  br i1 %175, label %176, label %181

176:                                              ; preds = %172
  %177 = getelementptr inbounds i8*, i8** %101, i64 %161
  %178 = bitcast i8** %177 to %struct.halide_buffer_t**
  %179 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %178, align 8, !tbaa !32
  %180 = call i32 @halide_device_free(i8* %0, %struct.halide_buffer_t* %179) #5
  br label %181

181:                                              ; preds = %172, %176
  %182 = add nuw nsw i64 %161, 1
  %183 = icmp eq i64 %182, %159
  br i1 %183, label %184, label %160, !llvm.loop !58

184:                                              ; preds = %181, %103, %155, %151, %135, %98, %67
  %185 = load i32, i32* %28, align 4, !tbaa !35
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12)
  br label %186

186:                                              ; preds = %7, %184
  %187 = phi i32 [ %185, %184 ], [ %9, %7 ]
  ret i32 %187
}

declare i8* @memset(i8*, i32, i64) local_unnamed_addr #4

declare i32 @halide_copy_to_host(i8*, %struct.halide_buffer_t*) local_unnamed_addr #4

declare i32 @halide_device_free(i8*, %struct.halide_buffer_t*) local_unnamed_addr #4

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #4

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #4

declare i8* @malloc(i64) local_unnamed_addr #4

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #4

declare void @free(i8*) local_unnamed_addr #4

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #4

declare extern_weak i8* @halide_get_symbol(i8*) local_unnamed_addr #4

attributes #0 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !5, i64 8}
!4 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEE", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !8, i64 32, !6, i64 33}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"bool", !6, i64 0}
!9 = !{!4, !5, i64 16}
!10 = !{!11, !5, i64 24}
!11 = !{!"_ZTS24halide_filter_metadata_t", !12, i64 0, !12, i64 4, !5, i64 8, !5, i64 16, !5, i64 24}
!12 = !{!"int", !6, i64 0}
!13 = !{!11, !12, i64 4}
!14 = !{!11, !5, i64 8}
!15 = !{!16, !12, i64 8}
!16 = !{!"_ZTS24halide_filter_argument_t", !5, i64 0, !12, i64 8, !12, i64 12, !17, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56}
!17 = !{!"_ZTS13halide_type_t", !18, i64 0, !6, i64 1, !19, i64 2}
!18 = !{!"_ZTS18halide_type_code_t", !6, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = !{!16, !12, i64 12}
!21 = !{!16, !18, i64 16}
!22 = !{!16, !6, i64 17}
!23 = !{!16, !5, i64 0}
!24 = distinct !{!24, !25, !26}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.peeled.count", i32 1}
!27 = !{!4, !5, i64 24}
!28 = !{!4, !8, i64 32}
!29 = !{!4, !5, i64 0}
!30 = !{!6, !6, i64 0}
!31 = !{i8 0, i8 2}
!32 = !{!5, !5, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"long", !6, i64 0}
!35 = !{!12, !12, i64 0}
!36 = distinct !{!36, !25}
!37 = !{!38, !5, i64 16}
!38 = !{!"_ZTS15halide_buffer_t", !39, i64 0, !5, i64 8, !5, i64 16, !39, i64 24, !17, i64 32, !12, i64 36, !5, i64 40, !5, i64 48}
!39 = !{!"long long", !6, i64 0}
!40 = !{!38, !12, i64 36}
!41 = !{!38, !39, i64 24}
!42 = !{!38, !5, i64 40}
!43 = !{!44, !12, i64 4}
!44 = !{!"_ZTS18halide_dimension_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!45 = distinct !{!45, !25}
!46 = !{!44, !12, i64 8}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
!50 = !{!8, !8, i64 0}
!51 = !{!19, !19, i64 0}
!52 = !{!39, !39, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !6, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"double", !6, i64 0}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, !25}
