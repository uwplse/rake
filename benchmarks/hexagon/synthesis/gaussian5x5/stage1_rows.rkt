#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require "../lib/cpp.rkt")
(require "../lib/halide.rkt")
(require "../lib/hexagon.rkt")
(require "../lib/ir.rkt")
(require "../lib/grammar.rkt")

;; Model buffers as uninterpreted functions
(define-symbolic input (~> integer? (bitvector 8)))
(define-symbolic input.stride.1 integer?)

;; Declare scope vars
(define-symbolic t126 integer?)

;; Declare list of integer terms
(define (get-int-term) (choose* (cast (bv 2 32) 'int32 'int16) (cast (bv 3 32) 'int32 'int16)))

;; Declare list of index terms
(define (get-index-term) (choose* t126))

;; Declare list of buffers
(define (get-buf-term) (choose* input))

;; Define original expression
(define original-expr
  (vshuff
   (vmpa_acc
    (vmpa_acc
     (vzxt (ramp input (+ (* input.stride.1 2) t126) 1))
     (ramp input (- t126 input.stride.1) 1)
     (ramp input (+ input.stride.1 t126) 1)
     (bv 4 8)
     (bv 4 8))
    (ramp input t126 1)
    (ramp input (- t126 (* input.stride.1 2)) 1)
    (bv 6 8)
    (bv 1 8))))

(define synthesized-expr
  (vshuff
   (vmpa_acc_2
    (vmpy_acc
     (vadd_w
      (ramp input (- t126 (* input.stride.1 2)) 1)
      (ramp input (+ t126 (* input.stride.1 2)) 1))
     (ramp input t126 1)
     (bv 6 8))
    (vcombine
     (ramp input (+ t126 (* input.stride.1 1)) 1)
     (ramp input (- t126 (* input.stride.1 1)) 1))
    (bv 4 8)
    (bv 4 8))))

;; Verification condition
(define (bounded-eq? oe se lanes)
  (if (pair? oe)
      (for ([i lanes])
        (and
         (assert (eq? ((car oe) i) ((car se) i)))
         (assert (eq? ((cdr oe) i) ((cdr se) i)))))
      (for ([i lanes])
        (assert (eq? (oe i) (se i))))))

;; Synthesize
(define sol (synthesize #:forall (list input t126)
                        #:guarantee (bounded-eq? original-expr synthesized-expr 2)))

;; Print solution
(print sol)
;(cond
 ;[(unsat? sol) (printf "Unable to express computation in IR")]
 ;[#t
  ;(evaluate _kwidth sol)
  ;(evaluate _kernel sol)
  ;(evaluate _buf sol)
  ;(evaluate _base sol)
  ;(evaluate _stride sol)])