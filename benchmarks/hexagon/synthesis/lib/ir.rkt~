#lang rosette

(require "cpp.rkt")

;; Model IR Instr
(define (convolve-x v k)
  (lambda (i)
    (convolve-x-inner v k i 0)))

(define (convolve-x-inner v k i offset)
  (cond
    [(< offset (vector-length k))
     (bvadd
      (bvmul
       (cast (v (+ i offset)) 'uint8 'int16)
       (cast (vector-ref k offset) 'int8 'int16))
      (convolve-x-inner v k i (+ offset 1)))]
    [else
     (bv 0 16)]))

;(define (convolve-x v k)
;  (lambda (i)
;    (bvadd
;     (bvmul
;      (cast (v i) 'uint8 'int16)
;      (cast (vector-ref k 0) 'int8 'int16))
;     (bvmul
;      (cast (v (+ i 1)) 'uint8 'int16)
;      (cast (vector-ref k 1) 'int8 'int16))
;     (bvmul
;      (cast (v (+ i 2)) 'uint8 'int16)
;      (cast (vector-ref k 2) 'int8 'int16)))))

(provide (all-defined-out))