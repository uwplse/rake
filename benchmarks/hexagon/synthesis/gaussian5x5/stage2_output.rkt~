#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require "../lib/cpp.rkt")
(require "../lib/halide.rkt")
(require "../lib/hexagon.rkt")
(require "../lib/ir.rkt")
(require "../lib/grammar.rkt")

;; Model buffers as uninterpreted functions
(define-symbolic rows (~> integer? (bitvector 16)))
(define-symbolic output.s0.x.x integer?)

;; Declare scope vars
(define-symbolic t126 integer?)

;; Declare list of integer terms
(define (get-int-term) (choose* (cast (bv 2 32) 'int32 'int16) (cast (bv 3 32) 'int32 'int16)))

;; Declare list of index terms
(define (get-index-term) (choose* t126))

;; Declare list of buffers
(define (get-buf-term) (choose* rows))

;; Define original expression
(define original-expr
  (vpacko
   (vmpyi_acc
    (vadd
     (ramp rows 126 1)
     (vmpyi_acc
      (vmpyi_acc
       (ramp rows 130 1)
       (ramp rows 129 1)
       (bv 4 8))
      (ramp rows 128 1)
      (bv 6 8)))
    (ramp rows 127  1)
    (bv 4 8))))

(define synthesized-expr
  (vpacko
   (vmpyi_acc
      (vmpyi_acc
       (vadd
        (ramp rows 126 1)
        (ramp rows 130 1))
       (vadd
        (ramp rows 127  1)
        (ramp rows 129 1))
       (bv 4 8))
      (ramp rows 128 1)
      (bv 6 8))))

(define synthesized-expr-alt
  (Q6_Vb_vshuffo_VbVb
   (Q6_Vh_vmpyiacc_VhVhRb
    (Q6_Vh_vmpyiacc_VhVhRb
     (Q6_Vh_vadd_VhVh
      sVsum1
      sVsum5)
     sVsum3
     const6)
    sVsum2a4
    const4)
   (Q6_Vh_vmpyiacc_VhVhRb
    (Q6_Vh_vmpyiacc_VhVhRb
     (Q6_Vh_vadd_VhVh
      sVsum0
      sVsum4)
     sVsum2
     const6)
    sVsum1a3
    const4)))

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
(define sol (synthesize #:forall (list rows t126)
                        #:guarantee (bounded-eq? original-expr synthesized-expr 2)))

;; Print solution
(print sol)