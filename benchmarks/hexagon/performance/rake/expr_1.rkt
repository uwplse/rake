#lang rosette

(require rake)
(require rake/halide)

(error-print-width 100000)
(debug-on)

(define-symbolic input (~> integer? (bitvector 8)))
(define-symbolic mask (~> integer? (bitvector 8)))
(init-var-types (make-hash (list (cons input 'uint8) (cons mask 'int8))))

(define-symbolic output.s0.y.y.y integer?)
(define-symbolic output.s0.x.x integer?)
(define-symbolic output.s0.y.yo integer?)
(define-symbolic output.extent.1 integer?)
(define-symbolic input.stride.1 integer?)

(define axioms 
  (list ))

(define t38 (- output.extent.1 (quotient output.extent.1 2)))
(define output.s0.y.y.base (min (* (quotient output.extent.1 2) output.s0.y.yo) t38))
(define t18 (+ (* output.s0.x.x 128) (* (+ (+ (* output.s0.y.y.y 4) output.s0.y.y.base) 1) input.stride.1)))

(define halide-expr
 (uint8x128
  (vec-max
   (vec-min
    (vec-div
     (vec-add
      (vec-mul
       (int16x128
        (uint16x128
         (load input (ramp (+ t18 -1) 1 128) (aligned 128 127))))
       (int16x128
        (x128 (get mask 3))))
      (vec-add
       (vec-mul
        (int16x128
         (uint16x128
          (load input (ramp (+ (+ (* input.stride.1 -1) t18) -1) 1 128) (aligned 1 0))))
        (int16x128
         (x128 (get mask 0))))
       (vec-add
        (vec-mul
         (int16x128
          (uint16x128
           (load input (ramp (+ (+ input.stride.1 t18) -1) 1 128) (aligned 128 127))))
         (int16x128
          (x128 (get mask 6))))
        (vec-add
         (vec-mul
          (int16x128
           (uint16x128
            (load input (ramp (+ (* input.stride.1 -1) t18) 1 128) (aligned 1 0))))
          (int16x128
           (x128 (get mask 1))))
         (vec-add
          (vec-mul
           (int16x128
            (uint16x128
             (load input (ramp t18 1 128) (aligned 128 0))))
           (int16x128
            (x128 (get mask 4))))
          (vec-add
           (vec-mul
            (int16x128
             (uint16x128
              (load input (ramp (+ input.stride.1 t18) 1 128) (aligned 128 0))))
            (int16x128
             (x128 (get mask 7))))
           (vec-add
            (vec-mul
             (int16x128
              (uint16x128
               (load input (ramp (+ (+ (* input.stride.1 -1) t18) 1) 1 128) (aligned 1 0))))
             (int16x128
              (x128 (get mask 2))))
            (vec-add
             (vec-mul
              (int16x128
               (uint16x128
                (load input (ramp (+ (+ input.stride.1 t18) 1) 1 128) (aligned 128 1))))
              (int16x128
               (x128 (get mask 8))))
             (vec-mul
              (int16x128
               (uint16x128
                (load input (ramp (+ t18 1) 1 128) (aligned 128 1))))
              (int16x128
               (x128 (get mask 5))))))))))))
     (x128 (int16_t (bv 16 16))))
    (x128 (int16_t (bv 255 16))))
   (x128 (int16_t (bv 0 16))))))

(define spec (synthesis-spec halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'halide-ir 'greedy 'enumerative 'enumerative))

(define out (open-output-file "sexp_1.out" #:exists 'replace))
(pretty-write (llvm-codegen hvx-expr) out)
(close-output-port out)