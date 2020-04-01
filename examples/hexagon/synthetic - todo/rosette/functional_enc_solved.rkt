#lang rosette

(require rosette/lib/synthax)

(require "lib/cpp.rkt")
(require "lib/halide.rkt")
(require "lib/hexagon.rkt")

;; Model buffers as uninterpreted functions
(define-symbolic input (~> integer? (bitvector 8)))

;; Declare scope vars
(define-symbolic t53 integer?)

;; Define original expression
(define original-expr
  (vec-add
   (vec-add
    (vec-mul
     (castvec (ramp input t53 1) 'uint8 'int32)
     (broadcast (bv 2 32)))
    (vec-mul
     (castvec (ramp input (+ t53 1) 1) 'uint8 'int32)
     (broadcast (bv 3 32))))
   (castvec (ramp input (+ t53 2) 1) 'uint8 'int32)))

(define kernel
  (vector-immutable
   (cast (cast (bv 2 32) 'int32 'int16) 'int16 'int8)
   (cast (cast (bv 3 32) 'int32 'int16) 'int16 'int8)
   (bv 1 8)))

(define _buf input)
(define _base t53)
(define _stride 1)

(define (synthesized-expr)
  (castvec (convolve-x (ramp _buf _base _stride) kernel) 'int16 'int32))

(define (bounded-eq? oe se)
  (for ([i 128])
    (assert (eq? (oe i) (se i)))))

(define sol (synthesize #:forall (list input t53)
                        #:guarantee (bounded-eq? original-expr (synthesized-expr))))

(print-forms sol)