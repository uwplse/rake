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
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type opaque
%struct.halide_dimension_t = type { i32, i32, i32, i32 }

@_ZN6Halide7Runtime3mex13mexWarnMsgTxtE = local_unnamed_addr global void (i8*)* null, align 4
@_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E = local_unnamed_addr global i32 (%struct.mxArray*)* null, align 4
@_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E = local_unnamed_addr global i32 (%struct.mxArray*)* null, align 4
@_ZN6Halide7Runtime3mex19mxGetDimensions_730E = local_unnamed_addr global i32* (%struct.mxArray*)* null, align 4
@_ZN6Halide7Runtime3mex19mxGetDimensions_700E = local_unnamed_addr global i32* (%struct.mxArray*)* null, align 4
@_ZN6Halide7Runtime3mex12mxGetClassIDE = local_unnamed_addr global i32 (%struct.mxArray*)* null, align 4
@_ZN6Halide7Runtime3mex9mxGetDataE = local_unnamed_addr global i8* (%struct.mxArray*)* null, align 4
@_ZN6Halide7Runtime3mex11mxIsNumericE = local_unnamed_addr global i1 (%struct.mxArray*)* null, align 4
@_ZN6Halide7Runtime3mex11mxIsLogicalE = local_unnamed_addr global i1 (%struct.mxArray*)* null, align 4
@_ZN6Halide7Runtime3mex11mxIsComplexE = local_unnamed_addr global i1 (%struct.mxArray*)* null, align 4
@_ZN6Halide7Runtime3mex11mxGetScalarE = local_unnamed_addr global double (%struct.mxArray*)* null, align 4
@_ZN6Halide7Runtime3mex16mxGetElementSizeE = local_unnamed_addr global i32 (%struct.mxArray*)* null, align 4
@_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_730E = local_unnamed_addr global %struct.mxArray* (i32, i32, i32, i32)* null, align 4
@_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_700E = local_unnamed_addr global %struct.mxArray* (i32, i32, i32, i32)* null, align 4
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
  %21 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %19 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), %18 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %17 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %16 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %15 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %14 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), %13 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), %12 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %11 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %10 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %9 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %8 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %7 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %6 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %5 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %4 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %3 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %2 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %1 ]
  ret i8* %21
}

; Function Attrs: nounwind mustprogress
define weak void @halide_matlab_describe_pipeline(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 4 dereferenceable(18) %0, %struct.halide_filter_metadata_t* %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i32 0, i32 1
  %4 = load i8*, i8** %3, align 4, !tbaa !3
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %0, i32 0, i32 2
  %6 = load i8*, i8** %5, align 4, !tbaa !9
  %7 = tail call i8* @halide_string_to_string(i8* %4, i8* %6, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #5
  store i8* %7, i8** %3, align 4, !tbaa !3
  %8 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %1, i32 0, i32 4
  %9 = load i8*, i8** %8, align 4, !tbaa !10
  %10 = icmp eq i8* %9, null
  %11 = load i8*, i8** %5, align 4, !tbaa !9
  br i1 %10, label %12, label %14

12:                                               ; preds = %2
  %13 = tail call i8* @halide_string_to_string(i8* %7, i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %16

14:                                               ; preds = %2
  %15 = tail call i8* @halide_string_to_string(i8* %7, i8* %11, i8* nonnull %9) #5
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i8* [ %15, %14 ], [ %13, %12 ]
  store i8* %17, i8** %3, align 4, !tbaa !3
  %18 = load i8*, i8** %5, align 4, !tbaa !9
  %19 = tail call i8* @halide_string_to_string(i8* %17, i8* %18, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #5
  store i8* %19, i8** %3, align 4, !tbaa !3
  %20 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %1, i32 0, i32 1
  %21 = load i32, i32* %20, align 4, !tbaa !13
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %84

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %1, i32 0, i32 2
  %25 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %24, align 4, !tbaa !14
  %26 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4, !tbaa !15
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i32 0, i32 1
  %31 = load i8*, i8** %5, align 4, !tbaa !9
  %32 = tail call i8* @halide_string_to_string(i8* %19, i8* %31, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #5
  store i8* %32, i8** %3, align 4, !tbaa !3
  %33 = load i32, i32* %30, align 4, !tbaa !15
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
  %38 = load i8*, i8** %5, align 4, !tbaa !9
  %39 = tail call i8* @halide_string_to_string(i8* %35, i8* %38, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)) #5
  br label %48

40:                                               ; preds = %34, %34
  %41 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i32 0, i32 2
  %42 = load i32, i32* %41, align 4, !tbaa !20
  %43 = load i8*, i8** %5, align 4, !tbaa !9
  %44 = sext i32 %42 to i64
  %45 = tail call i8* @halide_int64_to_string(i8* %35, i8* %43, i64 %44, i32 1) #5
  store i8* %45, i8** %3, align 4, !tbaa !3
  %46 = load i8*, i8** %5, align 4, !tbaa !9
  %47 = tail call i8* @halide_string_to_string(i8* %45, i8* %46, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)) #5
  br label %48

48:                                               ; preds = %37, %40
  %49 = phi i8* [ %47, %40 ], [ %39, %37 ]
  store i8* %49, i8** %3, align 4, !tbaa !3
  br label %50

50:                                               ; preds = %48, %34
  %51 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i32 0, i32 3, i32 0
  %52 = load i8, i8* %51, align 4, !tbaa !21
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i32 0, i32 3, i32 1
  %55 = load i8, i8* %54, align 1, !tbaa !22
  %56 = zext i8 %55 to i32
  %57 = tail call i32 @_ZN6Halide7Runtime3mex12get_class_idEii(i32 %53, i32 %56) #6
  %58 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %57) #6
  %59 = icmp eq i8* %58, null
  %60 = load i8*, i8** %3, align 4, !tbaa !3
  %61 = load i8*, i8** %5, align 4, !tbaa !9
  br i1 %59, label %64, label %62

62:                                               ; preds = %50
  %63 = tail call i8* @halide_string_to_string(i8* %60, i8* %61, i8* nonnull %58) #5
  br label %66

64:                                               ; preds = %50
  %65 = tail call i8* @halide_string_to_string(i8* %60, i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i8* [ %63, %62 ], [ %65, %64 ]
  store i8* %67, i8** %3, align 4, !tbaa !3
  %68 = load i8*, i8** %5, align 4, !tbaa !9
  %69 = tail call i8* @halide_string_to_string(i8* %67, i8* %68, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0)) #5
  store i8* %69, i8** %3, align 4, !tbaa !3
  %70 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %25, i32 0, i32 0
  %71 = load i8*, i8** %70, align 4, !tbaa !23
  %72 = icmp eq i8* %71, null
  %73 = load i8*, i8** %5, align 4, !tbaa !9
  br i1 %72, label %76, label %74

74:                                               ; preds = %66
  %75 = tail call i8* @halide_string_to_string(i8* %69, i8* %73, i8* nonnull %71) #5
  br label %78

76:                                               ; preds = %66
  %77 = tail call i8* @halide_string_to_string(i8* %69, i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i8* [ %75, %74 ], [ %77, %76 ]
  store i8* %79, i8** %3, align 4, !tbaa !3
  %80 = load i8*, i8** %5, align 4, !tbaa !9
  %81 = tail call i8* @halide_string_to_string(i8* %79, i8* %80, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)) #5
  store i8* %81, i8** %3, align 4, !tbaa !3
  %82 = load i32, i32* %20, align 4, !tbaa !13
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %88, label %84

84:                                               ; preds = %145, %78, %16
  %85 = phi i8* [ %19, %16 ], [ %81, %78 ], [ %148, %145 ]
  %86 = load i8*, i8** %5, align 4, !tbaa !9
  %87 = tail call i8* @halide_string_to_string(i8* %85, i8* %86, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0)) #5
  store i8* %87, i8** %3, align 4, !tbaa !3
  ret void

88:                                               ; preds = %78, %145
  %89 = phi i8* [ %148, %145 ], [ %81, %78 ]
  %90 = phi i32 [ %149, %145 ], [ 1, %78 ]
  %91 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %24, align 4, !tbaa !14
  %92 = load i8*, i8** %5, align 4, !tbaa !9
  %93 = tail call i8* @halide_string_to_string(i8* %89, i8* %92, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)) #5
  store i8* %93, i8** %3, align 4, !tbaa !3
  %94 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i32 %90, i32 1
  %95 = load i32, i32* %94, align 4, !tbaa !15
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i8*, i8** %5, align 4, !tbaa !9
  %99 = tail call i8* @halide_string_to_string(i8* %93, i8* %98, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #5
  store i8* %99, i8** %3, align 4, !tbaa !3
  %100 = load i32, i32* %94, align 4, !tbaa !15
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
  %105 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i32 %90, i32 2
  %106 = load i32, i32* %105, align 4, !tbaa !20
  %107 = load i8*, i8** %5, align 4, !tbaa !9
  %108 = sext i32 %106 to i64
  %109 = tail call i8* @halide_int64_to_string(i8* %102, i8* %107, i64 %108, i32 1) #5
  store i8* %109, i8** %3, align 4, !tbaa !3
  %110 = load i8*, i8** %5, align 4, !tbaa !9
  %111 = tail call i8* @halide_string_to_string(i8* %109, i8* %110, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)) #5
  br label %115

