#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f7 int16_t)
(define-symbolic t4290 integer?)
(define-symbolic f28.s0.v0.v0 integer?)
(define-symbolic t4288 integer?)

(define axioms 
  (list 
   (values-range-from deinterleaved (int16_t (bv 0 16)) (int16_t (bv 32767 16)))
   (values-range-from f7 (int16_t (bv 0 16)) (int16_t (bv 32767 16)))))

(define t3952.s t4288)
(define t3946.s t4290)

(define halide-expr
 (interleave
  (slice_vectors
   (load f7 (ramp (*  (+   f28.s0.v0.v0   t3952.s)  64) 1 128) (aligned 64 0)) 1 1 64)
  (slice_vectors
   (load f7 (ramp (*  (+   f28.s0.v0.v0   t3952.s)  64) 1 128) (aligned 64 0)) 1 1 64)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_14.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)