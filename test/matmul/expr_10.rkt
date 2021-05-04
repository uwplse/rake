#lang rosette/safe

(require rake)

(define-symbolic-buffer mat_a uint8_t)
(define-symbolic-buffer mat_b_swizzled uint8_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic multiplied_no_offsets.s1.k$x integer?)
(define-symbolic t172 integer?)

(define axioms 
  (list 
   (values-range-from mat_b_swizzled (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t71 (+  (*  multiplied_no_offsets.s1.k$x  4)  t172))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-add
     (load multiplied_no_offsets (ramp 384 1 128) (aligned 0 384))
     (uint32x128
      (vec-mul
       (uint16x128
        (load mat_b_swizzled (ramp (* multiplied_no_offsets.s1.k$x 512) 4 128) (aligned 512 0)))
       (uint16x128
        (x128 (load-sca mat_a t71))))))
    (uint32x128
     (vec-mul
      (uint16x128
       (load mat_b_swizzled (ramp (+ (* multiplied_no_offsets.s1.k$x 512) 1) 4 128) (aligned 512 1)))
      (uint16x128
       (x128 (load-sca mat_a (+ t71 1)))))))
   (uint32x128
    (vec-mul
     (uint16x128
      (load mat_b_swizzled (ramp (+ (* multiplied_no_offsets.s1.k$x 512) 2) 4 128) (aligned 512 2)))
     (uint16x128
      (x128 (load-sca mat_a (+ t71 2)))))))
  (uint32x128
   (vec-mul
    (uint16x128
     (load mat_b_swizzled (ramp (+ (* multiplied_no_offsets.s1.k$x 512) 3) 4 128) (aligned 512 3)))
    (uint16x128
     (x128 (load-sca mat_a (+ t71 3))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_10.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)