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
