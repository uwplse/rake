#lang rosette

(require rosette/lib/synthax)

;; Model C++ casting
(define (cast val from to)
  (match from
    ['int8
     (match to
       ['int8 val]
       ['int16 (sign-extend val (bitvector 16))]
       ['int32 (sign-extend val (bitvector 32))]
       ['uint8 val] ;; ISO C++20: Bits will be interpreted as a unsigned value
       ['uint16 (sign-extend val (bitvector 16))]
       ['uint32 (sign-extend val (bitvector 32))])]
    ['uint8
     (match to
       ;; Identity
       ['uint8 val]
       ['uint16 (zero-extend val (bitvector 16))]
       ['uint32 (zero-extend val (bitvector 32))]
       ['int8 val] ;; ISO C++20: Bits will be interpreted as a signed value
       ['int16 (zero-extend val (bitvector 16))]
       ['int32 (zero-extend val (bitvector 32))])]
    ['int16
     (match to
       ['int16 val]
       ['int8 (concat (extract 15 15 val) (extract 6 0 val))])] ; TODO
    ['int32
     (match to
       ['int8 (concat (extract 31 31 val) (extract 6 0 val))]
       ['int16 (concat (extract 31 31 val) (extract 14 0 val))]
       ['int32 val])])) ;TODO

;; Model Halide IR
(define (broadcast val)
  (lambda (i) val))

(define (ramp input base stride)
  (lambda (i) (input (+ base (* i stride)))))

(define (int16x128 val)
  (lambda (i) (cast (val i) 'uint8 'int16)))

(define (int32x128 val)
  (lambda (i) (cast (val i) 'uint8 'int32)))

(define (vec-add v1 v2)
  (lambda (i) (bvadd (v1 i) (v2 i))))

(define (vec-mul v1 v2)
  (lambda (i) (bvmul (v1 i) (v2 i))))

;; Model Hexagon Instr
(define (convolve-x v k)
  (lambda (i)
    (bvadd
     (bvmul
      (cast (v i) 'uint8 'int16)
      (cast (vector-ref k 0) 'int8 'int16))
     (bvmul
      (cast (v (+ i 1)) 'uint8 'int16)
      (cast (vector-ref k 1) 'int8 'int16))
     (bvmul
      (cast (v (+ i 2)) 'uint8 'int16)
      (cast (vector-ref k 2) 'int8 'int16)))))

;; Model buffers as uninterpreted functions
(define-symbolic input (~> integer? (bitvector 8)))

;; Declare scope vars
(define-symbolic t53 integer?)

;; Define original expression
(define original-expr
  (vec-add
   (vec-add
    (vec-mul
     (int32x128 (ramp input t53 1))
     (broadcast (bv 2 32)))
    (vec-mul
     (int32x128 (ramp input (+ t53 1) 1))
     (broadcast (bv 3 32))))
   (int32x128 (ramp input (+ t53 2) 1))))

;; Define synthesized expression
(define-synthax (int_expr depth)
 #:base (choose (cast (bv 2 32) 'int32 'int16) (cast (bv 3 32) 'int32 'int16))
 #:else (choose
         (cast (bv 2 32) 'int32 'int16) (cast (bv 3 32) 'int32 'int16)
         ((choose bvadd bvmul) (int_expr (- depth 1)) (int_expr (- depth 1)))))

(define kernel
  (vector-immutable
   (choose
    (bv 0 8) (bv 1 8) (cast (int_expr 3) 'int16 'int8))
   (choose
    (bv 0 8) (bv 1 8) (cast (int_expr 3) 'int16 'int8))
   (choose
    (bv 0 8) (bv 1 8) (cast (int_expr 3) 'int16 'int8))))

(define c
  (choose 1 2 3))
(define opt
  (choose t53 (+ t53 1) (+ t53 2)))
(define index_gen
  (choose opt (+ opt c) (- opt c)))

(define _buf (choose input))
(define _base index_gen)
(define _stride (choose 0 1 2 3))

(define synthesized-expr
  (convolve-x (ramp _buf _base _stride) kernel))

(define (bounded-eq? oe se)
  (for ([i 128])
    (assert (eq? (oe 1) (se 1)))))

(define sol (synthesize #:forall (list input t53)
                        #:guarantee (bounded-eq? original-expr (int32x128 synthesized-expr))))

(print-forms sol)
;(evaluate kernel sol)