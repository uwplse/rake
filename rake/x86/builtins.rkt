#lang rosette/safe

(provide (prefix-out avx:builtins: (all-defined-out)))

;; TODO: Actually implement these
(define (signed val)
  val)

(define (sat32 val)
  val)