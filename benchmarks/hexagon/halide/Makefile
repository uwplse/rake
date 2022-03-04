HALIDE_DIR ?= /rake-halide/distrib

HEXAGON_SIM ?= /root/Qualcomm/Hexagon_SDK/3.5.2/tools/HEXAGON_Tools/8.3.07/Tools/bin/hexagon-sim
HEXAGON_CLANG ?= /root/Qualcomm/Hexagon_SDK/3.5.2/tools/HEXAGON_Tools/8.3.07/Tools/bin/hexagon-clang++

benchmarks = gaussian3x3 \
			 gaussian5x5 \
			 dilate3x3 \
			 median3x3 \
			 sobel3x3 \
			 blur3x3 \
			 matmul \
			 add \
			 mul \
			 l2norm \
			 max_pool \
			 average_pool \
			 conv_nn

bin_dirs = $(addsuffix /bin,$(benchmarks))
out_dirs = $(addsuffix /out,$(benchmarks))
prof_dirs = $(addsuffix /profile,$(benchmarks))

hannk = hannk/common_halide.cpp

sim=true

.PHONY: clean all $(benchmarks)

all: $(benchmarks)

$(benchmarks): %: %/bin %/out %/profile
	g++ --std=c++17 -fno-rtti -O3 -DLOG2VLEN=7 \
		-I $(HALIDE_DIR)/include -I $(HALIDE_DIR)/tools \
		-g $@/src/$@_generator.cpp $(HALIDE_DIR)/tools/GenGen.cpp \
		$(hannk) \
		-o $@/bin/$@_generator \
		-L $(HALIDE_DIR)/lib -lHalide $(shell llvm-config-12 --system-libs --link-static)

	export LD_LIBRARY_PATH=$(HALIDE_DIR)/lib; export HL_RAKE_BENCHMARK_NAME=$@; ./$@/bin/$@_generator \
		-o $@/bin \
		-g $@ \
		-e static_library,stmt,h,llvm_assembly,assembly \
		-f $@_hvx128 target=hexagon-32-noos-no_bounds_query-no_asserts-hvx_128-hvx_v66

ifeq ($(sim),true)
	$(HEXAGON_CLANG) \
		-D$@ \
		--std=c++17 -mhvx -mv66 -mhvx-length=128B \
		-I $(HALIDE_DIR)/include -I ./$@/bin \
		test/run.cpp \
		test/stubs.cpp \
		$@/bin/$@_hvx128.a \
		/rake-halide/src/runtime/hexagon_remote/bin/v65/libsim_qurt.a -lhexagon \
		-o $@/bin/$@_run.out

	$(HEXAGON_SIM) -mv66 --memfill 0x0 --simulated_returnval --nullptr=2 $@/bin/$@_run.out -- 1920 1080 ../test_vectors/football1920x1080.bin $@/out/out.bin

	rm -f pmu_statsfile.txt stats_dump.iss.0
endif

fully_connected: %: %/bin %/out %/profile
	g++ --std=c++17 -fno-rtti -O3 -DLOG2VLEN=7 \
		-I $(HALIDE_DIR)/include -I $(HALIDE_DIR)/tools \
		-g $@/src/$@_generator.cpp $(HALIDE_DIR)/tools/GenGen.cpp \
		$(hannk) \
		-o $@/bin/$@_generator \
		-L $(HALIDE_DIR)/lib -lHalide $(shell llvm-config-12 --system-libs --link-static)

	export LD_LIBRARY_PATH=$(HALIDE_DIR)/lib; export HL_RAKE_BENCHMARK_NAME=$@; ./$@/bin/$@_generator \
		-o $@/bin \
		-g $@ output.type=uint8 \
		-e static_library,stmt,h,llvm_assembly,assembly \
		-f $@_hvx128 target=hexagon-32-noos-no_bounds_query-no_asserts-hvx_128-hvx_v66

ifeq ($(sim),true)	
	$(HEXAGON_CLANG) \
		-D$@  \
		--std=c++17 -mhvx -mv66 -mhvx-length=128B \
		-I $(HALIDE_DIR)/include -I ./$@/bin \
		test/run.cpp \
		test/stubs.cpp \
		$@/bin/$@_hvx128.a \
		/rake-halide/src/runtime/hexagon_remote/bin/v65/libsim_qurt.a -lhexagon \
		-o $@/bin/$@_run.out

	$(HEXAGON_SIM) -mv66 --memfill 0x0 --simulated_returnval --nullptr=2 $@/bin/$@_run.out -- 1920 1080 ../test_vectors/football1920x1080.bin $@/out/out.bin
	
	rm -f pmu_statsfile.txt stats_dump.iss.0
endif

$(prof_dirs) $(out_dirs) $(bin_dirs): %:
	mkdir $@

fully_connected/profile fully_connected/out fully_connected/bin: %:
	mkdir $@

clean:
	rm -rf $(bin_dirs) $(out_dirs) $(prof_dirs) pmu_statsfile.txt stats_dump.iss.0