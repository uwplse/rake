#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f13 int16_t)
(define-symbolic f28.s0.v0.v0 integer?)
(define-symbolic t3139 integer?)
(define-symbolic t3141 integer?)

(define axioms 
  (list ))

(define t2858.s t3139)
(define t2852.s t3141)

(define halide-expr
 (interleave
  (slice_vectors
   (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2852.s) 64) 1 128) (aligned 64 0)) 1 1 64)
  (slice_vectors
   (load f13 (ramp (* (+ f28.s0.v0.v0 t2858.s) 64) 1 128) (aligned 64 0)) 1 1 64)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_11.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)