#lang rosette

(require rake/hvx/ast/types)

(require rosette/lib/match)

;; Utility function: Generates new algebraic variables
(define id -1)
(define (get-new-var)
  (set! id (add1 id 1))
  id)

;; Hash-table to map all buffer reads to the algebraic variable that represents it
(define mem-map (make-hash))

;; Utility function: Generates algebraic vars for each read in a gather node (see line 20)
(define (create-mem-vars key value)
  (when (not (hash-has-key? mem-map value))
    (hash-set! mem-map value (get-new-var))))
    
(define (encode p)
  (match p
    ;; Gather instruction
    [(gather ht)
     (begin
       ;; Abstract all memory reads as unique variables
       (hash-for-each ht create-mem-vars)

       ;; TODO: Return a vector of algebraic vars
       ;; I represent vectors as lambdas for my interpreters but you may choose any data-structure
       )]
       ;(for ([v]))]
    
    ;; Addition (widening)
    ;[(vadd-w Vu Vv)
     ;; TODO: Return a vector pair of new algebraic vars, where each var `v_i` represents `upcast(vu_i + vd_i)`
     
    [_ p]))
    
(provide (except-out (all-defined-out) encode) (rename-out [encode swizzleflow-encode]))