#lang rosette/safe

(require rake)
(init-logging "expr_121.runtimes")

(define-symbolic-buffer convolved int32_t)
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var output_shift int32_t)

(define axioms 
  (list ))


(define halide-expr
 (let ([t1822  (vec-mul
  (int64x32
   (load convolved (ramp 160 1 32) (aligned 0 160)))
  (int64x32
   (x32 output_multiplier)))])
  (let ([t1823   (int32x32
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x32 (int64_t (bv 1 64)))
       (vec-div
        t1822
        (x32 (int64_t (bv 1073741824 64)))))
      (vec-div
       t1822
       (x32 (int64_t (bv 2147483648 64)))))
     (x32 (int64_t (bv 2147483647 64))))
    (x32 (int64_t (bv -2147483648 64)))))])
   (vec-max
    (vec-min
     (vec-add
      (vec-shr
       t1823
       (x32 output_shift))
      (vec-bwand
       (vec-if
        (x32 (sca-lt (int32_t (bv 0 32)) output_shift))
        (x32 (int32_t (bv 1 32)))
        (x32 (int32_t (bv 0 32))))
       (vec-shr
        t1823
        (x32 (sca-add output_shift (int32_t (bv -1 32)))))))
     (x32 (int32_t (bv 32767 32))))
    (x32 (int32_t (bv -32768 32)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_121.out")