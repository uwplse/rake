#lang rosette/safe

(require rake)

(define-symbolic-buffer mat_a uint8_t)
(define-symbolic-buffer mat_b_swizzled uint8_t)
(define-symbolic-buffer multiplied_no_offsets uint32_t)
(define-symbolic multiplied_no_offsets.s1.k$x integer?)
(define-symbolic t165 integer?)

(define axioms 
  (list 
   (values-range-from mat_b_swizzled (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))

(define t70 (+  (*  multiplied_no_offsets.s1.k$x  4)  t165))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-add
     (load multiplied_no_offsets (ramp 256 1 128) (aligned 0 256))
     (uint32x128
      (vec-mul
       (uint16x128
        (load mat_b_swizzled (ramp (* multiplied_no_offsets.s1.k$x 512) 4 128) (aligned 512 0)))
       (uint16x128
        (x128 (load-sca mat_a t70))))))
    (uint32x128
     (vec-mul
      (uint16x128
       (load mat_b_swizzled (ramp (+ (* multiplied_no_offsets.s1.k$x 512) 1) 4 128) (aligned 512 1)))
      (uint16x128
       (x128 (load-sca mat_a (+ t70 1)))))))
   (uint32x128
    (vec-mul
     (uint16x128
      (load mat_b_swizzled (ramp (+ (* multiplied_no_offsets.s1.k$x 512) 2) 4 128) (aligned 512 2)))
     (uint16x128
      (x128 (load-sca mat_a (+ t70 2)))))))
  (uint32x128
   (vec-mul
    (uint16x128
     (load mat_b_swizzled (ramp (+ (* multiplied_no_offsets.s1.k$x 512) 3) 4 128) (aligned 512 3)))
    (uint16x128
     (x128 (load-sca mat_a (+ t70 3))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_9.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)