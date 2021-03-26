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
    [(x256 sca) (lambda (i) (interpret sca))]

    [(ramp base stride len) (lambda (i) (+ (interpret base) (* i (interpret stride))))]
    [(load buf idxs alignment) (lambda (i) (get (interpret buf) ((interpret idxs) i)))]

    ;; Type Casts
    [(uint8x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint8))]
    [(uint8x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint8))]
    [(uint8x128 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint8))]
    [(uint8x256 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint8))]

    [(int8x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int8))]
    [(int8x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int8))]
    [(int8x128 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int8))]

    [(uint16x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint16))]
    [(uint16x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint16))]
    [(uint16x128 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint16))]

    [(int16x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int16))]
    [(int16x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int16))]
    [(int16x128 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int16))]
    
    [(uint32x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint32))]
    [(uint32x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint32))]
    [(uint32x128 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'uint32))]

    [(int32x32 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int32))]
    [(int32x64 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int32))]
    [(int32x128 vec) (lambda (i) (cpp-cast ((interpret vec) i) 'int32))]

    ;; Operations
    [(sca-add v1 v2) (do-add v1 v2)]
    [(sca-sub v1 v2) (do-sub v1 v2)]
    [(sca-mul v1 v2) (do-mul v1 v2)]
    [(sca-div v1 v2) (do-div v1 v2)]
    [(sca-min v1 v2) (do-min v1 v2)]
    [(sca-max v1 v2) (do-max v1 v2)]
    [(vec-add v1 v2) (lambda (i) (do-add ((interpret v1) i) ((interpret v2) i)))]
    [(vec-sub v1 v2) (lambda (i) (do-sub ((interpret v1) i) ((interpret v2) i)))]
    [(vec-mul v1 v2) (lambda (i) (do-mul ((interpret v1) i) ((interpret v2) i)))]
    [(vec-div v1 v2) (lambda (i) (do-div ((interpret v1) i) ((interpret v2) i)))]
    [(vec-min v1 v2) (lambda (i) (do-min ((interpret v1) i) ((interpret v2) i)))]
    [(vec-max v1 v2) (lambda (i) (do-max ((interpret v1) i) ((interpret v2) i)))]

    [(shift_left v1 v2) (lambda (i) (do-shl ((interpret v1) i) ((interpret v2) i)))]
    [(shift_right v1 v2) (lambda (i) (do-shr ((interpret v1) i) ((interpret v2) i)))]
    [(absd v1 v2) (lambda (i) (do-absd ((interpret v1) i) ((interpret v2) i)))]

    ;; Shuffles
    [(slice_vectors vec base stride len) (lambda (i) ((interpret vec) (+ (interpret base) (* i (interpret stride)))))]
    [(concat_vectors v1 v2) (lambda (i) (if (< i (num-elems-hal v1)) ((interpret v1) i) ((interpret v2) (- i (num-elems-hal v1)))))]
    [(dynamic_shuffle vec idxs st end) (lambda (i) ((interpret vec) (+ ((interpret idxs) i) st)))]
    
    ;; Base case
    [_ p]))

;; Model basic arithmetic
(define (infer-out-type lhs rhs)
  (define max-bw (if (> (bw lhs) (bw rhs)) (bw lhs) (bw rhs)))
  (cond
    [(and (signed? lhs) (signed? rhs)) (get-type max-bw #t)]
    [(and (unsigned? lhs) (unsigned? rhs)) (get-type max-bw #f)]
    [else (get-type max-bw #t)]))

(define (do-add lhs rhs)
  (if (and (integer? lhs) (integer? rhs))
      (+ lhs rhs)
      (begin
        (define outT (infer-out-type lhs rhs))
        (mk-typed-expr (bvadd (eval lhs) (eval rhs)) outT))))

(define (do-sub lhs rhs)
  (if (and (integer? lhs) (integer? rhs))
      (- lhs rhs)
      (begin
        (define outT (infer-out-type lhs rhs))
        (mk-typed-expr (bvsub (eval lhs) (eval rhs)) outT))))

(define (do-mul lhs rhs)
  (if (and (integer? lhs) (integer? rhs))
      (- lhs rhs)
      (begin
        (define outT (infer-out-type lhs rhs))
        (mk-typed-expr (bvmul (eval lhs) (eval rhs)) outT))))

(define (do-div lhs rhs)
  (if (and (integer? lhs) (integer? rhs))
      (quotient lhs rhs)
      (begin
        (define outT (infer-out-type lhs rhs))
        (if (signedT? outT)
            (begin
              (define lhs64 (cpp-cast lhs 'int64))
              (define rhs64 (cpp-cast rhs 'int64))
              (define ia (eval lhs64))
              (define ib (eval rhs64))
              (define a-neg (bvashr ia (bv 63 64)))
              (define b-neg (bvashr ib (bv 63 64)))
              (define b-zero (if (bveq ib (bv 0 64)) (bv -1 64) (bv 0 64)))
              (set! ib (bvsub ib b-zero))
              (set! ia (bvsub ia a-neg))
              (define q (bvsdiv ia ib))
              (set! q (bvadd q (bvand a-neg (bvsub (bvnot b-neg) b-neg))))
              (set! q (bvand q (bvnot b-zero)))
              (cpp-cast (int64_t q) outT))
            (mk-typed-expr (bvudiv (eval lhs) (eval rhs)) outT)))))

(define (do-min lhs rhs)
  (if (and (integer? lhs) (integer? rhs))
      (min lhs rhs)
      (begin
        (define outT (infer-out-type lhs rhs))
        (cond
          [(signedT? outT)
           (define minF (match (bw outT) [8 min8] [16 min16] [32 min32]))
           (mk-typed-expr (minF (eval lhs) (eval rhs)) outT)]
          [else
           (define minF (match (bw outT) [8 minu8] [16 minu16] [32 minu32]))
           (mk-typed-expr (minF (eval lhs) (eval rhs)) outT)]
            ;(mk-typed-expr (bvsmin (eval lhs) (eval rhs)) outT)
            ;(mk-typed-expr (bvumin (eval lhs) (eval rhs)) outT)
           ))))

(define (do-max lhs rhs)
  (if (and (integer? lhs) (integer? rhs))
      (max lhs rhs)
      (begin
        (define outT (infer-out-type lhs rhs))
        (if (signedT? outT)
            (mk-typed-expr (bvsmax (eval lhs) (eval rhs)) outT)
            (mk-typed-expr (bvumax (eval lhs) (eval rhs)) outT)))))

(define (do-shr lhs rhs)
  (define outT (infer-out-type lhs rhs))
  (if (signedT? outT)
      (mk-typed-expr (bvashr (eval lhs) (eval rhs)) outT)
      (mk-typed-expr (bvlshr (eval lhs) (eval rhs)) outT)))

(define (do-shl lhs rhs)
  (define outT (infer-out-type lhs rhs))
  (mk-typed-expr (bvshl (eval lhs) (eval rhs)) outT))

(define (do-absd lhs rhs)
  (define outT (infer-out-type lhs rhs))
  (define absF (match (bw lhs) [8 abs8] [16 abs16] [32 abs32]))
  (cond
    [(signedT? outT)
     ;(define n (bvsub (eval lhs) (eval rhs)))
     ;(define mask (match (bw lhs)
      ;              [8 (bvashr n (bv 7 8))]
       ;             [16 (bvashr n (bv 15 16))]
        ;            [32 (bvashr n (bv 31 32))]))
     ;(mk-typed-expr (bvxor mask (bvadd n mask)) outT)
     ;(mk-typed-expr (if (bvsge (eval lhs) (eval rhs)) (bvsub (eval lhs) (eval rhs)) (bvsub (eval rhs) (eval lhs))) outT)
     (mk-typed-expr (absF (bvsub (eval lhs) (eval rhs))) outT)]
    [else
     (mk-typed-expr (absF (bvsub (eval lhs) (eval rhs))) outT)
     ;(mk-typed-expr (if (bvuge (eval lhs) (eval rhs)) (bvsub (eval lhs) (eval rhs)) (bvsub (eval rhs) (eval lhs))) outT)
;     (match (bw lhs)
;       [8
;        (define n (bvsub (zero-extend (eval lhs) (bitvector 9)) (zero-extend (eval rhs) (bitvector 9))))
;        (define mask (bvashr n (bv 8 9)))
;        (mk-typed-expr (extract 7 0 (bvxor mask (bvadd n mask))) outT)]
;       [16
;        (define n (bvsub (zero-extend (eval lhs) (bitvector 17)) (zero-extend (eval rhs) (bitvector 17))))
;        (define mask (bvashr n (bv 16 17)))
;        (mk-typed-expr (extract 15 0 (bvxor mask (bvadd n mask))) outT)]
;       [8
;        (define n (bvsub (zero-extend (eval lhs) (bitvector 33)) (zero-extend (eval rhs) (bitvector 33))))
;        (define mask (bvashr n (bv 32 33)))
;        (mk-typed-expr (extract 31 0 (bvxor mask (bvadd n mask))) outT)])
     ]))

(provide (rename-out [interpret interpret-halide]))