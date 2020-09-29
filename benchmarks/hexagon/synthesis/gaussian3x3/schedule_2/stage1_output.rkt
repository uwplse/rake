#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require rake)
(require rake/halide/ir/interpreter)

(error-print-width 100000)
(debug-on)
;(use-int-enc)

;; Model buffers as uninterpreted functions
(define-symbolic input (~> integer? (bitvector 8)))

(init-var-types (make-hash (list (cons input 'uint8))))

;; Model indexing variables as integers
(define-symbolic t40 integer?)
(define-symbolic input.stride.1 integer?)
;(define input.stride.1 20)

;; Define original expression in Halide IR
(define halide-expr
  (uint8x128
   (vec-div
    (vec-add
     (vec-add
      (vec-add
       (vec-add
        (vec-mul
         (int16x128 (ramp input (+ t40 1) 1 128))
         (x128 (int16_t (bv 2 16))))
        (vec-add
         (vec-add
          (vec-mul
           (vec-add
            (vec-add
             (vec-add
              (vec-mul
               (int16x128 (ramp input t40 1 128))
               (x128 (int16_t (bv 2 16))))
              (int16x128 (ramp input (- t40 input.stride.1) 1 128)))
             (int16x128 (ramp input (+ t40 input.stride.1) 1 128)))
            (int16x128 (ramp input (- t40 1) 1 128)))
           (x128 (int16_t (bv 2 16))))
          (int16x128 (ramp input (- (- t40 input.stride.1) 1) 1 128)))
         (int16x128 (ramp input (- (+ t40 input.stride.1) 1) 1 128))))
       (int16x128 (ramp input (+ (- t40 input.stride.1) 1) 1 128)))
      (int16x128 (ramp input (+ (+ t40 input.stride.1) 1) 1 128)))
     (x128 (int16_t (bv 8 16))))
    (x128 (int16_t (bv 16 16))))))

;(println ((interpret-halide halide-expr) 0))

;; Define the specification for the synthesizer
(define spec (synthesis-spec halide-expr (list input input.stride.1) (list)))

;(define hvx-expr (synthesize-hvx spec))

;(basic-expr-cost hvx-expr)

;(println hvx-expr)