#lang rosette/safe

(require rake)

(define-symbolic-var bounded_input.s0.x.x int32_t)
(define-symbolic-var t357 int32_t)
(define-symbolic-var t351 int32_t)

(define axioms 
  (list ))

(define input.extent.0 t351)
(define output.extent.0 t357)
(define bounded_input.s0.x.v0.base.s (sca-add  (sca-min  output.extent.0  (int32_t (bv 128 32)))  (sca-mul  bounded_input.s0.x.x  (int32_t (bv 128 32)))))
(define t342.s (sca-min  (sca-add  input.extent.0  (int32_t (bv 128 32)))  bounded_input.s0.x.v0.base.s))

(define halide-expr
 (uint8x128
  (vec-add
   (vec-max
    (vec-min
     (ramp (sca-add bounded_input.s0.x.v0.base.s (int32_t (bv -129 32))) (int32_t (bv 1 32)) 128)
     (x128 (sca-add input.extent.0 (int32_t (bv -1 32)))))
    (x128 (int32_t (bv 0 32))))
   (x128 (sca-sub (int32_t (bv 129 32)) (sca-max t342.s (int32_t (bv 129 32))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_0.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)