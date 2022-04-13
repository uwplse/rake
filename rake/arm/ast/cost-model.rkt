#lang rosette/safe

(require
  rosette/lib/match
  rake/arm/ast/types
  rake/arm/ast/visitor
  rake/arm/ast/interpreter)

(provide (prefix-out arm: (all-defined-out)))

; TODO: I have no clue how to make this accurate
(define (instr-cost instr sig)
  (cond
    [(arm:reinterpret? instr) 0]
    ;[(arm:half-width? (arm:interpret instr)) 1.2]
    [else 1]))