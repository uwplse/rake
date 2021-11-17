#lang rosette/safe

(require
  (only-in racket/base values)
  rake/internal/error
  rake/cpp
  rake/halide
  rake/synthesis/spec
  rake/synthesis/ir
  rake/synthesis/hvx
  rake/synthesis/verify)

(provide synthesize-hvx)

(define (synthesize-hvx spec [lifting-algo 'greedy] [lowering-algo 'enumerative] [swizzling-algo 'enumerative])
  (cond
    [(eq? (spec-lang spec) 'halide-ir)

     ;; First lift the expression from Halide IR to our HVX IR of super-instructions
     (define-values (lifting-success? ir-expr ir-annotations ir-bounds)
       (synthesize-ir-expr spec 'hvx-uberinstrs lifting-algo))

     (cond
       [lifting-success?
        ;; Lower the super-instructions to an expression template (in HVX ISA)
        (define hvx-expr (synthesize-hvx-expr ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo))

        ;; Full verification of the synthesized expression
        (define correct? (verify-equivalence (spec-expr spec) hvx-expr (spec-axioms spec)))

        (cond
          [correct?
            (pretty-print hvx-expr)
            (display "Synthesized solution is correct.\n\n")
            hvx-expr]
          [else
            (display "Synthesized solution is incorrect.\n\n")
            (exit 1)])]
       
       [else (error (format "Could not lift Halide expression to HVX IR."))])]

    [else (error (format "Input specification is provided in a language Rake currently does not support: '~a. Supported IRs: ['halide-ir]" spec-lang))]))