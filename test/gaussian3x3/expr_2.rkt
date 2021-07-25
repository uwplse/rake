#lang rosette/safe

(require rake)
(init-logging "expr_2.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t46 integer?)
(define-symbolic t79 integer?)

(define axioms 
  (list ))

(define input.stride.1 (var-lookup 'input.stride.1 t46))
(define t12 (var-lookup 't12 (sca-add  (sca-mul  output.s0.x.x  128)  t79)))

(define halide-expr
 (let ([t80  (sca-sub  t12  input.stride.1)])
  (let ([t81   (sca-add   input.stride.1   t12)])
   (let ([t82    (vec-add
    (vec-add
     (vec-add
      (vec-mul
       (int16x128
        (load input (ramp (sca-add t12 1) 1 128) (aligned 2 1)))
       (x128 (int16_t (bv 2 16))))
      (vec-add
       (vec-add
        (vec-mul
         (vec-add
          (vec-add
           (vec-add
            (vec-mul
             (int16x128
              (load input (ramp t12 1 128) (aligned 2 0)))
             (x128 (int16_t (bv 2 16))))
            (int16x128
             (load input (ramp t80 1 128) (aligned 1 0))))
           (int16x128
            (load input (ramp t81 1 128) (aligned 1 0))))
          (int16x128
           (load input (ramp (sca-add t12 -1) 1 128) (aligned 2 1))))
         (x128 (int16_t (bv 2 16))))
        (int16x128
         (load input (ramp (sca-add t80 -1) 1 128) (aligned 1 0))))
       (int16x128
        (load input (ramp (sca-add t81 -1) 1 128) (aligned 1 0)))))
     (int16x128
      (load input (ramp (sca-add t80 1) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (sca-add t81 1) 1 128) (aligned 1 0))))])
    (uint8x128
     (vec-add
      (vec-bwand
       (x128 (int16_t (bv 1 16)))
       (vec-div
        t82
        (x128 (int16_t (bv 8 16)))))
      (vec-div
       t82
       (x128 (int16_t (bv 16 16))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_2.out")