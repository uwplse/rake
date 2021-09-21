#lang rosette/safe

(require rake)
(init-logging "expr_88.runtimes")

(define-symbolic-buffer convolved int32_t)
(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer input uint8_t)
(define-symbolic t1582 integer?)
(define-symbolic output.s0.c.co integer?)
(define-symbolic t1581 integer?)
(define-symbolic t1602 integer?)
(define-symbolic t1489 integer?)
(define-symbolic t1585 integer?)
(define-symbolic t1490 integer?)
(define-symbolic t1229 integer?)
(define-symbolic t1488 integer?)
(define-symbolic t1586 integer?)
(define-symbolic t1601 integer?)
(define-symbolic convolved.s1.r19$z.r124 integer?)
(define-symbolic t1240 integer?)

(define axioms 
  (list ))

(define filter.stride.3 (var-lookup 'filter.stride.3 t1229))
(define input.stride.1 (var-lookup 'input.stride.1 t1240))
(define t943 (var-lookup 't943 (sca-add  t1490  (sca-add  t1489  t1488))))
(define t1013 (var-lookup 't1013 (sca-add  t1582  (sca-sub  t1581  t943))))
(define t1026.s (var-lookup 't1026.s (sca-add  t1586  t1585)))
(define t1018 (var-lookup 't1018 (sca-add  t1602  t1601)))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (int32x128
    (vec-mul
     (uint16x128
      (vec-broadcast 32
       (load input (ramp (sca-add (sca-mul convolved.s1.r19$z.r124 4) (sca-add (sca-mul input.stride.1 t1026.s) t1013)) 1 4) (aligned 4 0))))
     (uint16x128
      (load filter (ramp (sca-add (sca-mul (sca-add (sca-mul convolved.s1.r19$z.r124 64) (sca-mul filter.stride.3 output.s0.c.co)) 2) t1018) 1 128) (aligned 128 0))))))
  (load convolved (ramp 448 1 32) (aligned 0 448))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_88.out")