112:                                              ; preds = %101
  %113 = load i8*, i8** %5, align 4, !tbaa !9
  %114 = tail call i8* @halide_string_to_string(i8* %102, i8* %113, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)) #5
  br label %115

115:                                              ; preds = %104, %112
  %116 = phi i8* [ %114, %112 ], [ %111, %104 ]
  store i8* %116, i8** %3, align 4, !tbaa !3
  br label %117

117:                                              ; preds = %115, %101
  %118 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i32 %90, i32 3, i32 0
  %119 = load i8, i8* %118, align 4, !tbaa !21
  %120 = zext i8 %119 to i32
  %121 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i32 %90, i32 3, i32 1
  %122 = load i8, i8* %121, align 1, !tbaa !22
  %123 = zext i8 %122 to i32
  %124 = tail call i32 @_ZN6Halide7Runtime3mex12get_class_idEii(i32 %120, i32 %123) #6
  %125 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %124) #6
  %126 = icmp eq i8* %125, null
  %127 = load i8*, i8** %3, align 4, !tbaa !3
  %128 = load i8*, i8** %5, align 4, !tbaa !9
  br i1 %126, label %129, label %131

129:                                              ; preds = %117
  %130 = tail call i8* @halide_string_to_string(i8* %127, i8* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %133

131:                                              ; preds = %117
  %132 = tail call i8* @halide_string_to_string(i8* %127, i8* %128, i8* nonnull %125) #5
  br label %133

133:                                              ; preds = %129, %131
  %134 = phi i8* [ %132, %131 ], [ %130, %129 ]
  store i8* %134, i8** %3, align 4, !tbaa !3
  %135 = load i8*, i8** %5, align 4, !tbaa !9
  %136 = tail call i8* @halide_string_to_string(i8* %134, i8* %135, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0)) #5
  store i8* %136, i8** %3, align 4, !tbaa !3
  %137 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %91, i32 %90, i32 0
  %138 = load i8*, i8** %137, align 4, !tbaa !23
  %139 = icmp eq i8* %138, null
  %140 = load i8*, i8** %5, align 4, !tbaa !9
  br i1 %139, label %141, label %143

141:                                              ; preds = %133
  %142 = tail call i8* @halide_string_to_string(i8* %136, i8* %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %145

143:                                              ; preds = %133
  %144 = tail call i8* @halide_string_to_string(i8* %136, i8* %140, i8* nonnull %138) #5
  br label %145

145:                                              ; preds = %141, %143
  %146 = phi i8* [ %144, %143 ], [ %142, %141 ]
  store i8* %146, i8** %3, align 4, !tbaa !3
  %147 = load i8*, i8** %5, align 4, !tbaa !9
  %148 = tail call i8* @halide_string_to_string(i8* %146, i8* %147, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)) #5
  store i8* %148, i8** %3, align 4, !tbaa !3
  %149 = add nuw nsw i32 %90, 1
  %150 = load i32, i32* %20, align 4, !tbaa !13
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %88, label %84, !llvm.loop !24
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* %1) local_unnamed_addr #3 {
  %3 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %4 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #7
  %5 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 3
  store i8* %0, i8** %5, align 4, !tbaa !27
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 4
  store i8 1, i8* %6, align 4, !tbaa !28
  %7 = tail call i8* @malloc(i32 1024) #5
  %8 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 0
  store i8* %7, i8** %8, align 4, !tbaa !29
  %9 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 1
  %10 = icmp eq i8* %7, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, i8* %7, i32 1023
  store i8 0, i8* %12, align 1, !tbaa !30
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi i8* [ %12, %11 ], [ null, %2 ]
  %15 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 2
  store i8* %14, i8** %15, align 4
  %16 = tail call i8* @halide_string_to_string(i8* %7, i8* %14, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0)) #5
  store i8* %16, i8** %9, align 4, !tbaa !3
  call void @halide_matlab_describe_pipeline(%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* nonnull align 4 dereferenceable(18) %3, %struct.halide_filter_metadata_t* %1) #6
  %17 = load i8*, i8** %8, align 4, !tbaa !29
  %18 = icmp eq i8* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %9, align 4, !tbaa !3
  %21 = load i8*, i8** %5, align 4, !tbaa !27
  %22 = ptrtoint i8* %20 to i32
  %23 = ptrtoint i8* %17 to i32
  %24 = sub i32 1, %23
  %25 = add i32 %24, %22
  %26 = sext i32 %25 to i64
  %27 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %21, i8* nonnull %17, i64 %26) #5
  %28 = load i8*, i8** %8, align 4, !tbaa !29
  br label %29

29:                                               ; preds = %13, %19
  %30 = phi i8* [ %28, %19 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0), %13 ]
  call void @halide_print(i8* %0, i8* %30) #5
  %31 = load i8*, i8** %8, align 4, !tbaa !29
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 4, !tbaa !27
  call void @halide_error(i8* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %44

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 4, !tbaa !3
  %37 = load i8*, i8** %5, align 4, !tbaa !27
  %38 = ptrtoint i8* %36 to i32
  %39 = ptrtoint i8* %31 to i32
  %40 = sub i32 1, %39
  %41 = add i32 %40, %38
  %42 = sext i32 %41 to i64
  %43 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %37, i8* nonnull %31, i64 %42) #5
  br label %44

44:                                               ; preds = %35, %33
  %45 = load i8, i8* %6, align 4, !tbaa !28, !range !31
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 4, !tbaa !29
  %49 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %3, i32 0, i32 5, i32 0
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  call void @free(i8* %48) #5
  br label %52

52:                                               ; preds = %44, %47, %51
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #7
  ret void
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind
define weak void @halide_matlab_error(i8* %0, i8* %1) #3 {
  %3 = tail call i8* @malloc(i32 1024) #5
  %4 = icmp eq i8* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i32 1023
  store i8 0, i8* %6, align 1, !tbaa !30
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8* [ %6, %5 ], [ null, %2 ]
  %9 = tail call i8* @halide_string_to_string(i8* %3, i8* %8, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0)) #5
  %10 = icmp eq i8* %1, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %15

13:                                               ; preds = %7
  %14 = tail call i8* @halide_string_to_string(i8* %9, i8* %8, i8* nonnull %1) #5
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi i8* [ %14, %13 ], [ %12, %11 ]
  %17 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 4, !tbaa !32
  br i1 %4, label %18, label %19

18:                                               ; preds = %15
  tail call void %17(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %32

19:                                               ; preds = %15
  %20 = ptrtoint i8* %16 to i32
  %21 = ptrtoint i8* %3 to i32
  %22 = sub i32 1, %21
  %23 = add i32 %22, %20
  %24 = sext i32 %23 to i64
  %25 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %24) #5
  tail call void %17(i8* nonnull %3) #5
  %26 = ptrtoint i8* %16 to i32
  %27 = ptrtoint i8* %3 to i32
  %28 = sub i32 1, %27
  %29 = add i32 %28, %26
  %30 = sext i32 %29 to i64
  %31 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %30) #5
  br label %32

32:                                               ; preds = %18, %19
  call void @free(i8* %3) #5
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @halide_matlab_print(i8* %0, i8* %1) #1 {
  %3 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 4, !tbaa !32
  tail call void %3(i8* %1) #5
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_matlab_init(i8* %0) local_unnamed_addr #3 {
  %2 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 4, !tbaa !32
  %3 = icmp eq void (i8*)* %2, null
  br i1 %3, label %4, label %216

4:                                                ; preds = %1
  %5 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)) #5
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = tail call i8* @malloc(i32 1024) #5
  %9 = icmp eq i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i32 1023
  store i8 0, i8* %11, align 1, !tbaa !30
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i8* [ %11, %10 ], [ null, %7 ]
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #5
  %15 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)) #5
  %16 = tail call i8* @halide_string_to_string(i8* %15, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #5
  br i1 %9, label %17, label %18

17:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %25

18:                                               ; preds = %12
  %19 = ptrtoint i8* %16 to i32
  %20 = ptrtoint i8* %8 to i32
  %21 = sub i32 1, %20
  %22 = add i32 %21, %19
  %23 = sext i32 %22 to i64
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %23) #5
  tail call void @halide_error(i8* %0, i8* nonnull %8) #5
  br label %25

25:                                               ; preds = %18, %17
  tail call void @free(i8* %8) #5
  br label %28

26:                                               ; preds = %4
  %27 = bitcast i8* %5 to void (i8*)*
  br label %28

