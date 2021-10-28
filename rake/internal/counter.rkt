#lang rosette/safe

(provide curr-cn set-curr-cn!)

;;; The curr-cn flag is used to restrict the set of values a gather returns when the expression is being evaluated for
;;; any particular channel
(define curr-cn 0)
(define (set-curr-cn! v) (set! curr-cn v))
