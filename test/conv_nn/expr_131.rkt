#lang rosette/safe

(require rake)
(init-logging "expr_131.runtimes")

(define-symbolic-buffer convolved int32_t)
(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer input uint8_t)
(define-symbolic convolved.s1.r19$x integer?)
(define-symbolic t1857 integer?)
(define-symbolic t1864 integer?)
(define-symbolic t1855 integer?)
(define-symbolic t1863 integer?)
(define-symbolic t1858 integer?)
(define-symbolic t1836 integer?)
(define-symbolic convolved.s1.r19$z.r124 integer?)
(define-symbolic t1834 integer?)
(define-symbolic t1856 integer?)
(define-symbolic t1835 integer?)
(define-symbolic t1232 integer?)
(define-symbolic t1240 integer?)

(define axioms 
  (list ))

(define filter.stride.4 (var-lookup 'filter.stride.4 t1232))
(define input.stride.1 (var-lookup 'input.stride.1 t1240))
(define t1123 (var-lookup 't1123 (sca-add  t1836  (sca-add  t1835  t1834))))
(define t1150 (var-lookup 't1150 (sca-add  t1856  (sca-sub  t1855  t1123))))
(define t1154 (var-lookup 't1154 (sca-add  t1858  t1857)))
(define t1156.s (var-lookup 't1156.s (sca-add  t1864  t1863)))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (int32x128
    (vec-mul
     (uint16x128
      (vec-broadcast 32
       (load input (ramp (sca-add (sca-mul convolved.s1.r19$z.r124 4) (sca-add (sca-mul input.stride.1 t1156.s) t1150)) 1 4) (aligned 4 0))))
     (uint16x128
      (load filter (ramp (sca-add (sca-mul convolved.s1.r19$z.r124 128) (sca-add (sca-mul convolved.s1.r19$x filter.stride.4) t1154)) 1 128) (aligned 128 0))))))
  (load convolved (ramp 96 1 32) (aligned 0 96))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_131.out")