28:                                               ; preds = %25, %26
  %29 = phi void (i8*)* [ null, %25 ], [ %27, %26 ]
  store void (i8*)* %29, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 4, !tbaa !32
  %30 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0)) #5
  store i8* %30, i8** bitcast (i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E to i8**), align 4, !tbaa !32
  %31 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0)) #5
  store i8* %31, i8** bitcast (i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E to i8**), align 4, !tbaa !32
  %32 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0)) #5
  store i8* %32, i8** bitcast (i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E to i8**), align 4, !tbaa !32
  %33 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0)) #5
  store i8* %33, i8** bitcast (i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E to i8**), align 4, !tbaa !32
  %34 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0)) #5
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %28
  %37 = tail call i8* @malloc(i32 1024) #5
  %38 = icmp eq i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds i8, i8* %37, i32 1023
  store i8 0, i8* %40, align 1, !tbaa !30
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi i8* [ %40, %39 ], [ null, %36 ]
  %43 = tail call i8* @halide_string_to_string(i8* %37, i8* %42, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #5
  %44 = tail call i8* @halide_string_to_string(i8* %43, i8* %42, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0)) #5
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %42, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #5
  br i1 %38, label %46, label %47

46:                                               ; preds = %41
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %54

47:                                               ; preds = %41
  %48 = ptrtoint i8* %45 to i32
  %49 = ptrtoint i8* %37 to i32
  %50 = sub i32 1, %49
  %51 = add i32 %50, %48
  %52 = sext i32 %51 to i64
  %53 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %37, i64 %52) #5
  tail call void @halide_error(i8* %0, i8* nonnull %37) #5
  br label %54

54:                                               ; preds = %47, %46
  tail call void @free(i8* %37) #5
  br label %57

55:                                               ; preds = %28
  %56 = bitcast i8* %34 to i32 (%struct.mxArray*)*
  br label %57

57:                                               ; preds = %54, %55
  %58 = phi i32 (%struct.mxArray*)* [ null, %54 ], [ %56, %55 ]
  store i32 (%struct.mxArray*)* %58, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex12mxGetClassIDE, align 4, !tbaa !32
  %59 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0)) #5
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = tail call i8* @malloc(i32 1024) #5
  %63 = icmp eq i8* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds i8, i8* %62, i32 1023
  store i8 0, i8* %65, align 1, !tbaa !30
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i8* [ %65, %64 ], [ null, %61 ]
  %68 = tail call i8* @halide_string_to_string(i8* %62, i8* %67, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #5
  %69 = tail call i8* @halide_string_to_string(i8* %68, i8* %67, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0)) #5
  %70 = tail call i8* @halide_string_to_string(i8* %69, i8* %67, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #5
  br i1 %63, label %71, label %72

71:                                               ; preds = %66
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %79

72:                                               ; preds = %66
  %73 = ptrtoint i8* %70 to i32
  %74 = ptrtoint i8* %62 to i32
  %75 = sub i32 1, %74
  %76 = add i32 %75, %73
  %77 = sext i32 %76 to i64
  %78 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %62, i64 %77) #5
  tail call void @halide_error(i8* %0, i8* nonnull %62) #5
  br label %79

79:                                               ; preds = %72, %71
  tail call void @free(i8* %62) #5
  br label %82

80:                                               ; preds = %57
  %81 = bitcast i8* %59 to i8* (%struct.mxArray*)*
  br label %82

82:                                               ; preds = %79, %80
  %83 = phi i8* (%struct.mxArray*)* [ null, %79 ], [ %81, %80 ]
  store i8* (%struct.mxArray*)* %83, i8* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex9mxGetDataE, align 4, !tbaa !32
  %84 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0)) #5
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = tail call i8* @malloc(i32 1024) #5
  %88 = icmp eq i8* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds i8, i8* %87, i32 1023
  store i8 0, i8* %90, align 1, !tbaa !30
  br label %91

91:                                               ; preds = %89, %86
  %92 = phi i8* [ %90, %89 ], [ null, %86 ]
  %93 = tail call i8* @halide_string_to_string(i8* %87, i8* %92, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #5
  %94 = tail call i8* @halide_string_to_string(i8* %93, i8* %92, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0)) #5
  %95 = tail call i8* @halide_string_to_string(i8* %94, i8* %92, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #5
  br i1 %88, label %96, label %97

96:                                               ; preds = %91
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %104

97:                                               ; preds = %91
  %98 = ptrtoint i8* %95 to i32
  %99 = ptrtoint i8* %87 to i32
  %100 = sub i32 1, %99
  %101 = add i32 %100, %98
  %102 = sext i32 %101 to i64
  %103 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %87, i64 %102) #5
  tail call void @halide_error(i8* %0, i8* nonnull %87) #5
  br label %104

104:                                              ; preds = %97, %96
  tail call void @free(i8* %87) #5
  br label %107

105:                                              ; preds = %82
  %106 = bitcast i8* %84 to i1 (%struct.mxArray*)*
  br label %107

107:                                              ; preds = %104, %105
  %108 = phi i1 (%struct.mxArray*)* [ null, %104 ], [ %106, %105 ]
  store i1 (%struct.mxArray*)* %108, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsNumericE, align 4, !tbaa !32
  %109 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0)) #5
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %130

111:                                              ; preds = %107
  %112 = tail call i8* @malloc(i32 1024) #5
  %113 = icmp eq i8* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds i8, i8* %112, i32 1023
  store i8 0, i8* %115, align 1, !tbaa !30
  br label %116

116:                                              ; preds = %114, %111
  %117 = phi i8* [ %115, %114 ], [ null, %111 ]
  %118 = tail call i8* @halide_string_to_string(i8* %112, i8* %117, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #5
  %119 = tail call i8* @halide_string_to_string(i8* %118, i8* %117, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0)) #5
  %120 = tail call i8* @halide_string_to_string(i8* %119, i8* %117, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #5
  br i1 %113, label %121, label %122

121:                                              ; preds = %116
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %129

122:                                              ; preds = %116
  %123 = ptrtoint i8* %120 to i32
  %124 = ptrtoint i8* %112 to i32
  %125 = sub i32 1, %124
  %126 = add i32 %125, %123
  %127 = sext i32 %126 to i64
  %128 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %112, i64 %127) #5
  tail call void @halide_error(i8* %0, i8* nonnull %112) #5
  br label %129

129:                                              ; preds = %122, %121
  tail call void @free(i8* %112) #5
  br label %132

130:                                              ; preds = %107
  %131 = bitcast i8* %109 to i1 (%struct.mxArray*)*
  br label %132

132:                                              ; preds = %129, %130
  %133 = phi i1 (%struct.mxArray*)* [ null, %129 ], [ %131, %130 ]
  store i1 (%struct.mxArray*)* %133, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsLogicalE, align 4, !tbaa !32
  %134 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0)) #5
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %155

136:                                              ; preds = %132
  %137 = tail call i8* @malloc(i32 1024) #5
  %138 = icmp eq i8* %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds i8, i8* %137, i32 1023
  store i8 0, i8* %140, align 1, !tbaa !30
  br label %141

141:                                              ; preds = %139, %136
  %142 = phi i8* [ %140, %139 ], [ null, %136 ]
  %143 = tail call i8* @halide_string_to_string(i8* %137, i8* %142, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #5
  %144 = tail call i8* @halide_string_to_string(i8* %143, i8* %142, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0)) #5
  %145 = tail call i8* @halide_string_to_string(i8* %144, i8* %142, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #5
  br i1 %138, label %146, label %147

146:                                              ; preds = %141
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %154

147:                                              ; preds = %141
  %148 = ptrtoint i8* %145 to i32
  %149 = ptrtoint i8* %137 to i32
  %150 = sub i32 1, %149
  %151 = add i32 %150, %148
  %152 = sext i32 %151 to i64
  %153 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %137, i64 %152) #5
  tail call void @halide_error(i8* %0, i8* nonnull %137) #5
  br label %154

154:                                              ; preds = %147, %146
  tail call void @free(i8* %137) #5
  br label %157

155:                                              ; preds = %132
  %156 = bitcast i8* %134 to i1 (%struct.mxArray*)*
  br label %157

157:                                              ; preds = %154, %155
  %158 = phi i1 (%struct.mxArray*)* [ null, %154 ], [ %156, %155 ]
  store i1 (%struct.mxArray*)* %158, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsComplexE, align 4, !tbaa !32
  %159 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0)) #5
  %160 = icmp eq i8* %159, null
  br i1 %160, label %161, label %180

161:                                              ; preds = %157
  %162 = tail call i8* @malloc(i32 1024) #5
  %163 = icmp eq i8* %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds i8, i8* %162, i32 1023
  store i8 0, i8* %165, align 1, !tbaa !30
  br label %166

166:                                              ; preds = %164, %161
  %167 = phi i8* [ %165, %164 ], [ null, %161 ]
  %168 = tail call i8* @halide_string_to_string(i8* %162, i8* %167, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #5
  %169 = tail call i8* @halide_string_to_string(i8* %168, i8* %167, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0)) #5
  %170 = tail call i8* @halide_string_to_string(i8* %169, i8* %167, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #5
  br i1 %163, label %171, label %172

171:                                              ; preds = %166
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %179

172:                                              ; preds = %166
  %173 = ptrtoint i8* %170 to i32
  %174 = ptrtoint i8* %162 to i32
  %175 = sub i32 1, %174
  %176 = add i32 %175, %173
  %177 = sext i32 %176 to i64
  %178 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %162, i64 %177) #5
  tail call void @halide_error(i8* %0, i8* nonnull %162) #5
  br label %179

179:                                              ; preds = %172, %171
  tail call void @free(i8* %162) #5
  br label %182

