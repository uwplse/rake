#lang rosette

(require (only-in racket/base [equal? rkt-equal?])
         (only-in rosette/base/core/term @app)
         rosette/solver/smt/z3
         rosette/lib/match
         rake/cpp
         rake/halide
         rake/arm/ir/instructions
         rake/arm/ir/interpreter
         rake/hvx/ir/instructions
         rake/hvx/ir/interpreter
         rake/x86/ir/instructions
         rake/x86/ir/interpreter
         rake/synthesis/axioms)

(provide optimize-arm-query optimize-hvx-query optimize-x86-query)

;;;;;;;;;;;;;;;;;;;;; HALIDE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (make-abstr-halide-expr halide-expr)
  (define elemT (halide:elem-type halide-expr))
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

(define (unpack-abstr-exprs expr)
  (define (unpacker node)
    (cond
      [(abstr-halide-expr? node) (abstr-halide-expr-orig-expr node)]
      [else node]))
  (halide:visit expr unpacker))

;;;;;;;;;;;;;;;;;;;; ARM ;;;;;;;;;;;;;;;;;;;;;;;;;

(define (arm:useful-to-abstract? arm-expr)
  (not (or (union? arm-expr) (arm-ir:load-data? arm-expr) (arm-ir:broadcast? arm-expr))))

(define (make-abstr-arm-ir-expr sub-expr abstracted-halide-subexpr)
  (arm-ir:abstr-expr sub-expr (abstr-halide-expr-abstr-vals abstracted-halide-subexpr)))

;; Optimize a query. If we have already proved equality between two sub-expressions then replace them with a symbolic constant
(define (optimize-arm-query halide-expr template translation-history value-bounds)
  (define abstr-buff-bounds (make-hash))
  (define inferred-axioms (list))
  (define sub-exprs (flatten (map (lambda (v) (if (arm-ir:combine? v) (list (arm-ir:combine-expr0 v) (arm-ir:combine-expr1 v)) v)) (arm-ir:get-subexprs template))))
  (define updated-spec halide-expr)
  (define updated-template template)
  (for-each
   (lambda (sub-expr)
     (when (and (arm:useful-to-abstract? sub-expr) (hash-has-key? translation-history (arm-ir:ast-node-id sub-expr)))
       (define equiv-halide-subexpr (hash-ref translation-history (arm-ir:ast-node-id sub-expr)))
       (define abstracted-halide-subexpr (make-abstr-halide-expr equiv-halide-subexpr))
       (define abstracted-arm-ir-subexpr (make-abstr-arm-ir-expr sub-expr abstracted-halide-subexpr))
       ;; Replace halide sub-expr with abstract node
       (define (abstract-subexpr-halide node)
         (cond
           [(rkt-equal? (unpack-abstr-exprs node) equiv-halide-subexpr) abstracted-halide-subexpr]
           [else node]))
       (set! updated-spec (halide:visit updated-spec abstract-subexpr-halide))
       ;; Replace arm-ir sub-expr with abstract node
       (define (abstract-subexpr-arm-ir node)
         (cond
           [(arm-ir:abstr-expr? node) node]
           [(eq? (arm-ir:ast-node-id node) (arm-ir:ast-node-id sub-expr))
            (define val ((arm-ir:interpret abstracted-arm-ir-subexpr) 0))
            (when (> (cpp:expr-bw val) 1)
              (define bounds (hash-ref value-bounds (arm-ir:ast-node-id sub-expr)))
              (define abstr-expr-buffer (arm-ir:abstr-expr-abstr-vals abstracted-arm-ir-subexpr))
              (define ax (values-range-from abstr-expr-buffer (car bounds) (cdr bounds)))
              (set! inferred-axioms (append inferred-axioms (list ax)))
              (hash-set! abstr-buff-bounds (buffer-data abstr-expr-buffer) (cons (car bounds) (cdr bounds))))
            abstracted-arm-ir-subexpr]
           [else node]))
       (set! updated-template (arm-ir:visit updated-template abstract-subexpr-arm-ir))))
   sub-exprs)
  (values updated-template updated-spec inferred-axioms abstr-buff-bounds))

;;;;;;;;;;;;;;;;;;;; HVX ;;;;;;;;;;;;;;;;;;;;;;;;;

