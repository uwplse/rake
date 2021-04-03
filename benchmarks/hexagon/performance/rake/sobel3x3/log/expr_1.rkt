#lang rosette

(require rake)
(require rake/halide)

(error-print-width 100000)
(debug-on)

(define-symbolic input (~> integer? (bitvector 8)))
(init-var-types (make-hash (list (cons input 'uint8))))

(define-symbolic output.s0.x.x integer?)
(define-symbolic output.s0.y.y integer?)
(define-symbolic input.stride.1 integer?)

(define axioms 
  (list ))

(define t85 (+ (* output.s0.x.x 128) (* (+ (* output.s0.y.y 4) 1) input.stride.1)))
(define t87.s (load input (ramp (+ (+ (* input.stride.1 -1) t85) -1) 1 128) (aligned 1 0)))
(define t88.s (load input (ramp (+ (+ (* input.stride.1 -1) t85) 1) 1 128) (aligned 1 0)))
(define t90.s (load input (ramp (+ (+ input.stride.1 t85) -1) 1 128) (aligned 128 127)))
(define t91.s (load input (ramp (+ (+ input.stride.1 t85) 1) 1 128) (aligned 128 1)))

(define halide-expr
 (uint8x128
  (vec-min
   (vec-add
    (absd
     (vec-add
      (vec-add
       (shift_left
        (uint16x128
         (load input (ramp (+ (* input.stride.1 -1) t85) 1 128) (aligned 1 0)))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t87.s))
      (uint16x128
       t88.s))
     (vec-add
      (vec-add
       (shift_left
        (uint16x128
         (load input (ramp (+ input.stride.1 t85) 1 128) (aligned 128 0)))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t90.s))
      (uint16x128
       t91.s)))
    (absd
     (vec-add
      (vec-add
       (shift_left
        (uint16x128
         (load input (ramp (+ t85 -1) 1 128) (aligned 128 127)))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t87.s))
      (uint16x128
       t90.s))
     (vec-add
      (vec-add
       (shift_left
        (uint16x128
         (load input (ramp (+ t85 1) 1 128) (aligned 128 1)))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t88.s))
      (uint16x128
       t91.s))))
   (x128 (uint16_t (bv 255 16))))))

(define spec (synthesis-spec halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'halide-ir 'greedy 'enumerative 'enumerative))

(define out (open-output-file "sexp_1.out" #:exists 'replace))
(pretty-write (llvm-codegen hvx-expr) out)
(close-output-port out)