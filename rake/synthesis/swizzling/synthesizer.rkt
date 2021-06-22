#lang rosette/safe

(require
  (only-in racket/base values make-hash hash-has-key? hash-set! exit)
  (only-in racket/set set-subtract list->set set->list)
  rosette/lib/destruct
  rake/internal/log
  rake/halide
  rake/hvx/ast/types
  rake/hvx/interpreter)

(provide synthesize-translation)

(define (incorrect? sol)
  (or (unsat? sol) (unknown? sol)))

(define (correct? sol)
  (not (incorrect? sol)))

(define synthesis-db (make-hash))

(define (verification-lanes type)
  (cond
    [(eq? type 'i8x128) '(0 63 64 127)]
    [(eq? type 'u8x128) '(0 63 64 127)]
    [(eq? type 'i16x64) '(0 31 32 63)]
    [(eq? type 'u16x64) '(0 31 32 63)]
    [(eq? type 'i32x32) '(0 15 16 31)]
    [(eq? type 'u32x32) '(0 15 16 31)]
    [(eq? type 'i8x128x2) '(0 63 64 127 128 191 192 255)]
    [(eq? type 'u8x128x2) '(0 63 64 127 128 191 192 255)]
    [(eq? type 'i16x64x2) '(0 31 32 63 64 95 96 127)]
    [(eq? type 'u16x64x2) '(0 31 32 63 64 95 96 127)]
    [(eq? type 'i32x32x2) '(0 15 16 31 32 47 48 63)]
    [(eq? type 'u32x32x2) '(0 15 16 31 32 47 48 63)]))

(define (synthesize-translation templates halide-expr)
  (cond
    [(empty? templates) (values #f (void))]
    [(hash-has-key? synthesis-db (cons (first templates) halide-expr))
     (synthesize-translation (rest templates) halide-expr)]
    [else
     (define template (first templates))
     (define sol (run-synthesizer template halide-expr))
     (hash-set! synthesis-db (cons (first templates) halide-expr) #t)
     (cond
       [(correct? sol)
        (values #t (evaluate template sol))]
       [else
        (synthesize-translation (rest templates) halide-expr)])]))

(define (run-synthesizer template halide-expr)
  ;(println halide-expr)
  ;(pretty-print template)
  
  ;(set-curr-cn-hvx 0)
  ;(println ((interpret-halide halide-expr) 0))
  ;(println (let ([x (interpret-hvx template)]) (if (hvx-pair? x) (v0-elem-hvx x 0) (elem-hvx x 0))))
  ;(println (interpret-hvx template))
  ;(set-curr-cn-hvx 1)
  ;(println ((interpret-halide halide-expr) 1))
  ;(println (let ([x (interpret-hvx template)]) (if (hvx-pair? x) (v0-elem-hvx x 1) (elem-hvx x 1))))
  ;(set-curr-cn-hvx 16)
  ;(println ((interpret-halide halide-expr) 16))
  ;(println (let ([x (interpret-hvx template)]) (if (hvx-pair? x) (v0-elem-hvx x 16) (elem-hvx x 16))))

  ;; Incrementally checks the template for more and more lanes
  (define sym-consts (set->list (set-subtract (list->set (symbolics template)) (list->set (symbolics halide-expr)))))
  (define lanes-to-verify (verification-lanes (hvx-type (interpret-hvx template))))
  (synthesize-incremental halide-expr template sym-consts lanes-to-verify '()))

(define (synthesize-incremental halide-expr template sym-consts lanes-to-verify discarded-sols)
  (cond
    [(empty? lanes-to-verify) (model)]
    [else
     (define curr-lane (first lanes-to-verify))

     ;(display (format "Verifying lane: ~a\n" curr-lane))

     ;(set-curr-cn-hvx curr-lane)
     ;(println ((interpret-halide halide-expr) curr-lane))
     ;(println (let ([x (interpret-hvx template)]) (if (hvx-pair? x) (v0-elem-hvx x curr-lane) (elem-hvx x curr-lane))))
     
     (define st (current-milliseconds))
     (clear-vc!)
     (define sol (synthesize #:forall (symbolics halide-expr)
                             #:guarantee (begin
                                           (assert (not (ormap (lambda (discarded-sol) (equal? template discarded-sol)) discarded-sols)))
                                           (lane-eq? (interpret-halide halide-expr) (interpret-hvx template) curr-lane))))
     (define runtime (- (current-milliseconds) st))

     (display (format "Ran synthesizer for ~a ms\n" runtime))
     (log (format "Swizzling query: ~a ms\n" runtime))

     (cond
       [(correct? sol)
        (define c-sol (complete-solution sol sym-consts))
        (define updated-template (evaluate template c-sol))
        (define sub-sol (synthesize-incremental halide-expr updated-template sym-consts (rest lanes-to-verify) '()))
        (cond
          [(correct? sub-sol) c-sol]
          [else
           (define discarded-sol (evaluate template c-sol))
           (synthesize-incremental halide-expr template sym-consts lanes-to-verify (append (list discarded-sol) discarded-sols))])]
       [else
        (unsat)])]))

(define (lane-eq? oe se lane)
  (set-curr-cn-hvx lane)
  (define offset (quotient (num-elems-hvx se) 2))
  (cond
    [(and (hvx-pair? se) (< lane offset))
     (assert (eq? (oe lane) (v0-elem-hvx se lane)))]
    [(hvx-pair? se)
     (assert (eq? (oe lane) (v1-elem-hvx se (- lane offset))))]
    [else
     (assert (eq? (oe lane) (elem-hvx se lane)))]))

;(define (bounded-eq? oe se lanes)
;  (define offset (quotient (num-elems-hvx se) 2))
;  (for-each
;   (lambda (i)
;    (cond
;      [(hvx-pair? se)
;       (set-curr-cn-hvx i)
;       (assert (eq? (oe i) (v0-elem-hvx se i)))
;       (set-curr-cn-hvx (+ i 1))
;       (assert (eq? (oe (+ i 1)) (v0-elem-hvx se (+ i 1))))
;       (set-curr-cn-hvx (+ i offset))
;       (assert (eq? (oe (+ i offset)) (v1-elem-hvx se i)))]
;      [else
;       (set-curr-cn-hvx i)
;       (assert (eq? (oe i) (elem-hvx se i)))
;       ;(set-curr-cn-hvx (+ i 1))
;       ;(assert (eq? (oe (+ i 1)) (elem-hvx se (+ i 1))))
;       (set-curr-cn-hvx (+ i offset))
;       (assert (eq? (oe (+ i offset)) (elem-hvx se (+ i offset))))
;       ;(when (and (list? hvx-sub-expr) (> (length hvx-sub-expr) 2))
;         ;(set-curr-cn-hvx (+ i 32))
;         ;(assert (eq? (oe (+ i 32)) (elem-hvx se (+ i 32))))
;         ;(set-curr-cn-hvx (+ i 96))
;         ;(assert (eq? (oe (+ i 96)) (elem-hvx se (+ i 96)))))
;       ]))
;   lanes))