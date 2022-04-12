HALIDE_DIR ?= ../../../../rake-halide/distrib
#HALIDE_DIR ?= ../../../halide/distrib

benchmarks = gaussian3x3 \
			 gaussian5x5 \
			 gaussian7x7 \
			 conv3x3a16 \
			 conv3x3a32 \
			 dilate3x3 \
			 median3x3 \
			 sobel3x3 \
			 blur3x3 \
			 add \
			 mul \
			 max_pool \
			 average_pool \
			 l2norm \
			 matmul \
			 camera_pipe

bin_dirs = $(addsuffix /bin,$(benchmarks))
out_dirs = $(addsuffix /out,$(benchmarks))
prof_dirs = $(addsuffix /profile,$(benchmarks))

hannk = hannk/common_halide.cpp \
	    hannk/interpreter/elementwise_program.cpp

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
		-g $@ -e static_library,stmt,h,llvm_assembly,assembly \
		-f $@_hvx128 target=arm-64-android-no_runtime-no_bounds_query-c_plus_plus_name_mangling-arm_dot_prod-armv81a

fully_connected: %: %/bin %/out %/profile
	g++ --std=c++17 -fno-rtti -O3 -DLOG2VLEN=7 \
		-I $(HALIDE_DIR)/include -I $(HALIDE_DIR)/tools \
		-g $@/src/$@_generator.cpp $(HALIDE_DIR)/tools/GenGen.cpp \
		$(hannk) \
		-o $@/bin/$@_generator \
		-L $(HALIDE_DIR)/lib -lHalide $(shell llvm-config-12 --system-libs --link-static)

	export LD_LIBRARY_PATH=$(HALIDE_DIR)/lib; export HL_RAKE_BENCHMARK_NAME=$@; ./$@/bin/$@_generator \
		-o $@/bin \
		-g $@ -e static_library,stmt,h,llvm_assembly,assembly \
		-g $@ output.type=uint8 \
		-f $@_hvx128 target=arm-64-android-no_runtime-no_bounds_query-c_plus_plus_name_mangling-arm_dot_prod-armv81a

$(prof_dirs) $(out_dirs) $(bin_dirs): %:
	mkdir $@

clean:
	rm -rf $(bin_dirs) $(out_dirs) $(prof_dirs) pmu_statsfile.txt stats_dump.iss.0