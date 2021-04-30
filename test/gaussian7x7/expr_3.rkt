#lang rosette/safe

(require rake)

(define-symbolic-buffer input uint8_t)
(define-symbolic rows.s0.x.x integer?)
(define-symbolic t143 integer?)
(define-symbolic t103 integer?)

(define axioms 
  (list ))

(define input.stride.1 t103)
(define t6 (+   (*    rows.s0.x.x    128)   t143))

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
           (load input (ramp (+  (+   (*    input.stride.1    2)   t6)  -3) 1 128) (aligned 128 125))))
         (int16x128
          (x128 (int8_t (bv 6 8))))))
       (int32x128
        (vec-mul
         (int16x128
          (uint16x128
           (load input (ramp (+  (+   input.stride.1   t6)  -3) 1 128) (aligned 128 125))))
         (int16x128
          (x128 (int8_t (bv 15 8)))))))
      (int32x128
       (vec-mul
        (int16x128
         (uint16x128
          (load input (ramp (+  t6  -3) 1 128) (aligned 128 125))))
        (int16x128
         (x128 (int8_t (bv 20 8)))))))
     (int32x128
      (vec-mul
       (int16x128
        (uint16x128
         (load input (ramp (+  (+   (*    input.stride.1    -1)   t6)  -3) 1 128) (aligned 1 0))))
       (int16x128
        (x128 (int8_t (bv 15 8)))))))
    (int32x128
     (vec-mul
      (int16x128
       (uint16x128
        (load input (ramp (+  (+   (*    input.stride.1    -2)   t6)  -3) 1 128) (aligned 128 125))))
      (int16x128
       (x128 (int8_t (bv 6 8)))))))
   (int32x128
    (load input (ramp (+  (+   (*    input.stride.1    -3)   t6)  -3) 1 128) (aligned 128 125))))
  (int32x128
   (load input (ramp (+  (+   (*    input.stride.1    3)   t6)  -3) 1 128) (aligned 128 125)))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_3.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)