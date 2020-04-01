#lang rosette/safe

;; Model C++ casting
(define (cast_int32_to_int16 (val (bitvector 32)))
  (concat (extract 31 31 val) (extract 14 0 val)))

;; Model Halide IR
(define (broadcast val)
  (vector-immutable val val val val))

(define (ramp input base stride)
  (vector-immutable
   (input base)
   (input (+ base stride))
   (input (+ base stride stride))
   (input (+ base stride stride stride))))

(define (int16x128 val)
  (vector-immutable
   (zero-extend (vector-ref val 0) (bitvector 16))
   (zero-extend (vector-ref val 1) (bitvector 16))
   (zero-extend (vector-ref val 2) (bitvector 16))
   (zero-extend (vector-ref val 3) (bitvector 16))))

(define (vec_add v1 v2)
  (vector-immutable
   (bvadd (vector-ref v1 0) (vector-ref v2 0))
   (bvadd (vector-ref v1 1) (vector-ref v2 1))
   (bvadd (vector-ref v1 2) (vector-ref v2 2))
   (bvadd (vector-ref v1 3) (vector-ref v2 3))))

(define (vec_mul v1 v2)
  (vector-immutable
   (bvmul (vector-ref v1 0) (vector-ref v2 0))
   (bvmul (vector-ref v1 1) (vector-ref v2 1))
   (bvmul (vector-ref v1 2) (vector-ref v2 2))
   (bvmul (vector-ref v1 3) (vector-ref v2 3))))

;; Model Hexagon Instr
(define (convolve v k)
  (vector-immutable
   (bvmul (vector-ref v1 0) (vector-ref v2 0))
   (bvmul (vector-ref v1 1) (vector-ref v2 1))
   (bvmul (vector-ref v1 2) (vector-ref v2 2))
   (bvmul (vector-ref v1 3) (vector-ref v2 3))))

;; Model buffers as uninterpreted functions
(define-symbolic input (~> integer? (bitvector 8)))

;; Declare scope vars
(define-symbolic t53 integer?)

(define original-expr
  (vec_add
   (vec_add
    (vec_mul
     (int16x128 (ramp input t53 1))
     (broadcast (cast_int32_to_int16 (bv 2 32))))
    (vec_mul
     (int16x128 (ramp input (+ t53 1) 1))
     (broadcast (cast_int32_to_int16 (bv 3 32)))))
   (int16x128 (ramp input (+ t53 2) 1))))

(define synthesized-expr
  (ramp input t53 1))

(print original-expr)
(printf "\n\n")
(print synthesized-expr)
(printf "\n\n")

(verify (assert (eq? original-expr synthesized-expr)))