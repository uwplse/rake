#lang rosette/safe

(require rake)

(define-symbolic-buffer f1 int16_t)
(define-symbolic deinterleaved.s0.v0.v0 integer?)
(define-symbolic t3070 integer?)
(define-symbolic t3069 integer?)

(define axioms 
  (list ))

(define t2955 (+  (*  deinterleaved.s0.v0.v0  256)  (-  (*  t3070  128)  (min  (*  t3069  128)  120))))

(define halide-expr
 (slice_vectors
  (load f1 (ramp (+ t2955 120) 1 256) (aligned 8 0)) 0 2 128))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_4.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)