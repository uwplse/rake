#lang rosette

(require rake/kriek/types)
(require rake/kriek/util)

(define (interpret-kriek p)
  (match p
    [(Program inT spec outT)
     (define dim (getDim outT))
     (match dim
       [1 1]
       [2 2])]
    [_ 2]))

(provide (all-defined-out))