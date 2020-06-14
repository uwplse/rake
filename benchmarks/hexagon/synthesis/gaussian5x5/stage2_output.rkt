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

(define buffers (list rows))

;; Define original expression
(define original-expr-post-hvx
  (halide.hexagon.packhi.vh
   (vec-add
    (halide.hexagon.add_mul.vh.vh.b
     (halide.hexagon.add_mul.vh.vh.b
      (halide.hexagon.add_mul.vh.vh.b
       (ramp rows 126 1 128)
       (ramp rows 127 1 128)
       (bv 4 8))
      (ramp rows 128 1 128)
      (bv 6 8))
     (ramp rows 129 1 128) 
     (bv 4 8))
    (ramp rows 130 1 128))))

(define original-expr-pre-hvx
  (uint8x128
   (vec-udiv
    (vec-add
     (ramp rows 130 1 128)
     (vec-add
      (vec-mul
       (ramp rows 129 1 128)
       (x128 (bv 4 16)))
      (vec-add
       (vec-mul
        (ramp rows 128 1 128)
        (x128 (bv 6 16)))
       (vec-add
        (ramp rows 126 1 128)
        (vec-mul
         (ramp rows 127 1 128)
         (x128 (bv 4 16)))))))
    (x128 (bv 256 16)))
   'int16))

(define synthesized-expr
  (hxv-expr-linear-static buffers))

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
(define sol (synthesize #:forall (list rows)
                        #:guarantee (bounded-eq? (interpret-halide original-expr-post-hvx) (interpret-hvx synthesized-expr) 1)))
(define runtime (- (current-seconds) st))

;; Print solution
(error-print-width 10000)
(println sol)
(evaluate synthesized-expr sol)
(printf "\n\nRuntime in seconds: ~a" runtime)