#lang rosette

(require racket/pretty)

(require rake/cpp/types)
(require rosette/lib/match)

;; For tracking types of variables
;(define type-dict (make-hash))
;(define (init-var-types td) (set! type-dict td))
;(define (var-type var) (hash-ref type-dict var))

(define (parse-swizzle-spec buff-reads sols)
  (define vecs (make-hash))
  (define vec-id 0)
  (for ([k (in-dict-keys (model (list-ref sols 0)))])
    (hash-set! vecs vec-id (make-hash))
    (set! vec-id (+ vec-id 1)))

  (define lane 0)
  (for ([options buff-reads]
        [selections sols])
    (set! vec-id 0)
    (for*/set ([k (in-dict-keys (model selections))])
      (define selection (hash-ref (model selections) k))
      (hash-set! (hash-ref vecs vec-id) lane (list-ref options selection))
      (set! vec-id (+ vec-id 1)))
    (set! lane (+ lane 1)))

  vecs)

;(define (merge-sols sol1 sol2)
  ;(define merged-sol (make-hash))
  ;(for ([k (in-dict-keys (model sol2))])
    ;(hash-set! merged-sol k (hash-ref (model sol2) k)))
  ;(for ([k (in-dict-keys (model sol1))])
    ;(hash-set! merged-sol k (hash-ref (model sol1) k)))
  ;(sat (make-immutable-hash (hash->list merged-sol))))

(define (append-sol sol-list new-sol)
  (flatten (append (list sol-list) (list new-sol))))

(define (evaluate-sols expr sol-list)
  (for/fold ([eval-expr expr]) ([sol sol-list]) (evaluate expr sol)))

;; Utility functions
(define (nop v) v)

(define (lsb16 v) (zero-extend (extract 15 0 (eval v)) (bitvector 32)))

(define (i8lo v) (int8_t (extract 7 0 (eval v))))
(define (u8lo v) (uint8_t (extract 7 0 (eval v))))
(define (i16lo v) (int16_t (extract 15 0 (eval v))))
(define (u16lo v) (uint16_t (extract 15 0 (eval v))))
(define (i32lo v) (int32_t (extract 31 0 (eval v))))
(define (u32lo v) (uint32_t (extract 31 0 (eval v))))

(define (i8hi v) (int8_t (extract 15 8 (eval v))))
(define (u8hi v) (uint8_t (extract 15 8 (eval v))))
(define (i16hi v) (int16_t (extract 31 16 (eval v))))
(define (u16hi v) (uint16_t (extract 31 16 (eval v))))

(define (zxt16 v) (uint16_t (zero-extend (eval v) (bitvector 16))))
(define (sxt16 v) (int16_t (sign-extend (eval v) (bitvector 16))))
(define (zxt32 v) (uint32_t (zero-extend (eval v) (bitvector 32))))
(define (sxt32 v) (int32_t (sign-extend (eval v) (bitvector 32))))

(define (get-caller-id obj) (eq-hash-code obj))

(provide (all-defined-out))