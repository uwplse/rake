#lang rosette

(require rake)
(require rake/halide)
(require rake/swizzleflow/encoder)
(require rake/hvx/ast/types)

(error-print-width 100000)
(debug-on)

;; Model buffers as uninterpreted functions
(define-symbolic input (~> integer? (bitvector 8)))

(init-var-types (make-hash (list (cons input 'uint8))))

;; Model indexing variables as integers
(define-symbolic t40 integer?)
(define-symbolic input.stride.1 integer?)

;; Model indexing variables as constants (lightweight verification)
;(define t40 0)
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

;; Define the specification for the synthesizer
(define data (swizzleflow-encode-data halide-expr))
(define spec (swizzleflow-encode-spec halide-expr))
(define sketch (vtmpy-acc
                (vtmpy-acc
                 (vdmpy-acc
                  (vmpy
                   (??swizzle-gen-vec)
                   2)
                  (??swizzle-gen-vecpair)
                  (list 4 2))
                 (??swizzle-gen-vecpair)
                 (list 2 1))
                (??swizzle-gen-vecpair)
                (list 2 1)))
                  
(println (hash-values data))
;(println spec)
;(println (list-ref spec 1))