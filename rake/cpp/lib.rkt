#lang rosette/safe

(require
  rake/cpp/types)

(provide abs8 abs16 abs32
         min8 min16 min32 minu8 minu16 minu32
         max8 max16 max32 maxu8 maxu16 maxu32)

;;;;; Absolute Functions ;;;;;

(define (abs8 a) (int8_t (let ([v (eval a)]) (int8_t (bvsub (bvxor v (bvashr v (bv 7 8))) (bvashr v (bv 7 8)))))))
(define (abs16 a) (int16_t (let ([v (eval a)]) (int8_t (bvsub (bvxor v (bvashr v (bv 15 16))) (bvashr v (bv 15 16)))))))
(define (abs32 a) (int32_t (let ([v (eval a)]) (int8_t (bvsub (bvxor v (bvashr v (bv 31 32))) (bvashr v (bv 31 32)))))))

;;;;; Min/Max functions ;;;;;

;; Basic encoding (default)
(define (min8 a b) (int8_t (bvsmin (eval a) (eval b))))
(define (min16 a b) (int16_t (bvsmin (eval a) (eval b))))
(define (min32 a b) (int32_t (bvsmin (eval a) (eval b))))

(define (minu8 a b) (uint8_t (bvumin (eval a) (eval b))))
(define (minu16 a b) (uint16_t (bvumin (eval a) (eval b))))
(define (minu32 a b) (uint32_t (bvumin (eval a) (eval b))))

(define (max8 a b) (int8_t (bvsmax (eval a) (eval b))))
(define (max16 a b) (int16_t (bvsmax (eval a) (eval b))))
(define (max32 a b) (int32_t (bvsmax (eval a) (eval b))))

(define (maxu8 a b) (uint8_t (bvumax (eval a) (eval b))))
(define (maxu16 a b) (uint16_t (bvumax (eval a) (eval b))))
(define (maxu32 a b) (uint32_t (bvumax (eval a) (eval b))))

;; Alternate Encoding
(define (min8_alt a b)
  (define diff (bvsub (eval a) (eval b)))
  (define dsgn (bvashr diff (bv 7 8)))
  (int8_t (bvadd (eval b) (bvand diff dsgn))))

(define (min16_alt a b)
  (define diff (bvsub (eval a) (eval b)))
  (define dsgn (bvashr diff (bv 15 16)))
  (int16_t (bvadd (eval b) (bvand diff dsgn))))

(define (min32_alt a b)
  (define diff (bvsub (eval a) (eval b)))
  (define dsgn (bvashr diff (bv 31 32)))
  (int32_t (bvadd (eval b) (bvand diff dsgn))))

(define (minu8_alt a b)
  (define ae (zero-extend (eval a) (bitvector 9)))
  (define be (zero-extend (eval b) (bitvector 9)))
  (define diff (bvsub ae be))
  (define dsgn (bvashr diff (bv 8 9)))
  (uint8_t (extract 7 0 (bvadd be (bvand diff dsgn)))))

(define (minu16_alt a b)
  (define ae (zero-extend (eval a) (bitvector 17)))
  (define be (zero-extend (eval b) (bitvector 17)))
  (define diff (bvsub ae be))
  (define dsgn (bvashr diff (bv 16 17)))
  (uint16_t (extract 15 0 (bvadd be (bvand diff dsgn)))))

(define (minu32_alt a b)
  (define ae (zero-extend (eval a) (bitvector 33)))
  (define be (zero-extend (eval b) (bitvector 33)))
  (define diff (bvsub ae be))
  (define dsgn (bvashr diff (bv 32 33)))
  (uint32_t (extract 31 0 (bvadd be (bvand diff dsgn)))))

(define (max8_alt a b)
  (define diff (bvsub (eval a) (eval b)))
  (define dsgn (bvashr diff (bv 7 8)))
  (int8_t (bvsub (eval a) (bvand diff dsgn))))

(define (max16_alt a b)
  (define diff (bvsub (eval a) (eval b)))
  (define dsgn (bvashr diff (bv 15 16)))
  (int16_t (bvsub (eval a) (bvand diff dsgn))))

(define (max32_alt a b)
  (define diff (bvsub (eval a) (eval b)))
  (define dsgn (bvashr diff (bv 31 32)))
  (int32_t (bvsub (eval a) (bvand diff dsgn))))

(define (maxu8_alt a b)
  (define ae (zero-extend (eval a) (bitvector 9)))
  (define be (zero-extend (eval b) (bitvector 9)))
  (define diff (bvsub ae be))
  (define dsgn (bvashr diff (bv 8 9)))
  (uint8_t (extract 7 0 (bvsub ae (bvand diff dsgn)))))

(define (maxu16_alt a b)
  (define ae (zero-extend (eval a) (bitvector 17)))
  (define be (zero-extend (eval b) (bitvector 17)))
  (define diff (bvsub ae be))
  (define dsgn (bvashr diff (bv 16 17)))
  (uint16_t (extract 15 0 (bvsub ae (bvand diff dsgn)))))

(define (maxu32_alt a b)
  (define ae (zero-extend (eval a) (bitvector 33)))
  (define be (zero-extend (eval b) (bitvector 33)))
  (define diff (bvsub ae be))
  (define dsgn (bvashr diff (bv 32 33)))
  (uint32_t (extract 31 0 (bvsub ae (bvand diff dsgn)))))

;(define (promote var)
;  (match var
;    [(int8_t v) (int16_t (sign-extend v (bitvector 16)))]
;    [(uint8_t v) (uint16_t (zero-extend v (bitvector 16)))]
;    [(int16_t v) (int32_t (sign-extend v (bitvector 32)))]
;    [(uint16_t v) (uint32_t (zero-extend v (bitvector 32)))]
;    [(int32_t v) (int64_t (sign-extend v (bitvector 64)))]
;    [(uint32_t v) (uint64_t (zero-extend v (bitvector 64)))]
;    [_ (error "NYI. Promoting : ~a" var)]))