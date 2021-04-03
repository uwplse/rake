#lang rosette

(require rake)
(require rake/halide)

(error-print-width 100000)
(debug-on)

(define-symbolic input (~> integer? (bitvector 8)))
(init-var-types (make-hash (list (cons input 'uint8))))

(define axioms 
  (list ))

(define-symbolic input.stride.1 integer?)
(define-symbolic rows.s0.x.x integer?)
(define-symbolic output.s0.y.y integer?)

(define t19 (+ (* rows.s0.x.x 32) (* input.stride.1 output.s0.y.y)))

(define halide-expr
 (vec-add
  (vec-add
   (vec-add
    (vec-mul
     (int16x128
      (load input (ramp (+ (* (+ (* t19 -4) input.stride.1) -1) -2) 1 128) (aligned 128 126)))
     (x128 (int16_t (bv 4 16))))
    (vec-add
     (vec-mul
      (int16x128
       (load input (ramp (+ (* t19 4) -2) 1 128) (aligned 128 126)))
      (int16x128
       (x128 (int8_t (bv 6 8)))))
     (vec-mul
      (int16x128
       (load input (ramp (+ (+ (* t19 4) input.stride.1) -2) 1 128) (aligned 128 126)))
      (x128 (int16_t (bv 4 16))))))
   (int16x128
    (load input (ramp (+ (* (+ (* t19 -2) input.stride.1) -2) -2) 1 128) (aligned 128 126))))
  (int16x128
   (load input (ramp (+ (* (+ (* t19 2) input.stride.1) 2) -2) 1 128) (aligned 128 126)))))

(define spec (synthesis-spec halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'halide-ir 'greedy 'enumerative 'enumerative))

(define out (open-output-file "sexp_0.out" #:exists 'replace))
(pretty-write (llvm-codegen hvx-expr) out)
(close-output-port out)