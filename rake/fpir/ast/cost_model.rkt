#lang rosette/safe

(require
  (only-in racket/base error)
  rosette/lib/match
  rake/fpir/ast/types
  rake/fpir/ast/visitor
  rosette/lib/destruct
)

(provide (prefix-out fpir: (all-defined-out)))

;; Auto-generated cost model of Skylake throughput (CPI).
(define (instr-cost instr sig)
  (cond
    [(eq? instr fpir:add) 2]
    [(eq? instr fpir:add_h) 2]
    [(eq? instr fpir:add_rh) 2]
    [(eq? instr fpir:add_s) 2]
    [(eq? instr fpir:add_w) 2]
    [(eq? instr fpir:broadcast128) 1]
    [(eq? instr fpir:broadcast256) 1]
    [(eq? instr fpir:bwand) 2]
    [(eq? instr fpir:bwnot) 2]
    [(eq? instr fpir:bwor) 2]
    [(eq? instr fpir:max) 2]
    [(eq? instr fpir:min) 2]
    [(eq? instr fpir:mul) 2]
    [(eq? instr fpir:mul-vs) 1]
    [(eq? instr fpir:mul_shr) 2]
    [(eq? instr fpir:mul_shr_r) 2]
    [(eq? instr fpir:mul_w) 2]
    [(eq? instr fpir:mul_w-vs) 1]
    [(eq? instr fpir:narrow) 2]
    [(eq? instr fpir:narrow_s) 2]
    [(eq? instr fpir:shl) 2]
    [(eq? instr fpir:shl_r) 2]
    [(eq? instr fpir:shl_w) 2]
    [(eq? instr fpir:shr) 2]
    [(eq? instr fpir:shr_r) 2]
    [(eq? instr fpir:shr_w) 2]
    [(eq? instr fpir:sub) 2]
    [(eq? instr fpir:sub_h) 2]
    [(eq? instr fpir:sub_rh) 2]
    [(eq? instr fpir:sub_s) 2]
    [(eq? instr fpir:sub_w) 2]
    [(eq? instr fpir:widen) 2]
    [(eq? instr fpir:reinterpret) 0.01]
    [(eq? instr fpir:lo) 0]
    [(eq? instr fpir:hi) 0]
    [else (error "Unknown instruction (fpir:instr-cost):" instr)]))
