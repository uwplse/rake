#lang rosette

(require "cpp.rkt")
(require "util.rkt")

(require rosette/lib/match)

(define (extract-buf-reads expr)
  (match expr
    [(int16_t v) (extract-buf-reads v)]
    
    [(expression op operands ...)

     ;; Silly workaround -- ask rosette folks how to do this properly
     (define-symbolic hack (~> integer? (bitvector 16)))
     (define hack2 (hack 0))
     (define app (match hack2 [(expression op2 ops2 ...) op2]))
     
     (cond
       [(eq? op bvadd) (flatten (for/list ([operand operands]) (extract-buf-reads operand)))]
       [(eq? op bvmul) (flatten (for/list ([operand operands]) (extract-buf-reads operand)))]
       [(eq? op bvsdiv) (flatten (for/list ([operand operands]) (extract-buf-reads operand)))]
       [(eq? op bvudiv) (flatten (for/list ([operand operands]) (extract-buf-reads operand)))]
       [(eq? op extract) (flatten (for/list ([operand operands]) (extract-buf-reads operand)))]
       [(eq? op app) (mk-typed-expr expr (var-type (list-ref operands 0)))]
       [else (error "NYI: ~a" expr)])]
     
    [_ (list)]))

(provide (all-defined-out))