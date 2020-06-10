#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require "../lib/cpp.rkt")
(require "../lib/halide.rkt")
(require "../lib/hexagon.rkt")
(require "../lib/ir.rkt")
(require "../lib/grammar.rkt")

;; Model buffers as uninterpreted functions
(define-symbolic rows (~> integer? (bitvector 16)))
(define-symbolic output.s0.x.x integer?)

;; Declare scope vars
(define-symbolic t126 integer?)

;; Declare list of integer terms
(define (get-int-term) (choose* (cast (bv 2 32) 'int32 'int16) (cast (bv 3 32) 'int32 'int16)))

;; Declare list of index terms
(define (get-index-term) (choose* t126))

;; Declare list of buffers
(define (get-buf-term) (choose* rows))

;; Define original expression
(define original-expr
  ;(vpacko
   ;(vmpyi-acc
    ;(vadd
     ;(ramp rows 126 1)
     ;(vmpyi-acc
      (vmpyi-acc
       (ramp rows 130 1)
       (ramp rows 129 1)
       (bv 4 8)))
      ;(ramp rows 128 1)
      ;(bv 6 8)))
    ;(ramp rows 127  1)
    ;(bv 4 8))))

(define (hvx-expr-man)
  (define Vu (swizzle rows))
  (define Vv (swizzle rows))
  (choose*
   Vu
   (vadd Vu Vv)
   (vmpyi-acc Vu Vv (bv 4 8))))

(define-synthax (hxv-expr depth)
  #:base (choose
          (swizzle rows))
  #:else (choose
          (swizzle rows)
          (vmpyi-acc
           (hxv-expr (- depth 1))
           (hxv-expr (- depth 1))
           (?? (bitvector 8)))))

(define synthesized-expr
  (hxv-expr 1))

;; Verification condition
(define (bounded-eq? oe se lanes)
  (if (pair? oe)
      (for ([i lanes])
        (and
         (assert (eq? ((car oe) i) ((car se) i)))
         (assert (eq? ((cdr oe) i) ((cdr se) i)))))
      (for ([i lanes])
        (assert (eq? (oe i) (se i))))))

;; Synthesize
(define st (current-seconds))
(define sol (synthesize #:forall (list rows t126)
                        #:guarantee (bounded-eq? (interpret original-expr) (interpret synthesized-expr) 1)))

;; Print solution
(println sol)
;((interpret original-expr) 0)
;((interpret synthesized-expr) 0)
(evaluate synthesized-expr sol)

(printf "\n\nRuntime in seconds: ")
(- (current-seconds) st)