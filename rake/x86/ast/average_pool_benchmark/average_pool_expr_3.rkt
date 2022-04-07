#lang rosette/safe

(require rake)
(init-logging "average_pool_expr_3.runtimes")

(define-symbolic-buffer sum uint16_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var t344 uint16_t)

(define axioms 
  (list ))


(define halide-expr
 (let ([t496  (vec-mul
  (uint32x32
   (load sum (ramp 0 1 32) (aligned 0 0)))
  (uint32x32
   (x32 t344)))])
  (vec-max
   (vec-min
    (uint8x32
     (vec-min
      (uint16x32
       (vec-add
        (vec-bwand
         (x32 (uint32_t (bv 1 32)))
         (vec-div
          t496
          (x32 (uint32_t (bv 32768 32)))))
        (vec-div
         t496
         (x32 (uint32_t (bv 65536 32))))))
      (x32 (uint16_t (bv 255 16)))))
    (x32 output_max))
   (x32 output_min))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "average_pool_sexp_3.out")