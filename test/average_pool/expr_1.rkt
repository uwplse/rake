#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer sum uint16_t)
(define-symbolic-var t288 uint16_t)
(define-symbolic-var output_max uint8_t)
(define-symbolic-var output_min uint8_t)

(define axioms 
  (list ))


(define halide-expr
 (let ([t442  (vec-mul
  (uint32x512
   (load sum (ramp 0 1 512) (aligned 0 0)))
  (uint32x512
   (x512 t288)))])
  (vec-max
   (vec-min
    (uint8x512
     (vec-min
      (uint16x512
       (vec-add
        (vec-bwand
         (x512 (uint32_t (bv 1 32)))
         (vec-div
          t442
          (x512 (uint32_t (bv 32768 32)))))
        (vec-div
         t442
         (x512 (uint32_t (bv 65536 32))))))
      (x512 (uint16_t (bv 255 16)))))
    (x512 output_max))
   (x512 output_min))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")