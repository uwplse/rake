rm -rf specs
rm -f expr_*.rkt

mkdir -p specs/gaussian3x3 &&
make gaussian3x3 &&
mv expr_*.rkt specs/gaussian3x3/ &&

mkdir -p specs/gaussian5x5 &&
make gaussian5x5 &&
mv expr_*.rkt specs/gaussian5x5/ &&

mkdir -p specs/gaussian7x7 &&
make gaussian7x7 &&
mv expr_*.rkt specs/gaussian7x7/ &&

mkdir -p specs/conv3x3a16 &&
make conv3x3a16 &&
mv expr_*.rkt specs/conv3x3a16/ &&

mkdir -p specs/conv3x3a32 &&
make conv3x3a32 &&
mv expr_*.rkt specs/conv3x3a32/ &&

mkdir -p specs/dilate3x3 &&
make dilate3x3 &&
mv expr_*.rkt specs/dilate3x3/ &&

mkdir -p specs/median3x3 &&
make median3x3 &&
mv expr_*.rkt specs/median3x3/ &&

mkdir -p specs/sobel3x3 &&
make sobel3x3 &&
mv expr_*.rkt specs/sobel3x3 &&

mkdir -p specs/blur3x3 &&
make blur3x3 &&
mv expr_*.rkt specs/blur3x3/ &&

mkdir -p specs/camera_pipe &&
make camera_pipe &&
mv expr_*.rkt specs/camera_pipe/ &&

mkdir -p specs/matmul &&
make matmul 
mv expr_*.rkt specs/matmul/ &&

mkdir -p specs/add &&
make add &&
mv expr_*.rkt specs/add/ &&

mkdir -p specs/mul &&
make mul 
mv expr_*.rkt specs/mul/ &&

mkdir -p specs/elementwise &&
make elementwise
mv expr_*.rkt specs/elementwise/ &&

mkdir -p specs/l2norm &&
make l2norm &&
mv expr_*.rkt specs/l2norm/ &&

mkdir -p specs/softmax &&
make softmax &&
mv expr_*.rkt specs/softmax/ &&

mkdir -p specs/mean &&
make mean &&
mv expr_*.rkt specs/mean/ &&

mkdir -p specs/max_pool &&
make max_pool &&
mv expr_*.rkt specs/max_pool/ &&

mkdir -p specs/average_pool &&
make average_pool &&
mv expr_*.rkt specs/average_pool/ &&

mkdir -p specs/fully_connected &&
make fully_connected 
mv expr_*.rkt specs/fully_connected/ &&

mkdir -p specs/conv_nn &&
make conv_nn
mv expr_*.rkt specs/conv_nn/ &&

mkdir -p specs/depthwise_conv &&
make depthwise_conv 
mv expr_*.rkt specs/depthwise_conv/