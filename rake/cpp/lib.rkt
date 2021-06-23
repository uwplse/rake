#lang rosette/safe

(require
  rake/cpp/types
  rake/cpp/cast)

(provide (prefix-out cpp: (all-defined-out)))

;;;;; Absolute Functions ;;;;;

(define (abs8 a) (int8_t (let ([v (cpp:eval a)]) (int8_t (bvsub (bvxor v (bvashr v (bv 7 8))) (bvashr v (bv 7 8)))))))
(define (abs16 a) (int16_t (let ([v (cpp:eval a)]) (int16_t (bvsub (bvxor v (bvashr v (bv 15 16))) (bvashr v (bv 15 16)))))))
(define (abs32 a) (int32_t (let ([v (cpp:eval a)]) (int32_t (bvsub (bvxor v (bvashr v (bv 31 32))) (bvashr v (bv 31 32)))))))

;; Todo: check this is correct
(define (absu8 a) (uint8_t (let ([v (cpp:eval a)]) (uint8_t (bvsub (bvxor v (bvashr v (bv 7 8))) (bvashr v (bv 7 8)))))))
(define (absu16 a) (uint16_t (let ([v (cpp:eval a)]) (uint16_t (bvsub (bvxor v (bvashr v (bv 15 16))) (bvashr v (bv 15 16)))))))
(define (absu32 a) (uint32_t (let ([v (cpp:eval a)]) (uint32_t (bvsub (bvxor v (bvashr v (bv 31 32))) (bvashr v (bv 31 32)))))))

;;;;; Min/Max functions ;;;;;

;; Basic encoding (default)
(define (min8 a b) (int8_t (bvsmin (cpp:eval a) (cpp:eval b))))
(define (min16 a b) (int16_t (bvsmin (cpp:eval a) (cpp:eval b))))
(define (min32 a b) (int32_t (bvsmin (cpp:eval a) (cpp:eval b))))
(define (min64 a b) (int64_t (bvsmin (cpp:eval a) (cpp:eval b))))

(define (minu8 a b) (uint8_t (bvumin (cpp:eval a) (cpp:eval b))))
(define (minu16 a b) (uint16_t (bvumin (cpp:eval a) (cpp:eval b))))
(define (minu32 a b) (uint32_t (bvumin (cpp:eval a) (cpp:eval b))))
(define (minu64 a b) (uint64_t (bvumin (cpp:eval a) (cpp:eval b))))

(define (max8 a b) (int8_t (bvsmax (cpp:eval a) (cpp:eval b))))
(define (max16 a b) (int16_t (bvsmax (cpp:eval a) (cpp:eval b))))
(define (max32 a b) (int32_t (bvsmax (cpp:eval a) (cpp:eval b))))
(define (max64 a b) (int64_t (bvsmax (cpp:eval a) (cpp:eval b))))

(define (maxu8 a b) (uint8_t (bvumax (cpp:eval a) (cpp:eval b))))
(define (maxu16 a b) (uint16_t (bvumax (cpp:eval a) (cpp:eval b))))
(define (maxu32 a b) (uint32_t (bvumax (cpp:eval a) (cpp:eval b))))
(define (maxu64 a b) (uint64_t (bvumax (cpp:eval a) (cpp:eval b))))

;; Alternate Encoding
(define (min8_alt a b)
  (define diff (bvsub (cpp:eval a) (cpp:eval b)))
  (define dsgn (bvashr diff (bv 7 8)))
  (int8_t (bvadd (cpp:eval b) (bvand diff dsgn))))

(define (min16_alt a b)
  (define diff (bvsub (cpp:eval a) (cpp:eval b)))
  (define dsgn (bvashr diff (bv 15 16)))
  (int16_t (bvadd (cpp:eval b) (bvand diff dsgn))))

(define (min32_alt a b)
  (define diff (bvsub (cpp:eval a) (cpp:eval b)))
  (define dsgn (bvashr diff (bv 31 32)))
  (int32_t (bvadd (cpp:eval b) (bvand diff dsgn))))

(define (minu8_alt a b)
  (define ae (zero-extend (cpp:eval a) (bitvector 9)))
  (define be (zero-extend (cpp:eval b) (bitvector 9)))
  (define diff (bvsub ae be))
  (define dsgn (bvashr diff (bv 8 9)))
  (uint8_t (extract 7 0 (bvadd be (bvand diff dsgn)))))

(define (minu16_alt a b)
  (define ae (zero-extend (cpp:eval a) (bitvector 17)))
  (define be (zero-extend (cpp:eval b) (bitvector 17)))
  (define diff (bvsub ae be))
  (define dsgn (bvashr diff (bv 16 17)))
  (uint16_t (extract 15 0 (bvadd be (bvand diff dsgn)))))

