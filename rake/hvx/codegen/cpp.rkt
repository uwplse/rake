#lang rosette

(require rosette/lib/match)
(require rake/cpp/types)
(require rake/hvx/ast/types)
(require rake/hvx/interpreter)

;;convert integer to 8-bits integer
(define (int->8bit N)
    (define-values [v1 v2] (quotient/remainder N 16))
    (define digits (list (integer->char (+ v1 (if (< v1 10) 48 55))) (integer->char (+ v2 (if (< v2 10) 48 55)))))
    (define digitstr (list->string digits))
    (format "0x~a~a~a~a" digitstr digitstr digitstr digitstr))

(define (codegen p)
  ;;(printf (format "~a\n" p))
  (match p
  
    ;; vasr-n
    [(vasr-n Vu Vv Rt round? sat? unsigned?)
     (when unsigned?
     (match (list (interpret-hvx Vu) (interpret-hvx Vv) (interpret-hvx Rt))
       [(list (i16x64 _)  (i16x64 _) (int8_t _))
        (define rt (eval-to-int Rt))
        (format "Q6_Vub_vasr_VhVhR_rnd_sat(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))]
       [_ (format "~a" p)]
       ))]

    ;; vmpyi-acc
    [(vmpyi-acc Vd Vu Rt)
     (match (list (interpret-hvx Vd) (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (i16x64 d) (i16x64 u) (int8_t _))
        (format "Q6_Vh_vmpyiacc_VhVhRb(~a, ~a, ~a)" (codegen Vd) (codegen Vu) (int->8bit (eval-to-int Rt)))]
       [_ (format "~a" p)]
       )]

    ;;vadd
    [(vadd Vu Vv sat?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i16x64 _) (i16x64 _))
        (format "Q6_Vh_vadd_VhVh(~a, ~a)" (codegen Vu) (codegen Vv))]
       [_ (format "~a" p)]
       )]

    ;;vread
    [(vread buf loc)
     (format "Q6_Vh_load(~a, ~a)" (codegen buf) (codegen loc)
       )]

    ;;+
    [(+ a b)
     (format "~a+~a" (codegen b) (codegen a))]
    
    ;; Gather instruction
    [(gather ht) "<cpp-gather-isntr>"]
     
    [_ (format "~a" p)]))
    
(provide (rename-out [codegen cpp_codegen]))