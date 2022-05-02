#lang rosette

(require (only-in racket/base [equal? rkt-equal?])
         (only-in rosette/base/core/term @app)
         rosette/solver/smt/z3
         rosette/lib/match
         rake/cpp
         rake/halide
         rake/fpir/ast/types
         rake/fpir/ast/type_utils
         rake/fpir/ast/utils
         rake/fpir/ast/visitor
         rake/fpir/ast/interpreter
         rake/synthesis/axioms)

(provide (rename-out [optimize-query fpir:optimize-query]))

(define axioms (list))

;; Optimize a query. If we have already proved equality between two sub-expressions then replace them with a symbolic constant
(define (optimize-query halide-expr fpir-template fpir-sub-exprs value-bounds translation-history)
  (set! axioms (list))
  (define updated-spec halide-expr)
  (define updated-template fpir-template)
  ; (display "fpir:optimize-query\n")
  ; (pretty-print translation-history)
  ; (pretty-print fpir-sub-exprs)
  ; (pretty-print updated-spec)
  ; (pretty-print updated-template)
  ; (newline)
  ; (newline)
  (for-each
   (lambda (sub-expr)
     ;; If we know of an equivalence between a sub-expr in the spec and the fpir-template
     ;; we can abstract them out as a symbolic constant(s)
     (when (hash-has-key? translation-history sub-expr)
       (define halide-sub-expr (hash-ref translation-history sub-expr))
       (define abstracted-halide-subexpr (make-abstr-halide-expr halide-sub-expr))
       (cond
         [(fpir:concat-tiles? sub-expr)
          (define offset 0)
          (for ([tile (fpir:concat-tiles-vecs sub-expr)])
            (cond
              [(hash-has-key? value-bounds sub-expr)
               (set!-values (updated-spec updated-template) (abstr-equiv-subexprs updated-spec updated-template tile halide-sub-expr abstracted-halide-subexpr offset (hash-ref value-bounds sub-expr)))]
              [else
               (set!-values (updated-spec updated-template) (abstr-equiv-subexprs updated-spec updated-template tile halide-sub-expr abstracted-halide-subexpr offset))])
            (set! offset (+ offset (fpir:num-elems (fpir:interpret tile)))))]
         [else
          (cond
            [(hash-has-key? value-bounds sub-expr)
             (set!-values (updated-spec updated-template) (abstr-equiv-subexprs updated-spec updated-template sub-expr halide-sub-expr abstracted-halide-subexpr 0 (hash-ref value-bounds sub-expr)))]
            [else
             (set!-values (updated-spec updated-template) (abstr-equiv-subexprs updated-spec updated-template sub-expr halide-sub-expr abstracted-halide-subexpr 0))])])))
   fpir-sub-exprs)
  ; (display "end fpir:optimize-query\n")
  ; (pretty-print updated-spec)
  ; (pretty-print updated-template)
  ; (newline)
  ; (newline)
  (values updated-spec (if (not (empty? fpir-sub-exprs)) (fix-swizzle-reads updated-spec updated-template) updated-template) axioms))

(define (abstr-equiv-subexprs spec template fpir-sub-expr halide-sub-expr abstracted-halide-subexpr offset [sub-expr-bounds (void)])
  (cond
    ;; Don't bother if the sub-expr is just a load or a broadcast (leaf nodes anyways)
    [(fpir:??load? fpir-sub-expr) (values spec template)]
    [(fpir:??shuffle? fpir-sub-expr) (values spec template)]
    [(fpir:is-broadcast? fpir-sub-expr) (values spec template)]
    [else
      (define abstracted-fpir-subexpr (make-fpir-abstr-sub-expr fpir-sub-expr abstracted-halide-subexpr offset sub-expr-bounds))

      (define (abstract-sub-expr-halide node)
        (cond
          [(rkt-equal? (unpack-abstr-exprs node) halide-sub-expr) abstracted-halide-subexpr]
          [else node]))
      (set! spec (halide:visit spec abstract-sub-expr-halide))
      
      (define (abstract-sub-expr-fpir node [pos -1])
        (cond
          [(fpir:abstr-expr? node) node]
          [(rkt-equal? (unpack-abstr-exprs-fpir node) fpir-sub-expr) abstracted-fpir-subexpr]
          [else node]))
      (set! template (fpir:visit template abstract-sub-expr-fpir))
      (values spec template)]))

(define (unpack-abstr-exprs expr)
  (define (unpacker node)
    (cond
      [(abstr-halide-expr? node) (abstr-halide-expr-orig-expr node)]
      [else node]))
  (halide:visit expr unpacker))

(define (unpack-abstr-exprs-fpir expr)
  (define (unpacker node [pos -1])
    (cond
      [(fpir:abstr-expr? node) (fpir:abstr-expr-orig-expr node)]
      [else node]))
  (fpir:visit expr unpacker))

(define (make-abstr-halide-expr halide-expr)
  (define elemT (halide:elem-type halide-expr))
  (define abstr-vals
    (cond
      [(eq? elemT 'uint1) (define-symbolic-buffer* abstr-vals uint1_t) abstr-vals]
      [(eq? elemT 'int8) (define-symbolic-buffer* abstr-vals int8_t) abstr-vals]
      [(eq? elemT 'int16) (define-symbolic-buffer* abstr-vals int16_t) abstr-vals]
      [(eq? elemT 'int32) (define-symbolic-buffer* abstr-vals int32_t) abstr-vals]
      [(eq? elemT 'int64) (define-symbolic-buffer* abstr-vals int64_t) abstr-vals]
      [(eq? elemT 'uint1) (define-symbolic-buffer* abstr-vals uint1_t) abstr-vals]
      [(eq? elemT 'uint8) (define-symbolic-buffer* abstr-vals uint8_t) abstr-vals]
      [(eq? elemT 'uint16) (define-symbolic-buffer* abstr-vals uint16_t) abstr-vals]
      [(eq? elemT 'uint32) (define-symbolic-buffer* abstr-vals uint32_t) abstr-vals]
      [(eq? elemT 'uint64) (define-symbolic-buffer* abstr-vals uint64_t) abstr-vals]))
  (abstr-halide-expr halide-expr abstr-vals))

(define (make-fpir-abstr-sub-expr sub-expr abstracted-halide-subexpr offset sub-expr-bounds)
  (define abstr-vals (abstr-halide-expr-abstr-vals abstracted-halide-subexpr))
  (when (not (void? sub-expr-bounds))
    (set! axioms (append axioms (list (values-range-from abstr-vals (car sub-expr-bounds) (cdr sub-expr-bounds))))))
  (fpir:abstr-expr sub-expr (abstr-halide-expr-abstr-vals abstracted-halide-subexpr) offset (fpir:get-interpreted-type sub-expr)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (fix-swizzle-reads spec template)
  (define new-reads (halide:extract-buffer-reads spec))
  (define (fix-reads node [pos -1])
    (match node
      [(fpir:??swizzle id live-data exprs gather-tbl output-type) (fpir:??swizzle id new-reads exprs gather-tbl output-type)]
      [_ node]))
  (fpir:visit template fix-reads))