180:                                              ; preds = %157
  %181 = bitcast i8* %159 to double (%struct.mxArray*)*
  br label %182

182:                                              ; preds = %179, %180
  %183 = phi double (%struct.mxArray*)* [ null, %179 ], [ %181, %180 ]
  store double (%struct.mxArray*)* %183, double (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxGetScalarE, align 4, !tbaa !32
  %184 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0)) #5
  %185 = icmp eq i8* %184, null
  br i1 %185, label %186, label %205

186:                                              ; preds = %182
  %187 = tail call i8* @malloc(i32 1024) #5
  %188 = icmp eq i8* %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, i8* %187, i32 1023
  store i8 0, i8* %190, align 1, !tbaa !30
  br label %191

191:                                              ; preds = %189, %186
  %192 = phi i8* [ %190, %189 ], [ null, %186 ]
  %193 = tail call i8* @halide_string_to_string(i8* %187, i8* %192, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0)) #5
  %194 = tail call i8* @halide_string_to_string(i8* %193, i8* %192, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0)) #5
  %195 = tail call i8* @halide_string_to_string(i8* %194, i8* %192, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #5
  br i1 %188, label %196, label %197

196:                                              ; preds = %191
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %204

197:                                              ; preds = %191
  %198 = ptrtoint i8* %195 to i32
  %199 = ptrtoint i8* %187 to i32
  %200 = sub i32 1, %199
  %201 = add i32 %200, %198
  %202 = sext i32 %201 to i64
  %203 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %187, i64 %202) #5
  tail call void @halide_error(i8* %0, i8* nonnull %187) #5
  br label %204

204:                                              ; preds = %197, %196
  tail call void @free(i8* %187) #5
  br label %207

205:                                              ; preds = %182
  %206 = bitcast i8* %184 to i32 (%struct.mxArray*)*
  br label %207

207:                                              ; preds = %204, %205
  %208 = phi i32 (%struct.mxArray*)* [ null, %204 ], [ %206, %205 ]
  store i32 (%struct.mxArray*)* %208, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex16mxGetElementSizeE, align 4, !tbaa !32
  %209 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0)) #5
  store i8* %209, i8** bitcast (%struct.mxArray* (i32, i32, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_730E to i8**), align 4, !tbaa !32
  %210 = tail call i8* @halide_get_symbol(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0)) #5
  store i8* %210, i8** bitcast (%struct.mxArray* (i32, i32, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_700E to i8**), align 4, !tbaa !32
  %211 = load void (i8*)*, void (i8*)** @_ZN6Halide7Runtime3mex13mexWarnMsgTxtE, align 4, !tbaa !32
  %212 = icmp eq void (i8*)* %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %207
  %214 = tail call void (i8*, i8*)* @halide_set_custom_print(void (i8*, i8*)* nonnull @halide_matlab_print) #5
  %215 = tail call void (i8*, i8*)* @halide_set_error_handler(void (i8*, i8*)* nonnull @halide_matlab_error) #5
  br label %216

216:                                              ; preds = %207, %1, %213
  %217 = phi i32 [ 0, %213 ], [ 0, %1 ], [ -20, %207 ]
  ret i32 %217
}

declare extern_weak void (i8*, i8*)* @halide_set_custom_print(void (i8*, i8*)*) local_unnamed_addr #4

declare extern_weak void (i8*, i8*)* @halide_set_error_handler(void (i8*, i8*)*) local_unnamed_addr #4

; Function Attrs: nounwind
define weak i32 @halide_matlab_array_to_halide_buffer_t(i8* %0, %struct.mxArray* %1, %struct.halide_filter_argument_t* %2, %struct.halide_buffer_t* %3) local_unnamed_addr #3 {
  %5 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsComplexE, align 4, !tbaa !32
  %6 = tail call zeroext i1 %5(%struct.mxArray* %1) #5
  br i1 %6, label %7, label %34

7:                                                ; preds = %4
  %8 = tail call i8* @malloc(i32 1024) #5
  %9 = icmp eq i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i32 1023
  store i8 0, i8* %11, align 1, !tbaa !30
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ null, %7 ]
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i32 0, i32 0)) #5
  %15 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0
  %16 = load i8*, i8** %15, align 4, !tbaa !23
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %22

20:                                               ; preds = %12
  %21 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull %16) #5
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i8* [ %21, %20 ], [ %19, %18 ]
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %13, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #5
  br i1 %9, label %25, label %26

25:                                               ; preds = %22
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %33

26:                                               ; preds = %22
  %27 = ptrtoint i8* %24 to i32
  %28 = ptrtoint i8* %8 to i32
  %29 = add i32 %27, 1
  %30 = sub i32 %29, %28
  %31 = sext i32 %30 to i64
  %32 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %31) #5
  tail call void @halide_error(i8* %0, i8* nonnull %8) #5
  br label %33

33:                                               ; preds = %26, %25
  tail call void @free(i8* %8) #5
  br label %221

34:                                               ; preds = %4
  %35 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E, align 4, !tbaa !32
  %36 = icmp eq i32 (%struct.mxArray*)* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call i32 %35(%struct.mxArray* %1) #5
  br label %42

39:                                               ; preds = %34
  %40 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E, align 4, !tbaa !32
  %41 = tail call i32 %40(%struct.mxArray* %1) #5
  br label %42

42:                                               ; preds = %37, %39
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ]
  %44 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 2
  %45 = load i32, i32* %44, align 4, !tbaa !20
  %46 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 3
  %47 = getelementptr inbounds %struct.halide_type_t, %struct.halide_type_t* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 4, !tbaa !21
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 3, i32 1
  %51 = load i8, i8* %50, align 1, !tbaa !22
  %52 = zext i8 %51 to i32
  %53 = tail call i32 @_ZN6Halide7Runtime3mex12get_class_idEii(i32 %49, i32 %52) #6
  %54 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex12mxGetClassIDE, align 4, !tbaa !32
  %55 = tail call i32 %54(%struct.mxArray* %1) #5
  %56 = icmp eq i32 %55, %53
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = icmp slt i32 %43, 0
  %59 = select i1 %58, i32 %43, i32 0
  br label %105

60:                                               ; preds = %42
  %61 = tail call i8* @malloc(i32 1024) #5
  %62 = icmp eq i8* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, i8* %61, i32 1023
  store i8 0, i8* %64, align 1, !tbaa !30
  br label %65

65:                                               ; preds = %60, %63
  %66 = phi i8* [ %64, %63 ], [ null, %60 ]
  %67 = tail call i8* @halide_string_to_string(i8* %61, i8* %66, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0)) #5
  %68 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %53) #6
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = tail call i8* @halide_string_to_string(i8* %67, i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %74

72:                                               ; preds = %65
  %73 = tail call i8* @halide_string_to_string(i8* %67, i8* %66, i8* nonnull %68) #5
  br label %74

74:                                               ; preds = %70, %72
  %75 = phi i8* [ %73, %72 ], [ %71, %70 ]
  %76 = tail call i8* @halide_string_to_string(i8* %75, i8* %66, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0)) #5
  %77 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0
  %78 = load i8*, i8** %77, align 4, !tbaa !23
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = tail call i8* @halide_string_to_string(i8* %76, i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %84

82:                                               ; preds = %74
  %83 = tail call i8* @halide_string_to_string(i8* %76, i8* %66, i8* nonnull %78) #5
  br label %84

84:                                               ; preds = %80, %82
  %85 = phi i8* [ %83, %82 ], [ %81, %80 ]
  %86 = tail call i8* @halide_string_to_string(i8* %85, i8* %66, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0)) #5
  %87 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %55) #6
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = tail call i8* @halide_string_to_string(i8* %86, i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %93

91:                                               ; preds = %84
  %92 = tail call i8* @halide_string_to_string(i8* %86, i8* %66, i8* nonnull %87) #5
  br label %93

93:                                               ; preds = %89, %91
  %94 = phi i8* [ %92, %91 ], [ %90, %89 ]
  %95 = tail call i8* @halide_string_to_string(i8* %94, i8* %66, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #5
  br i1 %62, label %96, label %97

96:                                               ; preds = %93
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %104

97:                                               ; preds = %93
  %98 = ptrtoint i8* %95 to i32
  %99 = ptrtoint i8* %61 to i32
  %100 = add i32 %98, 1
  %101 = sub i32 %100, %99
  %102 = sext i32 %101 to i64
  %103 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %61, i64 %102) #5
  tail call void @halide_error(i8* %0, i8* nonnull %61) #5
  br label %104

104:                                              ; preds = %96, %97
  call void @free(i8* %61) #5
  br label %221

105:                                              ; preds = %57, %117
  %106 = phi i32 [ %109, %117 ], [ %43, %57 ]
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = add nsw i32 %106, -1
  %110 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E, align 4, !tbaa !32
  %111 = icmp eq i32* (%struct.mxArray*)* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = tail call i32* %110(%struct.mxArray* %1) #5
  br label %117

114:                                              ; preds = %108
  %115 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E, align 4, !tbaa !32
  %116 = tail call i32* %115(%struct.mxArray* %1) #5
  br label %117

117:                                              ; preds = %112, %114
  %118 = phi i32* [ %113, %112 ], [ %116, %114 ]
  %119 = getelementptr inbounds i32, i32* %118, i32 %109
  %120 = load i32, i32* %119, align 4, !tbaa !33
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %105, label %122, !llvm.loop !34

122:                                              ; preds = %105, %117
  %123 = phi i32 [ %59, %105 ], [ %106, %117 ]
  %124 = icmp sgt i32 %123, %45
  br i1 %124, label %125, label %158

125:                                              ; preds = %122
  %126 = tail call i8* @malloc(i32 1024) #5
  %127 = icmp eq i8* %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds i8, i8* %126, i32 1023
  store i8 0, i8* %129, align 1, !tbaa !30
  br label %130

130:                                              ; preds = %125, %128
  %131 = phi i8* [ %129, %128 ], [ null, %125 ]
  %132 = tail call i8* @halide_string_to_string(i8* %126, i8* %131, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i32 0, i32 0)) #5
  %133 = sext i32 %45 to i64
  %134 = tail call i8* @halide_int64_to_string(i8* %132, i8* %131, i64 %133, i32 1) #5
  %135 = tail call i8* @halide_string_to_string(i8* %134, i8* %131, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0)) #5
  %136 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0
  %137 = load i8*, i8** %136, align 4, !tbaa !23
  %138 = icmp eq i8* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = tail call i8* @halide_string_to_string(i8* %135, i8* %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %143

141:                                              ; preds = %130
  %142 = tail call i8* @halide_string_to_string(i8* %135, i8* %131, i8* nonnull %137) #5
  br label %143

143:                                              ; preds = %139, %141
  %144 = phi i8* [ %142, %141 ], [ %140, %139 ]
  %145 = tail call i8* @halide_string_to_string(i8* %144, i8* %131, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0)) #5
  %146 = sext i32 %123 to i64
  %147 = tail call i8* @halide_int64_to_string(i8* %145, i8* %131, i64 %146, i32 1) #5
  %148 = tail call i8* @halide_string_to_string(i8* %147, i8* %131, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #5
  br i1 %127, label %149, label %150

149:                                              ; preds = %143
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %157

150:                                              ; preds = %143
  %151 = ptrtoint i8* %148 to i32
  %152 = ptrtoint i8* %126 to i32
  %153 = add i32 %151, 1
  %154 = sub i32 %153, %152
  %155 = sext i32 %154 to i64
  %156 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %126, i64 %155) #5
  tail call void @halide_error(i8* %0, i8* nonnull %126) #5
  br label %157

