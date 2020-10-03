#lang rosette

(require rosette/lib/synthax)

(define-symbolic v1 (bitvector 8))
(define-symbolic v2 (bitvector 8))
(define-symbolic v3 (bitvector 8))
(define-symbolic v4 (bitvector 8))
(define-symbolic v5 (bitvector 8))
(define expr
  (bvadd
   (zero-extend v1 (bitvector 16))
   (bvmul (bv 4 16) (zero-extend v2 (bitvector 16)))
   (bvmul (bv 6 16) (zero-extend v3 (bitvector 16)))
   (bvmul (bv 4 16) (zero-extend v4 (bitvector 16)))
   (zero-extend v5 (bitvector 16))))

(define lb (?? (bitvector 16)))
(define ub (?? (bitvector 16)))

(assert (forall (list v1 v2 v3 v4 v5) (bvsge expr lb)))
(assert (forall (list v1 v2 v3 v4 v5) (bvsle expr ub)))

(define sol (optimize #:maximize (list (bitvector->integer lb))
                      #:minimize (list (bitvector->integer ub))
                      #:guarantee #t))

(print-forms sol)