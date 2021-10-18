#lang rosette/safe

(require
  (only-in racket/list range)
  rosette/lib/destruct
  rosette/lib/angelic
  rake/internal/error
  rake/cpp
  rake/halide
  rake/arm/ir/instructions
  ;rake/arm/ir/interpreter
  rake/synthesis/lifting/grammar/util)

(provide arm-uber-instructions)

;; This function returns the list of templates that the
;; synthesizer may use to fold the new Halide IR node into
;; the current IR-expression. In these tempalates, we do not
;; change any uber-instruction in the IR expression, only their
;; inputs.
(define (fold-grammar lifted-sub-expr halide-expr [depth 0])
  (define candidates
    (destruct lifted-sub-expr

      [(arm-ir:broadcast value) '()]

      ;; Try folding by updating the set of datapoints
      [(arm-ir:load-data live-data gather-tbl) (list (mk-load-instr halide-expr))]

      ;; Try folding by changing the type we are casting to or the `saturating?` flag
      [(arm-ir:cast sub-expr type saturating?)
       (list
        (arm-ir:cast (get-node-id) sub-expr (halide:elem-type halide-expr) (choose* #t #f)))]
    
      [_ (error "NYI: Please define a (fold) grammar for IR Expr:" lifted-sub-expr halide-expr)]))

  ;(cond
    ;[(eq? depth 0) candidates]
    ;[else (flatten (append (map (lambda (se) (fold-grammar se halide-expr (- depth 1))) (arm-ir:get-subexprs lifted-sub-expr)) candidates))])

  candidates)

;; This function returns the list of templates that the
;; synthesizer may use to fold the new Halide IR node into
;; the current IR-expression. In these templates, we consider
;; replacing one of the existing uber-instructions with a different
;; one.
(define (repl-grammar lifted-sub-expr halide-expr [depth 0])
  (define candidates
    (destruct lifted-sub-expr

      [(arm-ir:broadcast value) '()]
      [(arm-ir:load-data live-data gather-tbl) '()]

      ;; Strip the cast and try to extend. Many instructions perform widening / narrowing casts
      [(arm-ir:cast sub-expr type saturating?) (extend-grammar (list sub-expr) halide-expr)]
              
      [_ (error "NYI: Please define a (repl) grammar for IR Expr:" lifted-sub-expr halide-expr)]))

  ;(cond
    ;[(eq? depth 0) candidates]
    ;[else (flatten (append (map (lambda (se) (repl-grammar se halide-expr (- depth 1))) (hvx-ir:get-subexprs lifted-sub-expr)) candidates))])

  candidates)

;; This function returns the list of uber-instructions that the
;; synthesizer may use to extend the IR-expression. We could blindly
;; return the full set of uber-instrs, but to make this a bit more
;; efficient, we return a subset specific to the Halide instruction
;; we are folding.
(define (extend-grammar lifted-sub-exprs halide-expr)
  (destruct halide-expr
    
    ;; Broadcast nodes
    [(sca-broadcast sca lanes) (list (arm-ir:broadcast (get-node-id) sca))]

    ;; Data loads & shuffles
    ;[(ramp base stride len) (list (build-vec (get-load-id) base stride len))]
    
    [(load buf idxs align) (list (mk-load-instr halide-expr))]
    ;[(slice_vectors vec base stride len) (list (mk-load-instr halide-expr))]
    ;[(concat_vectors v1 v2) (list (mk-load-instr halide-expr))]
    ;[(interleave v1 v2) (list (mk-combine-instr lifted-sub-exprs))]
    ;[(dynamic_shuffle vec idxs st end) (list (mk-load-instr halide-expr))]

    ;; Casts
    [(vec-cast vec type lanes) (list (arm-ir:cast (get-node-id) (list-ref lifted-sub-exprs 0) type #f))]
    
    ;; Multiplication
    [(vec-mul v1 v2)
      ; TODO: understand these (ask Maaz)
      (define mul-scalars (halide:extract-mul-scalars halide-expr))
      (define live-reads (halide:extract-buffer-reads halide-expr))
      (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 25)))
      (define read-tbl (map (lambda (i) (define-symbolic* idx integer?) (define-symbolic* c boolean?) (cons idx c)) (range 25)))
      (flatten
        (list
          ;; We can extend using either vector-scalar multiply-add
          (mk-vs-mpy-add-instr (first lifted-sub-exprs) mul-scalars (halide:elem-type halide-expr))
          (mk-vs-mpy-add-instr (arm-ir:load-data (get-load-id) live-reads gather-tbl) mul-scalars (halide:elem-type halide-expr))
      ))]


    [_ (error "NYI: Please define a (extend) grammar for halide node:" halide-expr)]))

(define arm-uber-instructions (lifting-ir fold-grammar repl-grammar extend-grammar))

;;;;;;;;;;; Sketch generators for various IR instructions ;;;;;;;;;;;;;

(define load-data-id -1)
(define (get-load-id) (set! load-data-id (add1 load-data-id)) load-data-id)

(define node-id 99)
(define (get-node-id) (set! node-id (add1 node-id)) node-id)

;; The load instruction can select and return from the set of data-points used in the
;; original expression.
(define (mk-load-instr spec-expr)
  (define live-reads (halide:extract-buffer-reads spec-expr))
  (define gather-tbl (map (lambda (i) (define-symbolic* idx integer?) idx) (range 25)))
  (arm-ir:load-data (get-load-id) live-reads gather-tbl))

(define (mk-vs-mpy-add-instr sub-expr mul-scalars output-type)
  (cond
    [(empty? mul-scalars) '()]
    [else
     (arm-ir:vs-mpy-add (get-node-id) sub-expr (list (apply choose* mul-scalars)) output-type)]))
