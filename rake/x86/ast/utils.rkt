#lang rosette/safe

(require
  (only-in racket/base error)
  rosette/lib/destruct
  rake/cpp/types
  rake/x86/ast/types
)

(provide (prefix-out x86: (all-defined-out)))

(define (get-element expr index)
  (destruct expr
    [(x86:i8x16 data) (data index)]
    [(x86:i8x32 data) (data index)]
    [(x86:i16x8 data) (data index)]
    [(x86:i16x16 data) (data index)]
    [(x86:i32x4 data) (data index)]
    [(x86:i32x8 data) (data index)]
    [(x86:i64x2 data) (data index)]
    [(x86:i64x4 data) (data index)]

    [(x86:u8x16 data) (data index)]
    [(x86:u8x32 data) (data index)]
    [(x86:u16x8 data) (data index)]
    [(x86:u16x16 data) (data index)]
    [(x86:u32x4 data) (data index)]
    [(x86:u32x8 data) (data index)]
    [(x86:u64x2 data) (data index)]
    [(x86:u64x4 data) (data index)]
    [_ (error "Unrecognized type (x86:get-element) ~a at index ~a" expr index)]))

(define (get-vector-types type)
  (cond
    [(eq? type 'int8) (list 'i8x16 'i8x32)]
    [(eq? type 'int16) (list 'i16x8 'i16x16)]
    [(eq? type 'int32) (list 'i32x4 'i32x8)]
    [(eq? type 'int64) (list 'i64x2 'i64x4)]
    [(eq? type 'uint8) (list 'u8x16 'u8x32)]
    [(eq? type 'uint16) (list 'u16x8 'u16x16)]
    [(eq? type 'uint32) (list 'u32x4 'u32x8)]
    [(eq? type 'uint64) (list 'u64x2 'u64x4)]
    [else (error "Unrecognized type (x86:get-vector-types) ~a" type)]))

(define (simplify-shuffle shuffle)
  (let ([type (x86:??shuffle-output-type shuffle)]
        [loads (x86:??shuffle-lds shuffle)]
        [id (x86:??shuffle-id shuffle)])
    (define (bad-load load)
      (not (and (x86:??load? load) (not (eq? (x86:??load-output-type load) type)))))
    (define filtered-loads (filter bad-load loads))
    (cond
      [(eq? 0 (length filtered-loads)) (error "x86:simplify-shuffle removed all loads ~a" shuffle)]
      ; Just make a load if not actually shuffling anything
      [(eq? 1 (length filtered-loads)) (list-ref loads 0)]
      ; We didn't filter anything
      [(eq? (length loads) (length filtered-loads)) shuffle]
      ; We filtered some stuff
      [else (x86:??shuffle id filtered-loads type)])))

(define (make-shuffles-list loads type)
  (map (lambda (t) (simplify-shuffle (x86:??shuffle 0 loads t))) (get-vector-types type)))

(define (get-type-struct type)
  (cond
    [(eq? type 'i8x16) x86:i8x16]
    [(eq? type 'i8x32) x86:i8x32]
    [(eq? type 'u8x16) x86:u8x16]
    [(eq? type 'u8x32) x86:u8x32]

    [(eq? type 'i16x8) x86:i16x8]
    [(eq? type 'i16x16) x86:i16x16]
    [(eq? type 'u16x8) x86:u16x8]
    [(eq? type 'u16x16) x86:u16x16]

    [(eq? type 'i32x4) x86:i32x4]
    [(eq? type 'i32x8) x86:i32x8]
    [(eq? type 'u32x4) x86:u32x4]
    [(eq? type 'u32x8) x86:u32x8]

    [(eq? type 'i64x2) x86:i64x2]
    [(eq? type 'i64x4) x86:i64x4]
    [(eq? type 'u64x2) x86:u64x2]
    [(eq? type 'u64x4) x86:u64x4]
    [else (error "Unrecognized type (x86:get-type-struct) ~a" type)]))
