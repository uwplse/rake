#lang rosette

(require (only-in racket/base [equal? rkt-equal?])
         (only-in rosette/base/core/term @app)
         rosette/solver/smt/z3
         rosette/lib/match
         rake/cpp
         rake/halide
         rake/x86/ast/types
         rake/x86/ast/type_utils
         rake/x86/ast/visitor
         rake/x86/ast/interpreter
         rake/synthesis/axioms)

(provide (rename-out [optimize-query x86:optimize-query]))

(define axioms (list))

;; Optimize a query. If we have already proved equality between two sub-expressions then replace them with a symbolic constant
(define (optimize-query halide-expr x86-template x86-sub-exprs value-bounds translation-history)
  (set! axioms (list))
  (define updated-spec halide-expr)
  (define updated-template x86-template)
  (for-each
   (lambda (sub-expr)
     ;; If we know of an equivalence between a sub-expr in the spec and the x86-template
     ;; we can abstract them out as a symbolic constant(s)
     (when (hash-has-key? translation-history sub-expr)
       (define halide-sub-expr (hash-ref translation-history sub-expr))
       (define abstracted-halide-subexpr (make-abstr-halide-expr halide-sub-expr))
       (cond
         [(x86:concat-tiles? sub-expr)
          (define offset 0)
          (for ([tile (x86:concat-tiles-vecs sub-expr)])
            (cond
              [(hash-has-key? value-bounds sub-expr)
               (set!-values (updated-spec updated-template) (abstr-equiv-subexprs updated-spec updated-template tile halide-sub-expr abstracted-halide-subexpr offset (hash-ref value-bounds sub-expr)))]
              [else
               (set!-values (updated-spec updated-template) (abstr-equiv-subexprs updated-spec updated-template tile halide-sub-expr abstracted-halide-subexpr offset))])
            (set! offset (+ offset (x86:num-elems (x86:interpret tile)))))]
         [else
          (cond
            [(hash-has-key? value-bounds sub-expr)
             (set!-values (updated-spec updated-template) (abstr-equiv-subexprs updated-spec updated-template sub-expr halide-sub-expr abstracted-halide-subexpr 0 (hash-ref value-bounds sub-expr)))]
            [else
             (set!-values (updated-spec updated-template) (abstr-equiv-subexprs updated-spec updated-template sub-expr halide-sub-expr abstracted-halide-subexpr 0))])])))
   x86-sub-exprs)
  (values updated-spec (if (not (empty? x86-sub-exprs)) (fix-swizzle-reads updated-spec updated-template) updated-template) axioms))

(define (abstr-equiv-subexprs spec template x86-sub-expr halide-sub-expr abstracted-halide-subexpr offset [sub-expr-bounds (void)])
  (cond
    ;; Don't bother if the sub-expr is just a load or a broadcast (leaf nodes anyways)
    [(x86:??load? x86-sub-expr) (values spec template)]
    [(x86:??shuffle? x86-sub-expr) (values spec template)]
    [else
      (define abstracted-x86-subexpr (make-x86-abstr-sub-expr x86-sub-expr abstracted-halide-subexpr offset sub-expr-bounds))
       
      (define (abstract-sub-expr-halide node)
        (cond
          [(rkt-equal? (unpack-abstr-exprs node) halide-sub-expr) abstracted-halide-subexpr]
          [else node]))
      (set! spec (halide:visit spec abstract-sub-expr-halide))
      
      (define (abstract-sub-expr-x86 node [pos -1])
        (cond
          [(x86:abstr-expr? node) node]
          [(rkt-equal? (unpack-abstr-exprs-x86 node) x86-sub-expr) abstracted-x86-subexpr]
          [else node]))
      (set! template (x86:visit template abstract-sub-expr-x86))
      (values spec template)]))

(define (unpack-abstr-exprs expr)
  (define (unpacker node)
    (cond
      [(abstr-halide-expr? node) (abstr-halide-expr-orig-expr node)]
      [else node]))
  (halide:visit expr unpacker))

(define (unpack-abstr-exprs-x86 expr)
  (define (unpacker node [pos -1])
    (cond
      [(x86:abstr-expr? node) (x86:abstr-expr-orig-expr node)]
      [else node]))
  (x86:visit expr unpacker))

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

(define (make-x86-abstr-sub-expr sub-expr abstracted-halide-subexpr offset sub-expr-bounds)
  (define abstr-vals (abstr-halide-expr-abstr-vals abstracted-halide-subexpr))
  (when (not (void? sub-expr-bounds))
    (set! axioms (append axioms (list (values-range-from abstr-vals (car sub-expr-bounds) (cdr sub-expr-bounds))))))
  (x86:abstr-expr sub-expr (abstr-halide-expr-abstr-vals abstracted-halide-subexpr) offset (x86:get-interpreted-type sub-expr)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (fix-swizzle-reads spec template)
  (define new-reads (halide:extract-buffer-reads spec))
  (define (fix-reads node [pos -1])
    (match node
      [(x86:??swizzle id live-data exprs gather-tbl output-type) (x86:??swizzle id new-reads exprs gather-tbl output-type)]
      [_ node]))
  (x86:visit template fix-reads))