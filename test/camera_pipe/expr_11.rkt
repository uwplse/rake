#lang rosette/safe

(require rake)

(define-symbolic-buffer deinterleaved int16_t)
(define-symbolic-buffer f13 int16_t)
(define-symbolic f28.s0.v0.v0 integer?)
(define-symbolic t4287 integer?)
(define-symbolic t4289 integer?)

(define axioms 
  (list 
   (values-range-from deinterleaved (int16_t (bv 0 16)) (int16_t (bv 32767 16)))
   (values-range-from f13 (int16_t (bv 0 16)) (int16_t (bv 32767 16)))))

(define t3951.s t4287)
(define t3941.s t4289)

(define halide-expr
 (interleave
  (slice_vectors
   (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3941.s)  64) 1 128) (aligned 64 0)) 1 1 64)
  (slice_vectors
   (load deinterleaved (ramp (*  (+   f28.s0.v0.v0   t3941.s)  64) 1 128) (aligned 64 0)) 1 1 64)))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_11.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)