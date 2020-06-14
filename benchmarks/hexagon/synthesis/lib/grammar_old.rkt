#lang rosette

(require rosette/lib/synthax)
(require rosette/lib/angelic)

(require "cpp.rkt")

;; Grannar to generate buffer
(define (buf_gen get-buf-term)
  (get-buf-term))

;; Grammar to generate stride
(define stride_gen (choose 0 1 2 3))

;; Grammar to generate index expressions
(define c
  (choose 1 2 3))

(define (opt-gen get-index-term)
  (define idx-term (get-index-term))
  (choose idx-term (+ idx-term 1) (+ idx-term 2)))

(define (index_gen get-index-term)
  (define opt (opt-gen get-index-term))
  (choose opt (+ opt c) (- opt c)))

;; Grammar to generate elements in the convolution kernel
(define-synthax (int_expr get-int-term depth)
 #:base (get-int-term)
 #:else (choose
         (get-int-term)
         ((choose bvadd bvmul) (int_expr get-int-term (- depth 1)) (int_expr get-int-term (- depth 1)))))

;; Kernel width grammar
(define kwidth_gen (??))

;; Convolution kernel grammar
(define (kernel_element_gen get-int-term)
  (choose* (bv 0 8) (bv 1 8) (cpp_cast (int_expr get-int-term 3) 'int16 'int8)))
(define (kernel_nz_element_gen get-int-term)
  (choose* (bv 1 8) (cpp_cast (int_expr get-int-term 3) 'int16 'int8)))

(define (kernel_gen get-int-term kwidth)
  (cond 
    [(eq? kwidth 2)  (vector-immutable
                      (kernel_nz_element_gen get-int-term)
                      (kernel_nz_element_gen get-int-term))]
    [(eq? kwidth 3)  (vector-immutable
                      (kernel_nz_element_gen get-int-term)
                      (kernel_element_gen get-int-term)
                      (kernel_nz_element_gen get-int-term))]
    [(eq? kwidth 4)  (vector-immutable
                      (kernel_nz_element_gen get-int-term)
                      (kernel_element_gen get-int-term)
                      (kernel_element_gen get-int-term)
                      (kernel_nz_element_gen get-int-term))]
    [(eq? kwidth 5)  (vector-immutable
                      (kernel_nz_element_gen get-int-term)
                      (kernel_element_gen get-int-term)
                      (kernel_element_gen get-int-term)
                      (kernel_element_gen get-int-term)
                      (kernel_nz_element_gen get-int-term))]
    [(eq? kwidth 6)  (vector-immutable
                      (kernel_nz_element_gen get-int-term)
                      (kernel_element_gen get-int-term)
                      (kernel_element_gen get-int-term)
                      (kernel_element_gen get-int-term)
                      (kernel_element_gen get-int-term)
                      (kernel_nz_element_gen get-int-term))]
    [(eq? kwidth 7)  (vector-immutable
                      (kernel_nz_element_gen get-int-term)
                      (kernel_element_gen get-int-term)
                      (kernel_element_gen get-int-term)
                      (kernel_element_gen get-int-term)
                      (kernel_element_gen get-int-term)
                      (kernel_element_gen get-int-term)
                      (kernel_nz_element_gen get-int-term))]
    [else (vector-immutable)]))

(provide (all-defined-out))