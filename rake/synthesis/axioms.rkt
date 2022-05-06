#lang rosette/safe

(require rake/cpp)
(require rake/halide)

(define (values-range-from buffer lb ub)
  (define-symbolic idx integer?)
  (cond
    [(cpp:signed-type? (buffer-elemT buffer))
     (forall
      (list idx)
      (and (bvsle ((buffer-data buffer) idx) (cpp:eval (halide:interpret ub))) (bvsge ((buffer-data buffer) idx) (cpp:eval (halide:interpret lb)))))]
    [else
     (forall
      (list idx)
      (and (bvule ((buffer-data buffer) idx) (cpp:eval (halide:interpret ub))) (bvuge ((buffer-data buffer) idx) (cpp:eval (halide:interpret lb)))))]))

(provide (all-defined-out))