#lang rosette

(require rosette/lib/match)

;; Types
(struct int8_t (v) #:transparent)
(struct int16_t (v) #:transparent)
(struct int32_t (v) #:transparent)
(struct uint8_t (v) #:transparent)
(struct uint16_t (v) #:transparent)
(struct uint32_t (v) #:transparent)

(define (eval e)
  (match e
    [(int8_t v) v]
    [(int16_t v) v]
    [(int32_t v) v]
    [(uint8_t v) v]
    [(uint16_t v) v]
    [(uint32_t v) v]
    [(uint32_t v) v]
    [_ (error "Cannot eval: ~a" e)]))

(define (type e)
  (match e
    [(int8_t v) 'int8]
    [(int16_t v) 'int16]
    [(int32_t v) 'int32]
    [(uint8_t v) 'uint8]
    [(uint16_t v) 'uint16]
    [(uint32_t v) 'uint32]
    [_ (error "Cannot infer type: ~a" e)]))

(define (signed? type)
  (match type
    ['int8 #t]
    ['int16 #t]
    ['int32 #t]
    ['uint8 #f]
    ['uint16 #f]
    ['uint32 #f]
    [_ (error "Cannot infer signed-ness: ~a" type)]))

(define (unsigned? type)
  (not (signed? type)))

(define (bw type)
  (match type
    ['int8 8]
    ['int16 16]
    ['int32 32]
    ['uint8 8]
    ['uint16 16]
    ['uint32 32]
    [_ (error "Cannot infer bit-width: ~a" type)]))

;; Model C++ casting
(define (cpp_cast v type)
  (match v
    [(int8_t val)
     (match type
       ['int8 v]
       ['int16 (int16_t (sign-extend val (bitvector 16)))]
       ['int32 (int32_t (sign-extend val (bitvector 32)))]
       ['uint8 (uint8_t val)]
       ['uint16 (uint16_t (sign-extend val (bitvector 16)))]
       ['uint32 (uint32_t (sign-extend val (bitvector 32)))])]
    [(uint8_t val)
     (match type
       ['int8 (int8_t val)]
       ['int16 (int16_t (zero-extend val (bitvector 16)))]
       ['int32 (int32_t (zero-extend val (bitvector 32)))]
       ['uint8 v]
       ['uint16 (uint16_t (zero-extend val (bitvector 16)))]
       ['uint32 (uint32_t (zero-extend val (bitvector 32)))])]
    [(int16_t val)
     (match type
       ['int8 (int8_t (extract 7 0 val))]
       ['int16 v]
       ['int32 (int32_t (sign-extend val (bitvector 32)))]
       ['uint8 (uint8_t (extract 7 0 val))]
       ['uint16 (uint16_t val)]
       ['uint32 (uint32_t (sign-extend val (bitvector 32)))])]
    [(uint16_t val)
     (match type
       ['int8 (int8_t (extract 7 0 val))]
       ['int16 (int16_t val)]
       ['int32 (int32_t (zero-extend val (bitvector 32)))]
       ['uint8 (uint8_t (extract 7 0 val))]
       ['uint16 v]
       ['uint32 (uint32_t (zero-extend val (bitvector 32)))])]
    [(int32_t val)
     (match type
       ['int8 (int8_t (extract 7 0 val))]
       ['int16 (int16_t (extract 15 0 val))]
       ['int32 v]
       ['uint8 (uint8_t (extract 7 0 val))]
       ['uint16 (uint16_t (extract 15 0 val))]
       ['uint32 (uint32_t val)])]
    [(uint32_t val)
     (match type
       ['int8 (int8_t (extract 7 0 val))]
       ['int16 (int16_t (extract 15 0 val))]
       ['int32 (int32_t val)]
       ['uint8 (uint8_t (extract 7 0 val))]
       ['uint16 (uint16_t (extract 15 0 val))]
       ['uint32 v])]
    [_ (error "NYI: Casting from type ~a" v)]))


;; TODO: Fix these placeholder definitions
(define (sat8 val)
  (cond
    [((bitvector 8) val) (if (bvslt val (bv -128 8)) (bv -128 8) (if (bvsgt val (bv 127 8)) (bv 127 8) val))]
    [((bitvector 16) val) (if (bvslt val (bv -128 16)) (bv -128 8) (if (bvsgt val (bv 127 16)) (bv 127 8) (extract 7 0 val)))]
    [((bitvector 32) val) (if (bvslt val (bv -128 32)) (bv -128 8) (if (bvsgt val (bv 127 32)) (bv 127 8) (extract 7 0 val)))]))

(define (sat16 val)
  (cond
    [((bitvector 16) val) (if (bvslt val (bv -32768 32)) (bv -32768 16) (if (bvsgt val (bv 32767 32)) (bv 32767 16) val))]
    [((bitvector 32) val) (if (bvslt val (bv -32768 32)) (bv -32768 16) (if (bvsgt val (bv 32767 32)) (bv 32767 16) (extract 15 0 val)))]))

(define (sat32 val)
  (cond
    [((bitvector 8) val) (if (bvslt val (bv -128 8)) (bv -128 8) (if (bvsgt val (bv 127 8)) (bv 127 8) val))]
    [((bitvector 16) val) (if (bvslt val (bv -128 16)) (bv -128 8) (if (bvsgt val (bv 127 16)) (bv 127 8) (extract 7 0 val)))]
    [((bitvector 32) val) (if (bvslt val (bv -128 32)) (bv -128 8) (if (bvsgt val (bv 127 32)) (bv 127 8) (extract 7 0 val)))]))

(define (satu8 val)
  (cond
    [((bitvector 8) val) (if (bvslt val (bv 0 8)) (bv 0 8) (if (bvsgt val (bv 255 8)) (bv 255 8) val))]
    [((bitvector 16) val) (if (bvslt val (bv 0 16)) (bv 0 8) (if (bvsgt val (bv 255 16)) (bv 255 8) (extract 7 0 val)))]
    [((bitvector 32) val) (if (bvslt val (bv 0 32)) (bv 0 8) (if (bvsgt val (bv 255 32)) (bv 255 8) (extract 7 0 val)))]))

(define (satu16 val)
  (cond
    [((bitvector 8) val) (if (bvslt val (bv 0 8)) (bv 0 8) (if (bvsgt val (bv 255 8)) (bv 255 8) val))]
    [((bitvector 16) val) (if (bvslt val (bv 0 16)) (bv 0 8) (if (bvsgt val (bv 255 16)) (bv 255 8) (extract 7 0 val)))]
    [((bitvector 32) val) (if (bvslt val (bv 0 32)) (bv 0 8) (if (bvsgt val (bv 255 32)) (bv 255 8) (extract 7 0 val)))]))

(define (satu32 val)
  (cond
    [((bitvector 8) val) (if (bvslt val (bv 0 8)) (bv 0 8) (if (bvsgt val (bv 255 8)) (bv 255 8) val))]
    [((bitvector 16) val) (if (bvslt val (bv 0 16)) (bv 0 8) (if (bvsgt val (bv 255 16)) (bv 255 8) (extract 7 0 val)))]
    [((bitvector 32) val) (if (bvslt val (bv 0 32)) (bv 0 8) (if (bvsgt val (bv 255 32)) (bv 255 8) (extract 7 0 val)))]))

(provide (all-defined-out))