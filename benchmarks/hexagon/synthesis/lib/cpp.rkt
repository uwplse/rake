#lang rosette

;; Model C++ casting
(define (cast val from to)
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

(provide cast)