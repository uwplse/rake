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
        (define correct? #t);(verify-equivalence (spec-expr spec) hvx-expr (spec-axioms spec)))

        (cond
          [correct?
            (pretty-print (first hvx-expr))
            (display "Synthesized solution is correct.\n\n")
            (first hvx-expr)]
          [else
            (display "Synthesized solution is incorrect.\n\n")
            (exit 1)])]
       
       [else (error (format "Could not lift Halide expression to HVX IR."))])]

    [else (error (format "Input specification is provided in a language Rake currently does not support: '~a. Supported IRs: ['halide-ir]" spec-lang))]))

;(define (synthesize-arm spec [spec-lang 'halide-ir] [lifting-algo 'greedy] [lowering-algo 'enumerative] [swizzling-algo 'enumerative])
;  (cond
;    [(eq? spec-lang 'halide-ir)
;     (define halide-expr (synthesis-spec-expr spec))
;     (define halide-expr-axioms (synthesis-spec-axioms spec))
;     
;     (define-values (lifting-success? ir-expr ir-expr-sol)
;       (synthesize-ir-expr halide-expr halide-expr-axioms lifting-algo))
;
;     (when lifting-success?
;       ;; Synthesize equivalent ARM expression
;       (define-values (successful? arm-expr)
;         (synthesize-arm-expr halide-expr halide-expr-axioms ir-expr ir-expr-sol lowering-algo swizzling-algo))
;
;       (define verifies? #f)
;       (when successful?
;         ;; Full expr verification
;         (set! verifies? #t);(verify-equiv? halide-expr arm-expr (symbolics halide-expr) halide-expr-axioms))
;
;         (if verifies?
;             (begin (display "Synthesized solution is correct.\n\n") arm-expr)
;             (begin (display "Synthesized solution is incorrect.\n\n") #f)))
;
;       (when (not verifies?) (exit))
;
;       arm-expr)]
;
;    [else (error (format "Input specification is provided in a language Rake currently does not support: '~a. Supported IRs: ['halide-ir]" spec-lang))]))

;(define (unpack-if-needed hvx-expr halide-expr)
;  (cond
;    [(cons? hvx-expr)
;     (cons (unpack-e (car hvx-expr) halide-expr) (unpack-e (cdr hvx-expr) halide-expr))]
;    [else
;     (unpack-e hvx-expr halide-expr)]))
;
;(define (unpack-e hvx-expr halide-expr)
;  (define bw-o-type (bw (type ((interpret-halide halide-expr) 0))))
;  (define unpacked-exprs
;    (for/list ([e (flatten hvx-expr)])
;      (define bw-s-type (bw (elem-type (hvx-type (interpret-hvx e)))))
;      (cond
;        [(eq? bw-o-type bw-s-type) e]
;        [(eq? bw-o-type (* 2 bw-s-type))
;         (define unpacked-hvx-expr
;           (cond
;             [(hvx-pair? (interpret-hvx e)) (let-expr 'v0 e (list (vunpack (lo 'v0)) (vunpack (hi 'v0))))]
;             [else (vunpack 'v0)]))
;         unpacked-hvx-expr]
;        [else
;         (error "NYI: Expression unpacking when the required type is more than twice as wide.")])))
;
;  (if (eq? 1 (length unpacked-exprs)) (first unpacked-exprs) unpacked-exprs))