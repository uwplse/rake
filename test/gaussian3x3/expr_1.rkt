#lang rosette/safe

(require rake)

(define-symbolic-buffer input uint8_t)
(define-symbolic output.s0.x.x integer?)
(define-symbolic t46 integer?)
(define-symbolic t72 integer?)

(define axioms 
  (list ))

(define input.stride.1 t46)
(define t9 (+  (*  output.s0.x.x  128)  t72))

(define halide-expr
 (uint8x128
  (vec-add
   (vec-bwand
    (x128 (int16_t (bv 1 16)))
    (vec-div
     (vec-add
      (vec-add
       (vec-add
        (vec-mul
         (int16x128
          (load input (ramp (+ t9 1) 1 128) (aligned 1 0)))
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
               (load input (ramp (- t9 input.stride.1) 1 128) (aligned 1 0))))
             (int16x128
              (load input (ramp (+ input.stride.1 t9) 1 128) (aligned 1 0))))
            (int16x128
             (load input (ramp (+ t9 -1) 1 128) (aligned 1 0))))
           (x128 (int16_t (bv 2 16))))
          (int16x128
           (load input (ramp (+ (- t9 input.stride.1) -1) 1 128) (aligned 1 0))))
         (int16x128
          (load input (ramp (+ (+ input.stride.1 t9) -1) 1 128) (aligned 1 0)))))
       (int16x128
        (load input (ramp (+ (- t9 input.stride.1) 1) 1 128) (aligned 1 0))))
      (int16x128
       (load input (ramp (+ (+ input.stride.1 t9) 1) 1 128) (aligned 1 0))))
     (x128 (int16_t (bv 8 16)))))
   (vec-div
    (vec-add
     (vec-add
      (vec-add
       (vec-mul
        (int16x128
         (load input (ramp (+ t9 1) 1 128) (aligned 1 0)))
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
              (load input (ramp (- t9 input.stride.1) 1 128) (aligned 1 0))))
            (int16x128
             (load input (ramp (+ input.stride.1 t9) 1 128) (aligned 1 0))))
           (int16x128
            (load input (ramp (+ t9 -1) 1 128) (aligned 1 0))))
          (x128 (int16_t (bv 2 16))))
         (int16x128
          (load input (ramp (+ (- t9 input.stride.1) -1) 1 128) (aligned 1 0))))
        (int16x128
         (load input (ramp (+ (+ input.stride.1 t9) -1) 1 128) (aligned 1 0)))))
      (int16x128
       (load input (ramp (+ (- t9 input.stride.1) 1) 1 128) (aligned 1 0))))
     (int16x128
      (load input (ramp (+ (+ input.stride.1 t9) 1) 1 128) (aligned 1 0))))
    (x128 (int16_t (bv 16 16)))))))

(define spec (synthesis-spec 'halide-ir halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'greedy 'enumerative 'enumerative))

;(define out (open-output-file "sexp_1.out" #:exists 'replace))
;(pretty-write (llvm-codegen hvx-expr) out)
;(close-output-port out)