#include "Halide.h"
#include "../../hannk/common_halide.h"
#include "../../hannk/constants.h"
#include "../../hannk/interpreter/elementwise_program.h"

using namespace Halide;
using namespace Halide::ConciseCasts;

namespace hannk {

class Debug : public Generator<Debug> {
public:
    // Input buffers and quantization parameters.
    Input<Buffer<uint8_t>> input1_{"input1", 2};
    Input<uint8_t> input1_zero_{"input1_zero"};
    Output<Buffer<int16_t>> output_{"output", 2};

    void generate() {
        Var x("x"), y("y");

        output_(x, y) = i16(input1_(x, y)) - i16(input1_zero_);

        // Schedule.
        const int vector_size = natural_vector_size<uint8_t>();

        output_.compute_root()
            .vectorize(x, vector_size * 2, TailStrategy::Predicate);
    }
};

}  // namespace hannk

HALIDE_REGISTER_GENERATOR(hannk::Debug, debug)