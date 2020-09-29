#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require rake)
(require rake/halide/ir/interpreter)

(error-print-width 100000)
(debug-on)

;; Model buffers as uninterpreted functions
(define-symbolic input (~> integer? (bitvector 8)))

(init-var-types (make-hash (list (cons input 'uint8))))

;; Model indexing variables as integers
(define-symbolic t77 integer?)
(define-symbolic input.stride.1 integer?)

;; Define original expression in Halide IR
(define halide-expr
  (vec-add
   (vec-add
    (vec-add
     (vec-mul
      (int16x128 (ramp input (+ (- (* t77 4) input.stride.1) -2) 1 128))
      (x128 (int16_t (bv 4 16))))
     (vec-add
      (vec-mul
       (int16x128 (ramp input (+ (+ (* t77 4) input.stride.1) -2) 1 128))
       (x128 (int16_t (bv 4 16))))
      (vec-mul
       (int16x128 (ramp input (+ (* t77 4) -2) 1 128))
       (x128 (int16_t (bv 6 16))))))
    (int16x128 (ramp input (+ (* (- (* t77 2) input.stride.1) 2) -2) 1 128)))
   (int16x128 (ramp input (+ (* (+ (* t77 2) input.stride.1) 2) -2) 1 128))))

;; Define the specification for the synthesizer
(define spec (synthesis-spec halide-expr (list input t77 input.stride.1) (list)))

(define hvx-expr (synthesize-hvx spec))

;(basic-expr-cost hvx-expr)

;(println hvx-expr)