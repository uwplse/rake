include Makefile.inc

all: $(BIN)/$(HL_TARGET)/test

$(GENERATOR_BIN)/basic1.generator: basic.cpp $(GENERATOR_DEPS)
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) $(filter-out %.h,$^) -o $@ $(LDFLAGS) $(HALIDE_SYSTEM_LIBS)

$(BIN)/%/basic1.a: $(GENERATOR_BIN)/basic1.generator
	@mkdir -p $(@D)
	$^ -g basic1 -e $(GENERATOR_OUTPUTS) -o $(@D) target=arm-64-android-hvx_128

# g++ on OS X might actually be system clang without openmp
CXX_VERSION=$(shell $(CXX) --version)
ifeq (,$(findstring clang,$(CXX_VERSION)))
OPENMP_FLAGS=-fopenmp
else
OPENMP_FLAGS=
endif

# -O2 is faster than -O3 for this app (O3 unrolls too much)
$(BIN)/%/test: $(BIN)/%/basic1.a test.cpp
	@mkdir -p $(@D)
	$(CXX-$*) $(CXXFLAGS-$*) $(OPENMP_FLAGS) -Wall -O2 -I$(BIN)/$* test.cpp $(BIN)/$*/basic1.a -o $@ $(LDFLAGS-$*)

clean:
	rm -rf $(BIN)

.PHONY: test
test: $(BIN)/$(HL_TARGET)/test
	$(BIN)/$(HL_TARGET)/test