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
    [infer-ideal-subexpr-layouts x86:infer-ideal-subexpr-layouts]
))

;; Determine the intermediate layouts for each uber-instruction's output
(define (infer-ideal-subexpr-layouts ir-expr ir-sub-expr desired-output-layout)
  ;; TODO
  'in-order)
