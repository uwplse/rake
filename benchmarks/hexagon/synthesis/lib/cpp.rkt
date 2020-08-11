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
(define MIN_CHAR -128)
(define MAX_CHAR 127)
(define MIN_UCHAR 0)
(define MAX_UCHAR 255)

(define MIN_SHORT -32768)
(define MAX_SHORT 32767)
(define MIN_USHORT 0)
(define MAX_USHORT 65535)

(define MIN_INT -2147483648)
(define MAX_INT 2147483647)
(define MIN_UINT 0)
(define MAX_UINT 4294967295)

(define (sat8 v)
  (define val (if (signed? (type v)) (bitvector->integer (eval v)) (bitvector->natural (eval v))))
  (if (< val MIN_CHAR)
      (int8_t (bv MIN_CHAR 8))
      (if (> val MAX_CHAR)
          (int8_t (bv MAX_CHAR 8))
          (int8_t (bv val 8)))))

(define (sat16 v)
  (define val (if (signed? (type v)) (bitvector->integer (eval v)) (bitvector->natural (eval v))))
  (if (< val MIN_SHORT)
      (int16_t (bv MIN_SHORT 16))
      (if (> val MAX_SHORT)
          (int16_t (bv MAX_SHORT 16))
          (int16_t (bv val 16)))))

(define (sat32 v)
  (define val (if (signed? (type v)) (bitvector->integer (eval v)) (bitvector->natural (eval v))))
  (if (< val MIN_INT)
      (int32_t (bv MIN_INT 32))
      (if (> val MAX_INT)
          (int32_t (bv MAX_INT 32))
          (int32_t (bv val 32)))))

(define (satu8 v)
  (define val (if (signed? (type v)) (bitvector->integer (eval v)) (bitvector->natural (eval v))))
  (if (< val MIN_UCHAR)
      (uint8_t (bv MIN_UCHAR 8))
      (if (> val MAX_UCHAR)
          (uint8_t (bv MAX_UCHAR 8))
          (uint8_t (bv val 8)))))

(define (satu16 v)
  (define val (if (signed? (type v)) (bitvector->integer (eval v)) (bitvector->natural (eval v))))
  (if (< val MIN_USHORT)
      (uint16_t (bv MIN_USHORT 16))
      (if (> val MAX_USHORT)
          (uint16_t (bv MAX_USHORT 16))
          (uint16_t (bv val 16)))))

(define (satu32 v)
  (define val (if (signed? (type v)) (bitvector->integer (eval v)) (bitvector->natural (eval v))))
  (if (< val MIN_UINT)
      (uint32_t (bv MIN_UINT 32))
      (if (> val MAX_UINT)
          (uint32_t (bv MAX_UINT 32))
          (uint32_t (bv val 32)))))

(provide (all-defined-out))