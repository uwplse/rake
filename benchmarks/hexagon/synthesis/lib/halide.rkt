#lang rosette

(require "cpp.rkt")

;; Model vector casts
(define (castvec val from to)
  (match from
    ['int8
     (match to
       ['int8 val]
       ['int16 (lambda (i) (cast (val i) 'int8 'int16))]
       ['int32 (lambda (i) (cast (val i) 'int8 'int32))]
       ['uint8 val]
       ['uint16 (lambda (i) (cast (val i) 'int8 'uint16))]
       ['uint32 (lambda (i) (cast (val i) 'int8 'uint32))])]
    ['uint8
     (match to
       ['int8 val]
       ['int16 (lambda (i) (cast (val i) 'uint8 'int16))]
       ['int32 (lambda (i) (cast (val i) 'uint8 'int32))]
       ['uint8 val]
       ['uint16 (lambda (i) (cast (val i) 'uint8 'uint16))]
       ['uint32 (lambda (i) (cast (val i) 'uint8 'uint32))])]
    ['int16
     (match to
       ['int8 (lambda (i) (cast (val i) 'int16 'int8))]
       ['uint8 (lambda (i) (cast (val i) 'int16 'uint8))]
       ['int16 val]
       ['uint16 val]
       ['int32 (lambda (i) (cast (val i) 'int16 'int32))]
       ['uint32 (lambda (i) (cast (val i) 'int16 'uint32))])]
    ['int32
     (match to
       ['int8 (lambda (i) (cast (val i) 'int32 'int8))]
       ['uint8 (lambda (i) (cast (val i) 'int32 'uint8))]
       ['int16 (lambda (i) (cast (val i) 'int32 'int16))]
       ['uint16 (lambda (i) (cast (val i) 'int32 'uint16))]
       ['int32 val]
       ['uint32 val])]))

;; Model Halide IR
(define (broadcast val)
  (lambda (i) val))

(define (ramp input base stride)
  (lambda (i) (input (+ base (* i stride)))))

(define (vec-add v1 v2)
  (lambda (i) (bvadd (v1 i) (v2 i))))

(define (vec-mul v1 v2)
  (lambda (i) (bvmul (v1 i) (v2 i))))

(provide (all-defined-out))