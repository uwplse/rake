#lang rosette

(require "cpp.rkt")
(require rosette/lib/match)

;; Debugging
(define debug-flag-set? #f)
(define (debug-on) (set! debug-flag-set? #t))
(define (debug-off) (set! debug-flag-set? #f))
(define (debug expr) (when debug-flag-set? (display expr)))

;; For tracking types of variables
(define type-dict (make-hash))
(define (init-var-types td) (set! type-dict td))
(define (var-type var) (hash-ref type-dict var))

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
  (define vec_id 0)
  (for ([k (in-dict-keys (model (list-ref sols 0)))])
    (hash-set! vecs vec_id (make-hash))
    (set! vec_id (+ vec_id 1)))

  (define lane 0)
  (for ([options buff-reads]
        [selections sols])
    (set! vec_id 0)
    (for*/set ([k (in-dict-keys (model selections))])
      (define selection (hash-ref (model selections) k))
      (hash-set! (hash-ref vecs vec_id) lane (list-ref options selection))
      (set! vec_id (+ vec_id 1)))
    (set! lane (+ lane 1)))

  vecs)

;; Utility functions
(define (nop v) v)

(define (lsb16 v) (zero-extend (extract 15 0 (eval v)) (bitvector 32)))

(define (lo8 v) (extract 7 0 v))
(define (hi8 v) (extract 15 8 v))
(define (lo16 v) (extract 15 0 v))
(define (hi16 v) (extract 31 16 v))

(define (zxt16 v) (uint16_t (zero-extend (eval v) (bitvector 16))))
(define (sxt16 v) (int16_t (sign-extend (eval v) (bitvector 16))))
(define (zxt32 v) (uint32_t (zero-extend (eval v) (bitvector 32))))
(define (sxt32 v) (int32_t (sign-extend (eval v) (bitvector 32))))

(provide (all-defined-out))