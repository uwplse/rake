#lang rosette

(require "cpp.rkt")
(require "util.rkt")

(require rosette/lib/match)

;; Define Halide's IR

;; Constructors
(struct x32 (sca) #:transparent)
(struct x64 (sca) #:transparent)
(struct x128 (sca) #:transparent)

(struct ramp (buf base stride len) #:transparent)
(struct slice_vectors (vec base stride len) #:transparent)
(struct concat_vectors (v1 v2) #:transparent)

;; Type Casts
(struct uint8x32 (vec) #:transparent)
(struct uint8x64 (vec) #:transparent)
(struct uint8x128 (vec) #:transparent)

(struct uint16x32 (vec) #:transparent)
(struct uint16x64 (vec) #:transparent)
(struct uint16x128 (vec) #:transparent)

(struct uint32x32 (vec) #:transparent)
(struct uint32x64 (vec) #:transparent)
(struct uint32x128 (vec) #:transparent)

(struct int8x32 (vec) #:transparent)
(struct int8x64 (vec) #:transparent)
(struct int8x128 (vec) #:transparent)

(struct int16x32 (vec) #:transparent)
(struct int16x64 (vec) #:transparent)
(struct int16x128 (vec) #:transparent)

(struct int32x32 (vec) #:transparent)
(struct int32x64 (vec) #:transparent)
(struct int32x128 (vec) #:transparent)

;; Operations
(struct add (v1 v2) #:transparent)
(struct sub (v1 v2) #:transparent)
(struct mul (v1 v2) #:transparent)
(struct div (v1 v2) #:transparent)

(struct vec-add (v1 v2) #:transparent)
(struct vec-sub (v1 v2) #:transparent)
(struct vec-mul (v1 v2) #:transparent)
(struct vec-div (v1 v2) #:transparent)

(define (interpret p)
  (match p
    ;; Constructors
    [(x32 sca) (lambda (i) (interpret sca))]
    [(x64 sca) (lambda (i) (interpret sca))]
    [(x128 sca) (lambda (i) (interpret sca))]
    [(ramp buf base stride len) (lambda (i) (get (interpret buf) (+ (interpret base) (* i (interpret stride)))))]

    [(slice_vectors vec base stride len) (lambda (i) ((interpret vec) (+ (interpret base) (* i (interpret stride)))))]
    [(concat_vectors v1 v2) (lambda (i) (if (< i (vec-len v1)) ((interpret v1) i) ((interpret v2) (- i (vec-len v1)))))]

    ;; Type Casts
    [(uint8x32 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'uint8))]
    [(uint8x64 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'uint8))]
    [(uint8x128 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'uint8))]

    [(int8x32 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'int8))]
    [(int8x64 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'int8))]
    [(int8x128 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'int8))]

    [(uint16x32 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'uint16))]
    [(uint16x64 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'uint16))]
    [(uint16x128 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'uint16))]

    [(int16x32 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'int16))]
    [(int16x64 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'int16))]
    [(int16x128 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'int16))]
    
    [(uint32x32 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'uint32))]
    [(uint32x64 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'uint32))]
    [(uint32x128 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'uint32))]

    [(int32x32 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'int32))]
    [(int32x64 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'int32))]
    [(int32x128 vec) (lambda (i) (cpp_cast ((interpret vec) i) 'int32))]

    ;; Operations
    [(add v1 v2) (do-add v1 v2)]
    [(sub v1 v2) (do-sub v1 v2)]
    [(mul v1 v2) (do-mul v1 v2)]
    [(div v1 v2) (do-div v1 v2)]
    [(vec-add v1 v2) (lambda (i) (do-add ((interpret v1) i) ((interpret v2) i)))]
    [(vec-sub v1 v2) (lambda (i) (do-sub ((interpret v1) i) ((interpret v2) i)))]
    [(vec-mul v1 v2) (lambda (i) (do-mul ((interpret v1) i) ((interpret v2) i)))]
    [(vec-div v1 v2) (lambda (i) (do-div ((interpret v1) i) ((interpret v2) i)))]
    
    ;; Base case
    [_ p]))

(define (vec-len expr)
  (match expr
    ;; Constructors
    [(x32 sca) 32]
    [(x64 sca) 64]
    [(x128 sca) 128]
    [(ramp buf base stride len) len]

    [(slice_vectors vec base stride len) len]
    [(concat_vectors v1 v2) (+ (vec-len v1) (vec-len v2))]

    ;; Type Casts
    [(uint8x32 vec) 32]
    [(uint16x32 vec) 32]
    [(uint32x32 vec) 32]
    [(int8x32 vec) 32]
    [(int16x32 vec) 32]
    [(int32x32 vec) 32]
    [(uint8x64 vec) 64]
    [(uint16x64 vec) 64]
    [(uint32x64 vec) 64]
    [(int8x64 vec) 64]
    [(int16x64 vec) 64]
    [(int32x64 vec) 64]
    [(uint8x128 vec) 128]
    [(uint16x128 vec) 128]
    [(uint32x128 vec) 128]
    [(int8x128 vec) 128]
    [(int16x128 vec) 128]
    [(int32x128 vec) 128]

    ;; Operations
    [(vec-add v1 v2) (vec-len v1)]
    [(vec-sub v1 v2) (vec-len v1)]
    [(vec-mul v1 v2) (vec-len v1)]
    [(vec-div v1 v2) (vec-len v1)]
    
    ;; Base case
    [_ (error "Don't know how to get vector length from:" expr)]))


;; Model basic arithmetic
(define (infer-out-type lhs rhs)
  (define max_bw (if (> (bw lhs) (bw rhs)) (bw lhs) (bw rhs)))
  (cond
    [(and (signed? lhs) (signed? rhs)) (get-type max_bw #t)]
    [(and (unsigned? lhs) (unsigned? rhs)) (get-type max_bw #f)]
    [else (get-type max_bw #t)]))

(define (do-add lhs rhs)
  (define outT (infer-out-type lhs rhs))
  (mk-typed-expr (bvadd (eval lhs) (eval rhs)) outT))

(define (do-sub lhs rhs)
  (define outT (infer-out-type lhs rhs))
  (mk-typed-expr (bvsub (eval lhs) (eval rhs)) outT))

(define (do-mul lhs rhs)
  (define outT (infer-out-type lhs rhs))
  (mk-typed-expr (bvmul (eval lhs) (eval rhs)) outT))

(define (do-div lhs rhs)
  (define outT (infer-out-type lhs rhs))
  (if (signedT? outT)
      (mk-typed-expr (bvsdiv (eval lhs) (eval rhs)) outT)
      (mk-typed-expr (bvudiv (eval lhs) (eval rhs)) outT)))

(provide (except-out (all-defined-out) interpret) (rename-out [interpret interpret-halide]))