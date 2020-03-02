#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require "lib/cpp.rkt")
(require "lib/halide.rkt")
(require "lib/hexagon.rkt")
(require "lib/grammar.rkt")

;; Model buffers as uninterpreted functions
(define-symbolic input (~> integer? (bitvector 8)))

;; Declare scope vars
(define-symbolic t53 integer?)

;; Declare list of integer terms
(define (get-int-term) (choose* (cast (bv 2 32) 'int32 'int16) (cast (bv 3 32) 'int32 'int16)))

;; Declare list of index terms
(define (get-index-term) (choose* t53))

;; Declare list of buffers
(define (get-buf-term) (choose* input))

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

;; Define synthesized expression
(define _buf (buf_gen get-buf-term))
(define _base (index_gen get-index-term))
(define _stride stride_gen)
(define _kwidth kwidth_gen)
(define _kernel (kernel_gen get-int-term _kwidth))

(define synthesized-expr
  (castvec (convolve-x (ramp _buf _base _stride) _kernel) 'int16 'int32))

;; Verification condition
(define (bounded-eq? oe se lanes)
  (for ([i lanes])
    (assert (eq? (oe i) (se i)))))

;; Synthesize
(define sol (synthesize #:forall (list input t53)
                        #:guarantee (bounded-eq? original-expr synthesized-expr 2)))

;; Print solution
(evaluate _kwidth sol)
(evaluate _kernel sol)
(evaluate _buf sol)
(evaluate _base sol)
(evaluate _stride sol)