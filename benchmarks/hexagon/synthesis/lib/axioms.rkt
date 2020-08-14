#lang rosette

(require "cpp.rkt")
(require "util.rkt")

(define (values-range-from buffer lb ub)
  (define-symbolic idx integer?)
  (cond
    [(signed? (get buffer idx))
     (forall (list idx) (and (bvslt (buffer idx) ub) (bvsge (buffer idx) lb)))]
    [else (error "NYI: range axiom for type ~a" (get buffer idx))]))

(provide (all-defined-out))