#lang rosette

(require rosette/lib/match)
(require rake/hvx/ast/types)

(define (codegen p)
  (match p
    ;; Gather instruction
    [(gather ht) "<cpp-gather-isntr>"]
     
    [_ (format "~a" p)]))
    
(provide (rename-out [codegen cpp_codegen]))