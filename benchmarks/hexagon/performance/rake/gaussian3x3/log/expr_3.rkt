#lang rosette

(require rake)
(require rake/halide)

(error-print-width 100000)
(debug-on)

(define-symbolic input (~> integer? (bitvector 8)))
(init-var-types (make-hash (list (cons input 'uint8))))

(define-symbolic input.stride.1 integer?)
(define-symbolic output.s0.y.y integer?)
(define-symbolic rows.s0.x.x integer?)

(define axioms 
  (list ))

(define t10 (+ (* rows.s0.x.x 128) (* (+ (* output.s0.y.y 4) 3) input.stride.1)))

(define halide-expr
 (vec-add
  (vec-add
   (vec-mul
    (int16x128
     (load input (ramp (+ t10 -1) 1 128) (aligned 128 127)))
    (x128 (int16_t (bv 2 16))))
   (int16x128
    (load input (ramp (+ (+ (* input.stride.1 -1) t10) -1) 1 128) (aligned 1 0))))
  (int16x128
   (load input (ramp (+ (+ input.stride.1 t10) -1) 1 128) (aligned 128 127)))))

(define spec (synthesis-spec halide-expr axioms))
(define hvx-expr (synthesize-hvx spec 'halide-ir 'greedy 'enumerative 'enumerative))

(define out (open-output-file "sexp_3.out" #:exists 'replace))
(pretty-write (llvm-codegen hvx-expr) out)
(close-output-port out)