#lang rosette

(require rosette/lib/match)
(require rake/hvx/ast/types)

(define (codegen p)
  (match p
  
    ;; Vasr-n
    [(vasr-n Vu Vv Rt round? sat? unsigned?)
     (when unsigned?
     (match (list Vu Vv)
       [(list (i16x64 Vu)  (i16x64 Vv))
        (format "Q6_Vub_vasr_VhVhR_rnd_sat(~a,~a)" (codegen Vu) (codegen Vv))]))
     "111"]
    
    ;; Gather instruction
    [(gather ht) "<cpp-gather-isntr>"]
     
    [_ (format "~a" p)]))
    
(provide (rename-out [codegen cpp_codegen]))