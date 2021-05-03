#lang rosette/safe

(require
  (only-in racket/base error)
  rosette/lib/destruct
  rake/cpp/types)

(provide cpp-cast satu8 satu16 satu32 satu64 sat8 sat16 sat32 sat64)

;; Model C++ casting
(define (cpp-cast v type)
  (destruct v
    [(int8_t val)
     (cond 
       [(eq? type 'int8) v]
       [(eq? type 'int16) (int16_t (sign-extend val (bitvector 16)))]
       [(eq? type 'int32) (int32_t (sign-extend val (bitvector 32)))]
       [(eq? type 'int64) (int64_t (sign-extend val (bitvector 64)))]
       [(eq? type 'uint8) (uint8_t val)]
       [(eq? type 'uint16) (uint16_t (sign-extend val (bitvector 16)))]
       [(eq? type 'uint32) (uint32_t (sign-extend val (bitvector 32)))]
       [(eq? type 'uint64) (uint64_t (sign-extend val (bitvector 64)))])]
    [(uint8_t val)
     (cond
       [(eq? type 'int8) (int8_t val)]
       [(eq? type 'int16) (int16_t (zero-extend val (bitvector 16)))]
       [(eq? type 'int32) (int32_t (zero-extend val (bitvector 32)))]
       [(eq? type 'int64) (int64_t (zero-extend val (bitvector 64)))]
       [(eq? type 'uint8) v]
       [(eq? type 'uint16) (uint16_t (zero-extend val (bitvector 16)))]
       [(eq? type 'uint32) (uint32_t (zero-extend val (bitvector 32)))]
       [(eq? type 'uint64) (uint64_t (zero-extend val (bitvector 64)))])]
    [(int16_t val)
     (cond
       [(eq? type 'int8) (int8_t (extract 7 0 val))]
       [(eq? type 'int16) v]
       [(eq? type 'int32) (int32_t (sign-extend val (bitvector 32)))]
       [(eq? type 'int64) (int64_t (sign-extend val (bitvector 64)))]
       [(eq? type 'uint8) (uint8_t (extract 7 0 val))]
       [(eq? type 'uint16) (uint16_t val)]
       [(eq? type 'uint32) (uint32_t (sign-extend val (bitvector 32)))]
       [(eq? type 'uint64) (uint64_t (sign-extend val (bitvector 64)))])]
    [(uint16_t val)
     (cond
       [(eq? type 'int8) (int8_t (extract 7 0 val))]
       [(eq? type 'int16) (int16_t val)]
       [(eq? type 'int32) (int32_t (zero-extend val (bitvector 32)))]
       [(eq? type 'int64) (int64_t (zero-extend val (bitvector 64)))]
       [(eq? type 'uint8) (uint8_t (extract 7 0 val))]
       [(eq? type 'uint16) v]
       [(eq? type 'uint32) (uint32_t (zero-extend val (bitvector 32)))]
       [(eq? type 'uint64) (uint64_t (zero-extend val (bitvector 64)))])]
    [(int32_t val)
     (cond
       [(eq? type 'int8) (int8_t (extract 7 0 val))]
       [(eq? type 'int16) (int16_t (extract 15 0 val))]
       [(eq? type 'int32) v]
       [(eq? type 'int64) (int64_t (sign-extend val (bitvector 64)))]
       [(eq? type 'uint8) (uint8_t (extract 7 0 val))]
       [(eq? type 'uint16) (uint16_t (extract 15 0 val))]
       [(eq? type 'uint32) (uint32_t val)]
       [(eq? type 'uint64) (uint64_t (sign-extend val (bitvector 64)))])]
    [(uint32_t val)
     (cond
       [(eq? type 'int8) (int8_t (extract 7 0 val))]
       [(eq? type 'int16) (int16_t (extract 15 0 val))]
       [(eq? type 'int32) (int32_t val)]
       [(eq? type 'int64) (int64_t (zero-extend val (bitvector 64)))]
       [(eq? type 'uint8) (uint8_t (extract 7 0 val))]
       [(eq? type 'uint16) (uint16_t (extract 15 0 val))]
       [(eq? type 'uint32) v]
       [(eq? type 'uint64) (int64_t (zero-extend val (bitvector 64)))])]
    [(int64_t val)
     (cond 
       [(eq? type 'int8) (int8_t (extract 7 0 val))]
       [(eq? type 'int16) (int16_t (extract 15 0 val))]
       [(eq? type 'int32) (int32_t (extract 31 0 val))]
       [(eq? type 'int64) v]
       [(eq? type 'uint8) (uint8_t (extract 7 0 val))]
       [(eq? type 'uint16) (uint16_t (extract 15 0 val))]
       [(eq? type 'uint32) (uint32_t (extract 31 0 val))]
       [(eq? type 'uint64) (uint64_t (extract 63 0 val))])]

    ;; Casts on indexing variables (modelled as ints not bvs) are currently assumed to never change value
    [_ (if (integer? v) v (error "NYI: Casting from type ~a" v))]))

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

(define MIN_LL #x8000000000000000)
(define MAX_LL #x7fffffffffffffff)
(define MIN_ULL 0)
(define MAX_ULL #xffffffffffffffff)

(define (sat8 e)
  (destruct e
    [(int8_t val) e]
    [(int16_t val) (cond
                     [(bvslt val (bv MIN_CHAR 16)) (int8_t (bv MIN_CHAR 8))]
                     [(bvsgt val (bv MAX_CHAR 16)) (int8_t (bv MAX_CHAR 8))]
                     [else (int8_t (extract 7 0 val))])]
    [(int32_t val) (cond
                     [(bvslt val (bv MIN_CHAR 32)) (int8_t (bv MIN_CHAR 8))]
                     [(bvsgt val (bv MAX_CHAR 32)) (int8_t (bv MAX_CHAR 8))]
                     [else (int8_t (extract 7 0 val))])]
    [(uint8_t val) (if (bvugt val (bv MAX_CHAR 8)) (int8_t (bv MAX_CHAR 8)) (int8_t val))]
    [(uint16_t val) (if (bvugt val (bv MAX_CHAR 16)) (int8_t (bv MAX_CHAR 8)) (int8_t (extract 7 0 val)))]
    [(uint32_t val) (if (bvugt val (bv MAX_CHAR 32)) (int8_t (bv MAX_CHAR 8)) (int8_t (extract 7 0 val)))]))

(define (sat16 e)
  (destruct e
    [(int8_t val) (int16_t (sign-extend val (bitvector 16)))]
    [(int16_t val) e]
    [(int32_t val) (cond
                     [(bvslt val (bv MIN_SHORT 32)) (int16_t (bv MIN_SHORT 16))]
                     [(bvsgt val (bv MAX_SHORT 32)) (int16_t (bv MAX_SHORT 16))]
                     [else (int16_t (extract 15 0 val))])]
    [(uint8_t val) (int16_t (zero-extend val (bitvector 16)))]
    [(uint16_t val) (if (bvugt val (bv MAX_SHORT 16)) (int16_t (bv MAX_SHORT 16)) (int16_t val))]
    [(uint32_t val) (if (bvugt val (bv MAX_SHORT 32)) (int16_t (bv MAX_SHORT 16)) (int16_t (extract 15 0 val)))]))

(define (sat32 e)
  (destruct e
    [(int8_t val) (int32_t (sign-extend val (bitvector 32)))]
    [(int16_t val) (int32_t (sign-extend val (bitvector 32)))]
    [(int32_t val) e]
    [(int64_t val) (cond
                     [(bvslt val (bv MIN_INT 64)) (int32_t (bv MIN_INT 32))]
                     [(bvsgt val (bv MAX_INT 64)) (int32_t (bv MAX_INT 32))]
                     [else (int32_t (extract 31 0 val))])]
    [(uint8_t val) (int32_t (zero-extend val (bitvector 32)))]
    [(uint16_t val) (int32_t (zero-extend val (bitvector 32)))]
    [(uint32_t val) (if (bvugt val (bv MAX_INT 32)) (int32_t (bv MAX_INT 32)) (int32_t val))]
    [(uint64_t val) (if (bvugt val (bv MAX_INT 64)) (int32_t (bv MAX_INT 32)) (int32_t (extract 31 0 val)))]))

(define (sat64 e)
  (destruct e
    [(int8_t val) (int64_t (sign-extend val (bitvector 64)))]
    [(int16_t val) (int64_t (sign-extend val (bitvector 64)))]
    [(int32_t val) (int64_t (sign-extend val (bitvector 64)))]
    [(int64_t val) e]
    [(uint8_t val) (int64_t (zero-extend val (bitvector 64)))]
    [(uint16_t val) (int64_t (zero-extend val (bitvector 64)))]
    [(uint32_t val) (int64_t (zero-extend val (bitvector 64)))]
    [(uint64_t val) (if (bvugt val (bv MAX_LL 64)) (int64_t (bv MAX_LL 64)) (int64_t val))]))

(define (satu8 e)
  (destruct e
    [(int8_t val) (if (bvslt val (bv MIN_UCHAR 8)) (uint8_t (bv MIN_UCHAR 8)) (uint8_t val))]
    [(int16_t val) (cond
                     [(bvslt val (bv MIN_UCHAR 16)) (uint8_t (bv MIN_UCHAR 8))]
                     [(bvsgt val (bv MAX_UCHAR 16)) (uint8_t (bv MAX_UCHAR 8))]
                     [else (uint8_t (extract 7 0 val))])]
    [(int32_t val) (cond
                     [(bvslt val (bv MIN_UCHAR 32)) (uint8_t (bv MIN_UCHAR 8))]
                     [(bvsgt val (bv MAX_UCHAR 32)) (uint8_t (bv MAX_UCHAR 8))]
                     [else (uint8_t (extract 7 0 val))])]
    [(uint8_t val) e]
    [(uint16_t val) (if (bvugt val (bv MAX_UCHAR 16)) (uint8_t (bv MAX_UCHAR 8)) (uint8_t (extract 7 0 val)))]
    [(uint32_t val) (if (bvugt val (bv MAX_UCHAR 32)) (uint8_t (bv MAX_UCHAR 8)) (uint8_t (extract 7 0 val)))]))

(define (satu16 e)
  (destruct e
    [(int8_t val) (if (bvslt val (bv MIN_USHORT 8)) (uint16_t (bv MIN_USHORT 16)) (uint16_t (zero-extend val (bitvector 16))))]
    [(int16_t val) (if (bvslt val (bv MIN_USHORT 16)) (uint16_t (bv MIN_USHORT 16)) (uint16_t val))]
    [(int32_t val) (cond
                     [(bvslt val (bv MIN_USHORT 32)) (uint16_t (bv MIN_USHORT 16))]
                     [(bvsgt val (bv MAX_USHORT 32)) (uint16_t (bv MAX_USHORT 16))]
                     [else (uint16_t (extract 15 0 val))])]
    [(uint8_t val) (uint16_t (zero-extend val (bitvector 16)))]
    [(uint16_t val) e]
    [(uint32_t val) (if (bvugt val (bv MAX_USHORT 32)) (uint16_t (bv MAX_USHORT 16)) (uint16_t (extract 15 0 val)))]))

(define (satu32 e)
  (destruct e
    [(int8_t val) (if (bvslt val (bv MIN_UINT 8)) (uint32_t (bv MIN_UINT 32)) (uint32_t (zero-extend val (bitvector 32))))]
    [(int16_t val) (if (bvslt val (bv MIN_UINT 16)) (uint32_t (bv MIN_UINT 32)) (uint32_t (zero-extend val (bitvector 32))))]
    [(int32_t val) (if (bvslt val (bv MIN_UINT 32)) (uint32_t (bv MIN_UINT 32)) (uint32_t val))]
    [(int64_t val) (cond
                     [(bvslt val (bv MIN_UINT 64)) (uint32_t (bv MIN_UINT 32))]
                     [(bvsgt val (bv MAX_UINT 64)) (uint32_t (bv MAX_UINT 32))]
                     [else (uint32_t (extract 31 0 val))])]
    [(uint8_t val) (uint32_t (zero-extend val (bitvector 32)))]
    [(uint16_t val) (uint32_t (zero-extend val (bitvector 32)))]
    [(uint32_t val) e]
    [(uint64_t val) (if (bvugt val (bv MAX_UINT 64)) (uint32_t (bv MAX_UINT 32)) (uint32_t (extract 31 0 val)))]))

(define (satu64 e)
  (destruct e
    [(int8_t val) (if (bvslt val (bv MIN_ULL 8)) (uint64_t (bv MIN_ULL 64)) (uint64_t (zero-extend val (bitvector 64))))]
    [(int16_t val) (if (bvslt val (bv MIN_ULL 16)) (uint64_t (bv MIN_ULL 64)) (uint64_t (zero-extend val (bitvector 64))))]
    [(int32_t val) (if (bvslt val (bv MIN_ULL 32)) (uint64_t (bv MIN_ULL 64)) (uint64_t (zero-extend val (bitvector 64))))]
    [(int64_t val) (if (bvslt val (bv MIN_ULL 64)) (uint64_t (bv MIN_ULL 64)) (uint64_t val))]
    [(uint8_t val) (uint64_t (zero-extend val (bitvector 64)))]
    [(uint16_t val) (uint64_t (zero-extend val (bitvector 64)))]
    [(uint32_t val) (uint64_t (zero-extend val (bitvector 64)))]
    [(uint64_t val) e]))