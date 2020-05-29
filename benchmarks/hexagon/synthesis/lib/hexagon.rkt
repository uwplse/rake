#lang rosette

(require "cpp.rkt")

;; Swizzling instructions
(define (vshuffo o e)
  (lambda (i)
    (if
     (even? i)
     (e (+ 1 i))
     (o i))))

(define (vshuffe o e)
  (lambda (i)
    (if
     (even? i)
     (e i)
     (o (- i 1)))))

(define (vshuffoe o e)
  (cons
   (lambda (i)
    (if
     (even? i)
     (e i)
     (o (- i 1))))
   (lambda (i)
    (if
     (even? i)
     (e (+ i 1))
     (o i)))))

(define (vshuff vdd)
  (cons
   (lambda (i)
    (if
     (even? i)
     ((cdr vdd) (quotient i 2))
     ((car vdd) (quotient i 2))))
   (lambda (i)
    (if
     (even? i)
     ((cdr vdd) (quotient (+ i 64) 2))
     ((car vdd) (quotient (+ i 64) 2))))))

;; Processing instructions
(define (vmpa_acc acc v1 v2 s1 s2)
  (cons 
   (lambda (i)
     (+
      ((car acc) i)
      (* (v1 i) s1)
      (* (v2 i) s2)))
   (lambda (i)
     (+
      ((cdr acc) i)
      (* (v1 i) s1)
      (* (v2 i) s2)))))

(define (vzxt v type)
  (match type
    ['int8 (lambda (i) (v i))]
    ['uint8 (lambda (i) (v i))]
    ['int16 (lambda (i) (zero-extend (v i) (bitvector 16)))]
    ['uint16 (lambda (i) (zero-extend (v i) (bitvector 16)))]
    ['int32 (lambda (i) (zero-extend (v i) (bitvector 32)))]
    ['uint32 (lambda (i) (zero-extend (v i) (bitvector 32)))]))
    
(provide (all-defined-out))