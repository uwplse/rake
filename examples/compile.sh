#g++ $1 -g -I ~/Software/halide/include -I ~/Software/halide/tools -L ~/Software/halide/bin -lHalide `libpng-config --cflags --ldflags` -ljpeg -lpthread -ldl -o temp -std=c++11
#LD_LIBRARY_PATH=~/Software/halide/bin ./temp &> log.txt
#rm temp

#HALIDE_PATH=/home/maaz/Software/halide
HALIDE_PATH=/home/maaz/Desktop/Research/rake/halide

# Compile halide if there are any changes
cd $HALIDE_PATH && make && cd -

GENFILENAME=$(echo $(basename $1) | cut -f 1 -d '.')
GENFILEDIR=$(dirname $1)

OBJFILEPATH="$GENFILEDIR/$GENFILENAME.o"
OUTFILEPATH="$GENFILEDIR"

export HL_DEBUG_CODEGEN=0

g++ $1 $HALIDE_PATH/tools/GenGen.cpp -g -std=c++11 -fno-rtti -I $HALIDE_PATH/include -L $HALIDE_PATH/bin -lHalide -lpthread -ldl -lcurses -o $OBJFILEPATH -std=c++11 #&&

LD_LIBRARY_PATH=$HALIDE_PATH/bin $OBJFILEPATH -g $GENFILENAME -o $OUTFILEPATH target=hexagon-32-qurt-hvx_128 &&

rm "$GENFILEDIR/$GENFILENAME.a" &&
rm "$GENFILEDIR/$GENFILENAME.h" &&
rm "$GENFILEDIR/$GENFILENAME.o" &&
rm "$GENFILEDIR/$GENFILENAME.registration.cpp"
