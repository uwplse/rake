#lang rosette/safe

(require rake)

(define-symbolic-buffer mat_b uint8_t)
(define-symbolic mat_b_swizzled.s0.y integer?)
(define-symbolic output.s0.x.xo integer?)
(define-symbolic t130 integer?)

(define axioms 
  (list ))

(define mat_b.stride.1 t130)

(define halide-expr
 (interleave
  (interleave
   (load mat_b (ramp (* (+ (* mat_b.stride.1 mat_b_swizzled.s0.y) (* output.s0.x.xo 32)) 4) 1 128) (aligned 4 0))
   (load mat_b (ramp (+ (* (+ (* mat_b_swizzled.s0.y 4) 1) mat_b.stride.1) (* output.s0.x.xo 128)) 1 128) (aligned 1 0)))
  (interleave
   (load mat_b (ramp (+ (* (+ (* mat_b_swizzled.s0.y 4) 2) mat_b.stride.1) (* output.s0.x.xo 128)) 1 128) (aligned 2 0))
   (load mat_b (ramp (+ (* (+ (* mat_b_swizzled.s0.y 4) 3) mat_b.stride.1) (* output.s0.x.xo 128)) 1 128) (aligned 1 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_2.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)