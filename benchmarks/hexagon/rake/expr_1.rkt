#lang rosette
; uint8x128((int16x128)rounding_shift_right((((int16x128((uint8x128)input[ramp(t9 + 1, 1, 128)])*x128((int16)2)) + (((((((int16x128((uint8x128)input[ramp(t9, 1, 128)])*x128((int16)2)) + int16x128((uint8x128)input[ramp((input.stride.1*-1) + t9, 1, 128)])) + int16x128((uint8x128)input[ramp(input.stride.1 + t9, 1, 128)])) + int16x128((uint8x128)input[ramp(t9 + -1, 1, 128)]))*x128((int16)2)) + int16x128((uint8x128)input[ramp(((input.stride.1*-1) + t9) + -1, 1, 128)])) + int16x128((uint8x128)input[ramp((input.stride.1 + t9) + -1, 1, 128)]))) + int16x128((uint8x128)input[ramp(((input.stride.1*-1) + t9) + 1, 1, 128)])) + int16x128((uint8x128)input[ramp((input.stride.1 + t9) + 1, 1, 128)]), x128((uint16)4)))

(require rake)
(require rake/halide)

(error-print-width 100000)
(debug-on)

(define-symbolic input (~> integer? (bitvector 8)))
(init-var-types (make-hash (list (cons input 'uint8))))

(define-symbolic output.s0.x.x integer?)
(define-symbolic t63 integer?)
(define-symbolic t46 integer?)

(define axioms 
  (list ))

(define input.stride.1 t46)
(define t9 (+   (*    output.s0.x.x    128)   t63))

(define halide-expr
 (uint8x128
  (shift_right
   (vec-add
    (vec-add
     (vec-add
      (vec-add
       (vec-mul
        (int16x128
         (load input (ramp (+  t9  1) 1 128) (aligned 1 0)))
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
              (load input (ramp (+  (*   input.stride.1   -1)  t9) 1 128) (aligned 1 0))))
            (int16x128
             (load input (ramp (+  input.stride.1  t9) 1 128) (aligned 1 0))))
           (int16x128
            (load input (ramp (+  t9  -1) 1 128) (aligned 1 0))))
          (x128 (int16_t (bv 2 16))))
         (int16x128
          (load input (ramp (+  (+   (*    input.stride.1    -1)   t9)  -1) 1 128) (aligned 1 0))))
        (int16x128
         (load input (ramp (+  (+   input.stride.1   t9)  -1) 1 128) (aligned 1 0)))))
      (int16x128
       (load input (ramp (+  (+   (*    input.stride.1    -1)   t9)  1) 1 128) (aligned 1 0))))
     (int16x128
      (load input (ramp (+  (+   input.stride.1   t9)  1) 1 128) (aligned 1 0))))
    (x128 (int16_t (bv 8 16))))
   (x128 (uint16_t (bv 4 16))))))

(define spec (synthesis-spec halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'halide-ir 'greedy 'enumerative 'enumerative))

(define out (open-output-file "sexp_1.out" #:exists 'replace))
(pretty-write (llvm-codegen hvx-expr) out)
(close-output-port out)