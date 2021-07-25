#lang rosette/safe

(require rake)
(init-logging "expr_3.runtimes")

(define-symbolic-buffer input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t46 integer?)
(define-symbolic t92 integer?)

(define axioms 
  (list ))

(define input.stride.1 (var-lookup 'input.stride.1 t46))
(define t15 (var-lookup 't15 (sca-add  (sca-mul  output.s0.x.x  128)  t92)))

(define halide-expr
 (let ([t93  (sca-sub  t15  input.stride.1)])
  (let ([t94   (sca-add   input.stride.1   t15)])
   (let ([t95    (vec-add
    (vec-add
     (vec-add
      (vec-mul
       (int16x128
        (load input (ramp (sca-add t15 1) 1 128) (aligned 1 0)))
       (x128 (int16_t (bv 2 16))))
      (vec-add
       (vec-add
        (vec-mul
         (vec-add
          (vec-add
           (vec-add
            (vec-mul
             (int16x128
              (load input (ramp t15 1 128) (aligned 1 0)))
             (x128 (int16_t (bv 2 16))))
            (int16x128
             (load input (ramp t93 1 128) (aligned 1 0))))
           (int16x128
            (load input (ramp t94 1 128) (aligned 1 0))))
          (int16x128
           (load input (ramp (sca-add t15 -1) 1 128) (aligned 1 0))))
         (x128 (int16_t (bv 2 16))))
        (int16x128
         (load input (ramp (sca-add t93 -1) 1 128) (aligned 1 0))))
       (int16x128
        (load input (ramp (sca-add t94 -1) 1 128) (aligned 1 0)))))
     (int16x128
      (load input (ramp (sca-add t93 1) 1 128) (aligned 1 0))))
    (int16x128
     (load input (ramp (sca-add t94 1) 1 128) (aligned 1 0))))])
    (uint8x128
     (vec-add
      (vec-bwand
       (x128 (int16_t (bv 1 16)))
       (vec-div
        t95
        (x128 (int16_t (bv 8 16)))))
      (vec-div
       t95
       (x128 (int16_t (bv 16 16))))))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

(llvm-codegen hvx-expr "sexp_3.out")