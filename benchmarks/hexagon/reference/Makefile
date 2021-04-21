HEADERS = /home/maaz/Qualcomm/Hexagon_SDK/3.5.2/tools/HEXAGON_Tools/8.3.07/Examples/HVX/common/include

benchmarks = gaussian3x3 gaussian5x5 gaussian7x7 conv3x3a16 conv3x3a32 sobel3x3  

bin_dirs = $(addsuffix /bin,$(benchmarks))
out_dirs = $(addsuffix /out,$(benchmarks))

.PHONY: clean all $(benchmarks)

all: $(benchmarks)

$(benchmarks): %: %/bin %/out
	g++ -Wall -O3 -c -o $@/bin/$@_ref.o $@/src/$@_ref.c
	g++ -Wall -O3 -DLOG2VLEN=7 -D $@ -I $@/include -I $(HEADERS) -o $@/bin/$@_run.o -c test/run.cpp
	g++ -o $@/bin/$@.exe ./$@/bin/$@_run.o ./$@/bin/$@_ref.o -lm
	./$@/bin/$@.exe 1920 1080 ../test_vectors/football1920x1080.bin ./$@/out/$@_output.bin

$(out_dirs) $(bin_dirs): %:
	mkdir $@

clean:
	rm -rf $(bin_dirs) $(out_dirs)