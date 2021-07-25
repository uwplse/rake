#lang rosette/safe

(require rake)
(init-logging "expr_0.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic t53 integer?)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t46 integer?)

(define axioms 
  (list ))

(define input.stride.1 (var-lookup 'input.stride.1 t46))
(define t6 (var-lookup 't6 (sca-add  (sca-mul  output.s0.x.x  32)  t53)))

(define halide-expr
 (let ([t54  (sca-sub  (sca-mul  t6  4)  input.stride.1)])
  (let ([t55   (sca-add   (sca-mul   t6   4)   input.stride.1)])
   (let ([t56    (vec-add
    (vec-add
     (vec-add
      (vec-mul
       (int16x128
        (load input (ramp (sca-add (sca-mul t6 4) 1) 1 128) (aligned 4 1)))
       (x128 (int16_t (bv 2 16))))
      (vec-add
       (vec-add
        (vec-mul
         (vec-add
          (vec-add
           (vec-add
            (vec-mul
             (int16x128
              (load input (ramp (sca-mul t6 4) 1 128) (aligned 4 0)))
             (x128 (int16_t (bv 2 16))))
            (int16x128
             (load input (ramp t54 1 128) (aligned 1 0))))
           (int16x128
            (load input (ramp t55 1 128) (aligned 1 0))))
          (int16x128
           (load input (ramp (sca-add (sca-mul t6 4) -1) 1 128) (aligned 4 3))))
         (x128 (int16_t (bv 2 16))))
        (int16x128
         (load input (ramp (sca-add t54 -1) 1 128) (aligned 1 0))))
       (int16x128
        (load input (ramp (sca-add t55 -1) 1 128) (aligned 1 0)))))
     (int16x128
      (load input (ramp (sca-add t54 1) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (sca-add t55 1) 1 128) (aligned 1 0))))])
    (uint8x128
     (vec-add
      (vec-bwand
       (x128 (int16_t (bv 1 16)))
       (vec-div
        t56
        (x128 (int16_t (bv 8 16)))))
      (vec-div
       t56
       (x128 (int16_t (bv 16 16))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_0.out")