;; Optimize a query. If we have already proved equality between two sub-expressions then replace them with a symbolic constant
(define (optimize-hvx-query halide-expr template translation-history value-bounds)
  (define abstr-buff-bounds (make-hash))
  (define inferred-axioms (list))
  (define sub-exprs (flatten (map (lambda (v) (if (combine? v) (list (combine-sub-expr0 v) (combine-sub-expr1 v)) v)) (hvx-ir:get-subexprs template))))
  (define updated-spec halide-expr)
  (define updated-template template)
  (for-each
   (lambda (sub-expr)
     (when (and (not (union? sub-expr)) (not (load-data? sub-expr)) (not (broadcast? sub-expr)) (hash-has-key? translation-history (ir-node-id sub-expr)))
       (define equiv-halide-subexpr (hash-ref translation-history (ir-node-id sub-expr)))
       (define abstracted-halide-subexpr (make-abstr-halide-expr equiv-halide-subexpr))
       (define abstracted-ir-subexpr (make-ir-abstr-sub-expr sub-expr abstracted-halide-subexpr))
       
       (define (abstract-sub-expr-halide node)
         (cond
           [(rkt-equal? (unpack-abstr-exprs node) equiv-halide-subexpr) abstracted-halide-subexpr]
           [else node]))
       (set! updated-spec (halide:visit updated-spec abstract-sub-expr-halide))
       
       (define (abstract-sub-expr-ir node)
         (cond
           [(abstr-ir-expr? node) node]
           [(eq? (ir-node-id node) (ir-node-id sub-expr))
            (define val ((hvx-ir:interpret abstracted-ir-subexpr) 0))
            (when (> (cpp:expr-bw val) 1)
              (define bounds (hash-ref value-bounds (ir-node-id sub-expr)))
              (define abstr-expr-buffer (abstr-ir-expr-abstr-vals abstracted-ir-subexpr))
              (define ax (values-range-from abstr-expr-buffer (car bounds) (cdr bounds)))
              (set! inferred-axioms (append inferred-axioms (list ax)))
              (hash-set! abstr-buff-bounds (buffer-data abstr-expr-buffer) (cons (car bounds) (cdr bounds))))
            abstracted-ir-subexpr]
           [else node]))
       (set! updated-template (hvx-ir:visit updated-template abstract-sub-expr-ir))))
   sub-exprs)
  (values updated-template updated-spec inferred-axioms abstr-buff-bounds))

(define (make-ir-abstr-sub-expr sub-expr abstracted-halide-subexpr)
  (abstr-ir-expr sub-expr (abstr-halide-expr-abstr-vals abstracted-halide-subexpr)))

(define (make-abstr-x86-ir-expr sub-expr abstracted-halide-subexpr)
  (x86-ir:abstr-expr sub-expr (abstr-halide-expr-abstr-vals abstracted-halide-subexpr)))

(define (x86:useful-to-abstract? arm-expr)
  (not (or (union? arm-expr) (arm-ir:load-data? arm-expr) (arm-ir:broadcast? arm-expr))))

;; Optimize a query. If we have already proved equality between two sub-expressions then replace them with a symbolic constant
(define (optimize-x86-query halide-expr template translation-history value-bounds)
  (define abstr-buff-bounds (make-hash))
  (define inferred-axioms (list))
  (define sub-exprs (flatten (map (lambda (v) (if (x86-ir:combine? v) (list (x86-ir:combine-expr0 v) (x86-ir:combine-expr1 v)) v)) (x86-ir:get-subexprs template))))
  (define updated-spec halide-expr)
  (define updated-template template)
  (for-each
   (lambda (sub-expr)
     (when (and (x86:useful-to-abstract? sub-expr) (hash-has-key? translation-history (x86-ir:ast-node-id sub-expr)))
       (define equiv-halide-subexpr (hash-ref translation-history (x86-ir:ast-node-id sub-expr)))
       (define abstracted-halide-subexpr (make-abstr-halide-expr equiv-halide-subexpr))
       (define abstracted-x86-ir-subexpr (make-abstr-x86-ir-expr sub-expr abstracted-halide-subexpr))
       ;; Replace halide sub-expr with abstract node
       (define (abstract-subexpr-halide node)
         (cond
           [(rkt-equal? (unpack-abstr-exprs node) equiv-halide-subexpr) abstracted-halide-subexpr]
           [else node]))
       (set! updated-spec (halide:visit updated-spec abstract-subexpr-halide))
       ;; Replace x86-ir sub-expr with abstract node
       (define (abstract-subexpr-x86-ir node)
         (cond
           [(x86-ir:abstr-expr? node) node]
           [(eq? (x86-ir:ast-node-id node) (x86-ir:ast-node-id sub-expr))
            (define val ((x86-ir:interpret abstracted-x86-ir-subexpr) 0))
            (when (> (cpp:expr-bw val) 1)
              (define bounds (hash-ref value-bounds (x86-ir:ast-node-id sub-expr)))
              (define abstr-expr-buffer (x86-ir:abstr-expr-abstr-vals abstracted-x86-ir-subexpr))
              (define ax (values-range-from abstr-expr-buffer (car bounds) (cdr bounds)))
              (set! inferred-axioms (append inferred-axioms (list ax)))
              (hash-set! abstr-buff-bounds (buffer-data abstr-expr-buffer) (cons (car bounds) (cdr bounds))))
            abstracted-x86-ir-subexpr]
           [else node]))
       (set! updated-template (x86-ir:visit updated-template abstract-subexpr-x86-ir))))
   sub-exprs)
  (values updated-template updated-spec inferred-axioms abstr-buff-bounds))
