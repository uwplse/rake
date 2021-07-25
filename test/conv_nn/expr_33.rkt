#lang rosette/safe

(require rake)
(init-logging "expr_33.runtimes")

(define-symbolic-buffer convolved int32_t)
(define-symbolic-buffer filter uint8_t)
(define-symbolic-buffer input uint8_t)
(define-symbolic t1273 integer?)
(define-symbolic t1383 integer?)
(define-symbolic t1240 integer?)
(define-symbolic t1367 integer?)
(define-symbolic t1370 integer?)
(define-symbolic t1368 integer?)
(define-symbolic t1232 integer?)
(define-symbolic convolved.s1.r19$x integer?)
(define-symbolic convolved.s1.r19$z.r124 integer?)
(define-symbolic t1369 integer?)
(define-symbolic t1384 integer?)
(define-symbolic t1272 integer?)
(define-symbolic t1274 integer?)

(define axioms 
  (list ))

(define filter.stride.4 (var-lookup 'filter.stride.4 t1232))
(define input.stride.1 (var-lookup 'input.stride.1 t1240))
(define t854 (var-lookup 't854 (sca-add  t1274  (sca-add  t1273  t1272))))
(define t915 (var-lookup 't915 (sca-add  t1368  (sca-sub  t1367  t854))))
(define t919 (var-lookup 't919 (sca-add  t1370  t1369)))
(define t926.s (var-lookup 't926.s (sca-add  t1384  t1383)))

(define halide-expr
 (vec-add
  (vector_reduce 'add 4
   (int32x128
    (vec-mul
     (uint16x128
      (vec-broadcast 32
       (load input (ramp (sca-add (sca-mul convolved.s1.r19$z.r124 4) (sca-add (sca-mul input.stride.1 t926.s) t915)) 1 4) (aligned 4 0))))
     (uint16x128
      (load filter (ramp (sca-add (sca-mul convolved.s1.r19$z.r124 128) (sca-add (sca-mul convolved.s1.r19$x filter.stride.4) t919)) 1 128) (aligned 128 0))))))
  (load convolved (ramp 224 1 32) (aligned 0 224))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_33.out")