157:                                              ; preds = %149, %150
  call void @free(i8* %126) #5
  br label %221

158:                                              ; preds = %122
  %159 = load i8* (%struct.mxArray*)*, i8* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex9mxGetDataE, align 4, !tbaa !32
  %160 = tail call i8* %159(%struct.mxArray* %1) #5
  %161 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 2
  store i8* %160, i8** %161, align 4, !tbaa !35
  %162 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 0
  %163 = bitcast %struct.halide_type_t* %46 to i32*
  %164 = bitcast i8* %162 to i32*
  %165 = load i32, i32* %163, align 4
  store i32 %165, i32* %164, align 8
  %166 = load i32, i32* %44, align 4, !tbaa !20
  %167 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5
  store i32 %166, i32* %167, align 4, !tbaa !38
  %168 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 3
  %169 = load i64, i64* %168, align 8, !tbaa !39
  %170 = or i64 %169, 1
  store i64 %170, i64* %168, align 8, !tbaa !39
  %171 = icmp sgt i32 %123, 0
  %172 = icmp sgt i32 %45, 0
  %173 = and i1 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %158
  %175 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  br label %180

176:                                              ; preds = %189, %158
  %177 = icmp sgt i32 %45, 2
  %178 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %179 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %178, align 8, !tbaa !40
  br i1 %177, label %202, label %199

180:                                              ; preds = %174, %189
  %181 = phi i32 [ 0, %174 ], [ %195, %189 ]
  %182 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E, align 4, !tbaa !32
  %183 = icmp eq i32* (%struct.mxArray*)* %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %180
  %185 = tail call i32* %182(%struct.mxArray* %1) #5
  br label %189

186:                                              ; preds = %180
  %187 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E, align 4, !tbaa !32
  %188 = tail call i32* %187(%struct.mxArray* %1) #5
  br label %189

189:                                              ; preds = %184, %186
  %190 = phi i32* [ %185, %184 ], [ %188, %186 ]
  %191 = getelementptr inbounds i32, i32* %190, i32 %181
  %192 = load i32, i32* %191, align 4, !tbaa !33
  %193 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %175, align 8, !tbaa !40
  %194 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %193, i32 %181, i32 1
  store i32 %192, i32* %194, align 4, !tbaa !41
  %195 = add nuw nsw i32 %181, 1
  %196 = icmp slt i32 %195, %123
  %197 = icmp slt i32 %195, %45
  %198 = and i1 %196, %197
  br i1 %198, label %180, label %176, !llvm.loop !43

199:                                              ; preds = %208, %176
  %200 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %179, i32 0, i32 2
  store i32 1, i32* %200, align 4, !tbaa !44
  %201 = icmp sgt i32 %45, 1
  br i1 %201, label %211, label %221

202:                                              ; preds = %176, %208
  %203 = phi i32 [ %209, %208 ], [ 2, %176 ]
  %204 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %179, i32 %203, i32 1
  %205 = load i32, i32* %204, align 4, !tbaa !41
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  store i32 1, i32* %204, align 4, !tbaa !41
  br label %208

208:                                              ; preds = %202, %207
  %209 = add nuw nsw i32 %203, 1
  %210 = icmp slt i32 %209, %45
  br i1 %210, label %202, label %199, !llvm.loop !45

211:                                              ; preds = %199, %211
  %212 = phi i32 [ %217, %211 ], [ 1, %199 ]
  %213 = phi i32 [ %219, %211 ], [ 1, %199 ]
  %214 = add nsw i32 %213, -1
  %215 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %179, i32 %214, i32 1
  %216 = load i32, i32* %215, align 4, !tbaa !41
  %217 = mul nsw i32 %212, %216
  %218 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %179, i32 %213, i32 2
  store i32 %217, i32* %218, align 4, !tbaa !44
  %219 = add nuw nsw i32 %213, 1
  %220 = icmp slt i32 %219, %45
  br i1 %220, label %211, label %221, !llvm.loop !46

221:                                              ; preds = %211, %199, %104, %157, %33
  %222 = phi i32 [ -21, %33 ], [ -21, %104 ], [ -21, %157 ], [ 0, %199 ], [ 0, %211 ]
  ret i32 %222
}

; Function Attrs: nounwind
define weak i32 @halide_matlab_array_to_scalar(i8* %0, %struct.mxArray* %1, %struct.halide_filter_argument_t* %2, i8* %3) local_unnamed_addr #3 {
  %5 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsComplexE, align 4, !tbaa !32
  %6 = tail call zeroext i1 %5(%struct.mxArray* %1) #5
  br i1 %6, label %7, label %34

7:                                                ; preds = %4
  %8 = tail call i8* @malloc(i32 1024) #5
  %9 = icmp eq i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i32 1023
  store i8 0, i8* %11, align 1, !tbaa !30
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ null, %7 ]
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i32 0, i32 0)) #5
  %15 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0
  %16 = load i8*, i8** %15, align 4, !tbaa !23
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %22

20:                                               ; preds = %12
  %21 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull %16) #5
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i8* [ %21, %20 ], [ %19, %18 ]
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %13, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #5
  br i1 %9, label %25, label %26

25:                                               ; preds = %22
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %33

26:                                               ; preds = %22
  %27 = ptrtoint i8* %24 to i32
  %28 = ptrtoint i8* %8 to i32
  %29 = add i32 %27, 1
  %30 = sub i32 %29, %28
  %31 = sext i32 %30 to i64
  %32 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %31) #5
  tail call void @halide_error(i8* %0, i8* nonnull %8) #5
  br label %33

33:                                               ; preds = %26, %25
  tail call void @free(i8* %8) #5
  br label %230

34:                                               ; preds = %4
  %35 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_730E, align 4, !tbaa !32
  %36 = icmp eq i32 (%struct.mxArray*)* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call i32 %35(%struct.mxArray* %1) #5
  br label %42

39:                                               ; preds = %34
  %40 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex27mxGetNumberOfDimensions_700E, align 4, !tbaa !32
  %41 = tail call i32 %40(%struct.mxArray* %1) #5
  br label %42

42:                                               ; preds = %37, %39
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ]
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %47, label %89

45:                                               ; preds = %56
  %46 = icmp slt i32 %61, %43
  br i1 %46, label %47, label %89, !llvm.loop !47

47:                                               ; preds = %42, %45
  %48 = phi i32 [ %61, %45 ], [ 0, %42 ]
  %49 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_730E, align 4, !tbaa !32
  %50 = icmp eq i32* (%struct.mxArray*)* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call i32* %49(%struct.mxArray* %1) #5
  br label %56

