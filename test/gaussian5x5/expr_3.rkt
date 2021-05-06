#lang rosette/safe

(require rake)

(define-symbolic-var bounded_input.s0.x.x int32_t)
(define-symbolic-var t300 int32_t)

(define axioms 
  (list ))

(define input.extent.0 t300)
(define t264.s (sca-min  (sca-mul  bounded_input.s0.x.x  (int32_t (bv 128 32)))  (sca-add  input.extent.0  (int32_t (bv 1 32)))))

(define halide-expr
 (uint8x128
  (vec-add
   (vec-max
    (vec-min
     (ramp (sca-add (sca-mul bounded_input.s0.x.x (int32_t (bv 128 32))) (int32_t (bv -2 32))) (int32_t (bv 1 32)) 128)
     (x128 (sca-add input.extent.0 (int32_t (bv -1 32)))))
    (x128 (int32_t (bv 0 32))))
   (x128 (sca-sub (int32_t (bv 2 32)) (sca-max t264.s (int32_t (bv 2 32))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_3.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)