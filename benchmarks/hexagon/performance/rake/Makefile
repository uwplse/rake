#HALIDE_DIR ?= ../../../../Halide-10.0.0
HALIDE_DIR ?= /home/maaz/Desktop/Research/rake-old/halide/distrib

HEXAGON_SIM ?= /home/maaz/Qualcomm/Hexagon_SDK/3.5.2/tools/HEXAGON_Tools/8.3.07/Tools/bin/hexagon-sim
HEXAGON_CLANG ?= /home/maaz/Qualcomm/Hexagon_SDK/3.5.2/tools/HEXAGON_Tools/8.3.07/Tools/bin/hexagon-clang++

benchmarks = gaussian3x3 gaussian5x5 gaussian7x7 conv3x3a16 conv3x3a32 sobel3x3 blur3x3 dilate3x3 median3x3

bin_dirs = $(addsuffix /bin,$(benchmarks))
out_dirs = $(addsuffix /out,$(benchmarks))
prof_dirs = $(addsuffix /profile,$(benchmarks))

.PHONY: clean all $(benchmarks)

all: $(benchmarks)

$(benchmarks): %: %/bin %/out %/profile
	g++ --std=c++11 -DLOG2VLEN=7 -I $(HALIDE_DIR)/include -I $(HALIDE_DIR)/tools -fno-rtti -O3 -g $@/src/$@_generator.cpp $(HALIDE_DIR)/tools/GenGen.cpp -o $@/bin/$@_generator -L $(HALIDE_DIR)/lib -lHalide -ldl -lpthread -lz -lrt -ltinfo

	export LD_LIBRARY_PATH=$(HALIDE_DIR)/lib; ./$@/bin/$@_generator -o $@/bin -g $@ -e static_library,stmt,h -f $@_hvx128 target=host-hvx_128

$(prof_dirs) $(out_dirs) $(bin_dirs): %:
	mkdir $@

clean:
	rm -rf $(bin_dirs) $(out_dirs) $(prof_dirs) pmu_statsfile.txt stats_dump.iss.0