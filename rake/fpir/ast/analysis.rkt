#lang rosette/safe

(require
  (only-in racket/base error)
  rosette/lib/destruct
  rake/fpir/ast/types
)

(provide (prefix-out fpir: (all-defined-out)))

(define (max-unique-inputs expr)
  (destruct expr

    [(fpir:??load _ _ _ _ _) 1]
    [(fpir:??shuffle _ _ _) 1]
    [(fpir:??swizzle _ _ _ _ _) 1]
    [(fpir:reinterpret v) (max-unique-inputs v)]
    [(fpir:lo vec) (max-unique-inputs vec)]
    [(fpir:hi vec) (max-unique-inputs vec)]

    [(fpir:add a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:add_h a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:add_rh a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:add_s a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:add_w a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:broadcast128 a_imm8) 1]
    [(fpir:broadcast256 a_imm8) 1]
    [(fpir:bwand a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:bwnot a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:bwor a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:max a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:min a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:mul a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:mul-vs a b_imm8) (+ (max-unique-inputs a) (max-unique-inputs b_imm8))]
    [(fpir:mul_shr a b c) (+ (max-unique-inputs a) (max-unique-inputs b) (max-unique-inputs c))]
    [(fpir:mul_shr_r a b c) (+ (max-unique-inputs a) (max-unique-inputs b) (max-unique-inputs c))]
    [(fpir:mul_w a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:mul_w-vs a b_imm8) (+ (max-unique-inputs a) (max-unique-inputs b_imm8))]
    [(fpir:narrow a) (max-unique-inputs a)]
    [(fpir:narrow_s a) (max-unique-inputs a)]
    [(fpir:shl a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:shl_r a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:shl_w a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:shr a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:shr_r a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:shr_w a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:sub a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:sub_h a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:sub_rh a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:sub_s a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:sub_w a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(fpir:widen a) (max-unique-inputs a)]

    ;; Handle scalars.
    [_ (cond
        [(eq? 'uint8 expr) 0]
        [(eq? 'uint8 expr) 0]
        [(eq? 'int8 expr) 0]
        [(eq? 'uint16 expr) 0]
        [(eq? 'int16 expr) 0]
        [(eq? 'uint32 expr) 0]
        [(eq? 'int32 expr) 0]
        [(eq? 'uint64 expr) 0]
        [(eq? 'int64 expr) 0]
        [else (error (format "fpir:max-unique-inputs failed to recognize ~a" expr))])]))

