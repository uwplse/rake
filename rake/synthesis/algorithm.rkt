#lang rosette/safe

(require
  (only-in racket/base values exit)
  rake/internal/error
  rake/cpp
  rake/halide
  rake/synthesis/spec
  rake/synthesis/ir
  rake/synthesis/hvx
  rake/synthesis/arm
  rake/synthesis/x86
  rake/synthesis/verify)

(provide synthesize-hvx synthesize-arm synthesize-x86)

(define (synthesize-hvx spec [lifting-algo 'greedy] [lowering-algo 'enumerative] [swizzling-algo 'enumerative])
  (cond
    [(eq? (spec-lang spec) 'halide-ir)

     ;; First lift the expression from Halide IR to our HVX IR of uber-instructions
     (define-values (lifting-success? ir-expr ir-annotations ir-bounds)
       (synthesize-ir-expr spec 'hvx-uberinstrs lifting-algo))

     (exit)

     (cond
       [lifting-success?
        ;; Lower the uber-instructions to an expression template (in HVX ISA)
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
            hvx-expr])]
       
       [else (error (format "Could not lift Halide expression to HVX IR."))])]

    [else (error (format "Input specification is provided in a language Rake currently does not support: '~a. Supported IRs: ['halide-ir]" spec-lang))]))

(define (synthesize-arm spec [lifting-algo 'greedy] [lowering-algo 'enumerative] [swizzling-algo 'enumerative])
  (cond
    [(eq? (spec-lang spec) 'halide-ir)

     ;; First lift the expression from Halide IR to our ARM IR of uber-instructions
     (define-values (lifting-success? ir-expr ir-annotations ir-bounds)
       (synthesize-ir-expr spec 'arm-uberinstrs lifting-algo))

     (exit)

     (cond
       [lifting-success?
        ;; Lower the super-instructions to an expression template (in ARM ISA)
       ; (define arm-expr (synthesize-arm-expr ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo))

        ;; Full verification of the synthesized expression
        ;(define correct? (verify-equivalence (spec-expr spec) arm-expr (spec-axioms spec)))
 
        (cond
          [lifting-success?;correct?
            ;(pretty-print arm-expr)
            (display "Synthesized solution is correct.\n\n")
            ir-expr];arm-expr]
          [else
            (display "Synthesized solution is incorrect.\n\n")
            ir-expr];arm-expr]
          )]
       
       [else (error (format "Could not lift Halide expression to ARM IR."))])]

    [else (error (format "Input specification is provided in a language Rake currently does not support: '~a. Supported IRs: ['halide-ir]" spec-lang))]))




(define (synthesize-x86 spec [lifting-algo 'greedy] [lowering-algo 'enumerative] [swizzling-algo 'enumerative])
  (cond
    [(eq? (spec-lang spec) 'halide-ir)

     ;; First lift the expression from Halide IR to our x86 IR of uber-instructions
     (define-values (lifting-success? ir-expr ir-annotations ir-bounds)
       (synthesize-ir-expr spec 'x86-uberinstrs lifting-algo))

     (cond
       [lifting-success?
        ;; Lower the uber-instructions to an expression template (in x86 ISA)
        (display "Synthesizing x86 for:\n")
        (pretty-print (spec-expr spec))
        (newline)
        (newline)
        (define-values (lowering-success? x86-expr)
          (synthesize-x86-expr ir-expr ir-annotations ir-bounds lowering-algo swizzling-algo))

        (display "synthesize-x86 output:\n")
        (pretty-print x86-expr)
        (display lowering-success?)
        (newline)

        (error "here")

        ;; TODO: NEED x86 full verification check.
        ;; Full verification of the synthesized expression
        ; (define correct? (verify-equivalence (spec-expr spec) (first hvx-expr) (spec-axioms spec)))

        ;; For now, just return the lowered x86 template
        ir-expr]
        ;; Full verification of the synthesized expression
;        (define correct? (verify-equivalence (spec-expr spec) (first hvx-expr) (spec-axioms spec)))
;
;        (cond
;          [correct?
;            (pretty-print (first hvx-expr))
;            (display "Synthesized solution is correct.\n\n")
;            (first hvx-expr)]
;          [else
;            (display "Synthesized solution is incorrect.\n\n")
;            (exit 1)])]
;       
       [else (error (format "Could not lift Halide expression to x86 IR."))])]

    [else (error (format "Input specification is provided in a language Rake currently does not support: '~a. Supported IRs: ['halide-ir]" spec-lang))]))
