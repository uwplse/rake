#HALIDE_DIR ?= /home/maaz/Software/Halide-10.0.0/distrib
#HALIDE_DIR ?= /home/maaz/Desktop/Research/rake-old/halide/distrib
HALIDE_DIR ?= /home/maaz/Qualcomm/Hexagon_SDK/3.5.2/tools/HALIDE_Tools/2.2.03/Halide
HEXAGON_SIM ?= /home/maaz/Qualcomm/Hexagon_SDK/3.5.2/tools/HEXAGON_Tools/8.3.07/Tools/bin/hexagon-sim
HEXAGON_CLANG ?= /home/maaz/Qualcomm/Hexagon_SDK/3.5.2/tools/HEXAGON_Tools/8.3.07/Tools/bin/hexagon-clang++

benchmarks = gaussian3x3 gaussian5x5 gaussian7x7 conv3x3a16 conv3x3a32 sobel3x3 blur3x3 dilate3x3 median3x3

bin_dirs = $(addsuffix /bin,$(benchmarks))
out_dirs = $(addsuffix /out,$(benchmarks))
prof_dirs = $(addsuffix /profile,$(benchmarks))

.PHONY: clean all $(benchmarks)

all: $(benchmarks)

$(benchmarks): %: %/bin %/out %/profile
	g++-4.8 --std=c++11 -DLOG2VLEN=7 -I $(HALIDE_DIR)/include -I $(HALIDE_DIR)/tools -fno-rtti -O3 -g $@/src/$@_generator.cpp $(HALIDE_DIR)/tools/GenGen.cpp -o $@/bin/$@_generator -L $(HALIDE_DIR)/lib -lHalide -ldl -lpthread -lz -lrt -ltinfo

	export LD_LIBRARY_PATH=$(HALIDE_DIR)/lib; ./$@/bin/$@_generator -o $@/bin -g $@ -e static_library,stmt,h -f $@_hvx128 target=hexagon-32-noos-no_bounds_query-no_asserts-hvx_128

	$(HEXAGON_CLANG) -D $@ --std=c++11 -c -mhvx -mhvx-length=128B -mv66 -DLOG2VLEN=7 -I $(HALIDE_DIR)/include -I ./$@/bin -I ./baseline  test/run.cpp -o $@/bin/$@_run.o

	$(HEXAGON_CLANG) -mhvx -mhvx-length=128B -mv66 -DLOG2VLEN=7 $@/bin/$@_run.o $@/bin/$@_hvx128.a -lhexagon -L $(HALIDE_DIR)/lib -lsim_qurt $(HALIDE_DIR)/Examples/support/stubs.c -o $@/bin/$@.out

	$(HEXAGON_SIM) $@/bin/$@.out -mv66 --memfill 0x0 --simulated_returnval --nullptr=2 --timing --packet_analyze $@/profile/$@.json -- 1920 1080 ../test_vectors/football1920x1080.bin $@/out/out.bin
	rm pmu_statsfile.txt stats_dump.iss.0

$(prof_dirs) $(out_dirs) $(bin_dirs): %:
	mkdir $@

clean:
	rm -rf $(bin_dirs) $(out_dirs) $(prof_dirs) pmu_statsfile.txt stats_dump.iss.0