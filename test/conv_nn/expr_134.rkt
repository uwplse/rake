#lang rosette/safe

(require rake)
(init-logging "expr_134.runtimes")

(define-symbolic-buffer convolved int32_t)
(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer input uint8_t)
(define-symbolic t1888 integer?)
(define-symbolic t1908 integer?)
(define-symbolic convolved.s1.r19$x integer?)
(define-symbolic convolved.s1.r19$z.r124 integer?)
(define-symbolic t1904 integer?)
(define-symbolic t1905 integer?)
(define-symbolic t1903 integer?)
(define-symbolic t1890 integer?)
(define-symbolic t1889 integer?)
(define-symbolic t1906 integer?)
(define-symbolic t1907 integer?)
(define-symbolic t1232 integer?)
(define-symbolic t1240 integer?)

(define axioms 
  (list ))

(define filter.stride.4 (var-lookup 'filter.stride.4 t1232))
(define input.stride.1 (var-lookup 'input.stride.1 t1240))
(define t1165 (var-lookup 't1165 (sca-add  t1890  (sca-add  t1889  t1888))))
(define t1193 (var-lookup 't1193 (sca-add  t1904  (sca-sub  t1903  t1165))))
(define t1194 (var-lookup 't1194 (sca-add  t1906  t1905)))
(define t1195.s (var-lookup 't1195.s (sca-add  t1908  t1907)))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (int32x128
    (vec-mul
     (uint16x128
      (vec-broadcast 32
       (load input (ramp (sca-add (sca-mul convolved.s1.r19$z.r124 4) (sca-add (sca-mul input.stride.1 t1195.s) t1193)) 1 4) (aligned 4 0))))
     (uint16x128
      (load filter (ramp (sca-add (sca-mul convolved.s1.r19$z.r124 128) (sca-add (sca-mul convolved.s1.r19$x filter.stride.4) t1194)) 1 128) (aligned 128 0))))))
  (load convolved (ramp 0 1 32) (aligned 0 0))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_134.out")