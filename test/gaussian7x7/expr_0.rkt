#lang rosette/safe

(require rake)

(define-symbolic-buffer input uint8_t)
(define-symbolic rows.s0.x.x integer?)
(define-symbolic t103 integer?)
(define-symbolic t113 integer?)

(define axioms 
  (list ))

(define input.stride.1 t103)
(define t3 (+   (*    rows.s0.x.x    32)   t113))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-add
     (vec-add
      (vec-add
       (int32x128
        (vec-mul
         (int16x128
          (uint16x128
           (load input (ramp (+  (*   (+    (*     t3     2)    input.stride.1)   2)  -3) 1 128) (aligned 128 125))))
         (int16x128
          (x128 (int8_t (bv 6 8))))))
       (int32x128
        (vec-mul
         (int16x128
          (uint16x128
           (load input (ramp (+  (+   (*    t3    4)   input.stride.1)  -3) 1 128) (aligned 128 125))))
         (int16x128
          (x128 (int8_t (bv 15 8)))))))
      (int32x128
       (vec-mul
        (int16x128
         (uint16x128
          (load input (ramp (+  (*   t3   4)  -3) 1 128) (aligned 128 125))))
        (int16x128
         (x128 (int8_t (bv 20 8)))))))
     (int32x128
      (vec-mul
       (int16x128
        (uint16x128
         (load input (ramp (+  (*   (+    (*     t3     -4)    input.stride.1)   -1)  -3) 1 128) (aligned 128 125))))
       (int16x128
        (x128 (int8_t (bv 15 8)))))))
    (int32x128
     (vec-mul
      (int16x128
       (uint16x128
        (load input (ramp (+  (*   (+    (*     t3     -2)    input.stride.1)   -2)  -3) 1 128) (aligned 128 125))))
      (int16x128
       (x128 (int8_t (bv 6 8)))))))
   (int32x128
    (load input (ramp (+  (+   (*    input.stride.1    -3)   (*    t3    4))  -3) 1 128) (aligned 128 125))))
  (int32x128
   (load input (ramp (+  (+   (*    input.stride.1    3)   (*    t3    4))  -3) 1 128) (aligned 128 125)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_0.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)