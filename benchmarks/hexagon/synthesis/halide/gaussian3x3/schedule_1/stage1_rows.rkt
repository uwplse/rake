#lang rosette

(require rake)
(require rake/halide)

(error-print-width 100000)
(debug-on)

;; Model buffers as uninterpreted functions
(define-symbolic input (~> integer? (bitvector 8)))

(init-var-types (make-hash (list (cons input 'uint8))))

;; Model indexing variables as integers
(define-symbolic input.stride.1 integer?)
(define-symbolic rows.s0.x.x integer?)
(define-symbolic output.s0.y.y integer?)
(define-symbolic output.s0.y.yi integer?)

;; Define original expression in Halide IR
(define halide-expr
  (vec-add
   (vec-add
    (vec-mul
     (int16x128 (ramp input (+ (* (+ (* (quotient input.stride.1 128) (+ (* output.s0.y.y 4) output.s0.y.yi)) rows.s0.x.x) 128) -1) 1 128))
     (x128 (int16_t (bv 2 16))))
    (int16x128 (ramp input (+ (* (+ (* (quotient input.stride.1 128) (+ (+ (* output.s0.y.y 4) output.s0.y.yi) -1)) rows.s0.x.x) 128) -1) 1 128)))
   (int16x128 (ramp input (+ (* (+ (* (quotient input.stride.1 128) (+ (+ (* output.s0.y.y 4) output.s0.y.yi) 1)) rows.s0.x.x) 128) -1) 1 128))))

;; Define the specification for the synthesizer
(define spec (synthesis-spec halide-expr (list)))

(define hvx-expr (synthesize-hvx spec))