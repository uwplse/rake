#lang rosette/safe

(require
  (only-in racket/base error eqv?)
  rosette/lib/destruct
  rake/cpp/types
  rake/fpir/ast/types
)

(provide (prefix-out fpir: (all-defined-out)))

(define (is-broadcast? fpir-template)
  (or (fpir:broadcast256? fpir-template)
      (fpir:broadcast128? fpir-template)))

(define (get-128-broadcast fpir-broadcast)
  (cond
    [(fpir:broadcast256? fpir-broadcast) (fpir:broadcast128 (fpir:broadcast256-a_imm8 fpir-broadcast))]
    [else (error (format "fpir:get-128-broadcast failed on expr: ~a\n" fpir-broadcast))]))

(define (get-128-type type)
  (cond
    [(eq? 'i8x32 type) 'i8x16]
    [(eq? 'i16x16 type) 'i16x8]
    [(eq? 'i32x8 type) 'i32x4]
    [(eq? 'i64x4 type) 'i64x2]

    [(eq? 'u8x32 type) 'u8x16]
    [(eq? 'u16x16 type) 'u16x8]
    [(eq? 'u32x8 type) 'u32x4]
    [(eq? 'u64x4 type) 'u64x2]
    [else (error (format "fpir:get-128-type failed on type: ~a\n" type))]))

(define (is-reinterpret-instr? fpir-instr)
  ;; TODO: get rid of regular reinterpret...
  (eqv? fpir-instr fpir:reinterpret))

(define (elem-type expr)
  (cond
    [(eq? fpir:i8x16 expr) 'int8]
    [(eq? fpir:i8x32 expr) 'int8]
    [(eq? fpir:i16x8 expr) 'int16]
    [(eq? fpir:i16x16 expr) 'int16]
    [(eq? fpir:i32x4 expr) 'int32]
    [(eq? fpir:i32x8 expr) 'int32]
    [(eq? fpir:i64x2 expr) 'int64]
    [(eq? fpir:i64x4 expr) 'int64]

    [(eq? fpir:u8x16 expr) 'uint8]
    [(eq? fpir:u8x32 expr) 'uint8]
    [(eq? fpir:u16x8 expr) 'uint16]
    [(eq? fpir:u16x16 expr) 'uint16]
    [(eq? fpir:u32x4 expr) 'uint32]
    [(eq? fpir:u32x8 expr) 'uint32]
    [(eq? fpir:u64x2 expr) 'uint64]
    [(eq? fpir:u64x4 expr) 'uint64]

    [(fpir:i8x16? expr) 'int8]
    [(fpir:i8x32? expr) 'int8]
    [(fpir:i16x8? expr) 'int16]
    [(fpir:i16x16? expr) 'int16]
    [(fpir:i32x4? expr) 'int32]
    [(fpir:i32x8? expr) 'int32]
    [(fpir:i64x2? expr) 'int64]
    [(fpir:i64x4? expr) 'int64]

    [(fpir:u8x16? expr) 'uint8]
    [(fpir:u8x32? expr) 'uint8]
    [(fpir:u16x8? expr) 'uint16]
    [(fpir:u16x16? expr) 'uint16]
    [(fpir:u32x4? expr) 'uint32]
    [(fpir:u32x8? expr) 'uint32]
    [(fpir:u64x2? expr) 'uint64]
    [(fpir:u64x4? expr) 'uint64]

    [(eq? 'i8x16 expr) 'int8]
    [(eq? 'i8x32 expr) 'int8]
    [(eq? 'i16x8 expr) 'int16]
    [(eq? 'i16x16 expr) 'int16]
    [(eq? 'i32x4 expr) 'int32]
    [(eq? 'i32x8 expr) 'int32]
    [(eq? 'i64x2 expr) 'int64]
    [(eq? 'i64x4 expr) 'int64]

    [(eq? 'u8x16 expr) 'uint8]
    [(eq? 'u8x32 expr) 'uint8]
    [(eq? 'u16x8 expr) 'uint16]
    [(eq? 'u16x16 expr) 'uint16]
    [(eq? 'u32x4 expr) 'uint32]
    [(eq? 'u32x8 expr) 'uint32]
    [(eq? 'u64x2 expr) 'uint64]
    [(eq? 'u64x4 expr) 'uint64]))

(define (type expr)
  (destruct expr
    [(fpir:i8x16 data) 'i8x16]
    [(fpir:i8x32 data) 'i8x32]
    [(fpir:i16x8 data) 'i16x8]
    [(fpir:i16x16 data) 'i16x16]
    [(fpir:i32x4 data) 'i32x4]
    [(fpir:i32x8 data) 'i32x8]
    [(fpir:i64x2 data) 'i64x2]
    [(fpir:i64x4 data) 'i64x4]

    [(fpir:u8x16 data) 'u8x16]
    [(fpir:u8x32 data) 'u8x32]
    [(fpir:u16x8 data) 'u16x8]
    [(fpir:u16x16 data) 'u16x16]
    [(fpir:u32x4 data) 'u32x4]
    [(fpir:u32x8 data) 'u32x8]
    [(fpir:u64x2 data) 'u64x2]
    [(fpir:u64x4 data) 'u64x4]))

(define (num-elems expr)
  (destruct expr
    [(fpir:i8x16 data) 16]
    [(fpir:i8x32 data) 32]
    [(fpir:i16x8 data) 8]
    [(fpir:i16x16 data) 16]
    [(fpir:i32x4 data) 4]
    [(fpir:i32x8 data) 8]
    [(fpir:i64x2 data) 2]
    [(fpir:i64x4 data) 4]

    [(fpir:u8x16 data) 16]
    [(fpir:u8x32 data) 32]
    [(fpir:u16x8 data) 8]
    [(fpir:u16x16 data) 16]
    [(fpir:u32x4 data) 4]
    [(fpir:u32x8 data) 8]
    [(fpir:u64x2 data) 2]
    [(fpir:u64x4 data) 4]))

(define (get-type-struct type)
  (cond
    [(eq? type 'i8x16) fpir:i8x16]
    [(eq? type 'i8x32) fpir:i8x32]
    [(eq? type 'u8x16) fpir:u8x16]
    [(eq? type 'u8x32) fpir:u8x32]

    [(eq? type 'i16x8) fpir:i16x8]
    [(eq? type 'i16x16) fpir:i16x16]
    [(eq? type 'u16x8) fpir:u16x8]
    [(eq? type 'u16x16) fpir:u16x16]

    [(eq? type 'i32x4) fpir:i32x4]
    [(eq? type 'i32x8) fpir:i32x8]
    [(eq? type 'u32x4) fpir:u32x4]
    [(eq? type 'u32x8) fpir:u32x8]

    [(eq? type 'i64x2) fpir:i64x2]
    [(eq? type 'i64x4) fpir:i64x4]
    [(eq? type 'u64x2) fpir:u64x2]
    [(eq? type 'u64x4) fpir:u64x4]
    [else (error "Unrecognized type (fpir:get-type-struct) ~a" type)]))

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
    [else (error "Unrecognized type (fpir:get-vector-types) ~a" type)]))

(define (get-element expr index)
  (destruct expr
    [(fpir:i8x16 data) (data index)]
    [(fpir:i8x32 data) (data index)]
    [(fpir:i16x8 data) (data index)]
    [(fpir:i16x16 data) (data index)]
    [(fpir:i32x4 data) (data index)]
    [(fpir:i32x8 data) (data index)]
    [(fpir:i64x2 data) (data index)]
    [(fpir:i64x4 data) (data index)]

    [(fpir:u8x16 data) (data index)]
    [(fpir:u8x32 data) (data index)]
    [(fpir:u16x8 data) (data index)]
    [(fpir:u16x16 data) (data index)]
    [(fpir:u32x4 data) (data index)]
    [(fpir:u32x8 data) (data index)]
    [(fpir:u64x2 data) (data index)]
    [(fpir:u64x4 data) (data index)]
    [_ (error "Unrecognized type (fpir:get-element) ~a at index ~a" expr index)]))

(define (simplify-shuffle shuffle)
  (let ([type (fpir:??shuffle-output-type shuffle)]
        [loads (fpir:??shuffle-lds shuffle)]
        [id (fpir:??shuffle-id shuffle)])
    (define (bad-load load)
      (not (and (fpir:??load? load) (not (eq? (fpir:??load-output-type load) type)))))
    (define filtered-loads (filter bad-load loads))
    (cond
      [(eq? 0 (length filtered-loads)) (error "fpir:simplify-shuffle removed all loads ~a" shuffle)]
      ; Just make a load if not actually shuffling anything
      [(eq? 1 (length filtered-loads)) (list-ref filtered-loads 0)]
      ; We didn't filter anything
      [(eq? (length loads) (length filtered-loads)) shuffle]
      ; We filtered some stuff
      [else (fpir:??shuffle id filtered-loads type)])))

(define (make-shuffles-list loads type)
  (map (lambda (t) (simplify-shuffle (fpir:??shuffle 0 loads t))) (get-vector-types type)))
