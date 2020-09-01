#lang rosette

(require "cpp.rkt")
(require "hexagon.rkt")

(define (codegen p)
  (match p
    ;; Gather instruction
    [(gather ht) "<cpp-gather-isntr>"]
     
    [_ (format "~a" p)]))
    
(provide (rename-out [codegen cpp_codegen]))