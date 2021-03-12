#lang rosette

(require rake/util)

(require rake/synthesis/spec)
(require rake/synthesis/lowering/arm-template-synthesizer-enum)
;(require rake/synthesis/hvx-swizzle-synthesizer)

(define (synthesize-arm-expr halide-expr halide-expr-axioms ir-expr ir-expr-sol [lowering-algo 'enumerative] [swizzling-algo 'enumerative])
  (match lowering-algo
    ['enumerative (backtracking-search-enum halide-expr halide-expr-axioms ir-expr ir-expr-sol (list) swizzling-algo)]
    [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['enumerative]" lowering-algo))]))

(define (backtracking-search-enum halide-expr halide-expr-axioms ir-expr ir-expr-sol invalid-sketches swizzling-algo)
  ;; Define the ir specification for template synthesis
  (define arm-spec (arm-expr-spec ir-expr ir-expr-sol (symbolics halide-expr) halide-expr-axioms invalid-sketches))

  ;; Synthesize equivalent ARM template (compute instructions)
  (define ir-to-arm (make-hash))
  (define arm-expr-sketch (synthesize-arm-template-enum arm-spec ir-to-arm))
  
  ;; Synthesize data-movement
  (define-values (successful? arm-expr) (values #t (void)))
    ;(synthesize-arm-swizzles halide-expr arm-expr-sketch (symbolics halide-expr) halide-expr-axioms swizzling-algo))

  (if successful?
      (values successful? arm-expr)
      (backtracking-search-enum halide-expr halide-expr-axioms ir-expr ir-expr-sol (append invalid-sketches (list ir-to-arm)) swizzling-algo)))

(provide synthesize-arm-expr)