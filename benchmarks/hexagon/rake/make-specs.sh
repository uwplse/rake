rm -rf specs
rm -f expr_*.rkt

mkdir -p specs/gaussian3x3
make gaussian3x3
mv expr_*.rkt specs/gaussian3x3/

mkdir -p specs/gaussian5x5
make gaussian5x5
mv expr_*.rkt specs/gaussian5x5/

mkdir -p specs/gaussian7x7
make gaussian7x7
mv expr_*.rkt specs/gaussian7x7/

mkdir -p specs/conv3x3a16
make conv3x3a16
mv expr_*.rkt specs/conv3x3a16/

mkdir -p specs/conv3x3a32
make conv3x3a32
mv expr_*.rkt specs/conv3x3a32/

mkdir -p specs/dilate3x3
make dilate3x3
mv expr_*.rkt specs/dilate3x3/

mkdir -p specs/median3x3
make median3x3
mv expr_*.rkt specs/median3x3/

mkdir -p specs/sobel3x3
make sobel3x3
mv expr_*.rkt specs/sobel3x3

mkdir -p specs/blur3x3
make blur3x3
mv expr_*.rkt specs/blur3x3/

mkdir -p specs/camera_pipe
make camera_pipe
mv expr_*.rkt specs/camera_pipe/
