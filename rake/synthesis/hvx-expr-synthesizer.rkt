#lang rosette

(require rake/util)

(require rake/synthesis/spec)
(require rake/synthesis/lowering/hvx-template-synthesizer-incr)
(require rake/synthesis/lowering/hvx-template-synthesizer-enum)
(require rake/synthesis/hvx-swizzle-synthesizer)

(define (synthesize-hvx-expr halide-expr halide-expr-axioms ir-expr ir-expr-sol [lowering-algo 'enumerative] [swizzling-algo 'enumerative])
  (match lowering-algo
    ['incremental (backtracking-search-incr halide-expr halide-expr-axioms ir-expr ir-expr-sol (list) swizzling-algo)]
    ['enumerative (backtracking-search-enum halide-expr halide-expr-axioms ir-expr ir-expr-sol (list) swizzling-algo)]
    [_ (error (format "Unrecognized lowering algorithm specified: '~a. Supported algorithms: ['incremental, 'enumerative]" lowering-algo))]))

(define (backtracking-search-incr halide-expr halide-expr-axioms ir-expr ir-expr-sol invalid-sketches swizzling-algo)
  ;; Define the ir specification for template synthesis
  (define hvx-spec (hvx-expr-spec ir-expr ir-expr-sol (symbolics halide-expr) halide-expr-axioms invalid-sketches))

  ;; Synthesize equivalent HVX expression
  (define ir-to-hvx (make-hash))
  (define hvx-expr-sketch (synthesize-hvx-template-incr hvx-spec ir-to-hvx))
  
  ;; Synthesize data-movement
  (define-values (successful? hvx-expr)
    (synthesize-hvx-swizzles halide-expr hvx-expr-sketch (symbolics halide-expr) halide-expr-axioms swizzling-algo))

  (if successful?
      (values successful? hvx-expr)
      (backtracking-search-incr halide-expr halide-expr-axioms ir-expr ir-expr-sol (append invalid-sketches (list ir-to-hvx)) swizzling-algo)))

(define (backtracking-search-enum halide-expr halide-expr-axioms ir-expr ir-expr-sol invalid-sketches swizzling-algo)
  ;; Define the ir specification for template synthesis
  (define hvx-spec (hvx-expr-spec ir-expr ir-expr-sol (symbolics halide-expr) halide-expr-axioms invalid-sketches))

  ;; Synthesize equivalent HVX template (compute instructions)
  (define ir-to-hvx (make-hash))
  (define hvx-expr-sketch (synthesize-hvx-template-enum hvx-spec ir-to-hvx))
  
  ;; Synthesize data-movement
  (define-values (successful? hvx-expr)
    (synthesize-hvx-swizzles halide-expr hvx-expr-sketch (symbolics halide-expr) halide-expr-axioms swizzling-algo))

  (if successful?
      (values successful? hvx-expr)
      (backtracking-search-enum halide-expr halide-expr-axioms ir-expr ir-expr-sol (append invalid-sketches (list ir-to-hvx)) swizzling-algo)))

(provide synthesize-hvx-expr)