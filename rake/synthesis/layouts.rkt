#lang rosette/safe

(require 
  (only-in racket/base for values object-name string-append)
  rosette/lib/match
  rake/cpp
  rake/hvx/ir/instructions
  rake/hvx/ir/interpreter)

(provide print-layout-map infer-ideal-subexpr-layouts)

;; Determine the intermediate layouts for each uber-instruction's output
(define (infer-ideal-subexpr-layouts ir-expr ir-sub-expr desired-output-layout)
  ;; First, identify the type of implicit shuffle performed by uber-instruction. Most widening ops in HVX are deinterleaving, while
  ;; most narrowing ops are interleaving. Non-widening or narrowing ops preserve permutation. For some operations, it is possible
  ;; to implement with and without the implicit shuffle.
  (define op-type (infer-implicit-shuffle ir-expr))
  
  (match op-type
    ['iden
     (cond
       ;; Special handling for reduction ops. We typically want to
       ;; do the shuffling AFTER the reduction.
       [(> (reduction-factor ir-expr) 1)
        (define i-ops (count-interleaving-ops ir-sub-expr))
        (define d-ops (count-deinterleaving-ops ir-sub-expr))
        (match desired-output-layout
          ['unknown 'unknown]
          ['interleavedx2 'interleavedx2]
          ['interleaved (if (> d-ops i-ops) 'unknown (if (< d-ops i-ops) 'interleaved 'in-order))]
          ['in-order (if (> d-ops i-ops) 'deinterleaved (if (< d-ops i-ops) 'interleaved 'in-order))]
          ['deinterleaved (if (> d-ops i-ops) 'deinterleaved (if (< d-ops i-ops) 'unknown 'in-order))]
          ['deinterleavedx2 'deinterleavedx2])]
       [else
        desired-output-layout])]
    ['interleave
     (cond
       ;; Special handling for saturate ops. In HVX, saturation can be done either via
       ;; vsat (interleaving saturate) or vpack (non-interleaving saturate).
       [(saturate? ir-expr)
        ;; Count the number of interleaving and deinterleaving ops in the subexpr
        (define i-ops (count-interleaving-ops ir-sub-expr))
        (define d-ops (count-deinterleaving-ops ir-sub-expr))
        (cond
          ;; There are more deinterleaving ops
          [(> d-ops i-ops)
           ;; Perform an interleaving op
           (match desired-output-layout
             ['unknown 'unknown]
             ['interleavedx2 'interleaved]
             ['interleaved 'in-order]
             ['in-order 'deinterleaved]
             ['deinterleaved 'deinterleavedx2]
             ['deinterleavedx2 'unknown])]
          ;; There are more interleaving ops
          [(< d-ops i-ops)
           ;; Perform a non-interleaving op
           (match desired-output-layout
             ['unknown 'unknown]
             ['interleavedx2 'interleavedx2]
             ['interleaved 'interleaved]
             ['in-order 'in-order]
             ['deinterleaved 'deinterleaved]
             ['deinterleavedx2 'deinterleavedx2])]
          ;; There are equal number of interleaving and deinterleaving ops
          [else
           ;; Move towards in-order layout
           (match desired-output-layout
             ['unknown 'unknown]
             ['interleavedx2 'interleaved]
             ['interleaved 'in-order]
             ['in-order 'in-order]
             ['deinterleaved 'deinterleaved]
             ['deinterleavedx2 'deinterleavedx2])])]
       [else
        (define i-ops (count-interleaving-ops ir-sub-expr))
        (define d-ops (count-deinterleaving-ops ir-sub-expr))
        (match desired-output-layout
          ['unknown 'unknown]
          ['interleavedx2 'interleaved]
          ['interleaved 'in-order]
          ['in-order (if (> i-ops d-ops) 'deinterleaved 'in-order)]
          ['deinterleaved 'deinterleavedx2]
          ['deinterleavedx2 'unknown])])]
    ['deinterleave
     (cond
       ;; Special handling for reduction ops. We typically want to
       ;; do the shuffling AFTER the reduction.
       [(> (reduction-factor ir-expr) 1)
        (define i-ops (count-interleaving-ops ir-sub-expr))
        (define d-ops (count-deinterleaving-ops ir-sub-expr))
        (match desired-output-layout
          ['unknown 'unknown]
          ['interleavedx2 'unknown]
          ['interleaved 'interleavedx2]
          ['in-order (if (> d-ops i-ops) 'in-order (if (< d-ops i-ops) 'interleaved 'in-order))]
          ['deinterleaved 'in-order]
          ['deinterleavedx2 'deinterleaved])]
       ;; Special handling for cast ops. Widening casts can be done
       ;; either via zxt/sxt (deinterleaving) or unpack.
       [(cast? ir-expr)
        ;; Count the number of interleaving and deinterleaving ops in the subexpr
        (define i-ops (count-interleaving-ops ir-sub-expr))
        (define d-ops (count-deinterleaving-ops ir-sub-expr))
        (cond
          ;; There are more interleaving ops
          [(> i-ops d-ops)
           ;; Perform a deinterleaving op
           (match desired-output-layout
             ['unknown 'unknown]
             ['interleavedx2 'unknown]
             ['interleaved 'interleavedx2]
             ['in-order 'interleaved]
             ['deinterleaved 'in-order]
             ['deinterleavedx2 'deinterleaved])]
          ;; There are more deinterleaving ops
          [(< i-ops d-ops)
           ;; Perform a non-deinterleaving op
           (match desired-output-layout
             ['unknown 'unknown]
             ['interleavedx2 'interleavedx2]
             ['interleaved 'interleaved]
             ['in-order 'in-order]
             ['deinterleaved 'deinterleaved]
             ['deinterleavedx2 'deinterleavedx2])]
          ;; There are equal number of interleaving and deinterleaving ops
          [else
           ;; Move towards in-order layout
           (match desired-output-layout
             ['unknown 'unknown]
             ['interleavedx2 'interleavedx2]
             ['interleaved 'interleaved]
             ['in-order 'in-order]
             ['deinterleaved 'in-order]
             ['deinterleavedx2 'deinterleaved])])]
       [else
        (match desired-output-layout
          ['unknown 'unknown]
          ['interleavedx2 'unknown]
          ['interleaved 'interleavedx2]
          ['in-order 'interleaved]
          ['deinterleaved 'in-order]
          ['deinterleavedx2 'deinterleaved])])]
    [_ 'unknown]))

(define (infer-implicit-shuffle ir-expr)
  (cond
    [(combine? ir-expr) 'iden]
    [(non-widening/narrowing? ir-expr) 'iden]
    [(widening? ir-expr) 'deinterleave]
    [(narrowing? ir-expr) 'interleave]))

(define (non-widening/narrowing? ir-expr)
  (define out-precision (cpp:type-bw (hvx-ir:elem-type ir-expr)))
  (define-values (in-min-precision in-max-precision)
    (let ([sub-expr-precisions (map cpp:type-bw (map hvx-ir:elem-type (hvx-ir:get-subexprs ir-expr)))])
      (values
       (foldl min (first sub-expr-precisions) (rest sub-expr-precisions))
       (foldl max (first sub-expr-precisions) (rest sub-expr-precisions)))))
  
  (and (eq? out-precision in-min-precision) (eq? out-precision in-max-precision)))

(define (narrowing? ir-expr)
  (define out-precision (cpp:type-bw (hvx-ir:elem-type ir-expr)))
  (define-values (in-min-precision in-max-precision)
    (let ([sub-expr-precisions (map cpp:type-bw (map hvx-ir:elem-type (hvx-ir:get-subexprs ir-expr)))])
      (values
       (foldl min (first sub-expr-precisions) (rest sub-expr-precisions))
       (foldl max (first sub-expr-precisions) (rest sub-expr-precisions)))))
  
  (and (< out-precision in-min-precision) (< out-precision in-max-precision)))
    
(define (widening? ir-expr)
  (define out-precision (cpp:type-bw (hvx-ir:elem-type ir-expr)))
  (define-values (in-min-precision in-max-precision)
    (let ([sub-expr-precisions (map cpp:type-bw (map hvx-ir:elem-type (hvx-ir:get-subexprs ir-expr)))])
      (values
       (foldl min (first sub-expr-precisions) (rest sub-expr-precisions))
       (foldl max (first sub-expr-precisions) (rest sub-expr-precisions)))))
  
  (and (> out-precision in-min-precision) (> out-precision in-max-precision)))

;; Returns the upper bound
(define (count-interleaving-ops ir-expr)
  (define subexprs (hvx-ir:get-subexprs ir-expr))
  (cond
    [(empty? subexprs) 0]
    [else
     (define subexprscounts (map count-interleaving-ops subexprs))
     (define maxcount (foldl max (first subexprscounts) (rest subexprscounts)))
     (cond
       [(narrowing? ir-expr) (add1 maxcount)]
       [else maxcount])]))

;; Returns the upper bound 
(define (count-deinterleaving-ops ir-expr)
  (define subexprs (hvx-ir:get-subexprs ir-expr))
  (cond
    [(empty? subexprs) 0]
    [else
     (define subexprscounts (map count-deinterleaving-ops subexprs))
     (define maxcount (foldl max (first subexprscounts) (rest subexprscounts)))
     (cond
       [(widening? ir-expr) (add1 maxcount)]
       [else maxcount])]))

(define (reduction-factor ir-expr)
  (cond
    [(vs-mpy-add? ir-expr) (length (vs-mpy-add-weight-matrix ir-expr))]
    [(vv-mpy-add? ir-expr) (vv-mpy-add-width ir-expr)]
    [else 1]))

;; -------- Debugging

;; A function that prints the inferred data-layouts for debugging
(define (print-layout-map ir-expr output-layout [indent ""])
  (display (format "~a [~a]\n" (object-name ir-expr) output-layout))

  (define ir-subexprs (hvx-ir:get-subexprs ir-expr))
  (define ir-subexprcnt (length ir-subexprs))
  
  (define i 0)
  
  (for ([ir-subexpr ir-subexprs])
    (set! i (add1 i))

    ;; Infer candidate sub-expr layouts
    (define ideal-subexpr-layouts (infer-ideal-subexpr-layouts ir-expr ir-subexpr output-layout))

    ;; Print sub-tree
    (display (if (eq? i ir-subexprcnt) (string-append indent "└── ") (string-append indent "├── ")))
    (print-layout-map ir-subexpr ideal-subexpr-layouts (if (and (> ir-subexprcnt 1) (< i ir-subexprcnt)) (string-append indent "|   ") (string-append indent "    ")))))