#lang rosette/safe

(require rake)
(init-logging "expr_139.runtimes")

(define-symbolic-buffer t1929-buf int32_t)
(define t1929 (load t1929-buf (ramp 0 1 32) (aligned 0 0)))
(define-symbolic-var output_multiplier int32_t)
(define-symbolic-var output_shift int32_t)

(define axioms 
  (list ))


(define halide-expr
 (let ([t1930  (vec-mul
  (int64x32
   t1929)
  (int64x32
   (x32 output_multiplier)))])
  (let ([t1931   (int32x32
   (vec-max
    (vec-min
     (vec-add
      (vec-bwand
       (x32 (int64_t (bv 1 64)))
       (vec-div
        t1930
        (x32 (int64_t (bv 1073741824 64)))))
      (vec-div
       t1930
       (x32 (int64_t (bv 2147483648 64)))))
     (x32 (int64_t (bv 2147483647 64))))
    (x32 (int64_t (bv -2147483648 64)))))])
   (vec-max
    (vec-min
     (vec-add
      (vec-shr
       t1931
       (x32 output_shift))
      (vec-bwand
       (vec-if
        (x32 (sca-lt (int32_t (bv 0 32)) output_shift))
        (x32 (int32_t (bv 1 32)))
        (x32 (int32_t (bv 0 32))))
       (vec-shr
        t1931
        (x32 (sca-add output_shift (int32_t (bv -1 32)))))))
     (x32 (int32_t (bv 32767 32))))
    (x32 (int32_t (bv -32768 32)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_139.out")