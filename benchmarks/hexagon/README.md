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

| ID  | Benchmark Name  | Spec File   | Can lift?          | Can sketch?        | Can swizzles?      | Can verify?        |
| :-: | :-------------- | :---------- | :----------------: | :----------------: | :----------------: | :----------------: |
| 1   | blur3x3         | expr_0.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 2   | blur3x3         | expr_1.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 3   | blur3x3         | expr_2.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 4   | blur3x3         | expr_3.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 5   | camera_pipe     | expr_0.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 6   | camera_pipe     | expr_1.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 7   | camera_pipe     | expr_10.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 8   | camera_pipe     | expr_11.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 9   | camera_pipe     | expr_12.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 10  | camera_pipe     | expr_13.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 11  | camera_pipe     | expr_14.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 12  | camera_pipe     | expr_15.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 13  | camera_pipe     | expr_16.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 14  | camera_pipe     | expr_17.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 15  | camera_pipe     | expr_18.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 16  | camera_pipe     | expr_19.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 17  | camera_pipe     | expr_2.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 18  | camera_pipe     | expr_20.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 19  | camera_pipe     | expr_21.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 20  | camera_pipe     | expr_22.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 21  | camera_pipe     | expr_23.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 22  | camera_pipe     | expr_24.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 23  | camera_pipe     | expr_25.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 24  | camera_pipe     | expr_26.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 25  | camera_pipe     | expr_27.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 26  | camera_pipe     | expr_3.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 27  | camera_pipe     | expr_4.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 28  | camera_pipe     | expr_5.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 29  | camera_pipe     | expr_6.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 30  | camera_pipe     | expr_7.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 31  | camera_pipe     | expr_8.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 32  | camera_pipe     | expr_9.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 33  | conv3x3a16      | expr_0.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 34  | conv3x3a16      | expr_1.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 35  | conv3x3a16      | expr_2.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 36  | conv3x3a16      | expr_3.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 37  | conv3x3a16      | expr_4.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 38  | conv3x3a16      | expr_5.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 39  | conv3x3a16      | expr_6.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 40  | conv3x3a16      | expr_7.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 41  | conv3x3a32      | expr_0.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 42  | conv3x3a32      | expr_1.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 43  | conv3x3a32      | expr_2.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 44  | conv3x3a32      | expr_3.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 45  | conv3x3a32      | expr_4.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 46  | conv3x3a32      | expr_5.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 47  | conv3x3a32      | expr_6.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 48  | conv3x3a32      | expr_7.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 49  | dilate3x3       | expr_0.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 50  | dilate3x3       | expr_1.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 51  | dilate3x3       | expr_10.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 52  | dilate3x3       | expr_11.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 53  | dilate3x3       | expr_2.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 54  | dilate3x3       | expr_3.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 55  | dilate3x3       | expr_4.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 56  | dilate3x3       | expr_5.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 57  | dilate3x3       | expr_6.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 58  | dilate3x3       | expr_7.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 59  | dilate3x3       | expr_8.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 60  | dilate3x3       | expr_9.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 61  | gaussian3x3     | expr_0.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 62  | gaussian3x3     | expr_1.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 63  | gaussian3x3     | expr_2.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 64  | gaussian3x3     | expr_3.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 65  | gaussian5x5     | expr_0.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 66  | gaussian5x5     | expr_1.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 67  | gaussian5x5     | expr_10.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 68  | gaussian5x5     | expr_11.rkt | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 69  | gaussian5x5     | expr_2.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 70  | gaussian5x5     | expr_3.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 71  | gaussian5x5     | expr_4.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 72  | gaussian5x5     | expr_5.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 73  | gaussian5x5     | expr_6.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 74  | gaussian5x5     | expr_7.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 75  | gaussian5x5     | expr_8.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 76  | gaussian5x5     | expr_9.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 77  | gaussian7x7     | expr_0.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 78  | gaussian7x7     | expr_1.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 79  | gaussian7x7     | expr_2.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 80  | gaussian7x7     | expr_3.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 81  | gaussian7x7     | expr_4.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 82  | gaussian7x7     | expr_5.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 83  | gaussian7x7     | expr_6.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 84  | gaussian7x7     | expr_7.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 85  | matmul          | expr_0.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 86  | matmul          | expr_1.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 87  | matmul          | expr_2.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 88  | matmul          | expr_3.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 89  | matmul          | expr_4.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 90  | matmul          | expr_5.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 91  | matmul          | expr_6.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 92  | matmul          | expr_7.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 93  | matmul          | expr_8.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 94  | matmul          | expr_9.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 95  | median3x3       | expr_0.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 96  | median3x3       | expr_1.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 97  | median3x3       | expr_2.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 98  | median3x3       | expr_3.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 99  | median3x3       | expr_4.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 100 | median3x3       | expr_5.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 101 | median3x3       | expr_6.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 102 | median3x3       | expr_7.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 103 | median3x3       | expr_8.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 104 | median3x3       | expr_9.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 105 | sobel3x3        | expr_0.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 106 | sobel3x3        | expr_1.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 107 | sobel3x3        | expr_2.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 108 | sobel3x3        | expr_3.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 109 | sobel3x3        | expr_4.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 110 | sobel3x3        | expr_5.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 111 | sobel3x3        | expr_6.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |
| 112 | sobel3x3        | expr_7.rkt  | :heavy_check_mark: | :x:                | :x:                | :x:                |



