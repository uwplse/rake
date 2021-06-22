#lang rosette

(require (only-in racket/base [equal? rkt-equal?])
         (only-in rosette/base/core/term @app)
         rosette/solver/smt/z3
         rosette/lib/match
         rake/cpp
         rake/halide
         rake/hvx/ir/instructions
         rake/hvx/ir/interpreter
         rake/synthesis/axioms)

(provide optimize-query)

;; Optimize a query. If we have already proved equality between two sub-expressions then replace them with a symbolic constant
(define (optimize-query halide-expr template translation-history value-bounds)
  (define abstr-buff-bounds (make-hash))
  (define inferred-axioms (list))
  (define sub-exprs (flatten (map (lambda (v) (if (combine? v) (list (combine-sub-expr0 v) (combine-sub-expr1 v)) v)) (get-hvx-ir-subexprs template))))
  (define updated-spec halide-expr)
  (define updated-template template)
  (for-each
   (lambda (sub-expr)
     (when (and (not (union? sub-expr)) (not (load-data? sub-expr)) (hash-has-key? translation-history (ir-node-id sub-expr)))
       (define equiv-halide-subexpr (hash-ref translation-history (ir-node-id sub-expr)))
       (define abstracted-halide-subexpr (make-abstr-halide-expr equiv-halide-subexpr))
       (define abstracted-ir-subexpr (make-ir-abstr-sub-expr sub-expr abstracted-halide-subexpr))
       
       (define (abstract-sub-expr-halide node)
         (cond
           [(rkt-equal? (unpack-abstr-exprs node) equiv-halide-subexpr) abstracted-halide-subexpr]
           [else node]))
       (set! updated-spec (visit-halide updated-spec abstract-sub-expr-halide))

       (define (abstract-sub-expr-ir node)
         (cond
           [(abstr-ir-expr? node) node]
           [(eq? (ir-node-id node) (ir-node-id sub-expr))
            (define val ((interpret-hvx-ir abstracted-ir-subexpr) 0))
            (when (> (expr-bw val) 1)
              (define bounds (hash-ref value-bounds (ir-node-id sub-expr)))
              (define abstr-expr-buffer (abstr-ir-expr-abstr-vals abstracted-ir-subexpr))
              (define ax (values-range-from abstr-expr-buffer (car bounds) (cdr bounds)))
              (set! inferred-axioms (append inferred-axioms (list ax)))
              (hash-set! abstr-buff-bounds (buffer-data abstr-expr-buffer) (cons (car bounds) (cdr bounds))))
            abstracted-ir-subexpr]
           [else node]))
       (set! updated-template (visit-hvx-ir updated-template abstract-sub-expr-ir))))
   sub-exprs)
  (values updated-template updated-spec inferred-axioms abstr-buff-bounds))

(define (unpack-abstr-exprs expr)
  (define (unpacker node)
    (cond
      [(abstr-halide-expr? node) (abstr-halide-expr-orig-expr node)]
      [else node]))
  (visit-halide expr unpacker))

(define (make-abstr-halide-expr halide-expr)
  (define elemT (halide-elem-type halide-expr))
  (define abstr-vals
    (cond
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

(define (make-ir-abstr-sub-expr sub-expr abstracted-halide-subexpr)
  (abstr-ir-expr sub-expr (abstr-halide-expr-abstr-vals abstracted-halide-subexpr)))