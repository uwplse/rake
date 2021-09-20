#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer mat_a uint8_t)
(define-symbolic-buffer mat_b_swizzled uint8_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic multiplied_no_offsets.s1.k$x integer?)
(define-symbolic output.s0.y.yo integer?)
(define-symbolic t129 integer?)

(define axioms 
  (list ))

(define mat_a.stride.1 (var-lookup 'mat_a.stride.1 t129))

(define halide-expr
 (let ([t149  (sca-add  (sca-mul  mat_a.stride.1  output.s0.y.yo)  multiplied_no_offsets.s1.k$x)])
  (vec-add
   (vec-add
    (vec-add
     (vec-add
      (load multiplied_no_offsets (ramp 0 1 128) (aligned 0 0))
      (uint32x128
       (vec-mul
        (uint16x128
         (load mat_b_swizzled (ramp (sca-mul multiplied_no_offsets.s1.k$x 512) 4 128) (aligned 512 0)))
        (uint16x128
         (x128 (load-sca mat_a (sca-mul t149 4)))))))
     (uint32x128
      (vec-mul
       (uint16x128
        (load mat_b_swizzled (ramp (sca-add (sca-mul multiplied_no_offsets.s1.k$x 512) 1) 4 128) (aligned 512 1)))
       (uint16x128
        (x128 (load-sca mat_a (sca-add (sca-mul t149 4) 1)))))))
    (uint32x128
     (vec-mul
      (uint16x128
       (load mat_b_swizzled (ramp (sca-add (sca-mul multiplied_no_offsets.s1.k$x 512) 2) 4 128) (aligned 512 2)))
      (uint16x128
       (x128 (load-sca mat_a (sca-add (sca-mul t149 4) 2)))))))
   (uint32x128
    (vec-mul
     (uint16x128
      (load mat_b_swizzled (ramp (sca-add (sca-mul multiplied_no_offsets.s1.k$x 512) 3) 4 128) (aligned 512 3)))
     (uint16x128
      (x128 (load-sca mat_a (sca-add (sca-mul t149 4) 3)))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")