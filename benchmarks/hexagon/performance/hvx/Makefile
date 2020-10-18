HALIDE_DIR ?= /home/maaz/Qualcomm/Hexagon_SDK/3.5.2/tools/HALIDE_Tools/2.2.03/Halide
HEXAGON_SIM ?= /home/maaz/Qualcomm/Hexagon_SDK/3.5.2/tools/HEXAGON_Tools/8.3.07/Tools/bin/hexagon-sim
HEXAGON_CLANG ?= /home/maaz/Qualcomm/Hexagon_SDK/3.5.2/tools/HEXAGON_Tools/8.3.07/Tools/bin/hexagon-clang

HEADERS = /home/maaz/Qualcomm/Hexagon_SDK/3.5.2/tools/HEXAGON_Tools/8.3.07/Examples/HVX/common/include
SUBSYS = /home/maaz/Qualcomm/Hexagon_SDK/3.5.2/tools/HEXAGON_Tools/8.3.07/Examples/HVX/common/src/subsys.c

benchmarks = gaussian3x3 gaussian5x5 gaussian7x7 conv3x3a16 conv3x3a32 sobel3x3

bin_dirs = $(addsuffix /bin,$(benchmarks))
out_dirs = $(addsuffix /out,$(benchmarks))
prof_dirs = $(addsuffix /profile,$(benchmarks))

.PHONY: clean all $(benchmarks)

all: $(benchmarks)

$(benchmarks): %: %/bin %/out %/profile
	$(HEXAGON_CLANG) -O2 -mv66 -mhvx -mhvx-length=128B -DLOG2VLEN=7 -I $(HEADERS) -DQDSP6SS_PUB_BASE=0xFE200000 -c -S -emit-llvm $@/src/$@.c -o $@/bin/$@.ll

	$(HEXAGON_CLANG) -O2 -mv66 -mhvx -mhvx-length=128B -DLOG2VLEN=7 -I $(HEADERS) -DQDSP6SS_PUB_BASE=0xFE200000 -c -o $@/bin/$@.o $@/src/$@.c

	$(HEXAGON_CLANG) -O2 -mv66 -mhvx -mhvx-length=128B -DLOG2VLEN=7 -I $@/include -D$@ -I $(HEADERS) -DQDSP6SS_PUB_BASE=0xFE200000 -c -o $@/bin/$@_run.o test/run.c

	$(HEXAGON_CLANG) -O2 -mv66 -mhvx -mhvx-length=128B -DLOG2VLEN=7 -I $(HEADERS) -DQDSP6SS_PUB_BASE=0xFE200000 -c -o $@/bin/subsys.o $(SUBSYS)

	$(HEXAGON_CLANG) -O2 -mv66 -o $@/bin/$@.exe ./$@/bin/$@.o ./$@/bin/$@_run.o ./$@/bin/subsys.o -lhexagon

	$(HEXAGON_SIM) $@/bin/$@.exe -mv66 --memfill 0x0 --simulated_returnval --nullptr=2 --timing --packet_analyze $@/profile/$@.json -- 1920 1080 ../test_vectors/football1920x1080.bin $@/out/out.bin

	#rm pmu_statsfile.txt stats_dump.iss.0

$(prof_dirs) $(out_dirs) $(bin_dirs): %:
	mkdir $@

clean:
	rm -rf $(bin_dirs) $(out_dirs) $(prof_dirs) pmu_statsfile.txt stats_dump.iss.0