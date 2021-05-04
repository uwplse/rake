#lang rosette/safe

(require rake)

(define-symbolic-buffer maximum uint8_t)
(define-symbolic output_max-val (bitvector 8))
(define output_max (uint8_t output_max-val))

(define axioms 
  (list 
   (values-range-from maximum (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))))


(define halide-expr
 (vec-min
  (load maximum (ramp 0 1 256) (aligned 0 0))
  (x256 output_max)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_5.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)