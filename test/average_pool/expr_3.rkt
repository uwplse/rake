#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer sum uint16_t)
(define-symbolic-var t322 uint16_t)
(define-symbolic-var output_min uint8_t)
(define-symbolic-var output_max uint8_t)

(define axioms 
  (list ))


(define halide-expr
 (let ([t466  (vec-mul
  (uint32x256
   (load sum (ramp 0 1 256) (aligned 0 0)))
  (uint32x256
   (x256 t322)))])
  (vec-max
   (vec-min
    (uint8x256
     (vec-min
      (uint16x256
       (vec-add
        (vec-bwand
         (x256 (uint32_t (bv 1 32)))
         (vec-div
          t466
          (x256 (uint32_t (bv 32768 32)))))
        (vec-div
         t466
         (x256 (uint32_t (bv 65536 32))))))
      (x256 (uint16_t (bv 255 16)))))
    (x256 output_max))
   (x256 output_min))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")