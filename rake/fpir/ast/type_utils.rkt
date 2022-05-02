#lang rosette/safe

(require
  (only-in racket/base error eqv?)
  rosette/lib/destruct
  rake/cpp/types
  rake/fpir/ast/types
  rake/fpir/ast/utils
  rake/fpir/ast/interpreter
)

(provide (prefix-out fpir: (all-defined-out)))

(define (get-interpreted-type fpir-expr)
  (fpir:type (fpir:interpret fpir-expr)))

(define (get-interpreted-elem-type fpir-expr)
  (fpir:elem-type (fpir:interpret fpir-expr)))

(define (is-256-expr? fpir-expr)
  (let ([type (get-interpreted-type fpir-expr)])
    (cond
      [(eq? 'i8x32 type) #t]
      [(eq? 'i16x16 type) #t]
      [(eq? 'i32x8 type) #t]
      [(eq? 'i64x4 type) #t]

      [(eq? 'u8x32 type) #t]
      [(eq? 'u16x16 type) #t]
      [(eq? 'u32x8 type) #t]
      [(eq? 'u64x4 type) #t]

      [(eq? 'i8x16 type) #f]
      [(eq? 'i16x8 type) #f]
      [(eq? 'i32x4 type) #f]
      [(eq? 'i64x2 type) #f]

      [(eq? 'u8x16 type) #f]
      [(eq? 'u16x8 type) #f]
      [(eq? 'u32x4 type) #f]
      [(eq? 'u64x2 type) #f]
      [else (error (format "fpir:is-256-expr? failed on type: ~a\n" type))])))
