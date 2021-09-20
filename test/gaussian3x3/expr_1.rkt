#lang rosette/safe

(require rake)
(init-logging "expr_1.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic t46 integer?)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t66 integer?)

(define axioms 
  (list ))

(define input.stride.1 (var-lookup 'input.stride.1 t46))
(define t9 (var-lookup 't9 (sca-add  (sca-mul  output.s0.x.x  128)  t66)))

(define halide-expr
 (let ([t67  (sca-sub  t9  input.stride.1)])
  (let ([t68   (sca-add   input.stride.1   t9)])
   (let ([t69    (vec-add
    (vec-add
     (vec-add
      (vec-mul
       (int16x128
        (load input (ramp (sca-add t9 1) 1 128) (aligned 1 0)))
       (x128 (int16_t (bv 2 16))))
      (vec-add
       (vec-add
        (vec-mul
         (vec-add
          (vec-add
           (vec-add
            (vec-mul
             (int16x128
              (load input (ramp t9 1 128) (aligned 1 0)))
             (x128 (int16_t (bv 2 16))))
            (int16x128
             (load input (ramp t67 1 128) (aligned 1 0))))
           (int16x128
            (load input (ramp t68 1 128) (aligned 1 0))))
          (int16x128
           (load input (ramp (sca-add t9 -1) 1 128) (aligned 1 0))))
         (x128 (int16_t (bv 2 16))))
        (int16x128
         (load input (ramp (sca-add t67 -1) 1 128) (aligned 1 0))))
       (int16x128
        (load input (ramp (sca-add t68 -1) 1 128) (aligned 1 0)))))
     (int16x128
      (load input (ramp (sca-add t67 1) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (sca-add t68 1) 1 128) (aligned 1 0))))])
    (uint8x128
     (vec-add
      (vec-bwand
       (x128 (int16_t (bv 1 16)))
       (vec-div
        t69
        (x128 (int16_t (bv 8 16)))))
      (vec-div
       t69
       (x128 (int16_t (bv 16 16))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_1.out")