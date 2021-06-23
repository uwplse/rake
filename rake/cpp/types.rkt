#lang rosette/safe

(require
  (only-in racket/base error)
  rosette/lib/destruct)

(provide (all-defined-out))

;; Types
(struct int8_t (v) #:transparent)
(struct int16_t (v) #:transparent)
(struct int32_t (v) #:transparent)
(struct int64_t (v) #:transparent)

(struct uint1_t (v) #:transparent)
(struct uint8_t (v) #:transparent)
(struct uint16_t (v) #:transparent)
(struct uint32_t (v) #:transparent)
(struct uint64_t (v) #:transparent)

;; Get bit-vector value of the integer expression
(define (cpp:eval e)
  (destruct e
    [(int8_t v) v]
    [(int16_t v) v]
    [(int32_t v) v]
    [(int64_t v) v]
    [(uint1_t v) v]
    [(uint8_t v) v]
    [(uint16_t v) v]
    [(uint32_t v) v]
    [(uint32_t v) v]
    [(uint64_t v) v]
    [_ (error "Cannot eval: ~a" e)]))

;; Get integer value of the integer expression
(define (cpp:eval-to-int e)
  (destruct e
    [(int8_t v) (bitvector->integer v)]
    [(int16_t v) (bitvector->integer v)]
    [(int32_t v) (bitvector->integer v)]
    [(int64_t v) (bitvector->integer v)]
    [(uint1_t v) (bitvector->natural v)]
    [(uint8_t v) (bitvector->natural v)]
    [(uint16_t v) (bitvector->natural v)]
    [(uint32_t v) (bitvector->natural v)]
    [(uint32_t v) (bitvector->natural v)]
    [(uint64_t v) (bitvector->natural v)]
    [_ (error "Cannot eval: ~a" e)]))

;; Type constructor
(define (mk-cpp-type bw signed?)
  (if signed?
      (cond
        [(eq? bw 8) int8_t]
        [(eq? bw 16) int16_t]
        [(eq? bw 32) int32_t]
        [(eq? bw 64) int64_t]
        [else (error "Cannot handle signed ints of bw: ~a" bw)])
      (cond
        [(eq? bw 1) uint1_t]
        [(eq? bw 8) uint8_t]
        [(eq? bw 16) uint16_t]
        [(eq? bw 32) uint32_t]
        [(eq? bw 64) uint64_t]
        [else (error "Cannot handle unsigned ints of bw: ~a" bw)])))

;; Typed Expression Constructor 
(define (mk-cpp-expr val type)
  (cond
    [(eq? type 'int8) (int8_t val)]
    [(eq? type 'int16) (int16_t val)]
    [(eq? type 'int32) (int32_t val)]
    [(eq? type 'int64) (int64_t val)]
    [(eq? type 'uint1) (uint1_t val)]
    [(eq? type 'uint8) (uint8_t val)]
    [(eq? type 'uint16) (uint16_t val)]
    [(eq? type 'uint32) (uint32_t val)]
    [(eq? type 'uint64) (uint64_t val)]
    [(eq? type int8_t) (int8_t val)]
    [(eq? type int16_t) (int16_t val)]
    [(eq? type int32_t) (int32_t val)]
    [(eq? type int64_t) (int64_t val)]
    [(eq? type uint1_t) (uint1_t val)]
    [(eq? type uint8_t) (uint8_t val)]
    [(eq? type uint16_t) (uint16_t val)]
    [(eq? type uint32_t) (uint32_t val)]
    [(eq? type uint64_t) (uint64_t val)]
    [else (error "NYI. Creating cpp exprs of type: ~a" type)]))

;; Misc functions
(define (cpp:type e)
  (destruct e
    [(int8_t v) 'int8]
    [(int16_t v) 'int16]
    [(int32_t v) 'int32]
    [(int64_t v) 'int64]
    [(uint1_t v) 'uint1]
    [(uint8_t v) 'uint8]
    [(uint16_t v) 'uint16]
    [(uint32_t v) 'uint32]
    [(uint64_t v) 'uint64]
    [_ (error "Cannot infer type: ~a" e)]))

(define (cpp:type-str type)
  (cond
    [(eq? type int8_t) 'int8]
    [(eq? type int16_t) 'int16]
    [(eq? type int32_t) 'int32]
    [(eq? type int64_t) 'int64]
    [(eq? type uint1_t) 'uint1]
    [(eq? type uint8_t) 'uint8]
    [(eq? type uint16_t) 'uint16]
    [(eq? type uint32_t) 'uint32]
    [(eq? type uint64_t) 'uint64]
    [(eq? type 'int8) 'int8]
    [(eq? type 'int16) 'int16]
    [(eq? type 'int32) 'int32]
    [(eq? type 'int64) 'int64]
    [(eq? type 'uint1) 'uint1]
    [(eq? type 'uint8) 'uint8]
    [(eq? type 'uint16) 'uint16]
    [(eq? type 'uint32) 'uint32]
    [(eq? type 'uint64) 'uint64]
    [else (error "cpp-type-str: Unexpected type: " type)]))

(define (cpp:signed-expr? e)
  (destruct e
    [(int8_t v) #t]
    [(int16_t v) #t]
    [(int32_t v) #t]
    [(int64_t v) #t]
    [(uint1_t v) #f]
    [(uint8_t v) #f]
    [(uint16_t v) #f]
    [(uint32_t v) #f]
    [(uint64_t v) #f]
    [_ (error "Cannot infer signed-ness of expr" e)]))

(define (cpp:unsigned-expr? e)
  (not (cpp:signed-expr? e)))

(define (cpp:signed-type? t)
  (cond
    [(eq? t 'int8) #t]
    [(eq? t 'int16) #t]
    [(eq? t 'int32) #t]
    [(eq? t 'int64) #t]
    [(eq? t 'uint1) #f]
    [(eq? t 'uint8) #f]
    [(eq? t 'uint16) #f]
    [(eq? t 'uint32) #f]
    [(eq? t 'uint64) #f]
    [(eq? t int8_t) #t]
    [(eq? t int16_t) #t]
    [(eq? t int32_t) #t]
    [(eq? t int64_t) #t]
    [(eq? t uint1_t) #f]
    [(eq? t uint8_t) #f]
    [(eq? t uint16_t) #f]
    [(eq? t uint32_t) #f]
    [(eq? t uint64_t) #f]
    [else (error "Cannot infer signed-ness of type" t)]))

(define (cpp:unsigned-type? e)
  (not (cpp:signed-type? e)))

(define (cpp:expr-bw e)
  (destruct e
    [(int8_t v) 8]
    [(int16_t v) 16]
    [(int32_t v) 32]
    [(int64_t v) 64]
    [(uint1_t v) 1]
    [(uint8_t v) 8]
    [(uint16_t v) 16]
    [(uint32_t v) 32]
    [(uint64_t v) 64]
    [_ (error "Cannot infer bit-width from expression: ~a" e)]))

(define (cpp:type-bw t)
  (cond
    [(eq? t 'int8) 8]
    [(eq? t 'int16) 16]
    [(eq? t 'int32) 32]
    [(eq? t 'int64) 64]
    [(eq? t 'uint1) 1]
    [(eq? t 'uint8) 8]
    [(eq? t 'uint16) 16]
    [(eq? t 'uint32) 32]
    [(eq? t 'uint64) 64]
    [(eq? t int8_t) 8]
    [(eq? t int16_t) 16]
    [(eq? t int32_t) 32]
    [(eq? t int64_t) 64]
    [(eq? t uint1_t) 1]
    [(eq? t uint8_t) 8]
    [(eq? t uint16_t) 16]
    [(eq? t uint32_t) 32]
    [(eq? t uint64_t) 64]
    [else (error "Cannot infer bit-width from type: ~a" t)]))