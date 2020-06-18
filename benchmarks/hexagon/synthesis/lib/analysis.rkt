#lang rosette

(require rosette/lib/match)

(define (extract-buf-reads expr)
  (match expr
    [(expression op operands ...)
     ;(println expr)

     ;; Silly workaround -- ask rosette folks how to do this properly
     (define-symbolic hack (~> integer? (bitvector 16)))
     (define hack2 (hack 0))
     (define app (match hack2 [(expression op2 ops2 ...) op2]))
     
     (cond
       [(eq? op bvadd) (flatten (for/list ([operand operands]) (extract-buf-reads operand)))]
       [(eq? op bvmul) (flatten (for/list ([operand operands]) (extract-buf-reads operand)))]
       [(eq? op app) expr]
       [else (error "NYI")])]
     
     ;(match op
       ;[bvadd (for/list ([operand operands]) (extract-buf-reads operand))]
       ;[bvmul (for/list ([operand operands]) (extract-buf-reads operand))])]
       ;[bvmul (println "found-bvmul")]
       ;[_ (println expr)])]
     
    [_ (list)]))

(provide extract-buf-reads)