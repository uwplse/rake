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

(define t78 (+ (* output.s0.x.x 32) (* input.stride.1 output.s0.y.y)))
(define t80.s (load input (ramp (+ (* (+ (* t78 -4) input.stride.1) -1) -1) 1 128) (aligned 128 127)))
(define t81.s (load input (ramp (+ (* (+ (* t78 -4) input.stride.1) -1) 1) 1 128) (aligned 128 1)))
(define t83.s (load input (ramp (+ (+ (* t78 4) input.stride.1) -1) 1 128) (aligned 128 127)))
(define t84.s (load input (ramp (+ (+ (* t78 4) input.stride.1) 1) 1 128) (aligned 128 1)))

(define halide-expr
 (uint8x128
  (vec-min
   (vec-add
    (absd
     (vec-add
      (vec-add
       (shift_left
        (uint16x128
         (load input (ramp (* (+ (* t78 -4) input.stride.1) -1) 1 128) (aligned 128 0)))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t80.s))
      (uint16x128
       t81.s))
     (vec-add
      (vec-add
       (shift_left
        (uint16x128
         (load input (ramp (+ (* t78 4) input.stride.1) 1 128) (aligned 128 0)))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t83.s))
      (uint16x128
       t84.s)))
    (absd
     (vec-add
      (vec-add
       (shift_left
        (uint16x128
         (load input (ramp (+ (* t78 4) -1) 1 128) (aligned 128 127)))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t80.s))
      (uint16x128
       t83.s))
     (vec-add
      (vec-add
       (shift_left
        (uint16x128
         (load input (ramp (+ (* t78 4) 1) 1 128) (aligned 128 1)))
        (x128 (uint16_t (bv 1 16))))
       (uint16x128
        t81.s))
      (uint16x128
       t84.s))))
   (x128 (uint16_t (bv 255 16))))))

(define spec (synthesis-spec halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'halide-ir 'greedy 'enumerative 'enumerative))

(define out (open-output-file "sexp_0.out" #:exists 'replace))
(pretty-write (llvm-codegen hvx-expr) out)
(close-output-port out)