#lang rosette/safe

(require rake)

(define-symbolic output_min-val (bitvector 8))
(define output_min (uint8_t output_min-val))

(define axioms 
  (list ))


(define halide-expr
 (x512 output_min))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_0.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)