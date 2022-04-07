#lang rosette/safe

(require rake)
(init-logging "average_pool_expr_5.runtimes")

(define-symbolic-buffer sum uint16_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var t378 uint16_t)

(define axioms 
  (list ))


(define halide-expr
 (let ([t516  (vec-mul
  (uint32x16
   (load sum (ramp 0 1 16) (aligned 0 0)))
  (uint32x16
   (x16 t378)))])
  (vec-max
   (vec-min
    (uint8x16
     (vec-min
      (uint16x16
       (vec-add
        (vec-bwand
         (x16 (uint32_t (bv 1 32)))
         (vec-div
          t516
          (x16 (uint32_t (bv 32768 32)))))
        (vec-div
         t516
         (x16 (uint32_t (bv 65536 32))))))
      (x16 (uint16_t (bv 255 16)))))
    (x16 output_max))
   (x16 output_min))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "average_pool_sexp_5.out")