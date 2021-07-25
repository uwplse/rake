#lang rosette/safe

(require rake)
(init-logging "expr_5.runtimes")

(define-symbolic-buffer sum uint16_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var t356 uint16_t)
(define-symbolic-var output_max uint8_t)

(define axioms 
  (list ))


(define halide-expr
 (let ([t486  (vec-mul
  (uint32x128
   (load sum (ramp 0 1 128) (aligned 0 0)))
  (uint32x128
   (x128 t356)))])
  (vec-max
   (vec-min
    (uint8x128
     (vec-min
      (uint16x128
       (vec-add
        (vec-bwand
         (x128 (uint32_t (bv 1 32)))
         (vec-div
          t486
          (x128 (uint32_t (bv 32768 32)))))
        (vec-div
         t486
         (x128 (uint32_t (bv 65536 32))))))
      (x128 (uint16_t (bv 255 16)))))
    (x128 output_max))
   (x128 output_min))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_5.out")