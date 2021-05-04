#lang rosette/safe

(require rake)

(define-symbolic-buffer mat_b uint8_t)
(define-symbolic-buffer sum$1 uint32_t)
(define-symbolic column_sums_b.s0.x.x integer?)
(define-symbolic sum$1.s1.fk$x integer?)
(define-symbolic t130 integer?)

(define axioms 
  (list ))

(define mat_b.stride.1 t130)

(define halide-expr
 (vec-add
  (load sum$1 (ramp 0 1 128) (aligned 0 0))
  (uint32x128
   (load mat_b (ramp (+ (* mat_b.stride.1 sum$1.s1.fk$x) (* column_sums_b.s0.x.x 128)) 1 128) (aligned 1 0)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_1.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)