#lang rosette

(require rake/synthesis/lifting/greedy-ir-lifter)
(require rake/synthesis/lifting/incremental-ir-lifter)

(define (synthesize-ir-expr halide-expr halide-expr-axioms lifting-algo)
  (define res
    (match lifting-algo
      ['incremental (synthesize-ir-expr-incr halide-expr halide-expr-axioms)]
      ['greedy (synthesize-ir-expr-greedy halide-expr halide-expr-axioms)]
      [_ (error (format "Unrecognized lifting algorithm specified: '~a. Supported algorithms: ['incremental, 'greedy]" lifting-algo))]))

  (if (void? res)
      (values #f (void) (void))
      (values #t (car res) (cdr res))))

(provide synthesize-ir-expr)