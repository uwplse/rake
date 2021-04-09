#lang rosette

(require racket/pretty)

(require rake/cpp/types)
(require rosette/lib/match)

;; Debugging
(define debug-flag-set? #f)
(define (debug-on) (set! debug-flag-set? #t))
(define (debug-off) (set! debug-flag-set? #f))
(define (debug expr) (when debug-flag-set? (pretty-display expr)))

;; For tracking types of variables
(define type-dict (make-hash))
(define (init-var-types td) (set! type-dict td))
(define (var-type var) (hash-ref type-dict var))

(define (is_unsat? sol)
  (or (unsat? sol) (unknown? sol)))

;; Creating typed expressions
(define (get-type bw signed?)
  (if signed?
      (cond
        [(eq? bw 8) 'int8]
        [(eq? bw 16) 'int16]
        [(eq? bw 32) 'int32]
        [(eq? bw 64) 'int64]
        [else (error "Cannot handle signed ints of bw: ~a" bw)])
      (cond
        [(eq? bw 8) 'uint8]
        [(eq? bw 16) 'uint16]
        [(eq? bw 32) 'uint32]
        [(eq? bw 64) 'uint64]
        [else (error "Cannot handle unsigned ints of bw: ~a" bw)])))
  
(define (mk-typed-expr expr type)
  (match type
    ['int8 (int8_t expr)]
    ['int16 (int16_t expr)]
    ['int32 (int32_t expr)]
    ['int64 (int64_t expr)]
    ['uint8 (uint8_t expr)]
    ['uint16 (uint16_t expr)]
    ['uint32 (uint32_t expr)]
    ['uint64 (uint64_t expr)]
    [_ (error "NYI. Creating exprs of type: ~a" type)]))

(define (promote var)
  (match var
    [(int8_t v) (int16_t (sign-extend v (bitvector 16)))]
    [(uint8_t v) (uint16_t (zero-extend v (bitvector 16)))]
    [(int16_t v) (int32_t (sign-extend v (bitvector 32)))]
    [(uint16_t v) (uint32_t (zero-extend v (bitvector 32)))]
    [(int32_t v) (int64_t (sign-extend v (bitvector 64)))]
    [(uint32_t v) (uint64_t (zero-extend v (bitvector 64)))]
    [_ (error "NYI. Promoting : ~a" var)]))

;; Custom buffer read function. Wraps the read value
;; in the appropriate type struct
(define (get buf loc)
  (define bufType (hash-ref type-dict buf))
  (cond
    [(eq? bufType 'int8) (int8_t (buf loc))]
    [(eq? bufType 'int16) (int16_t (buf loc))]
    [(eq? bufType 'int32) (int32_t (buf loc))]
    [(eq? bufType 'uint8) (uint8_t (buf loc))]
    [(eq? bufType 'uint16) (uint16_t (buf loc))]
    [(eq? bufType 'uint32) (uint32_t (buf loc))]
  ))

(define (parse-swizzle-spec buff-reads sols)
  (define vecs (make-hash))
  (define vec-id 0)
  (for ([k (in-dict-keys (model (list-ref sols 0)))])
    (hash-set! vecs vec-id (make-hash))
    (set! vec-id (+ vec-id 1)))

  (define lane 0)
  (for ([options buff-reads]
        [selections sols])
    (set! vec-id 0)
    (for*/set ([k (in-dict-keys (model selections))])
      (define selection (hash-ref (model selections) k))
      (hash-set! (hash-ref vecs vec-id) lane (list-ref options selection))
      (set! vec-id (+ vec-id 1)))
    (set! lane (+ lane 1)))

  vecs)

(define (merge-sols sol1 sol2)
  (define merged-sol (make-hash))
  (for ([k (in-dict-keys (model sol2))])
    (hash-set! merged-sol k (hash-ref (model sol2) k)))
  (for ([k (in-dict-keys (model sol1))])
    (hash-set! merged-sol k (hash-ref (model sol1) k)))
  (sat (make-immutable-hash (hash->list merged-sol))))

;; Utility functions
(define (nop v) v)

(define (lsb16 v) (zero-extend (extract 15 0 (eval v)) (bitvector 32)))

(define (i8lo v) (int8_t (extract 7 0 (eval v))))
(define (u8lo v) (uint8_t (extract 7 0 (eval v))))
(define (i16lo v) (int16_t (extract 15 0 (eval v))))
(define (u16lo v) (uint16_t (extract 15 0 (eval v))))
(define (i32lo v) (int32_t (extract 31 0 (eval v))))
(define (u32lo v) (uint32_t (extract 31 0 (eval v))))

(define (i8hi v) (int8_t (extract 15 8 (eval v))))
(define (u8hi v) (uint8_t (extract 15 8 (eval v))))
(define (i16hi v) (int16_t (extract 31 16 (eval v))))
(define (u16hi v) (uint16_t (extract 31 16 (eval v))))

(define (zxt16 v) (uint16_t (zero-extend (eval v) (bitvector 16))))
(define (sxt16 v) (int16_t (sign-extend (eval v) (bitvector 16))))
(define (zxt32 v) (uint32_t (zero-extend (eval v) (bitvector 32))))
(define (sxt32 v) (int32_t (sign-extend (eval v) (bitvector 32))))

(define (abs8 v) (bvsub (bvxor v (bvashr v (bv 7 8))) (bvashr v (bv 7 8))))
(define (abs16 v) (bvsub (bvxor v (bvashr v (bv 15 16))) (bvashr v (bv 15 16))))
(define (abs32 v) (bvsub (bvxor v (bvashr v (bv 31 32))) (bvashr v (bv 31 32))))

(define (min8 a b)
  (define diff (bvsub a b))
  (define dsgn (bvashr diff (bv 7 8)))
  (bvadd b (bvand diff dsgn)))

(define (min16 a b)
  (define diff (bvsub a b))
  (define dsgn (bvashr diff (bv 15 16)))
  (bvadd b (bvand diff dsgn)))

(define (min32 a b)
  (define diff (bvsub a b))
  (define dsgn (bvashr diff (bv 31 32)))
  (bvadd b (bvand diff dsgn)))

(define (minu8 a0 b0)
  (define a (zero-extend a0 (bitvector 9)))
  (define b (zero-extend b0 (bitvector 9)))
  (define diff (bvsub a b))
  (define dsgn (bvashr diff (bv 8 9)))
  (extract 7 0 (bvadd b (bvand diff dsgn))))

(define (minu16 a0 b0)
  (define a (zero-extend a0 (bitvector 17)))
  (define b (zero-extend b0 (bitvector 17)))
  (define diff (bvsub a b))
  (define dsgn (bvashr diff (bv 16 17)))
  (extract 15 0 (bvadd b (bvand diff dsgn))))

(define (minu32 a0 b0)
  (define a (zero-extend a0 (bitvector 33)))
  (define b (zero-extend b0 (bitvector 33)))
  (define diff (bvsub a b))
  (define dsgn (bvashr diff (bv 32 33)))
  (extract 31 0 (bvadd b (bvand diff dsgn))))

(define (max8 a b)
  (define diff (bvsub a b))
  (define dsgn (bvashr diff (bv 7 8)))
  (bvsub a (bvand diff dsgn))
  (bvsmax a b))

(define (max16 a b)
  (define diff (bvsub a b))
  (define dsgn (bvashr diff (bv 15 16)))
  (bvsub a (bvand diff dsgn)))

(define (max32 a b)
  (define diff (bvsub a b))
  (define dsgn (bvashr diff (bv 31 32)))
  (bvsub a (bvand diff dsgn)))

(define (maxu8 a0 b0)
  (define a (zero-extend a0 (bitvector 9)))
  (define b (zero-extend b0 (bitvector 9)))
  (define diff (bvsub a b))
  (define dsgn (bvashr diff (bv 8 9)))
  (extract 7 0 (bvsub a (bvand diff dsgn))))

(define (maxu16 a0 b0)
  (define a (zero-extend a0 (bitvector 17)))
  (define b (zero-extend b0 (bitvector 17)))
  (define diff (bvsub a b))
  (define dsgn (bvashr diff (bv 16 17)))
  (extract 15 0 (bvsub a (bvand diff dsgn))))

(define (maxu32 a0 b0)
  (define a (zero-extend a0 (bitvector 33)))
  (define b (zero-extend b0 (bitvector 33)))
  (define diff (bvsub a b))
  (define dsgn (bvashr diff (bv 32 33)))
  (extract 31 0 (bvsub a (bvand diff dsgn))))

(define (get-caller-id obj) (eq-hash-code obj))

(provide (all-defined-out))