# Algorithm Overview

We use the gaussian3x3 benchmark as a running example for this document. Here is the original Halide
implementation:

### Halide Implementation
```cpp
class Gaussian3x3 : public Generator<Gaussian3x3> {
public:
    Input<Buffer<uint8_t>> input{"input", 2};
    Output<Buffer<uint8_t>> output{"output", 2};

    GeneratorParam<bool> use_prefetch_sched{"use_prefetch_sched", true};

    void generate() {
        input_16(x, y) = cast<int16_t>(input(x, y));

        rows(x, y) = input_16(x, y-1) + 2 * input_16(x, y) + input_16(x, y+1);
        cols(x,y) =  rows(x-1, y) + 2 * rows(x, y) + rows(x+1, y);

        output(x, y)  = cast<uint8_t> ((cols(x, y) + 8) >> 4);
    }

    void schedule() {
        Var xi{"xi"}, yi{"yi"};

        input.dim(0).set_min(0);
        input.dim(1).set_min(0);

        output.dim(0).set_min(0);
        output.dim(1).set_min(0);

        if (get_target().features_any_of({Target::HVX_64, Target::HVX_128})) {
            const int vector_size = get_target().has_feature(Target::HVX_128) ? 128 : 64;
            Expr input_stride = input.dim(1).stride();
            input.dim(1).set_stride((input_stride/vector_size) * vector_size);

            Expr output_stride = output.dim(1).stride();
            output.dim(1).set_stride((output_stride/vector_size) * vector_size);

            Expr ht = output.dim(1).extent();

            // HALIDE: 0.3233 cycles/pixel
            // Best Manual Implementation :   0.14 cyckes/pixel
            output
                .hexagon()
                .split(y, y, yi, 4, TailStrategy::RoundUp)
                .vectorize(x, vector_size, TailStrategy::RoundUp);

            rows
                .compute_at(Func(output), yi)
                .align_storage(x, vector_size)
                .vectorize(x, vector_size, TailStrategy::RoundUp);

            if (use_prefetch_sched) {
                output.prefetch(input, y, 2, PrefetchBoundStrategy::NonFaulting);
            }
        } else {
            const int vector_size = natural_vector_size<uint8_t>();
            output
                .vectorize(x, vector_size)
                .parallel(y, 16);
        }
    }
private:
    Var x{"x"}, y{"y"};
    Func rows{"rows"}, cols{"cols"};
    Func input_16{"input_16"};
};
```

### Lowered Halide IR

Given this schedule, Halide will generate the following loop-nest in its IR

```cpp
for (output.s0.y.y, 0, ((output.extent.1 + 3)/4)) {
      prefetch(input, ...)
      for (output.s0.y.yi, 0, 4) {
        allocate rows[int16 * (((output.extent.0 + 255)/128)*128) * 1]
        produce rows {
          for (rows.s0.x.x, 0, ((output.extent.0 + 255)/128)) {
            // Stage 1: Implements the following 2 lines
            // input_16(x, y) = cast<int16_t>(input(x, y));
            // rows(x, y) = input_16(x, y-1) + 2 * input_16(x, y) + input_16(x, y+1);
          }
        }
        consume rows {
          if ((0 < output.extent.0)) {
            allocate c1[int16 * 128] in Stack
            c1[ramp(0, 1, 64)] = rows[ramp(0, 1, 64)]
            for (output.s0.x.x, 0, ((output.extent.0 + 127)/128)) {
              c1[ramp(64, 1, 64)] = rows[ramp(((output.s0.x.x*128) + 128), 1, 64) aligned(128, 0)]
              // Stage 2: Implements the following 2 lines
              // cols(x,y) =  rows(x-1, y) + 2 * rows(x, y) + rows(x+1, y);
              // output(x, y)  = cast<uint8_t> ((cols(x, y) + 8) >> 4);
              c1[ramp(0, 1, 64)] = c1[ramp(64, 1, 64)]
            }
          }
        }
        free rows
      }
    }
```

As you can see. A "stage" here is straight-line code. Essentially the body of an inner most loop that computes part of overall pipeline for a given pixel / set of pixels. 

Rake then attempts to optimize the computation for each stage seperately.

### Gaussian3x3 Stage 2 IR Expression
Zooming into stage 2 of the gaussian example, we can see the exact expression computed by Halide (expressed in Halide IR).


```scheme
(uint8x128
 (vec-div
  (vec-add
   (vec-add
    (concat_vectors
     (slice_vectors
      (concat_vectors
       (ramp c1 0 1 64)
       (ramp rows (+ (* output.s0.x.x 128) 64) 1 64)) 2 1 64)
     (slice_vectors
      (concat_vectors
       (ramp rows (+ (* output.s0.x.x 128) 64) 1 64)
       (ramp c1 64 1 64)) 2 1 64))
    (vec-add 
     (vec-mul
      (concat_vectors
       (slice_vectors
        (concat_vectors
         (ramp c1 0 1 64)
         (ramp rows (+ (* output.s0.x.x 128) 64) 1 64)) 1 1 64)
       (slice_vectors
        (concat_vectors
         (ramp rows (+ (* output.s0.x.x 128) 64) 1 64)
         (ramp c1 64 1 64)) 1 1 64))
      (x128 (int16_t (bv 2 16))))
     (concat_vectors
      (ramp c1 0 1 64)
      (ramp rows (+ (* output.s0.x.x 128) 64) 1 64))))
   (x128 (int16_t (bv 8 16))))
  (x128 (int16_t (bv 16 16))))))
```

```scheme
(arithmetic-shift-right
    (convolve
        (load-data)
        (1 2 1)
        'int16
    )
    4
    #t    ;; Flag to indicate rounding
    'uint8)
```

```scheme
(vasr-rnd-sat
    (vmpyi-acc
        (vadd
            (gather-data)
            (gather-data))
       (gather-data)
       2)
    (vmpyi-acc
        (vadd
            (gather-data)
            (gather-data))
       (gather-data)
       2)
   4)
```