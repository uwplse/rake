#lang rosette/safe

(require rake)

(define-symbolic-buffer curve uint8_t)
(define-symbolic-buffer f27 int16_t)

(define axioms 
  (list 
   (values-range-from curve (uint8_t (bv 0 8)) (uint8_t (bv 255 8)))
   (values-range-from f27 (int16_t (bv -32768 16)) (int16_t (bv 32767 16)))))

(define t3732 (load f27 (ramp 384 1 128) (aligned 0 384)))
(define t3733 (dynamic_shuffle
  (load curve (ramp 0 1 128) (aligned 0 0))
  (uint8x128
   (vec-max
    (vec-min
     (vec-div
      t3732
      (x128 8))
     (x128 127))
    (x128 0)))
  0
  127))

(define halide-expr
 (uint8x128
  (vec-div
   (vec-add
    (vec-mul
     (vec-mod
      t3732
      (x128 (int16_t (bv 8 16))))
     (int16x128
      (vec-sub
       (dynamic_shuffle
        (load curve (ramp 0 1 128) (aligned 0 0))
        (uint8x128
         (vec-max
          (vec-min
           (vec-add
            (vec-div
             t3732
             (x128 8))
            (x128 1))
           (x128 127))
          (x128 0)))
        0
        127)
       t3733)))
    (int16x128
     (vec-shl
      (uint16x128
       t3733)
      (x128 (uint16_t (bv 3 16))))))
   (x128 (int16_t (bv 8 16))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_23.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)