(define (minu32_alt a b)
  (define ae (zero-extend (cpp:eval a) (bitvector 33)))
  (define be (zero-extend (cpp:eval b) (bitvector 33)))
  (define diff (bvsub ae be))
  (define dsgn (bvashr diff (bv 32 33)))
  (uint32_t (extract 31 0 (bvadd be (bvand diff dsgn)))))

(define (max8_alt a b)
  (define diff (bvsub (cpp:eval a) (cpp:eval b)))
  (define dsgn (bvashr diff (bv 7 8)))
  (int8_t (bvsub (cpp:eval a) (bvand diff dsgn))))

(define (max16_alt a b)
  (define diff (bvsub (cpp:eval a) (cpp:eval b)))
  (define dsgn (bvashr diff (bv 15 16)))
  (int16_t (bvsub (cpp:eval a) (bvand diff dsgn))))

(define (max32_alt a b)
  (define diff (bvsub (cpp:eval a) (cpp:eval b)))
  (define dsgn (bvashr diff (bv 31 32)))
  (int32_t (bvsub (cpp:eval a) (bvand diff dsgn))))

(define (maxu8_alt a b)
  (define ae (zero-extend (cpp:eval a) (bitvector 9)))
  (define be (zero-extend (cpp:eval b) (bitvector 9)))
  (define diff (bvsub ae be))
  (define dsgn (bvashr diff (bv 8 9)))
  (uint8_t (extract 7 0 (bvsub ae (bvand diff dsgn)))))

(define (maxu16_alt a b)
  (define ae (zero-extend (cpp:eval a) (bitvector 17)))
  (define be (zero-extend (cpp:eval b) (bitvector 17)))
  (define diff (bvsub ae be))
  (define dsgn (bvashr diff (bv 16 17)))
  (uint16_t (extract 15 0 (bvsub ae (bvand diff dsgn)))))

(define (maxu32_alt a b)
  (define ae (zero-extend (cpp:eval a) (bitvector 33)))
  (define be (zero-extend (cpp:eval b) (bitvector 33)))
  (define diff (bvsub ae be))
  (define dsgn (bvashr diff (bv 32 33)))
  (uint32_t (extract 31 0 (bvsub ae (bvand diff dsgn)))))

(define (euclidean-div lhs rhs outT)
  (define lhs64 (cpp:cast lhs 'int64))
  (define rhs64 (cpp:cast rhs 'int64))
  (define ia (cpp:eval lhs64))
  (define ib (cpp:eval rhs64))
  (define a-neg (bvashr ia (bv 63 64)))
  (define b-neg (bvashr ib (bv 63 64)))
  (define b-zero (if (bveq ib (bv 0 64)) (bv -1 64) (bv 0 64)))
  (set! ib (bvsub ib b-zero))
  (set! ia (bvsub ia a-neg))
  (define q (bvsdiv ia ib))
  (set! q (bvadd q (bvand a-neg (bvsub (bvnot b-neg) b-neg))))
  (set! q (bvand q (bvnot b-zero)))
  (cpp:cast (int64_t q) (cpp:type-str outT)))

(define (clz32 val)
  (define x (cpp:eval val))
  (define numIntBits (bv 32 32))
  (set! x (or x (bvashr x (bv 1 32))))
  (set! x (or x (bvashr x (bv 2 32))))
  (set! x (or x (bvashr x (bv 4 32))))
  (set! x (or x (bvashr x (bv 8 32))))
  (set! x (or x (bvashr x (bv 16 32))))
  (set! x (bvsub x (bvand (bvashr x (bv 1 32)) (bv #x55555555 32))))
  (set! x (bvadd (bvand (bvashr x (bv 2 32)) (bv #x33333333 32)) (bvand x (bv #x33333333 32))))
  (set! x (bvand (bvadd (bvashr x (bv 3 32)) x) (bv #x0f0f0f0f 32)))
  (set! x (bvadd x (bvashr x (bv 8 32))))
  (set! x (bvadd x (bvashr x (bv 16 32))))
  (int32_t (bvsub numIntBits (bvand x (bv #x0000003f 32)))))

;(define (promote var)
;  (match var
;    [(int8_t v) (int16_t (sign-extend v (bitvector 16)))]
;    [(uint8_t v) (uint16_t (zero-extend v (bitvector 16)))]
;    [(int16_t v) (int32_t (sign-extend v (bitvector 32)))]
;    [(uint16_t v) (uint32_t (zero-extend v (bitvector 32)))]
;    [(int32_t v) (int64_t (sign-extend v (bitvector 64)))]
;    [(uint32_t v) (uint64_t (zero-extend v (bitvector 64)))]
;    [_ (error "NYI. Promoting : ~a" var)]))