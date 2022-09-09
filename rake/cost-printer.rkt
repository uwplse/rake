#lang rosette

(require
  rake/arm/ast/cost-model
  rake/hvx/cost-model
  (only-in rosette/base/core/term @app)
  (only-in rosette/base/core/term @app)
)

(provide arm-cost hvx-cost)

(define (write-cost-to-file expr cost-model out-file-path)
  (let ([cost (cost-model expr)])
    (define out (open-output-file out-file-path #:exists 'replace))
    (pretty-write cost out)
    (close-output-port out)))

(define (arm-cost expr file)
   (write-cost-to-file expr arm:basic-expr-cost file)
)

(define (hvx-cost expr file)
  (write-cost-to-file expr basic-expr-cost file)
)