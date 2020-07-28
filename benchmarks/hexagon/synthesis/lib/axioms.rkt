#lang rosette

(require "cpp.rkt")
(require "util.rkt")

(define (values-range-from buffer lb ub)
  (define-symbolic idx integer?)
  (define bufType (var-type buffer))
  (cond
    [(signed? bufType)
     (forall (list idx) (and (bvslt (buffer idx) ub) (bvsge (buffer idx) lb)))]
    [else (error "NYI: range axiom for type ~a" bufType)]))

(provide (all-defined-out))