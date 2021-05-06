#lang rosette/safe

(require rake)

(define-symbolic-var bounded_input.s0.x.x.rebased int32_t)
(define-symbolic-var t425 int32_t)
(define-symbolic-var t430 int32_t)
(define-symbolic-var t436 int32_t)
(define-symbolic-var t437 int32_t)
(define-symbolic-var t439 int32_t)

(define axioms 
  (list ))

(define input.extent.0 t425)
(define output.min.0 t430)
(define t309 (sca-min  t437  (sca-add  (sca-max  t436  (int32_t (bv -1 32)))  (int32_t (bv 1 32)))))
(define t304 (sca-max  t439  t309))
(define t414.s (sca-min  (sca-add  (sca-mul  (sca-add  bounded_input.s0.x.x.rebased  t304)  (int32_t (bv 128 32)))  output.min.0)  input.extent.0))

(define halide-expr
 (uint8x128
  (vec-add
   (vec-max
    (vec-min
     (ramp (sca-add (sca-add (sca-mul (sca-add bounded_input.s0.x.x.rebased t304) (int32_t (bv 128 32))) output.min.0) (int32_t (bv -1 32))) (int32_t (bv 1 32)) 128)
     (x128 (sca-add input.extent.0 (int32_t (bv -1 32)))))
    (x128 (int32_t (bv 0 32))))
   (x128 (sca-sub (int32_t (bv 1 32)) (sca-max t414.s (int32_t (bv 1 32))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_2.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)