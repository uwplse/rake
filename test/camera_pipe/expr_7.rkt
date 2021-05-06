#lang rosette/safe

(require rake)

(define-symbolic-buffer f1 int16_t)
(define-symbolic deinterleaved.s0.v0.v0 integer?)
(define-symbolic t3075 integer?)
(define-symbolic t3076 integer?)

(define axioms 
  (list ))

(define t2986 (+  (*  deinterleaved.s0.v0.v0  256)  (-  (*  t3076  64)  (min  (*  t3075  128)  120))))

(define halide-expr
 (slice_vectors
  (load f1 (ramp (+ t2986 121) 1 256) (aligned 8 1)) 0 2 128))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_7.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)