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
(define-symbolic t64 integer?)
(define-symbolic t29 integer?)
(define-symbolic input.stride.1 integer?)

;; Define original expression in Halide IR
(define halide-expr
  (vec-add
   (vec-add
    (vec-add
     (vec-mul
      (int32x128 (ramp input (+ (* (- (* t64 2) input.stride.1) 2) -3) 1 128))
      (x128 (int32_t (bv 6 32))))
     (vec-add
      (vec-mul
       (int32x128 (ramp input (+ (- (* t64 4) input.stride.1) -3) 1 128))
       (x128 (int32_t (bv 15 32))))
      (vec-add
       (vec-mul
        (int32x128 (ramp input (+ (* t64 4) -3) 1 128))
        (x128 (int32_t (bv 20 32))))
       (vec-add
        (vec-mul
         (int32x128 (ramp input (+ (* (+ (* t64 2) input.stride.1) 2) -3) 1 128))
         (x128 (int32_t (bv 6 32))))
        (vec-mul
         (int32x128 (ramp input (+ (+ (* t64 4) input.stride.1) -3) 1 128))
         (x128 (int32_t (bv 15 32))))))))
    (int32x128 (ramp input (+ (* t64 4) t29) 1 128)))
   (int32x128 (ramp input (+ (+ (* t64 4) (* input.stride.1 3)) -3) 1 128))))

;; Define the specification for the synthesizer
(define spec (synthesis-spec halide-expr (list input t64 t29 input.stride.1) (list)))

(define hvx-expr (synthesize-hvx spec))

;(basic-expr-cost hvx-expr)

;(println hvx-expr)