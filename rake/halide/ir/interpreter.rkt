#lang rosette

(require rake/util)
(require rake/cpp/cast)
(require rake/cpp/types)
(require rake/halide/ir/types)

(require rosette/lib/match)

(define (interpret p)
  (match p
    ;; Constructors
    [(x32 sca) (lambda (i) (interpret sca))]
    [(x64 sca) (lambda (i) (interpret sca))]
    [(x128 sca) (lambda (i) (interpret sca))]
    [(ramp buf base stride len) (lambda (i) (get (interpret buf) (+ (interpret base) (* i (interpret stride)))))]

    [(slice_vectors vec base stride len) (lambda (i) ((interpret vec) (+ (interpret base) (* i (interpret stride)))))]
    [(concat_vectors v1 v2) (lambda (i) (if (< i (num-elems-hal v1)) ((interpret v1) i) ((interpret v2) (- i (num-elems-hal v1)))))]

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

(provide (rename-out [interpret interpret-halide]))