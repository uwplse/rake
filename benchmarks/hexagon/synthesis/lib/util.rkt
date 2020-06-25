#lang rosette

(define (parse-swizzle-spec buff-reads sols)
  (define vecs (make-hash))
  (define vec_id 0)
  (for ([k (in-dict-keys (model (list-ref sols 0)))])
    (hash-set! vecs vec_id (make-hash))
    (set! vec_id (+ vec_id 1)))

  (define lane 0)
  (for ([options buff-reads]
        [selections sols])
    (set! vec_id 0)
    (for*/set ([k (in-dict-keys (model selections))])
      (define selection (hash-ref (model selections) k))
      (hash-set! (hash-ref vecs vec_id) lane (list-ref options selection))
      (set! vec_id (+ vec_id 1)))
    (set! lane (+ lane 1)))

  vecs)

(provide (all-defined-out))