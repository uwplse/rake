#lang rosette/safe

(require rake)

(define-symbolic-buffer f1 int16_t)
(define-symbolic deinterleaved.s0.v0.v0 integer?)
(define-symbolic t4205 integer?)
(define-symbolic t4204 integer?)

(define axioms 
  (list 
   (values-range-from f1 (int16_t (bv 0 16)) (int16_t (bv 32767 16)))))

(define t3866 (-   (*    t4205    128)   (min    (*     t4204     128)    120)))

(define halide-expr
 (slice_vectors
  (load f1 (ramp (+  (+   (*    deinterleaved.s0.v0.v0    256)   t3866)  120) 1 256) (aligned 8 0)) 0 2 128))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_4.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)