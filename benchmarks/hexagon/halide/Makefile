HALIDE_DIR ?= ../../../../../Software/Halide-d48fbde/distrib

HEXAGON_SIM ?= /home/maaz/Qualcomm/Hexagon_SDK/3.5.2/tools/HEXAGON_Tools/8.3.07/Tools/bin/hexagon-sim
HEXAGON_CLANG ?= /home/maaz/Qualcomm/Hexagon_SDK/3.5.2/tools/HEXAGON_Tools/8.3.07/Tools/bin/hexagon-clang++

benchmarks = simple \
			 gaussian3x3 \
			 gaussian5x5 \
			 gaussian7x7 \
			 conv3x3a16 \
			 conv3x3a32 \
			 dilate3x3 \
			 median3x3 \
			 sobel3x3 \
			 add \
			 average_pool \
			 tile_conv \
			 conv \
			 depthwise_conv \
			 fully_connected \
			 l2norm \
			 max_pool \
			 softmax \
			 matmul \
			 blur3x3 \
			 camera_pipe

bin_dirs = $(addsuffix /bin,$(benchmarks))
out_dirs = $(addsuffix /out,$(benchmarks))
prof_dirs = $(addsuffix /profile,$(benchmarks))

.PHONY: clean all $(benchmarks)

all: $(benchmarks)

$(benchmarks): %: %/bin %/out %/profile
	g++ --std=c++11 -fno-rtti -O3 -DLOG2VLEN=7 \
		-I $(HALIDE_DIR)/include -I $(HALIDE_DIR)/tools \
		-g $@/src/$@_generator.cpp $(HALIDE_DIR)/tools/GenGen.cpp \
		-o $@/bin/$@_generator \
		-L $(HALIDE_DIR)/lib -lHalide -ldl -lpthread -lz -lrt -ltinfo

	export LD_LIBRARY_PATH=$(HALIDE_DIR)/lib; ./$@/bin/$@_generator \
		-o $@/bin \
		-g $@ -e static_library,stmt,h,llvm_assembly,assembly \
		-f $@_hvx128 target=hexagon-32-noos-no_bounds_query-no_asserts-hvx_128

	$(HEXAGON_CLANG) \
		-D$@  \
		--std=c++11 -mhvx -mv66 -mhvx-length=128B \
		-I $(HALIDE_DIR)/include -I ./$@/bin \
		test/run.cpp \
		test/stubs.cpp \
		$@/bin/$@_hvx128.a \
		$(HALIDE_DIR)/../src/runtime/hexagon_remote/bin/v62/libsim_qurt.a -lhexagon \
		-o $@/bin/$@_run.out

	#$(HEXAGON_SIM) -mv66 --memfill 0x0 --simulated_returnval --nullptr=2 --timing $@/bin/$@_run.out -- 1920 1080 ../test_vectors/football1920x1080.bin $@/out/out.bin
	
	rm -f pmu_statsfile.txt stats_dump.iss.0

$(prof_dirs) $(out_dirs) $(bin_dirs): %:
	mkdir $@

clean:
	rm -rf $(bin_dirs) $(out_dirs) $(prof_dirs) pmu_statsfile.txt stats_dump.iss.0