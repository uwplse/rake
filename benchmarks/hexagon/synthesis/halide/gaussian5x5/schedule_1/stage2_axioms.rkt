#lang rosette

(require rosette/lib/synthax)

(define-symbolic v1 (bitvector 8))
(define-symbolic v2 (bitvector 8))
(define-symbolic v3 (bitvector 8))
(define-symbolic v4 (bitvector 8))
(define-symbolic v6 (bitvector 8))
(define-symbolic v7 (bitvector 8))
(define-symbolic v8 (bitvector 8))
(define-symbolic v9 (bitvector 8))

(define (bvabsdif v1 v2)
  (if (bvuge v1 v2)
      (bvsub v1 v2)
      (bvsub v2 v1)))

(define expr
  ;(bvadd
   ;(bvsub
    (bvadd
     (zero-extend v1 (bitvector 16))
     (bvmul (zero-extend v2 (bitvector 16)) (bv 2 16))
     (zero-extend v3 (bitvector 16)))
    ;(bvadd
     ;(zero-extend v7 (bitvector 16))
     ;(bvmul (zero-extend v7 (bitvector 16)) (bv 2 16))
     ;(zero-extend v9 (bitvector 16))))
;   (bvabsdif
;    (bvadd
;     (zero-extend v1 (bitvector 16))
;     (bvmul (zero-extend v4 (bitvector 16)) (bv 2 16))
;     (zero-extend v7 (bitvector 16)))
;    (bvadd
;     (zero-extend v3 (bitvector 16))
;     (bvmul (zero-extend v6 (bitvector 16)) (bv 2 16))
;     (zero-extend v9 (bitvector 16)))))
  )

(define lb (?? (bitvector 16)))
(define ub (?? (bitvector 16)))

(assert
 (forall
  (list v1 v2 v3 v4 v6 v7 v8 v9)
  (bvuge expr lb)))

(assert
 (forall
  (list v1 v2 v3 v4 v6 v7 v8 v9)
  (bvule expr ub)))

(define sol (optimize #:maximize (list (bitvector->natural lb))
                      #:minimize (list (bitvector->natural ub))
                      #:guarantee #t))

(evaluate lb sol)
(evaluate ub sol)
(bitvector->natural (evaluate lb sol))
(bitvector->natural (evaluate ub sol))