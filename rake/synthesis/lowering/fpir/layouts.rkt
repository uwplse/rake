#lang rosette/safe

(require 
  (only-in racket/base for values object-name string-append)
  rosette/lib/match
  rake/cpp
  rake/x86/ir/instructions
  rake/x86/ir/interpreter
)

(provide
  (rename-out
    [infer-ideal-subexpr-layouts fpir:infer-ideal-subexpr-layouts]
    [reduction-factor fpir:reduction-factor]
))

;; Determine the intermediate layouts for each uber-instruction's output
(define (infer-ideal-subexpr-layouts ir-expr ir-sub-expr desired-output-layout)
  ;; TODO
  'in-order)

(define (reduction-factor ir-expr)
  (cond
    [(x86-ir:vs-mpy-add? ir-expr) (length (x86-ir:vs-mpy-add-weights ir-expr))]
    [(x86-ir:vv-mpy-add? ir-expr) (length (x86-ir:vv-mpy-add-weights ir-expr))]
    ;; TODO: add x86-ir:reduce?
    [else 1]))