| ID  | Benchmark Name  | Spec File   | Lift time |
| :-: | :-------------- | :---------- | :-------: |
| 1   | blur3x3         | expr_0.rkt  |        9s |
| 2   | blur3x3         | expr_1.rkt  |        9s |
| 3   | blur3x3         | expr_2.rkt  |        9s |
| 4   | blur3x3         | expr_3.rkt  |        9s |
| 5   | camera_pipe     | expr_0.rkt  |       12s |
| 6   | camera_pipe     | expr_1.rkt  |       12s |
| 7   | camera_pipe     | expr_10.rkt |      319s |
| 8   | camera_pipe     | expr_11.rkt |        7s |
| 9   | camera_pipe     | expr_12.rkt |       50s |
| 10  | camera_pipe     | expr_13.rkt |       50s |
| 11  | camera_pipe     | expr_14.rkt |        7s |
| 12  | camera_pipe     | expr_15.rkt |      317s |
| 13  | camera_pipe     | expr_16.rkt |       19s |
| 14  | camera_pipe     | expr_17.rkt |       19s |
| 15  | camera_pipe     | expr_18.rkt |       19s |
| 16  | camera_pipe     | expr_19.rkt |       15s |
| 17  | camera_pipe     | expr_2.rkt  |       12s |
| 18  | camera_pipe     | expr_20.rkt |       15s |
| 19  | camera_pipe     | expr_21.rkt |       15s |
| 20  | camera_pipe     | expr_22.rkt |       15s |
| 21  | camera_pipe     | expr_23.rkt |       15s |
| 22  | camera_pipe     | expr_24.rkt |       15s |
| 23  | camera_pipe     | expr_25.rkt |       62s |
| 24  | camera_pipe     | expr_26.rkt |       65s |
| 25  | camera_pipe     | expr_27.rkt |       63s |
| 26  | camera_pipe     | expr_3.rkt  |       12s |
| 27  | camera_pipe     | expr_4.rkt  |        7s |
| 28  | camera_pipe     | expr_5.rkt  |        7s |
| 29  | camera_pipe     | expr_6.rkt  |        7s |
| 30  | camera_pipe     | expr_7.rkt  |        7s |
| 31  | camera_pipe     | expr_8.rkt  |       32s |
| 32  | camera_pipe     | expr_9.rkt  |       32s |
| 33  | conv3x3a16      | expr_0.rkt  |       10s |
| 34  | conv3x3a16      | expr_1.rkt  |        7s |
| 35  | conv3x3a16      | expr_2.rkt  |       11s |
| 36  | conv3x3a16      | expr_3.rkt  |       11s |
| 37  | conv3x3a16      | expr_4.rkt  |       36s |
| 38  | conv3x3a16      | expr_5.rkt  |       36s |
| 39  | conv3x3a16      | expr_6.rkt  |       36s |
| 40  | conv3x3a16      | expr_7.rkt  |       36s |
| 41  | conv3x3a32      | expr_0.rkt  |       10s |
| 42  | conv3x3a32      | expr_1.rkt  |        8s |
| 43  | conv3x3a32      | expr_2.rkt  |       11s |
| 44  | conv3x3a32      | expr_3.rkt  |       11s |
| 45  | conv3x3a32      | expr_4.rkt  |       53s |
| 46  | conv3x3a32      | expr_5.rkt  |       54s |
| 47  | conv3x3a32      | expr_6.rkt  |       51s |
| 48  | conv3x3a32      | expr_7.rkt  |       51s |
| 49  | dilate3x3       | expr_0.rkt  |       11s |
| 50  | dilate3x3       | expr_1.rkt  |       11s |
| 51  | dilate3x3       | expr_10.rkt |       25s |
| 52  | dilate3x3       | expr_11.rkt |       25s |
| 53  | dilate3x3       | expr_2.rkt  |       11s |
| 54  | dilate3x3       | expr_3.rkt  |       11s |
| 55  | dilate3x3       | expr_4.rkt  |       25s |
| 56  | dilate3x3       | expr_5.rkt  |       25s |
| 57  | dilate3x3       | expr_6.rkt  |       25s |
| 58  | dilate3x3       | expr_7.rkt  |       25s |
| 59  | dilate3x3       | expr_8.rkt  |       24s |
| 60  | dilate3x3       | expr_9.rkt  |       25s |
| 61  | gaussian3x3     | expr_0.rkt  |       27s |
| 62  | gaussian3x3     | expr_1.rkt  |       27s |
| 63  | gaussian3x3     | expr_2.rkt  |       27s |
| 64  | gaussian3x3     | expr_3.rkt  |       27s |
| 65  | gaussian5x5     | expr_0.rkt  |       10s |
| 66  | gaussian5x5     | expr_1.rkt  |        7s |
| 67  | gaussian5x5     | expr_10.rkt |       20s |
| 68  | gaussian5x5     | expr_11.rkt |       20s |
| 69  | gaussian5x5     | expr_2.rkt  |       12s |
| 70  | gaussian5x5     | expr_3.rkt  |       10s |
| 71  | gaussian5x5     | expr_4.rkt  |       11s |
| 72  | gaussian5x5     | expr_5.rkt  |       11s |
| 73  | gaussian5x5     | expr_6.rkt  |       11s |
| 74  | gaussian5x5     | expr_7.rkt  |       11s |
| 75  | gaussian5x5     | expr_8.rkt  |       20s |
| 76  | gaussian5x5     | expr_9.rkt  |       20s |
| 77  | gaussian7x7     | expr_0.rkt  |       17s |
| 78  | gaussian7x7     | expr_1.rkt  |       17s |
| 79  | gaussian7x7     | expr_2.rkt  |       17s |
| 80  | gaussian7x7     | expr_3.rkt  |       17s |
| 81  | gaussian7x7     | expr_4.rkt  |       26s |
| 82  | gaussian7x7     | expr_5.rkt  |       27s |
| 83  | gaussian7x7     | expr_6.rkt  |       27s |
| 84  | gaussian7x7     | expr_7.rkt  |       27s |
| 85  | matmul          | expr_0.rkt  |        8s |
| 86  | matmul          | expr_1.rkt  |        8s |
| 87  | matmul          | expr_2.rkt  |       15s |
| 88  | matmul          | expr_3.rkt  |       15s |
| 89  | matmul          | expr_4.rkt  |       15s |
| 90  | matmul          | expr_5.rkt  |       15s |
| 91  | matmul          | expr_6.rkt  |      415s |
| 92  | matmul          | expr_7.rkt  |      376s |
| 93  | matmul          | expr_8.rkt  |      373s |
| 94  | matmul          | expr_9.rkt  |      377s |
| 95  | median3x3       | expr_0.rkt  |       11s |
| 96  | median3x3       | expr_1.rkt  |       11s |
| 97  | median3x3       | expr_2.rkt  |       79s |
| 98  | median3x3       | expr_3.rkt  |       78s |
| 99  | median3x3       | expr_4.rkt  |       79s |
| 100 | median3x3       | expr_5.rkt  |       80s |
| 101 | median3x3       | expr_6.rkt  |       77s |
| 102 | median3x3       | expr_7.rkt  |       77s |
| 103 | median3x3       | expr_8.rkt  |       78s |
| 104 | median3x3       | expr_9.rkt  |       77s |
| 105 | sobel3x3        | expr_0.rkt  |       11s |
| 106 | sobel3x3        | expr_1.rkt  |       11s |
| 107 | sobel3x3        | expr_2.rkt  |       12s |
| 108 | sobel3x3        | expr_3.rkt  |       11s |
| 109 | sobel3x3        | expr_4.rkt  |       37s |
| 110 | sobel3x3        | expr_5.rkt  |       33s |
| 111 | sobel3x3        | expr_6.rkt  |       31s |
| 112 | sobel3x3        | expr_7.rkt  |       33s |
