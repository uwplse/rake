#lang rosette/safe

(require
  (only-in racket/struct make-constructor-style-printer)
  (only-in racket/base error)
  rosette/lib/destruct)

(provide (all-defined-out))
         
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Define Halide's IR

;; A node to represent abstract expressions
(struct abstr-halide-expr (orig-expr abstr-vals))

;; A dummy node to capture var lookups
;; (Because for variables that live outside the loop
;; we wish to interpret them for semantics, but not
;; actually inline the computation)
(struct var-lookup (var val)
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) 'var-lookup)
      (lambda (obj) (list (var-lookup-var obj)))))])

;; Constructors
(struct buffer (data elemT) #:transparent)
(struct load (buf idxs alignment) #:transparent)
(struct ramp (base stride len) #:transparent)
(struct aligned (mod rem) #:transparent)
(struct load-sca (buf idx) #:transparent)
(struct sca-broadcast (val len) #:transparent)

;; Scalar Operations
(struct sca-cast (sca type) #:transparent)

(struct sca-add (v1 v2) #:transparent)
(struct sca-sub (v1 v2) #:transparent)
(struct sca-mul (v1 v2) #:transparent)
(struct sca-div (v1 v2) #:transparent)
(struct sca-mod (v1 v2) #:transparent)
(struct sca-min (v1 v2) #:transparent)
(struct sca-max (v1 v2) #:transparent)

(struct sca-if (v1 v2 v3) #:transparent)
(struct sca-eq (v1 v2) #:transparent)
(struct sca-lt (v1 v2) #:transparent)
(struct sca-le (v1 v2) #:transparent)

(struct sca-abs (v1) #:transparent)
(struct sca-clz (v1) #:transparent)

(struct sca-absd (v1 v2) #:transparent)
(struct sca-shl (v1 v2) #:transparent)
(struct sca-shr (v1 v2) #:transparent)

(struct sca-bwand (v1 v2) #:transparent)

;; Vector Operations
(struct vec-cast (vec type lanes) #:transparent)

(struct vec-add (v1 v2) #:transparent)
(struct vec-sub (v1 v2) #:transparent)
(struct vec-mul (v1 v2) #:transparent)
(struct vec-div (v1 v2) #:transparent)
(struct vec-mod (v1 v2) #:transparent)
(struct vec-max (v1 v2) #:transparent)
(struct vec-min (v1 v2) #:transparent)

(struct vec-if (v1 v2 v3) #:transparent)
(struct vec-eq (v1 v2) #:transparent)
(struct vec-lt (v1 v2) #:transparent)
(struct vec-le (v1 v2) #:transparent)
(struct vec-gt (v1 v2) #:transparent)
(struct vec-ge (v1 v2) #:transparent)

(struct vec-abs (v1) #:transparent)
(struct vec-clz (v1) #:transparent)
(struct vec-absd (v1 v2) #:transparent)
(struct vec-shl (v1 v2) #:transparent)
(struct vec-shr (v1 v2) #:transparent)

(struct vec-bwand (v1 v2) #:transparent)
(struct vec-bwxor (v1 v2) #:transparent)
(struct vec-reinterpret (v type lanes) #:transparent)

(struct vector_reduce (op width vec) #:transparent)

;; Shuffles
(struct vec-broadcast (n vec) #:transparent)
(struct slice_vectors (vec base stride len) #:transparent)
(struct concat_vectors (v1 v2) #:transparent)
(struct interleave (v1 v2) #:transparent)
(struct interleave4 (v1 v2 v3 v4) #:transparent)
(struct dynamic_shuffle (vec idx st end) #:transparent)