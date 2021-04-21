#lang rosette/safe

(require
  (for-syntax syntax/parse)
  (only-in rake/halide/ir/types buffer buffer-data))

(provide define-symbolic-buffer)

(define-syntax (define-symbolic-buffer stx)
  (syntax-parse stx
    #:datum-literals (int8_t int16_t int32_t uint8_t uint16_t uint32_t)
    [(_ var:id int8_t)
     #'(define var ((lambda () (define-symbolic var (~> integer? (bitvector 8))) (buffer var 'int8))))]
    [(_ var:id int16_t)
     #'(define var ((lambda () (define-symbolic var (~> integer? (bitvector 16))) (buffer var 'int16))))]
    [(_ var:id int32_t)
     #'(define var ((lambda () (define-symbolic var (~> integer? (bitvector 32))) (buffer var 'int32))))]
    [(_ var:id uint8_t)
     #'(define var ((lambda () (define-symbolic var (~> integer? (bitvector 8))) (buffer var 'uint8))))]
    [(_ var:id uint16_t)
     #'(define var ((lambda () (define-symbolic var (~> integer? (bitvector 16))) (buffer var 'uint16))))]
    [(_ var:id uint32_t)
     #'(define var ((lambda () (define-symbolic var (~> integer? (bitvector 32))) (buffer var 'uint32))))]))