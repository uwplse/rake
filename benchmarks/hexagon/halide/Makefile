HALIDE_DIR ?= ../../../../rake-halide/distrib
#HALIDE_DIR ?= ../../../../../Software/Halide-12.0.1/distrib

HEXAGON_SIM ?= ../../../../../../software/Qualcomm/Hexagon_SDK/3.5.2/tools/HEXAGON_Tools/8.3.07/Tools/bin/hexagon-sim
HEXAGON_CLANG ?= ../../../../../../software//Qualcomm/Hexagon_SDK/3.5.2/tools/HEXAGON_Tools/8.3.07/Tools/bin/hexagon-clang++

benchmarks = simple \
			 gaussian3x3 \
			 gaussian5x5 \
			 gaussian5x5_sdk \
			 gaussian7x7 \
			 gaussian7x7_sdk \
			 conv3x3a16 \
			 conv3x3a16_sdk \
			 conv3x3a32 \
			 conv3x3a32_sdk \
			 dilate3x3 \
			 median3x3 \
			 sobel3x3 \
			 sobel3x3_sdk \
			 blur3x3 \
			 camera_pipe \
			 matmul \
			 add \
			 mul \
			 l2norm \
			 softmax \
			 mean \
			 max_pool \
			 average_pool \
			 tile_conv \
			 conv_nn \
			 depthwise_conv \
			 debug
			 

bin_dirs = $(addsuffix /bin,$(benchmarks))
out_dirs = $(addsuffix /out,$(benchmarks))
prof_dirs = $(addsuffix /profile,$(benchmarks))

hannk = hannk/common_halide.cpp \
	    hannk/interpreter/elementwise_program.cpp

sim=false

.PHONY: clean all $(benchmarks) elementwise

all: $(benchmarks)

$(benchmarks): %: %/bin %/out %/profile
	g++ --std=c++17 -fno-rtti -O3 -DLOG2VLEN=7 \
		-I $(HALIDE_DIR)/include -I $(HALIDE_DIR)/tools \
		-g $@/src/$@_generator.cpp $(HALIDE_DIR)/tools/GenGen.cpp \
		$(hannk) \
		-o $@/bin/$@_generator \
		-L $(HALIDE_DIR)/lib -lHalide $(shell $(llvm-config) --system-libs --link-static)

	export LD_LIBRARY_PATH=$(HALIDE_DIR)/lib; ./$@/bin/$@_generator \
		-o $@/bin \
		-g $@ -e static_library,stmt,h,llvm_assembly,assembly \
		-f $@_hvx128 target=hexagon-32-noos-no_bounds_query-no_asserts-hvx_128-hvx_v66

ifeq ($(sim),true)
	$(HEXAGON_CLANG) \
		-D$@ \
		--std=c++17 -mhvx -mv66 -mhvx-length=128B \
		-I $(HALIDE_DIR)/include -I ./$@/bin \
		test/run.cpp \
		test/stubs.cpp \
		$@/bin/$@_hvx128.a \
		$(HALIDE_DIR)/../src/runtime/hexagon_remote/bin/v65/libsim_qurt.a -lhexagon \
		-o $@/bin/$@_run.out;

	$(HEXAGON_SIM) -mv66 --memfill 0x0 --simulated_returnval --nullptr=2 --timing $@/bin/$@_run.out -- 1920 1080 ../test_vectors/football1920x1080.bin $@/out/out.bin

	rm -f pmu_statsfile.txt stats_dump.iss.0
endif

elementwise: %: %/bin %/out %/profile
	g++ --std=c++17 -fno-rtti -O3 -DLOG2VLEN=7 \
		-I $(HALIDE_DIR)/include -I $(HALIDE_DIR)/tools \
		-g $@/src/$@_generator.cpp $(HALIDE_DIR)/tools/GenGen.cpp \
		$(hannk) \
		-o $@/bin/$@_generator \
		-L $(HALIDE_DIR)/lib -lHalide $(shell $(llvm-config) --system-libs --link-static)

	export LD_LIBRARY_PATH=$(HALIDE_DIR)/lib; ./$@/bin/$@_generator \
		-o $@/bin \
		-g $@ inputs.size=5 inputs.type=uint8 output1_type=uint8\
		-e static_library,stmt,h,llvm_assembly,assembly \
		-f $@_hvx128 target=hexagon-32-noos-no_bounds_query-no_asserts-hvx_128-hvx_v66
	
	rm -f pmu_statsfile.txt stats_dump.iss.0

fully_connected: %: %/bin %/out %/profile
	g++ --std=c++17 -fno-rtti -O3 -DLOG2VLEN=7 \
		-I $(HALIDE_DIR)/include -I $(HALIDE_DIR)/tools \
		-g $@/src/$@_generator.cpp $(HALIDE_DIR)/tools/GenGen.cpp \
		$(hannk) \
		-o $@/bin/$@_generator \
		-L $(HALIDE_DIR)/lib -lHalide $(shell $(llvm-config) --system-libs --link-static)

	export LD_LIBRARY_PATH=$(HALIDE_DIR)/lib; ./$@/bin/$@_generator \
		-o $@/bin \
		-g $@ output.type=uint8 \
		-e static_library,stmt,h,llvm_assembly,assembly \
		-f $@_hvx128 target=hexagon-32-noos-no_bounds_query-no_asserts-hvx_128-hvx_v66
	
	$(HEXAGON_CLANG) \
		-D$@  \
		--std=c++17 -mhvx -mv66 -mhvx-length=128B \
		-I $(HALIDE_DIR)/include -I ./$@/bin \
		test/run.cpp \
		test/stubs.cpp \
		$@/bin/$@_hvx128.a \
		../../../../Halide/src/runtime/hexagon_remote/bin/v65/libsim_qurt.a -lhexagon \
		-o $@/bin/$@_run.out

	$(HEXAGON_SIM) -mv66 --memfill 0x0 --simulated_returnval --nullptr=2 --packet_analyze $@/bin/$@_run.out -- 1920 1080 ../test_vectors/football1920x1080.bin $@/out/out.bin
	
	rm -f pmu_statsfile.txt stats_dump.iss.0

$(prof_dirs) $(out_dirs) $(bin_dirs): %:
	mkdir $@

clean:
	rm -rf $(bin_dirs) $(out_dirs) $(prof_dirs) pmu_statsfile.txt stats_dump.iss.0