53:                                               ; preds = %47
  %54 = load i32* (%struct.mxArray*)*, i32* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex19mxGetDimensions_700E, align 4, !tbaa !32
  %55 = tail call i32* %54(%struct.mxArray* %1) #5
  br label %56

56:                                               ; preds = %51, %53
  %57 = phi i32* [ %52, %51 ], [ %55, %53 ]
  %58 = getelementptr inbounds i32, i32* %57, i32 %48
  %59 = load i32, i32* %58, align 4, !tbaa !33
  %60 = icmp eq i32 %59, 1
  %61 = add nuw nsw i32 %48, 1
  br i1 %60, label %45, label %62

62:                                               ; preds = %56
  %63 = tail call i8* @malloc(i32 1024) #5
  %64 = icmp eq i8* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds i8, i8* %63, i32 1023
  store i8 0, i8* %66, align 1, !tbaa !30
  br label %67

67:                                               ; preds = %62, %65
  %68 = phi i8* [ %66, %65 ], [ null, %62 ]
  %69 = tail call i8* @halide_string_to_string(i8* %63, i8* %68, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i32 0, i32 0)) #5
  %70 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0
  %71 = load i8*, i8** %70, align 4, !tbaa !23
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = tail call i8* @halide_string_to_string(i8* %69, i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %77

75:                                               ; preds = %67
  %76 = tail call i8* @halide_string_to_string(i8* %69, i8* %68, i8* nonnull %71) #5
  br label %77

77:                                               ; preds = %73, %75
  %78 = phi i8* [ %76, %75 ], [ %74, %73 ]
  %79 = tail call i8* @halide_string_to_string(i8* %78, i8* %68, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #5
  br i1 %64, label %80, label %81

80:                                               ; preds = %77
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %88

81:                                               ; preds = %77
  %82 = ptrtoint i8* %79 to i32
  %83 = ptrtoint i8* %63 to i32
  %84 = add i32 %82, 1
  %85 = sub i32 %84, %83
  %86 = sext i32 %85 to i64
  %87 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %63, i64 %86) #5
  tail call void @halide_error(i8* %0, i8* nonnull %63) #5
  br label %88

88:                                               ; preds = %81, %80
  tail call void @free(i8* %63) #5
  br label %230

89:                                               ; preds = %45, %42
  %90 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsLogicalE, align 4, !tbaa !32
  %91 = tail call zeroext i1 %90(%struct.mxArray* %1) #5
  br i1 %91, label %133, label %92

92:                                               ; preds = %89
  %93 = load i1 (%struct.mxArray*)*, i1 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxIsNumericE, align 4, !tbaa !32
  %94 = tail call zeroext i1 %93(%struct.mxArray* %1) #5
  br i1 %94, label %133, label %95

95:                                               ; preds = %92
  %96 = tail call i8* @malloc(i32 1024) #5
  %97 = icmp eq i8* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds i8, i8* %96, i32 1023
  store i8 0, i8* %99, align 1, !tbaa !30
  br label %100

100:                                              ; preds = %95, %98
  %101 = phi i8* [ %99, %98 ], [ null, %95 ]
  %102 = tail call i8* @halide_string_to_string(i8* %96, i8* %101, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.52, i32 0, i32 0)) #5
  %103 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0
  %104 = load i8*, i8** %103, align 4, !tbaa !23
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = tail call i8* @halide_string_to_string(i8* %102, i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %110

108:                                              ; preds = %100
  %109 = tail call i8* @halide_string_to_string(i8* %102, i8* %101, i8* nonnull %104) #5
  br label %110

110:                                              ; preds = %106, %108
  %111 = phi i8* [ %109, %108 ], [ %107, %106 ]
  %112 = tail call i8* @halide_string_to_string(i8* %111, i8* %101, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0)) #5
  %113 = load i32 (%struct.mxArray*)*, i32 (%struct.mxArray*)** @_ZN6Halide7Runtime3mex12mxGetClassIDE, align 4, !tbaa !32
  %114 = tail call i32 %113(%struct.mxArray* %1) #5
  %115 = tail call i8* @_ZN6Halide7Runtime3mex14get_class_nameENS1_9mxClassIDE(i32 %114) #6
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = tail call i8* @halide_string_to_string(i8* %112, i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %121

119:                                              ; preds = %110
  %120 = tail call i8* @halide_string_to_string(i8* %112, i8* %101, i8* nonnull %115) #5
  br label %121

121:                                              ; preds = %117, %119
  %122 = phi i8* [ %120, %119 ], [ %118, %117 ]
  %123 = tail call i8* @halide_string_to_string(i8* %122, i8* %101, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #5
  br i1 %97, label %124, label %125

124:                                              ; preds = %121
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %132

125:                                              ; preds = %121
  %126 = ptrtoint i8* %123 to i32
  %127 = ptrtoint i8* %96 to i32
  %128 = add i32 %126, 1
  %129 = sub i32 %128, %127
  %130 = sext i32 %129 to i64
  %131 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %96, i64 %130) #5
  tail call void @halide_error(i8* %0, i8* nonnull %96) #5
  br label %132

132:                                              ; preds = %124, %125
  call void @free(i8* %96) #5
  br label %230

133:                                              ; preds = %92, %89
  %134 = load double (%struct.mxArray*)*, double (%struct.mxArray*)** @_ZN6Halide7Runtime3mex11mxGetScalarE, align 4, !tbaa !32
  %135 = tail call double %134(%struct.mxArray* %1) #5
  %136 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 3, i32 0
  %137 = load i8, i8* %136, align 4, !tbaa !21
  %138 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 3, i32 1
  %139 = load i8, i8* %138, align 1, !tbaa !22
  switch i8 %137, label %203 [
    i8 0, label %140
    i8 1, label %155
    i8 2, label %170
    i8 3, label %176
  ]

140:                                              ; preds = %133
  switch i8 %139, label %203 [
    i8 1, label %141
    i8 8, label %144
    i8 16, label %146
    i8 32, label %149
    i8 64, label %152
  ]

141:                                              ; preds = %140
  %142 = fcmp une double %135, 0.000000e+00
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %3, align 1, !tbaa !48
  br label %230

144:                                              ; preds = %140
  %145 = fptosi double %135 to i8
  store i8 %145, i8* %3, align 1, !tbaa !30
  br label %230

146:                                              ; preds = %140
  %147 = fptosi double %135 to i16
  %148 = bitcast i8* %3 to i16*
  store i16 %147, i16* %148, align 2, !tbaa !49
  br label %230

149:                                              ; preds = %140
  %150 = fptosi double %135 to i32
  %151 = bitcast i8* %3 to i32*
  store i32 %150, i32* %151, align 4, !tbaa !33
  br label %230

152:                                              ; preds = %140
  %153 = fptosi double %135 to i64
  %154 = bitcast i8* %3 to i64*
  store i64 %153, i64* %154, align 8, !tbaa !50
  br label %230

155:                                              ; preds = %133
  switch i8 %139, label %203 [
    i8 1, label %156
    i8 8, label %159
    i8 16, label %161
    i8 32, label %164
    i8 64, label %167
  ]

156:                                              ; preds = %155
  %157 = fcmp une double %135, 0.000000e+00
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %3, align 1, !tbaa !48
  br label %230

159:                                              ; preds = %155
  %160 = fptoui double %135 to i8
  store i8 %160, i8* %3, align 1, !tbaa !30
  br label %230

161:                                              ; preds = %155
  %162 = fptoui double %135 to i16
  %163 = bitcast i8* %3 to i16*
  store i16 %162, i16* %163, align 2, !tbaa !49
  br label %230

164:                                              ; preds = %155
  %165 = fptoui double %135 to i32
  %166 = bitcast i8* %3 to i32*
  store i32 %165, i32* %166, align 4, !tbaa !33
  br label %230

167:                                              ; preds = %155
  %168 = fptoui double %135 to i64
  %169 = bitcast i8* %3 to i64*
  store i64 %168, i64* %169, align 8, !tbaa !50
  br label %230

170:                                              ; preds = %133
  switch i8 %139, label %203 [
    i8 32, label %171
    i8 64, label %174
  ]

171:                                              ; preds = %170
  %172 = fptrunc double %135 to float
  %173 = bitcast i8* %3 to float*
  store float %172, float* %173, align 4, !tbaa !51
  br label %230

174:                                              ; preds = %170
  %175 = bitcast i8* %3 to double*
  store double %135, double* %175, align 8, !tbaa !53
  br label %230

176:                                              ; preds = %133
  %177 = tail call i8* @malloc(i32 1024) #5
  %178 = icmp eq i8* %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %177, i32 1023
  store i8 0, i8* %180, align 1, !tbaa !30
  br label %181

181:                                              ; preds = %176, %179
  %182 = phi i8* [ %180, %179 ], [ null, %176 ]
  %183 = tail call i8* @halide_string_to_string(i8* %177, i8* %182, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0)) #5
  %184 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0
  %185 = load i8*, i8** %184, align 4, !tbaa !23
  %186 = icmp eq i8* %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = tail call i8* @halide_string_to_string(i8* %183, i8* %182, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %191

189:                                              ; preds = %181
  %190 = tail call i8* @halide_string_to_string(i8* %183, i8* %182, i8* nonnull %185) #5
  br label %191

191:                                              ; preds = %187, %189
  %192 = phi i8* [ %190, %189 ], [ %188, %187 ]
  %193 = tail call i8* @halide_string_to_string(i8* %192, i8* %182, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i32 0, i32 0)) #5
  br i1 %178, label %194, label %195

