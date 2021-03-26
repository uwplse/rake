#lang rosette

(require rake/synthesis/lifting/greedy-ir-lifter)
(require rake/synthesis/lifting/incremental-ir-lifter)

(define (synthesize-ir-expr halide-expr halide-expr-axioms lifting-algo)
  (define-values (expr sol annot)
    (match lifting-algo
      ['incremental (synthesize-ir-expr-incr halide-expr halide-expr-axioms)]
      ['greedy (synthesize-ir-expr-greedy halide-expr halide-expr-axioms)]
      [_ (error (format "Unrecognized lifting algorithm specified: '~a. Supported algorithms: ['incremental, 'greedy]" lifting-algo))]))

  (if (void? expr)
      (values #f (void) (void) (void))
      (values #t expr sol annot)))

(provide synthesize-ir-expr)