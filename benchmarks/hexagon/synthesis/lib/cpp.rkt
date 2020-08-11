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

(define (signed? type)
  (match type
    ['int8 #t]
    ['int16 #t]
    ['int32 #t]
    ['int64 #t]
    ['uint8 #f]
    ['uint16 #f]
    ['uint32 #f]
    ['uint64 #f]
    [_ (error "Cannot infer signed-ness: ~a" type)]))

(define (unsigned? type)
  (not (signed? type)))

(define (bw type)
  (match type
    ['int8 8]
    ['int16 16]
    ['int32 32]
    ['int64 64]
    ['uint8 8]
    ['uint16 16]
    ['uint32 32]
    ['uint64 64]
    [_ (error "Cannot infer bit-width: ~a" type)]))

;; Model C++ casting
(define (cpp_cast v type)
  (match v
    [(int8_t val)
     (match type
       ['int8 v]
       ['int16 (int16_t (sign-extend val (bitvector 16)))]
       ['int32 (int32_t (sign-extend val (bitvector 32)))]
       ['int64 (int64_t (sign-extend val (bitvector 64)))]
       ['uint8 (uint8_t val)]
       ['uint16 (uint16_t (sign-extend val (bitvector 16)))]
       ['uint32 (uint32_t (sign-extend val (bitvector 32)))]
       ['uint64 (uint64_t (sign-extend val (bitvector 64)))])]
    [(uint8_t val)
     (match type
       ['int8 (int8_t val)]
       ['int16 (int16_t (zero-extend val (bitvector 16)))]
       ['int32 (int32_t (zero-extend val (bitvector 32)))]
       ['int64 (int64_t (zero-extend val (bitvector 64)))]
       ['uint8 v]
       ['uint16 (uint16_t (zero-extend val (bitvector 16)))]
       ['uint32 (uint32_t (zero-extend val (bitvector 32)))]
       ['uint64 (uint64_t (zero-extend val (bitvector 64)))])]
    [(int16_t val)
     (match type
       ['int8 (int8_t (extract 7 0 val))]
       ['int16 v]
       ['int32 (int32_t (sign-extend val (bitvector 32)))]
       ['int64 (int64_t (sign-extend val (bitvector 64)))]
       ['uint8 (uint8_t (extract 7 0 val))]
       ['uint16 (uint16_t val)]
       ['uint32 (uint32_t (sign-extend val (bitvector 32)))]
       ['uint64 (uint64_t (sign-extend val (bitvector 64)))])]
    [(uint16_t val)
     (match type
       ['int8 (int8_t (extract 7 0 val))]
       ['int16 (int16_t val)]
       ['int32 (int32_t (zero-extend val (bitvector 32)))]
       ['int64 (int64_t (zero-extend val (bitvector 64)))]
       ['uint8 (uint8_t (extract 7 0 val))]
       ['uint16 v]
       ['uint32 (uint32_t (zero-extend val (bitvector 32)))]
       ['uint64 (uint64_t (zero-extend val (bitvector 64)))])]
    [(int32_t val)
     (match type
       ['int8 (int8_t (extract 7 0 val))]
       ['int16 (int16_t (extract 15 0 val))]
       ['int32 v]
       ['int64 (int64_t (sign-extend val (bitvector 64)))]
       ['uint8 (uint8_t (extract 7 0 val))]
       ['uint16 (uint16_t (extract 15 0 val))]
       ['uint32 (uint32_t val)]
       ['uint64 (uint64_t (sign-extend val (bitvector 64)))])]
    [(uint32_t val)
     (match type
       ['int8 (int8_t (extract 7 0 val))]
       ['int16 (int16_t (extract 15 0 val))]
       ['int32 (int32_t val)]
       ['int64 (int64_t (zero-extend val (bitvector 64)))]
       ['uint8 (uint8_t (extract 7 0 val))]
       ['uint16 (uint16_t (extract 15 0 val))]
       ['uint32 v]
       ['uint64 (int64_t (zero-extend val (bitvector 64)))])]
    [_ (error "NYI: Casting from type ~a" v)]))

;; Model C++ Saturation
(define (MIN_CHAR bw) (match bw [8 (bv #x80 8)] [16 (bv #x80 16)] [32 (bv #x80 32)]))
(define MAX_CHAR (bv #x7f 8))
(define MIN_UCHAR (bv #x00 8))
(define MAX_UCHAR (bv #xff 8))

(define MIN_SHORT (bv #x8000 16))
(define MAX_SHORT (bv #x7fff 16))
(define MIN_USHORT (bv #x0000 16))
(define MAX_USHORT (bv #xffff 16))

(define MIN_INT (bv #x80000000 32))
(define MAX_INT (bv #x7fffffff 32))
(define MIN_UINT (bv #x00000000 32))
(define MAX_UINT (bv #xffffffff 32))

;; TODO: Fix these placeholder definitions
(define (sat8 v)
  (define outV
    (match v
      [(int8_t val) v]
      [(int16_t val) (if (bvslt val (MIN_CHAR 16)) (MIN_CHAR 8) (if (bvsgt val (MAX_CHAR 16)) (MAX_CHAR 8) (extract 7 0 val)))]
      [(int32_t val) (if (bvslt val (bv #x80 32)) (bv #x80 8) (if (bvsgt val (bv #x7f 32)) (bv #x7f 8) (extract 7 0 val)))]
      [(uint8_t val) (if (bvslt val MIN_CHAR) (int8_t MIN_CHAR) (if (bvsgt val MIN_CHAR) (int8_t MAX_CHAR) val))]
      [(uint16_t val) (if (bvslt val MIN_CHAR) (int8_t MIN_CHAR) (if (bvsgt val MIN_CHAR) (int8_t MAX_CHAR) val))]
      [(uint32_t val) (if (bvslt val MIN_CHAR) (int8_t MIN_CHAR) (if (bvsgt val MIN_CHAR) (int8_t MAX_CHAR) val))]))
  (int8_t outV))

;(define (sat16 v)
 ; (cond
  ;  [((bitvector 16) v) (if (bvslt val (bv #x8000 16)) (bv #x8000 16) (if (bvsgt val (bv #x7fff 16)) (bv #x7fff 16) val))]
   ; [((bitvector 32) v) (if (bvslt val (bv #x8000 32)) (bv #x8000 16) (if (bvsgt val (bv #x7fff 32)) (bv #x7fff 16) (extract 15 0 val)))]))

;(define (sat32 v)
 ; (match v
  ;  [(int32_t val) v]
   ; [(uint32_t val) (if (bvslt val ) (int32_t (bv #x80000000 32)) (if (bvsgt val ) (bv #x7fffffff 32) val))]
    ;[(int64_t val) (if (bvslt val (bv #x80000000 64)) (bv #x80000000 32) (if (bvsgt val (bv #x7fffffff 64)) (bv #x7fffffff 32) (extract 31 0 val)))]))

;(define (satu8 v)
 ; (cond
  ;  [((bitvector 8) val) (if (bvslt val (bv #x0 8)) (bv #x80 8) (if (bvsgt val (bv #x7f 8)) (bv #x7f 8) val))]
   ; [((bitvector 16) val) (if (bvslt val (bv #x0 16)) (bv #x80 8) (if (bvsgt val (bv #x7f 16)) (bv #x7f 8) (extract 7 0 val)))]
    ;[((bitvector 32) val) (if (bvslt val (bv #x0 32)) (bv #x80 8) (if (bvsgt val (bv #x7f 32)) (bv #x7f 8) (extract 7 0 val)))]))

;(define (satu16 v)
 ; (cond
  ;  [((bitvector 16) val) (if (bvslt val (bv #x0 16)) (bv #x8000 16) (if (bvsgt val (bv #x7fff 16)) (bv #x7fff 16) val))]
   ; [((bitvector 32) val) (if (bvslt val (bv #x0 32)) (bv #x8000 16) (if (bvsgt val (bv #x7fff 32)) (bv #x7fff 16) (extract 15 0 val)))]))

;(define (satu32 v)
 ; (cond
  ;  [((bitvector 32) val) (if (bvslt val (bv #x0 32)) (bv #x80000000 32) (if (bvsgt val (bv #x7fffffff 32)) (bv #x7fffffff 32) val))]
   ; [((bitvector 64) val) (if (bvslt val (bv #x0 64)) (bv #x80000000 32) (if (bvsgt val (bv #x7fffffff 64)) (bv #x7fffffff 32) (extract 31 0 val)))]))

(provide (all-defined-out))