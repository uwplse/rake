#lang rosette/safe

(require rake)
(init-logging "expr_112.runtimes")

(define-symbolic-buffer convolved int32_t)
(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer input uint8_t)
(define-symbolic t1687 integer?)
(define-symbolic t1774 integer?)
(define-symbolic t1688 integer?)
(define-symbolic convolved.s1.r19$x integer?)
(define-symbolic t1764 integer?)
(define-symbolic convolved.s1.r19$z.r124 integer?)
(define-symbolic t1773 integer?)
(define-symbolic t1765 integer?)
(define-symbolic t1766 integer?)
(define-symbolic t1763 integer?)
(define-symbolic t1232 integer?)
(define-symbolic t1240 integer?)
(define-symbolic t1686 integer?)

(define axioms 
  (list ))

(define filter.stride.4 (var-lookup 'filter.stride.4 t1232))
(define input.stride.1 (var-lookup 'input.stride.1 t1240))
(define t1039 (var-lookup 't1039 (sca-add  t1688  (sca-add  t1687  t1686))))
(define t1108 (var-lookup 't1108 (sca-add  t1764  (sca-sub  t1763  t1039))))
(define t1109 (var-lookup 't1109 (sca-add  t1766  t1765)))
(define t1115.s (var-lookup 't1115.s (sca-add  t1774  t1773)))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (int32x128
    (vec-mul
     (uint16x128
      (vec-broadcast 32
       (load input (ramp (sca-add (sca-mul convolved.s1.r19$z.r124 4) (sca-add (sca-mul input.stride.1 t1115.s) t1108)) 1 4) (aligned 4 0))))
     (uint16x128
      (load filter (ramp (sca-add (sca-mul convolved.s1.r19$z.r124 128) (sca-add (sca-mul convolved.s1.r19$x filter.stride.4) t1109)) 1 128) (aligned 128 0))))))
  (load convolved (ramp 128 1 32) (aligned 0 128))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_112.out")