#lang rosette

(require rosette/lib/match)
(require rosette/lib/angelic)
(require rosette/lib/synthax)

(require "cpp.rkt")
(require "util.rkt")

(define curr_cn 0)
(define (set-curr-cn v) (set! curr_cn v))

;; IR instructions
(struct convolve (data weights saturateFunc outputType) #:transparent)

;(struct mpy-add (Vd Vu Vv Rt outT satF) #:transparent)
;(struct dot-product (Vu Rt len outT) #:transparent)

(struct load-data (opts))

;; Model IR Instructions
(define (interpret p)
  (match p
    
    ;;;;;;;;;;;;;;;; Define DSL for data-movement ;;;;;;;;;;;;;;
    
    [(load-data opts)
     (begin
       (lambda (i)
         (define-symbolic* idx integer?)
         (list-ref (list-ref opts curr_cn) idx)))]
    
    ;[(swizzle vec) (get-from-vec (interpret vec))]

    ;;;;;;;;;;;;;;;;; Define DSL data-processing ;;;;;;;;;;;;;;;

    [(convolve data weights saturateFunc outputType)
     (lambda (i)
       (define v1 (eval (cpp_cast ((interpret data) i) outputType)))
       (define v2 (eval (cpp_cast ((interpret data) (+ i 1)) outputType)))
       (define v3 (eval (cpp_cast ((interpret data) (+ i 2)) outputType)))
       (define v4 (eval (cpp_cast ((interpret data) (+ i 3)) outputType)))
       (define v5 (eval (cpp_cast ((interpret data) (+ i 3)) outputType)))
       (define w1 (eval (cpp_cast (list-ref weights 0) outputType)))
       (define w2 (eval (cpp_cast (list-ref weights 1) outputType)))
       (define w3 (eval (cpp_cast (list-ref weights 2) outputType)))
       (define w4 (eval (cpp_cast (list-ref weights 3) outputType)))
       (define w5 (list-ref weights 4))
       (if w5
           (saturateFunc (mk-typed-expr (bvadd (bvmul v1 w1) (bvmul v2 w2) (bvmul v3 w3) (bvmul v4 w4) v5) outputType))
           (saturateFunc (mk-typed-expr (bvadd (bvmul v1 w1) (bvmul v2 w2) (bvmul v3 w3) (bvmul v4 w4)) outputType))))]

    [_ p]))

(provide
 (except-out (all-defined-out) interpret) (rename-out [interpret interpret-ir]))