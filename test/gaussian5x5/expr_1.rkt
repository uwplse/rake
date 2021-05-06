#lang rosette/safe

(require rake)

(define-symbolic-var t300 int32_t)

(define axioms 
  (list ))

(define input.extent.0 t300)

(define halide-expr
 (uint8x128
  (vec-max
   (vec-min
    (ramp (int32_t (bv -2 32)) (int32_t (bv 1 32)) 128)
    (x128 (sca-add input.extent.0 (int32_t (bv -1 32)))))
   (x128 (int32_t (bv 0 32))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_1.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)