194:                                              ; preds = %191
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %202

195:                                              ; preds = %191
  %196 = ptrtoint i8* %193 to i32
  %197 = ptrtoint i8* %177 to i32
  %198 = add i32 %196, 1
  %199 = sub i32 %198, %197
  %200 = sext i32 %199 to i64
  %201 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %177, i64 %200) #5
  tail call void @halide_error(i8* %0, i8* nonnull %177) #5
  br label %202

202:                                              ; preds = %195, %194
  tail call void @free(i8* %177) #5
  br label %230

203:                                              ; preds = %133, %155, %170, %140
  %204 = tail call i8* @malloc(i32 1024) #5
  %205 = icmp eq i8* %204, null
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds i8, i8* %204, i32 1023
  store i8 0, i8* %207, align 1, !tbaa !30
  br label %208

208:                                              ; preds = %203, %206
  %209 = phi i8* [ %207, %206 ], [ null, %203 ]
  %210 = tail call i8* @halide_string_to_string(i8* %204, i8* %209, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i32 0, i32 0)) #5
  %211 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %2, i32 0, i32 0
  %212 = load i8*, i8** %211, align 4, !tbaa !23
  %213 = icmp eq i8* %212, null
  br i1 %213, label %214, label %216

214:                                              ; preds = %208
  %215 = tail call i8* @halide_string_to_string(i8* %210, i8* %209, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %218

216:                                              ; preds = %208
  %217 = tail call i8* @halide_string_to_string(i8* %210, i8* %209, i8* nonnull %212) #5
  br label %218

218:                                              ; preds = %214, %216
  %219 = phi i8* [ %217, %216 ], [ %215, %214 ]
  %220 = tail call i8* @halide_string_to_string(i8* %219, i8* %209, i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.57, i32 0, i32 0)) #5
  br i1 %205, label %221, label %222

221:                                              ; preds = %218
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %229

222:                                              ; preds = %218
  %223 = ptrtoint i8* %220 to i32
  %224 = ptrtoint i8* %204 to i32
  %225 = add i32 %223, 1
  %226 = sub i32 %225, %224
  %227 = sext i32 %226 to i64
  %228 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %204, i64 %227) #5
  tail call void @halide_error(i8* %0, i8* nonnull %204) #5
  br label %229

229:                                              ; preds = %222, %221
  tail call void @free(i8* %204) #5
  br label %230

230:                                              ; preds = %88, %132, %229, %202, %174, %171, %167, %164, %161, %159, %156, %152, %149, %146, %144, %141, %33
  %231 = phi i32 [ -1, %33 ], [ -21, %132 ], [ -21, %88 ], [ -22, %229 ], [ 0, %152 ], [ 0, %149 ], [ 0, %146 ], [ 0, %144 ], [ 0, %141 ], [ 0, %167 ], [ 0, %164 ], [ 0, %161 ], [ 0, %159 ], [ 0, %156 ], [ 0, %174 ], [ 0, %171 ], [ -21, %202 ]
  ret i32 %231
}

; Function Attrs: nounwind
define weak i32 @halide_matlab_call_pipeline(i8* %0, i32 (i8**)* %1, %struct.halide_filter_metadata_t* %2, i32 %3, %struct.mxArray** %4, i32 %5, %struct.mxArray** %6) local_unnamed_addr #3 {
  %8 = alloca i32, align 4
  %9 = tail call i32 @halide_matlab_init(i8* %0) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %185

11:                                               ; preds = %7
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12)
  %13 = icmp sgt i32 %3, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.mxArray* (i32, i32, i32, i32)*, %struct.mxArray* (i32, i32, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_730E, align 4, !tbaa !32
  %16 = icmp eq %struct.mxArray* (i32, i32, i32, i32)* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call %struct.mxArray* %15(i32 1, i32 1, i32 12, i32 0) #5
  br label %22

19:                                               ; preds = %14
  %20 = load %struct.mxArray* (i32, i32, i32, i32)*, %struct.mxArray* (i32, i32, i32, i32)** @_ZN6Halide7Runtime3mex25mxCreateNumericMatrix_700E, align 4, !tbaa !32
  %21 = tail call %struct.mxArray* %20(i32 1, i32 1, i32 12, i32 0) #5
  br label %22

22:                                               ; preds = %17, %19
  %23 = phi %struct.mxArray* [ %18, %17 ], [ %21, %19 ]
  store %struct.mxArray* %23, %struct.mxArray** %4, align 4, !tbaa !32
  %24 = load i8* (%struct.mxArray*)*, i8* (%struct.mxArray*)** @_ZN6Halide7Runtime3mex9mxGetDataE, align 4, !tbaa !32
  %25 = tail call i8* %24(%struct.mxArray* %23) #5
  %26 = bitcast i8* %25 to i32*
  br label %27

27:                                               ; preds = %22, %11
  %28 = phi i32* [ %26, %22 ], [ %8, %11 ]
  store i32 -1, i32* %28, align 4, !tbaa !33
  %29 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i32 0, i32 1
  %30 = load i32, i32* %29, align 4, !tbaa !13
  %31 = icmp eq i32 %30, %5
  br i1 %31, label %69, label %32

32:                                               ; preds = %27
  %33 = icmp sgt i32 %5, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %32
  %35 = tail call i8* @malloc(i32 1024) #5
  %36 = icmp eq i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, i8* %35, i32 1023
  store i8 0, i8* %38, align 1, !tbaa !30
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi i8* [ %38, %37 ], [ null, %34 ]
  %41 = tail call i8* @halide_string_to_string(i8* %35, i8* %40, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0)) #5
  %42 = load i32, i32* %29, align 4, !tbaa !13
  %43 = sext i32 %42 to i64
  %44 = tail call i8* @halide_int64_to_string(i8* %41, i8* %40, i64 %43, i32 1) #5
  %45 = tail call i8* @halide_string_to_string(i8* %44, i8* %40, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i32 0, i32 0)) #5
  %46 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i32 0, i32 4
  %47 = load i8*, i8** %46, align 4, !tbaa !10
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = tail call i8* @halide_string_to_string(i8* %45, i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %53

51:                                               ; preds = %39
  %52 = tail call i8* @halide_string_to_string(i8* %45, i8* %40, i8* nonnull %47) #5
  br label %53

53:                                               ; preds = %49, %51
  %54 = phi i8* [ %52, %51 ], [ %50, %49 ]
  %55 = tail call i8* @halide_string_to_string(i8* %54, i8* %40, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0)) #5
  %56 = zext i32 %5 to i64
  %57 = tail call i8* @halide_int64_to_string(i8* %55, i8* %40, i64 %56, i32 1) #5
  %58 = tail call i8* @halide_string_to_string(i8* %57, i8* %40, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #5
  br i1 %36, label %59, label %60

59:                                               ; preds = %53
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %67

60:                                               ; preds = %53
  %61 = ptrtoint i8* %58 to i32
  %62 = ptrtoint i8* %35 to i32
  %63 = add i32 %61, 1
  %64 = sub i32 %63, %62
  %65 = sext i32 %64 to i64
  %66 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %35, i64 %65) #5
  tail call void @halide_error(i8* %0, i8* nonnull %35) #5
  br label %67

67:                                               ; preds = %59, %60
  call void @free(i8* %35) #5
  br label %68

68:                                               ; preds = %67, %32
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #6
  br label %183

69:                                               ; preds = %27
  %70 = icmp sgt i32 %3, 1
  br i1 %70, label %71, label %101

71:                                               ; preds = %69
  %72 = tail call i8* @malloc(i32 1024) #5
  %73 = icmp eq i8* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds i8, i8* %72, i32 1023
  store i8 0, i8* %75, align 1, !tbaa !30
  br label %76

76:                                               ; preds = %71, %74
  %77 = phi i8* [ %75, %74 ], [ null, %71 ]
  %78 = tail call i8* @halide_string_to_string(i8* %72, i8* %77, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.60, i32 0, i32 0)) #5
  %79 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i32 0, i32 4
  %80 = load i8*, i8** %79, align 4, !tbaa !10
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = tail call i8* @halide_string_to_string(i8* %78, i8* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %86

84:                                               ; preds = %76
  %85 = tail call i8* @halide_string_to_string(i8* %78, i8* %77, i8* nonnull %80) #5
  br label %86

86:                                               ; preds = %82, %84
  %87 = phi i8* [ %85, %84 ], [ %83, %82 ]
  %88 = tail call i8* @halide_string_to_string(i8* %87, i8* %77, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0)) #5
  %89 = zext i32 %3 to i64
  %90 = tail call i8* @halide_int64_to_string(i8* %88, i8* %77, i64 %89, i32 1) #5
  %91 = tail call i8* @halide_string_to_string(i8* %90, i8* %77, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #5
  br i1 %73, label %92, label %93

92:                                               ; preds = %86
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0)) #5
  br label %100

