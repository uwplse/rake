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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; STAGE 1 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Simplest encoding (deprecated because to slow)
(define-synthax (hxv-expr-recursive depth)
  #:base (choose
          (gather rows))
  #:else (choose
          (gather rows)
          (vpacko
           (hxv-expr (- depth 1)))
          (vadd
           (hxv-expr (- depth 1))
           (hxv-expr (- depth 1)))
          (vmpyi-acc
           (hxv-expr (- depth 1))
           (hxv-expr (- depth 1))
           (bvadd (bv 2 8) (?? (bitvector 8))))))

;; Best encoding
(define (const)
  (?? (bitvector 4)))

(define (??hvx-instr registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (choose*
   (swizzle t0)
   (vadd t0 t1)
   (vmpyi t0 (sign-extend  (?? (bitvector 4)) (bitvector 8)))
   (vmpyi-acc t0 t1 (sign-extend  (?? (bitvector 4)) (bitvector 8)))
   (vdmpy-acc t0 t1 (sign-extend  (?? (bitvector 4)) (bitvector 8)) (sign-extend  (?? (bitvector 4)) (bitvector 8)))
   (vtmpy (vpair t0 t1) (sign-extend  (?? (bitvector 4)) (bitvector 8)) (sign-extend  (?? (bitvector 4)) (bitvector 8)))
   (vasr-rnd-sat t0 t1 (zero-extend (?? (bitvector 4)) (bitvector 16)))))

(define (??hxv-expr buffers)
  (define r0 (gather buffers))
  (define r1 (??hvx-instr (list r0)))
  (define r2 (??hvx-instr (list r0 r1)))
  (define r3 (??hvx-instr (list r0 r1 r2)))
  (define r4 (??hvx-instr (list r0 r1 r2 r3)))
  (define r5 (??hvx-instr (list r0 r1 r2 r3 r4)))
  r3)

;; Best encoding (unrolled, useful for testing)
(define (??hxv-expr-unrolled buffers)
  (define r0 (gather buffers))

  (define r1 (choose
              r0
              (swizzle r0)
              (vadd r0 r0)
              (vmpyi-acc r0 r0 (sign-extend (?? (bitvector 4)) (bitvector 8)))
              (vasr-rnd-sat r0 r0 (zero-extend (?? (bitvector 4)) (bitvector 16)))))

  (define t0 (choose r0 r1))
  (define t1 (choose r0 r1))
  (define r2 (choose
              t0
              (swizzle t0)
              (vadd t0 t1)
              (vmpyi-acc t0 t1 (sign-extend (?? (bitvector 4)) (bitvector 8)))
              (vasr-rnd-sat t0 t1 (zero-extend (?? (bitvector 4)) (bitvector 16)))))

  (define t2 (choose r0 r1 r2))
  (define t3 (choose r0 r1 r2))
  (define r3 (choose
              t2
              (swizzle t2)
              (vadd t2 t3)
              (vmpyi-acc t2 t3 (sign-extend (?? (bitvector 4)) (bitvector 8)))
              (vasr-rnd-sat t2 t3 (zero-extend (?? (bitvector 4)) (bitvector 16)))))

  (define t4 (choose r0 r1 r2 r3))
  (define t5 (choose r0 r1 r2 r3))
  (define r4 (choose
              t4
              (swizzle t4)
              (vadd t4 t5)
              (vmpyi-acc t4 t5 (sign-extend (?? (bitvector 4)) (bitvector 8)))
              (vasr-rnd-sat t4 t5 (zero-extend (?? (bitvector 4)) (bitvector 16)))))

  r3)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; STAGE 2 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (??hvx-swizzle-instr vreads registers)
  (define t0 (apply choose* registers))
  (define t1 (apply choose* registers))
  (choose*
   t0
   (vcombine t0 t1)
   (valign t0 t1 (??))))

(define (??hvx-swizzle vreads)
  (define r0 (apply choose* vreads))
  ;(define r1 (??hvx-swizzle-instr vreads (list r0)))
  ;(define r2 (??hvx-swizzle-instr vreads (list r0 r1)))
  r0)

(define (plug-swizzle-grammar expr vreads)
  (match expr
    [(gather opts) (??hvx-swizzle vreads)]
    [(swizzle vec) (??hvx-swizzle vreads)]
    [(vadd a b) (vadd (plug-swizzle-grammar a vreads) (plug-swizzle-grammar b vreads))]
    [(vmpyi-acc acc v s) (vmpyi-acc (plug-swizzle-grammar acc vreads) (plug-swizzle-grammar v vreads) s)]
    [_ expr]))

(define (gen-final-sketch expr vreads)
  (plug-swizzle-grammar expr vreads))


(provide (all-defined-out))