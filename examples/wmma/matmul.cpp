/* 
 * Performs matrix multiplication
 */

#include "Halide.h"

class Gen_MatMul : public Halide::Generator<Gen_MatMul> {
public:
    Input<Buffer<uint8_t>> matA{"matA", 2};
    Input<Buffer<uint8_t>> matB{"matB", 2};
    Output<Buffer<uint8_t>> output{"output", 2};

    Var x, y;

    void generate() {
        RDom r(0, matA.width());
        output(x, y) += matA(x, r) * matB(r, y);
    }

    void schedule() {
        matA.set_estimates({{0, 1024}, {0, 1024}});
        matB.set_estimates({{0, 1024}, {0, 1024}});
        output.set_estimates({{0, 1024}, {0, 1024}});
    }
};

HALIDE_REGISTER_GENERATOR(Gen_MatMul, matmul)