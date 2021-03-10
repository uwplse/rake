#lang rosette

(require rosette/lib/synthax)

(define-symbolic v1 (bitvector 16))
(define-symbolic v2 (bitvector 16))
(define-symbolic v3 (bitvector 16))
(define-symbolic v4 (bitvector 16))
(define-symbolic v5 (bitvector 16))

;(define v1 (bv 4080 16))
;(define v2 (bv 4080 16))
;(define v3 (bv 4080 16))
;(define v4 (bv 4080 16))
;(define v5 (bv 4080 16))

(define (in-range v)
  (and
   (bvsge v (bv 0 16))
   (bvsle v (bv 4080 16))))

;(define expr
;  (bvadd
;   (zero-extend v1 (bitvector 16))
;   (bvmul (bv 4 16) (zero-extend v2 (bitvector 16)))
;   (bvmul (bv 6 16) (zero-extend v3 (bitvector 16)))
;   (bvmul (bv 4 16) (zero-extend v4 (bitvector 16)))
;   (zero-extend v5 (bitvector 16))))

(define expr
  (extract
   15
   0
   (bvadd
    (bvashr
     (sign-extend
      (bvadd
       (bvmul
        (bv #x0004 16)
        v1)
       (bvadd
        v5
        (bvadd
         (bvmul
          (bv #x0006 16)
          v2)
         (bvadd
          v4
          (bvmul (bv #x0004 16) v3)))))
      (bitvector 64))
     (bv #x000000000000003f 64))
    (bvsdiv
     (bvadd
      (sign-extend
       (bvadd
        (bvmul
         (bv #x0004 16)
         v1)
        (bvadd
         v5
         (bvadd
          (bvmul
           (bv #x0006 16)
           v2)
          (bvadd
           v4
           (bvmul
            (bv #x0004 16)
            v3)))))
       (bitvector 64))
      (bvneg
       (bvashr
        (sign-extend
         (bvadd
          (bvmul
           (bv #x0004 16)
           v1)
          (bvadd
           v5
           (bvadd
            (bvmul
             (bv #x0006 16)
             v2)
            (bvadd
             v4
             (bvmul
              (bv #x0004 16)
              v3)))))
         (bitvector 64))
        (bv #x000000000000003f 64))))
     (bv #x0000000000000100 64)))))

(define sol1 (synthesize #:forall (list)
                        #:guarantee (assert
                                     (and
                                      (in-range v1) (in-range v2) (in-range v3) (in-range v4) (in-range v5)
                                      (bvsle expr (bv 0 16))))))

sol1
(exit)

(define lb (?? (bitvector 16)))
(define ub (?? (bitvector 16)))

(assert
 (forall
  (list v1 v2 v3 v4 v5)
  (=>
   (and (in-range v1) (in-range v2) (in-range v3) (in-range v4) (in-range v5))
   (bvsge expr lb))))

(assert
 (forall
  (list v1 v2 v3 v4 v5)
  (=>
   (and (in-range v1) (in-range v2) (in-range v3) (in-range v4) (in-range v5))
   (bvsle expr ub))))

(define sol (optimize #:maximize (list (bitvector->natural lb))
                      #:minimize (list (bitvector->natural ub))
                      #:guarantee #t))

(evaluate lb sol)
(evaluate ub sol)
(bitvector->integer (evaluate lb sol))
(bitvector->integer (evaluate ub sol))
;(print-forms sol)