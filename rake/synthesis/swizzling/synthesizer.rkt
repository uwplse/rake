#lang rosette/safe

(require
  (only-in racket/base values make-hash hash-has-key? hash-set! exit)
  (only-in racket/set set-subtract list->set set->list)
  rosette/lib/destruct
  rake/internal/log
  rake/internal/error
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
    [(eq? type 'i8x128) '(0 1 63 64 65 127)]
    [(eq? type 'u8x128) '(0 1 63 64 65 127)]
    [(eq? type 'i16x64) '(0 1 31 32 33 63)]
    [(eq? type 'u16x64) '(0 1 31 32 33 63)]
    [(eq? type 'i32x32) '(0 1 15 16 17 31)]
    [(eq? type 'u32x32) '(0 1 15 16 17 31)]
    [(eq? type 'i8x128x2) '(0 1 63 64 127 128 129 191 192 255)]
    [(eq? type 'u8x128x2) '(0 1 63 64 127 128 129 191 192 255)]
    [(eq? type 'i16x64x2) '(0 1 31 32 63 64 65 95 96 127)]
    [(eq? type 'u16x64x2) '(0 1 31 32 63 64 65 95 96 127)]
    [(eq? type 'i32x32x2) '(0 1 15 16 31 32 33 47 48 63)]
    [(eq? type 'u32x32x2) '(0 1 15 16 31 32 33 47 48 63)]))

(define (synthesize-translation templates halide-expr output-layout)
  (cond
    [(empty? templates) (values #f (void))]
    [(hash-has-key? synthesis-db (list (first templates) halide-expr output-layout))
     (synthesize-translation (rest templates) halide-expr output-layout)]
    [else
     (define template (first templates))
     (define sol (run-synthesizer (car template) halide-expr output-layout))
     (hash-set! synthesis-db (list (first templates) halide-expr output-layout) #t)
     (cond
       [(correct? sol)
        (values #t (evaluate template sol))]
       [else
        (synthesize-translation (rest templates) halide-expr output-layout)])]))

(define (run-synthesizer template halide-expr output-layout)
  ;(println halide-expr)
  ;(pretty-print template)
  
  ;; Incrementally checks the template for more and more lanes
  (define sym-consts (set->list (set-subtract (list->set (symbolics template)) (list->set (symbolics halide-expr)))))
  (define lanes-to-verify (verification-lanes (hvx:type (hvx:interpret template))))
  (synthesize-incremental halide-expr template output-layout sym-consts lanes-to-verify '()))

(define (synthesize-incremental halide-expr template output-layout sym-consts lanes-to-verify discarded-sols)
  (cond
    [(empty? lanes-to-verify) (model)]
    [else
     (define curr-lane (first lanes-to-verify))

     ;(display (format "Verifying lane: ~a\n" curr-lane))
     ;(hvx:set-curr-cn 64)
     ;(println ((halide:interpret halide-expr) 64))
     ;(println (let ([x (hvx:interpret template)]) (if (hvx:vec-pair? x) (hvx:v1-elem x 16) (hvx:elem x curr-lane))))
     
     (define st (current-milliseconds))
     (clear-vc!)
     (define sol (synthesize #:forall (symbolics halide-expr)
                             #:guarantee (begin
                                           (assert (not (ormap (lambda (discarded-sol) (equal? template discarded-sol)) discarded-sols)))
                                           (lane-eq? (halide:interpret halide-expr) (hvx:interpret template) output-layout curr-lane))))
     (define runtime (- (current-milliseconds) st))

     (display (format "Ran synthesizer for ~a ms\n" runtime))
     (log (format "Swizzling query: ~a ms\n" runtime))

     (cond
       [(correct? sol)
        (define c-sol sol);(complete-solution sol sym-consts))
        (define updated-template (evaluate template c-sol))
        ;(println updated-template)
        (define sub-sol (synthesize-incremental halide-expr updated-template output-layout sym-consts (rest lanes-to-verify) '()))
        (cond
          [(correct? sub-sol) c-sol]
          [else
           (define discarded-sol (evaluate template c-sol))
           (synthesize-incremental halide-expr template output-layout sym-consts lanes-to-verify (append (list discarded-sol) discarded-sols))])]
       [else
        (unsat)])]))

(define (lane-eq? oe se output-layout lane)
  (define offset (quotient (hvx:num-elems se) 2))
  (cond
    [(eq? output-layout 'standard)
      (hvx:set-curr-cn lane)
      (cond
        [(and (hvx:vec-pair? se) (< lane offset))
         (assert (eq? (oe lane) (hvx:v0-elem se lane)))]
        [(hvx:vec-pair? se)
         (assert (eq? (oe lane) (hvx:v1-elem se (- lane offset))))]
        [else
         (assert (eq? (oe lane) (hvx:elem se lane)))])]
    [(eq? output-layout 'deinterleaved)
      (cond
        [(and (hvx:vec-pair? se) (even? lane))
         (hvx:set-curr-cn lane)
         (assert (eq? (oe lane) (hvx:v0-elem se (quotient lane 2))))]
        [(hvx:vec-pair? se)
         (hvx:set-curr-cn lane)
         (assert (eq? (oe lane) (hvx:v1-elem se (quotient lane 2))))]
        [else
         (hvx:set-curr-cn (* 2 lane))
         (assert (eq? (oe (* 2 lane)) (hvx:elem se lane)))])]
    [(eq? output-layout 'deinterleavedx2)
      (cond
        [(and (hvx:vec-pair? se) (< lane offset))
         (hvx:set-curr-cn (* 4 lane))
         (assert (eq? (oe (* 4 lane)) (hvx:v0-elem se lane)))]
        [(hvx:vec-pair? se)
         (hvx:set-curr-cn (+ 2 (* 4 (- lane offset))))
         (assert (eq? (oe (+ 2 (* 4 (- lane offset)))) (hvx:v1-elem se (- lane offset))))]
        [else
         (hvx:set-curr-cn (* 4 lane))
         (assert (eq? (oe (* 4 lane)) (hvx:elem se lane)))])]
    [else
     (error "NYI")]
    ))

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