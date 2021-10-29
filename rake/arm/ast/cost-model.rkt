#lang rosette/safe

(require
  rosette/lib/match
  rake/arm/ast/types
  rake/arm/ast/visitor)

(provide (prefix-out arm: (all-defined-out)))

; TODO: I have no clue how to make this accurate
(define (instr-cost instr sig)
  (if (arm:reinterpret? instr)
    0
    1))
