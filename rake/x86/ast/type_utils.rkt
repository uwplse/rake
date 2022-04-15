#lang rosette/safe

(require
  (only-in racket/base error)
  rosette/lib/destruct
  rake/cpp/types
  rake/x86/ast/types
  rake/x86/ast/interpreter
)

(provide (prefix-out x86: (all-defined-out)))

;; TODO fix all of this.
(define (get-interpreted-type x86-expr)
  (x86:type (x86:interpret x86-expr)))

(define (get-interpreted-elem-type x86-expr)
  (x86:elem-type (x86:interpret x86-expr)))

(define (is-broadcast? x86-template)
  (or (x86:vpbroadcastb? x86-template)
      (x86:vpbroadcastw? x86-template)
      (x86:vpbroadcastd? x86-template)
      (x86:vpbroadcastq? x86-template)
      (x86:vpbroadcastb_128? x86-template)
      (x86:vpbroadcastw_128? x86-template)
      (x86:vpbroadcastd_128? x86-template)
      (x86:vpbroadcastq_128? x86-template)))

(define (is-256-broadcast? x86-template)
  (or (x86:vpbroadcastb? x86-template)
      (x86:vpbroadcastw? x86-template)
      (x86:vpbroadcastd? x86-template)
      (x86:vpbroadcastq? x86-template)))

(define (get-128-broadcast x86-broadcast)
  (cond
    [(x86:vpbroadcastb? x86-broadcast) (x86:vpbroadcastb_128 (x86:vpbroadcastb-imm8 x86-broadcast))]
    [(x86:vpbroadcastw? x86-broadcast) (x86:vpbroadcastw_128 (x86:vpbroadcastw-imm16 x86-broadcast))]
    [(x86:vpbroadcastd? x86-broadcast) (x86:vpbroadcastd_128 (x86:vpbroadcastd-imm32 x86-broadcast))]
    [(x86:vpbroadcastq? x86-broadcast) (x86:vpbroadcastq_128 (x86:vpbroadcastq-imm64 x86-broadcast))]
    [else (error (format "x86:get-128-broadcast failed on expr: ~a\n" x86-broadcast))]))

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
    [else (error (format "x86:get-128-type failed on type: ~a\n" type))]))
