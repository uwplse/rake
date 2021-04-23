#lang rosette/safe

(require rake/cpp)
(require rake/halide)

(define (values-range-from buffer lb ub)
  (define-symbolic idx integer?)
  (cond
    [(signed-type? (buffer-elemT buffer))
     (forall (list idx) (and (bvsle ((buffer-data buffer) idx) (eval ub)) (bvsge ((buffer-data buffer) idx) (eval lb))))]
    [else
     (forall (list idx) (and (bvule ((buffer-data buffer) idx) (eval ub)) (bvuge ((buffer-data buffer) idx) (eval lb))))]))

(provide (all-defined-out))