#lang rosette/safe

(require rake)

(define-symbolic-var input_bounded.s0.x.x.rebased int32_t)
(define-symbolic-var t268 int32_t)
(define-symbolic-var t285 int32_t)
(define-symbolic-var t284 int32_t)

(define axioms 
  (list ))

(define input.extent.0 t268)
(define t162 (sca-max  (sca-min  t285  (int32_t (bv 1 32)))  t284))
(define t241.s (sca-min  (sca-mul  (sca-add  input_bounded.s0.x.x.rebased  t162)  (int32_t (bv 128 32)))  input.extent.0))

(define halide-expr
 (uint8x128
  (vec-add
   (vec-max
    (vec-min
     (ramp (sca-add (sca-mul (sca-add input_bounded.s0.x.x.rebased t162) (int32_t (bv 128 32))) (int32_t (bv -1 32))) (int32_t (bv 1 32)) 128)
     (x128 (sca-add input.extent.0 (int32_t (bv -1 32)))))
    (x128 (int32_t (bv 0 32))))
   (x128 (sca-sub (int32_t (bv 1 32)) (sca-max t241.s (int32_t (bv 1 32))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_2.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)