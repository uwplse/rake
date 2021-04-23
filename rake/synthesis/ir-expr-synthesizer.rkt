#lang rosette/safe

(require
  (only-in racket/base values error)
  rake/synthesis/lifting/greedy-ir-lifter)

(provide synthesize-ir-expr)

(define (synthesize-ir-expr spec ir-name lifting-algo)
  (define-values (expr sol annot)
    (cond
      [(eq? lifting-algo 'greedy) (synthesize-ir-expr-greedy ir-name spec)]
      [else (error (format "Unrecognized lifting algorithm specified: '~a. Supported algorithms: ['greedy]" lifting-algo))]))

  (if (void? expr)
      (values #f (void) (void) (void))
      (values #t expr sol annot)))