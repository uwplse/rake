#lang rosette/safe

(require
  rosette/lib/destruct
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
              
      [_ (error "NYI: Please define a (repl) grammar for IR Expr:" lifted-sub-expr)]))

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
    
    [_ (error "NYI: Please define a (extend) grammar for halide node:" halide-expr)]))

(define arm-uber-instructions (lifting-ir fold-grammar repl-grammar extend-grammar))

;;;;;;;;;;; Sketch generators for various IR instructions ;;;;;;;;;;;;;

(define load-data-id -1)
(define (get-load-id) (set! load-data-id (add1 load-data-id)) load-data-id)

(define node-id 99)
(define (get-node-id) (set! node-id (add1 node-id)) node-id)