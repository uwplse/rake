#lang rosette

(require rosette/lib/match)

;; Model C++ casting
(define (cpp_cast val from to)
  (match from
    ['int8
     (match to
       ['int8 val]
       ['int16 (sign-extend val (bitvector 16))]
       ['int32 (sign-extend val (bitvector 32))]
       ['uint8 val]
       ['uint16 (sign-extend val (bitvector 16))]
       ['uint32 (sign-extend val (bitvector 32))])]
    ['uint8
     (match to
       ['uint8 val]
       ['uint16 (zero-extend val (bitvector 16))]
       ['uint32 (zero-extend val (bitvector 32))]
       ['int8 val]
       ['int16 (zero-extend val (bitvector 16))]
       ['int32 (zero-extend val (bitvector 32))])]
    ['int16
     (match to
       ['int8 (extract 7 0 val)]
       ['uint8 (extract 7 0 val)]
       ['int16 val]
       ['uint16 val]
       ['int32 (sign-extend val (bitvector 32))]
       ['uint32 (sign-extend val (bitvector 32))])]
    ['int32
     (match to
       ['int8 (extract 7 0 val)]
       ['uint8 (extract 7 0 val)]
       ['int16 (extract 15 0 val)]
       ['uint16 (extract 15 0 val)]
       ['int32 val]
       ['uint32 val])]))

;(define (sxt32 val)
  ;(cpp_cast val 'int16 'int32))

(define (sat8 val)
  (cond
    [((bitvector 8) val) (if (bvslt val (bv -128 8)) (bv -128 8) (if (bvsgt val (bv 127 8)) (bv 127 8) val))]
    [((bitvector 16) val) (if (bvslt val (bv -128 16)) (bv -128 8) (if (bvsgt val (bv 127 16)) (bv 127 8) (extract 7 0 val)))]
    [((bitvector 32) val) (if (bvslt val (bv -128 32)) (bv -128 8) (if (bvsgt val (bv 127 32)) (bv 127 8) (extract 7 0 val)))]))

(define (sat16 val)
  (cond
    [((bitvector 16) val) (if (bvslt val (bv -32768 32)) (bv -32768 16) (if (bvsgt val (bv 32767 32)) (bv 32767 16) val))]
    [((bitvector 32) val) (if (bvslt val (bv -32768 32)) (bv -32768 16) (if (bvsgt val (bv 32767 32)) (bv 32767 16) (extract 15 0 val)))]))

(define (usat8 val)
  (cond
    [((bitvector 8) val) (if (bvslt val (bv 0 8)) (bv 0 8) (if (bvsgt val (bv 255 8)) (bv 255 8) val))]
    [((bitvector 16) val) (if (bvslt val (bv 0 16)) (bv 0 8) (if (bvsgt val (bv 255 16)) (bv 255 8) (extract 7 0 val)))]
    [((bitvector 32) val) (if (bvslt val (bv 0 32)) (bv 0 8) (if (bvsgt val (bv 255 32)) (bv 255 8) (extract 7 0 val)))]))

(provide (all-defined-out))