#lang rosette/safe

(require rake)
(init-logging "average_pool_expr_1.runtimes")

(define-symbolic-buffer sum uint16_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var t310 uint16_t)

(define axioms 
  (list ))


(define halide-expr
 (let ([t476  (vec-mul
  (uint32x64
   (load sum (ramp 0 1 64) (aligned 0 0)))
  (uint32x64
   (x64 t310)))])
  (vec-max
   (vec-min
    (uint8x64
     (vec-min
      (uint16x64
       (vec-add
        (vec-bwand
         (x64 (uint32_t (bv 1 32)))
         (vec-div
          t476
          (x64 (uint32_t (bv 32768 32)))))
        (vec-div
         t476
         (x64 (uint32_t (bv 65536 32))))))
      (x64 (uint16_t (bv 255 16)))))
    (x64 output_max))
   (x64 output_min))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define x86-expr (synthesize-x86 spec 'greedy 'enumerative 'enumerative))

(llvm-codegen x86-expr "average_pool_sexp_1.out")