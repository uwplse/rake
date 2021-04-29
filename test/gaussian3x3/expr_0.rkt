#lang rosette/safe

(require rake)

(define-symbolic-buffer input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t49 integer?)
(define-symbolic t56 integer?)

(define axioms 
  (list ))

(define input.stride.1 t49)
(define t6 (+   (*    output.s0.x.x    32)   t56))

(define halide-expr
 (uint8x128
  (vec-shr
   (vec-add
    (vec-add
     (vec-add
      (vec-add
       (vec-mul
        (int16x128
         (load input (ramp (+  (*   t6   4)  1) 1 128) (aligned 4 1)))
        (x128 (int16_t (bv 2 16))))
       (vec-add
        (vec-add
         (vec-mul
          (vec-add
           (vec-add
            (vec-add
             (vec-mul
              (int16x128
               (load input (ramp (*  t6  4) 1 128) (aligned 4 0)))
              (x128 (int16_t (bv 2 16))))
             (int16x128
              (load input (ramp (*  (+   (*    t6    -4)   input.stride.1)  -1) 1 128) (aligned 1 0))))
            (int16x128
             (load input (ramp (+  (*   t6   4)  input.stride.1) 1 128) (aligned 1 0))))
           (int16x128
            (load input (ramp (+  (*   t6   4)  -1) 1 128) (aligned 4 3))))
          (x128 (int16_t (bv 2 16))))
         (int16x128
          (load input (ramp (+  (*   (+    (*     t6     -4)    input.stride.1)   -1)  -1) 1 128) (aligned 1 0))))
        (int16x128
         (load input (ramp (+  (+   (*    t6    4)   input.stride.1)  -1) 1 128) (aligned 1 0)))))
      (int16x128
       (load input (ramp (+  (*   (+    (*     t6     -4)    input.stride.1)   -1)  1) 1 128) (aligned 1 0))))
     (int16x128
      (load input (ramp (+  (+   (*    t6    4)   input.stride.1)  1) 1 128) (aligned 1 0))))
    (x128 (int16_t (bv 8 16))))
   (x128 (uint16_t (bv 4 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_0.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)