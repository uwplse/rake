#lang rosette

(require rake/cpp/types)
(require rake/util)

(define (values-range-from buffer lb ub)
  (define-symbolic idx integer?)
  (cond
    [(signed? (get buffer idx))
     (forall (list idx) (and (bvsle (buffer idx) (eval ub)) (bvsge (buffer idx) (eval lb))))]
    [else (error "NYI: range axiom for type ~a" (get buffer idx))]))

(provide (all-defined-out))