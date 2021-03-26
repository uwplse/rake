#lang rosette

(require rosette/lib/match)

;; Types
(struct int8_t (v) #:transparent)
(struct int16_t (v) #:transparent)
(struct int32_t (v) #:transparent)
(struct int64_t (v) #:transparent)

(struct uint8_t (v) #:transparent)
(struct uint16_t (v) #:transparent)
(struct uint32_t (v) #:transparent)
(struct uint64_t (v) #:transparent)

;; Type Operators
(define (eval e)
  (match e
    [(int8_t v) v]
    [(int16_t v) v]
    [(int32_t v) v]
    [(int64_t v) v]
    [(uint8_t v) v]
    [(uint16_t v) v]
    [(uint32_t v) v]
    [(uint32_t v) v]
    [(uint64_t v) v]
    [_ (error "Cannot eval: ~a" e)]))

(define (eval-to-int e)
  (match e
    [(int8_t v) (bitvector->integer v)]
    [(int16_t v) (bitvector->integer v)]
    [(int32_t v) (bitvector->integer v)]
    [(int64_t v) (bitvector->integer v)]
    [(uint8_t v) (bitvector->natural v)]
    [(uint16_t v) (bitvector->natural v)]
    [(uint32_t v) (bitvector->natural v)]
    [(uint32_t v) (bitvector->natural v)]
    [(uint64_t v) (bitvector->natural v)]
    [_ (error "Cannot eval: ~a" e)]))

(define (type e)
  (match e
    [(int8_t v) 'int8]
    [(int16_t v) 'int16]
    [(int32_t v) 'int32]
    [(int64_t v) 'int64]
    [(uint8_t v) 'uint8]
    [(uint16_t v) 'uint16]
    [(uint32_t v) 'uint32]
    [(uint64_t v) 'uint64]
    [_ (error "Cannot infer type: ~a" e)]))

(define (signed? e)
  (match e
    [(int8_t v) #t]
    [(int16_t v) #t]
    [(int32_t v) #t]
    [(int64_t v) #t]
    [(uint8_t v) #f]
    [(uint16_t v) #f]
    [(uint32_t v) #f]
    [(uint64_t v) #f]
    [_ (error "Cannot infer signed-ness of exprs" e)]))

(define (unsigned? e)
  (not (signed? e)))

(define (signedT? t)
  (match t
    ['int8 #t]
    ['int16 #t]
    ['int32 #t]
    ['int64  #t]
    ['uint8 #f]
    ['uint16 #f]
    ['uint32 #f]
    ['uint64 #f]
    [_ (error "Cannot infer signed-ness of type" t)]))

(define (unsignedT? t)
  (not (signedT? t)))

(define (bw e)
  (match e
    [(int8_t v) 8]
    [(int16_t v) 16]
    [(int32_t v) 32]
    [(int64_t v) 64]
    [(uint8_t v) 8]
    [(uint16_t v) 16]
    [(uint32_t v) 32]
    [(uint64_t v) 64]
    
    ['int8 8]
    ['int16 16]
    ['int32 32]
    ['int64 64]
    ['uint8 8]
    ['uint16 16]
    ['uint32 32]
    ['uint64 64]
    [_ (error "Cannot infer bit-width: ~a" e)]))

(provide (all-defined-out))