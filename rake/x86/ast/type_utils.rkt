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