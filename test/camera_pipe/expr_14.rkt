#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f7 int16_t)
(define-symbolic f28.s0.v0.v0 integer?)
(define-symbolic t3142 integer?)
(define-symbolic t3140 integer?)

(define axioms 
  (list ))

(define t2859.s t3140)
(define t2856.s t3142)

(define halide-expr
 (interleave
  (slice_vectors
   (load f7 (ramp (* (+ f28.s0.v0.v0 t2859.s) 64) 1 128) (aligned 64 0)) 1 1 64)
  (slice_vectors
   (load deinterleaved (ramp (* (+ f28.s0.v0.v0 t2856.s) 64) 1 128) (aligned 64 0)) 2 1 64)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_14.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)