93:                                               ; preds = %86
  %94 = ptrtoint i8* %91 to i32
  %95 = ptrtoint i8* %72 to i32
  %96 = add i32 %94, 1
  %97 = sub i32 %96, %95
  %98 = sext i32 %97 to i64
  %99 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %72, i64 %98) #5
  tail call void @halide_error(i8* %0, i8* nonnull %72) #5
  br label %100

100:                                              ; preds = %92, %93
  call void @free(i8* %72) #5
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #6
  br label %183

101:                                              ; preds = %69
  %102 = shl i32 %5, 2
  %103 = alloca i8, i32 %102, align 8
  %104 = bitcast i8* %103 to i8**
  %105 = icmp sgt i32 %5, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = call i32 %1(i8** nonnull %104) #5
  store i32 %107, i32* %28, align 4, !tbaa !33
  br label %183

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i32 0, i32 2
  br label %110

110:                                              ; preds = %108, %152
  %111 = phi i32 [ 0, %108 ], [ %153, %152 ]
  %112 = getelementptr inbounds %struct.mxArray*, %struct.mxArray** %6, i32 %111
  %113 = load %struct.mxArray*, %struct.mxArray** %112, align 4, !tbaa !32
  %114 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %109, align 4, !tbaa !14
  %115 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %114, i32 %111
  %116 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %114, i32 %111, i32 1
  %117 = load i32, i32* %116, align 4, !tbaa !15
  %118 = add i32 %117, -1
  %119 = icmp ult i32 %118, 2
  br i1 %119, label %120, label %137

120:                                              ; preds = %110
  %121 = alloca %struct.halide_buffer_t, align 8
  %122 = bitcast %struct.halide_buffer_t* %121 to i8*
  %123 = call i8* @memset(i8* nonnull %122, i32 0, i32 40) #5
  %124 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %114, i32 %111, i32 2
  %125 = load i32, i32* %124, align 4, !tbaa !20
  %126 = shl i32 %125, 4
  %127 = alloca i8, i32 %126, align 8
  %128 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %121, i32 0, i32 6
  %129 = bitcast %struct.halide_dimension_t** %128 to i8**
  store i8* %127, i8** %129, align 8, !tbaa !40
  %130 = call i8* @memset(i8* nonnull %127, i32 0, i32 %126) #5
  %131 = call i32 @halide_matlab_array_to_halide_buffer_t(i8* %0, %struct.mxArray* %113, %struct.halide_filter_argument_t* nonnull %115, %struct.halide_buffer_t* nonnull %121) #6
  store i32 %131, i32* %28, align 4, !tbaa !33
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %120
  %134 = getelementptr inbounds i8*, i8** %104, i32 %111
  %135 = bitcast i8** %134 to %struct.halide_buffer_t**
  store %struct.halide_buffer_t* %121, %struct.halide_buffer_t** %135, align 4, !tbaa !32
  br label %152

136:                                              ; preds = %120
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #6
  br label %183

137:                                              ; preds = %110
  %138 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %114, i32 %111, i32 3, i32 1
  %139 = load i8, i8* %138, align 1, !tbaa !22
  %140 = zext i8 %139 to i32
  %141 = add nuw nsw i32 %140, 7
  %142 = lshr i32 %141, 3
  %143 = icmp ugt i32 %142, 8
  %144 = select i1 %143, i32 %142, i32 8
  %145 = alloca i8, i32 %144, align 8
  %146 = call i8* @memset(i8* nonnull %145, i32 0, i32 %144) #5
  %147 = call i32 @halide_matlab_array_to_scalar(i8* %0, %struct.mxArray* %113, %struct.halide_filter_argument_t* nonnull %115, i8* nonnull %145) #6
  store i32 %147, i32* %28, align 4, !tbaa !33
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %137
  %150 = getelementptr inbounds i8*, i8** %104, i32 %111
  store i8* %145, i8** %150, align 4, !tbaa !32
  br label %152

151:                                              ; preds = %137
  call void @halide_matlab_note_pipeline_description(i8* %0, %struct.halide_filter_metadata_t* nonnull %2) #6
  br label %183

152:                                              ; preds = %149, %133
  %153 = add nuw nsw i32 %111, 1
  %154 = icmp slt i32 %153, %5
  br i1 %154, label %110, label %155, !llvm.loop !55

155:                                              ; preds = %152
  %156 = call i32 %1(i8** nonnull %104) #5
  store i32 %156, i32* %28, align 4, !tbaa !33
  br i1 %105, label %157, label %183

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.halide_filter_metadata_t, %struct.halide_filter_metadata_t* %2, i32 0, i32 2
  br label %159

159:                                              ; preds = %157, %180
  %160 = phi i32 [ 0, %157 ], [ %181, %180 ]
  %161 = load %struct.halide_filter_argument_t*, %struct.halide_filter_argument_t** %158, align 4, !tbaa !14
  %162 = getelementptr inbounds %struct.halide_filter_argument_t, %struct.halide_filter_argument_t* %161, i32 %160, i32 1
  %163 = load i32, i32* %162, align 4, !tbaa !15
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = getelementptr inbounds i8*, i8** %104, i32 %160
  %167 = bitcast i8** %166 to %struct.halide_buffer_t**
  %168 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %167, align 4, !tbaa !32
  %169 = call i32 @halide_copy_to_host(i8* %0, %struct.halide_buffer_t* %168) #5
  %170 = load i32, i32* %162, align 4, !tbaa !15
  br label %171

171:                                              ; preds = %165, %159
  %172 = phi i32 [ %170, %165 ], [ %163, %159 ]
  %173 = add i32 %172, -1
  %174 = icmp ult i32 %173, 2
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = getelementptr inbounds i8*, i8** %104, i32 %160
  %177 = bitcast i8** %176 to %struct.halide_buffer_t**
  %178 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %177, align 4, !tbaa !32
  %179 = call i32 @halide_device_free(i8* %0, %struct.halide_buffer_t* %178) #5
  br label %180

180:                                              ; preds = %171, %175
  %181 = add nuw nsw i32 %160, 1
  %182 = icmp slt i32 %181, %5
  br i1 %182, label %159, label %183, !llvm.loop !56

183:                                              ; preds = %180, %106, %155, %151, %136, %100, %68
  %184 = load i32, i32* %28, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12)
  br label %185

185:                                              ; preds = %7, %183
  %186 = phi i32 [ %184, %183 ], [ %9, %7 ]
  ret i32 %186
}

declare i8* @memset(i8*, i32, i32) local_unnamed_addr #4

declare i32 @halide_copy_to_host(i8*, %struct.halide_buffer_t*) local_unnamed_addr #4

declare i32 @halide_device_free(i8*, %struct.halide_buffer_t*) local_unnamed_addr #4

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #4

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #4

declare i8* @malloc(i32) local_unnamed_addr #4

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
!3 = !{!4, !5, i64 4}
!4 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !8, i64 16, !6, i64 17}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"bool", !6, i64 0}
!9 = !{!4, !5, i64 8}
!10 = !{!11, !5, i64 16}
!11 = !{!"_ZTS24halide_filter_metadata_t", !12, i64 0, !12, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!12 = !{!"int", !6, i64 0}
!13 = !{!11, !12, i64 4}
!14 = !{!11, !5, i64 8}
!15 = !{!16, !12, i64 4}
!16 = !{!"_ZTS24halide_filter_argument_t", !5, i64 0, !12, i64 4, !12, i64 8, !17, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!17 = !{!"_ZTS13halide_type_t", !18, i64 0, !6, i64 1, !19, i64 2}
!18 = !{!"_ZTS18halide_type_code_t", !6, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = !{!16, !12, i64 8}
!21 = !{!16, !18, i64 12}
!22 = !{!16, !6, i64 13}
!23 = !{!16, !5, i64 0}
!24 = distinct !{!24, !25, !26}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.peeled.count", i32 1}
!27 = !{!4, !5, i64 12}
!28 = !{!4, !8, i64 16}
!29 = !{!4, !5, i64 0}
!30 = !{!6, !6, i64 0}
!31 = !{i8 0, i8 2}
!32 = !{!5, !5, i64 0}
!33 = !{!12, !12, i64 0}
!34 = distinct !{!34, !25}
!35 = !{!36, !5, i64 12}
!36 = !{!"_ZTS15halide_buffer_t", !37, i64 0, !5, i64 8, !5, i64 12, !37, i64 16, !17, i64 24, !12, i64 28, !5, i64 32, !5, i64 36}
!37 = !{!"long long", !6, i64 0}
!38 = !{!36, !12, i64 28}
!39 = !{!36, !37, i64 16}
!40 = !{!36, !5, i64 32}
!41 = !{!42, !12, i64 4}
!42 = !{!"_ZTS18halide_dimension_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!43 = distinct !{!43, !25}
!44 = !{!42, !12, i64 8}
!45 = distinct !{!45, !25}
!46 = distinct !{!46, !25}
!47 = distinct !{!47, !25}
!48 = !{!8, !8, i64 0}
!49 = !{!19, !19, i64 0}
!50 = !{!37, !37, i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !6, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"double", !6, i64 0}
!55 = distinct !{!55, !25}
!56 = distinct !{!56, !25}
