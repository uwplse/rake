## Benchmarks

Benchmark Name  | Category | Brief Description
--------------- | -------- | -----------------
gaussian3x3     | Image Processing | Performs a 3x3 gaussian filter (8-bit input, 16-bit accum, 8-bit output)
gaussian5x5     | Image Processing | Performs a 5x5 gaussian filter (8-bit input, 16-bit accum, 8-bit output)
gaussian7x7     | Image Processing | Performs a 7x7 gaussian filter (8-bit input, 32-bit accum, 8-bit output)
conv3x3a16      | Image Processing | Performs a general 3x3 convolution (8-bit input, 16-bit accum, 8-bit output)
conv3x3a32      | Image Processing | Performs a general 3x3 convolution (8-bit input, 32-bit accum, 8-bit output)
dilate3x3       | Image Processing | Performs a 3x3 dilate filter (8-bit input, 8-bit output)
median3x3       | Image Processing | Performs a 3x3 median filter (8-bit input, 8-bit output)
sobel3x3        | Image Processing | Performs a 3x3 sobel filter (8-bit input, 16-bit intermediate, 8-bit output)
blur3x3         | Image Processing | Performs a 3x3 box-blur filter (8-bit input, 8-bit intermediate, 8-bit output)
camera_pipe     | Image Processing | The Frankencamera pipeline for processing raw data from an image sensor into a color image
average_pool    | Machine Learning | Please add
conv_nn         | Machine Learning | Please add
depthwise_conv  | Machine Learning | Please add
add_gen         | Machine Learning | Please add
fully_connected | Machine Learning | Please add
l2norm          | Machine Learning | Please add
maxpool         | Machine Learning | Please add
softmax         | Machine Learning | Please add
matmul          | Machine Learning | Performs a quantized matrix multiplication

## Runtime Performance Results
Not yet available

## Synthesis Results

| ID | Benchmark Name  | Spec File   | Can lift?  | Can sketch? | Can swizzles? | Can verify? |
|:--:|:--------------  | :---------- | :--------: | :--------------------: | :----------------------: | :---------:
| 1  | gaussian3x3     | expr_0.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 2  |                 | expr_1.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 3  |                 | expr_2.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 4  |                 | expr_3.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 5  | gaussian5x5     | expr_0.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 6  |                 | expr_1.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 7  |                 | expr_2.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 8  |                 | expr_3.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 9  |                 | expr_4.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 19 |                 | expr_5.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 11 |                 | expr_6.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 12 |                 | expr_7.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 13 | gaussian7x7     | expr_0.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 14 |                 | expr_1.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 15 |                 | expr_2.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 16 |                 | expr_3.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 17 |                 | expr_4.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 18 |                 | expr_5.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 19 |                 | expr_6.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 20 |                 | expr_7.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 21 | conv3x3a16      | expr_0.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 22 |                 | expr_1.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 23 |                 | expr_2.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 24 |                 | expr_3.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 25 | conv3x3a32      | expr_0.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 26 |                 | expr_1.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 27 |                 | expr_2.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 28 |                 | expr_3.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 29 | dilate3x3       | expr_0.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 30 |                 | expr_1.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 31 |                 | expr_2.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 32 |                 | expr_3.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 33 |                 | expr_4.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 34 |                 | expr_5.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 35 |                 | expr_6.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 36 |                 | expr_7.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 37 | median3x3       | expr_0.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 38 |                 | expr_1.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 39 |                 | expr_2.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 40 |                 | expr_3.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 41 |                 | expr_4.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 42 |                 | expr_5.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 43 |                 | expr_6.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 44 |                 | expr_7.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 45 | sobel3x3        | expr_0.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 46 |                 | expr_1.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 47 |                 | expr_2.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 48 |                 | expr_3.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 49 | blur3x3         | expr_0.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 50 |                 | expr_1.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 51 |                 | expr_2.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 52 |                 | expr_3.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 53 | camera_pipe     | expr_0.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 54 |                 | expr_1.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 55 |                 | expr_2.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 56 |                 | expr_3.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 57 |                 | expr_4.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 58 |                 | expr_5.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 59 |                 | expr_6.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 60 |                 | expr_7.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 61 |                 | expr_8.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 62 |                 | expr_9.rkt  | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 63 |                 | expr_10.rkt | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 64 |                 | expr_11.rkt | :heavy_check_mark: | :x:           | :x:                      | :x:       |
| 65 |                 | expr_12.rkt | :x: | :x:           | :x:                      | :x:       |
| 66 |                 | expr_13.rkt | :x: | :x:           | :x:                      | :x:       |
| 67 |                 | expr_14.rkt | :x: | :x:           | :x:                      | :x:       |
| 68 |                 | expr_15.rkt | :x: | :x:           | :x:                      | :x:       |
| 69 |                 | expr_16.rkt | :x: | :x:           | :x:                      | :x:       |
| 70 |                 | expr_17.rkt | :x: | :x:           | :x:                      | :x:       |
| 71 |                 | expr_18.rkt | :x: | :x:           | :x:                      | :x:       |
| 72 |                 | expr_19.rkt | :x: | :x:           | :x:                      | :x:       |
| 73 |                 | expr_20.rkt | :x: | :x:           | :x:                      | :x:       |
| 74 |                 | expr_21.rkt | :x: | :x:           | :x:                      | :x:       |
| 75 |                 | expr_22.rkt | :x: | :x:           | :x:                      | :x:       |
| 76 |                 | expr_23.rkt | :x: | :x:           | :x:                      | :x:       |
| 77 |                 | expr_24.rkt | :x: | :x:           | :x:                      | :x:       |
| 78 |                 | expr_25.rkt | :x: | :x:           | :x:                      | :x:       |
| 79 |                 | expr_26.rkt | :x: | :x:           | :x:                      | :x:       |
| 90 |                 | expr_27.rkt | :x: | :x:           | :x:                      | :x:       |
