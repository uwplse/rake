#lang rosette/safe

(require
  syntax/parse/define
  (for-syntax syntax/parse)
  (only-in racket open-input-string [#%top racket:#%top])
  (only-in rake/halide/ir/types buffer buffer-data sca-broadcast sca-cast vec-cast)
  rake/cpp)

(provide define-symbolic-buffer define-symbolic-buffer* define-symbolic-var #%top)

(define-syntax (define-symbolic-buffer stx)
  (syntax-parse stx
    #:datum-literals (int8_t int16_t int32_t int64_t uint1_t uint8_t uint16_t uint32_t uint64_t)
    [(_ var:id int8_t)
     #'(define var ((lambda () (define-symbolic var (~> integer? (bitvector 8))) (buffer var 'int8))))]
    [(_ var:id int16_t)
     #'(define var ((lambda () (define-symbolic var (~> integer? (bitvector 16))) (buffer var 'int16))))]
    [(_ var:id int32_t)
     #'(define var ((lambda () (define-symbolic var (~> integer? (bitvector 32))) (buffer var 'int32))))]
    [(_ var:id int64_t)
     #'(define var ((lambda () (define-symbolic var (~> integer? (bitvector 64))) (buffer var 'int64))))]
    [(_ var:id uint1_t)
     #'(define var ((lambda () (define-symbolic var (~> integer? boolean?)) (buffer var 'uint1))))]
    [(_ var:id uint8_t)
     #'(define var ((lambda () (define-symbolic var (~> integer? (bitvector 8))) (buffer var 'uint8))))]
    [(_ var:id uint16_t)
     #'(define var ((lambda () (define-symbolic var (~> integer? (bitvector 16))) (buffer var 'uint16))))]
    [(_ var:id uint32_t)
     #'(define var ((lambda () (define-symbolic var (~> integer? (bitvector 32))) (buffer var 'uint32))))]
    [(_ var:id uint64_t)
     #'(define var ((lambda () (define-symbolic var (~> integer? (bitvector 64))) (buffer var 'uint64))))]))

(define-syntax (define-symbolic-buffer* stx)
  (syntax-parse stx
    #:datum-literals (int8_t int16_t int32_t int64_t uint1_t uint8_t uint16_t uint32_t uint64_t)
    [(_ var:id int8_t)
     #'(define var ((lambda () (define-symbolic* var (~> integer? (bitvector 8))) (buffer var 'int8))))]
    [(_ var:id int16_t)
     #'(define var ((lambda () (define-symbolic* var (~> integer? (bitvector 16))) (buffer var 'int16))))]
    [(_ var:id int32_t)
     #'(define var ((lambda () (define-symbolic* var (~> integer? (bitvector 32))) (buffer var 'int32))))]
    [(_ var:id int64_t)
     #'(define var ((lambda () (define-symbolic* var (~> integer? (bitvector 64))) (buffer var 'int64))))]
    [(_ var:id uint1_t)
     #'(define var ((lambda () (define-symbolic* var (~> integer? boolean?)) (buffer var 'uint1))))]
    [(_ var:id uint8_t)
     #'(define var ((lambda () (define-symbolic* var (~> integer? (bitvector 8))) (buffer var 'uint8))))]
    [(_ var:id uint16_t)
     #'(define var ((lambda () (define-symbolic* var (~> integer? (bitvector 16))) (buffer var 'uint16))))]
    [(_ var:id uint32_t)
     #'(define var ((lambda () (define-symbolic* var (~> integer? (bitvector 32))) (buffer var 'uint32))))]
    [(_ var:id uint64_t)
     #'(define var ((lambda () (define-symbolic* var (~> integer? (bitvector 64))) (buffer var 'uint64))))]))

(define-syntax (define-symbolic-var stx)
  (syntax-parse stx
    #:datum-literals (uint1_t int8_t int16_t int32_t uint8_t uint16_t uint32_t)
    [(_ var:id uint1_t)
     #'(define var ((lambda () (define-symbolic var boolean?) (uint1_t var))))]
    [(_ var:id int8_t)
     #'(define var ((lambda () (define-symbolic var (bitvector 8)) (int8_t var))))]
    [(_ var:id int16_t)
     #'(define var ((lambda () (define-symbolic var (bitvector 16)) (int16_t var))))]
    [(_ var:id int32_t)
     #'(define var ((lambda () (define-symbolic var (bitvector 32)) (int32_t var))))]
    [(_ var:id uint8_t)
     #'(define var ((lambda () (define-symbolic var (bitvector 8)) (uint8_t var))))]
    [(_ var:id uint16_t)
     #'(define var ((lambda () (define-symbolic var (bitvector 16)) (uint16_t var))))]
    [(_ var:id uint32_t)
     #'(define var ((lambda () (define-symbolic var (bitvector 32)) (uint32_t var))))]))

;; Scalar broadcasts
(define-syntax (x2 stx) (syntax-case stx () [(_ val) #'(sca-broadcast val 2)]))
(define-syntax (x4 stx) (syntax-case stx () [(_ val) #'(sca-broadcast val 4)]))
(define-syntax (x8 stx) (syntax-case stx () [(_ val) #'(sca-broadcast val 8)]))
(define-syntax (x16 stx) (syntax-case stx () [(_ val) #'(sca-broadcast val 16)]))
(define-syntax (x32 stx) (syntax-case stx () [(_ val) #'(sca-broadcast val 32)]))
(define-syntax (x64 stx) (syntax-case stx () [(_ val) #'(sca-broadcast val 64)]))
(define-syntax (x128 stx) (syntax-case stx () [(_ val) #'(sca-broadcast val 128)]))
(define-syntax (x256 stx) (syntax-case stx () [(_ val) #'(sca-broadcast val 256)]))
(define-syntax (x512 stx) (syntax-case stx () [(_ val) #'(sca-broadcast val 512)]))

(define (rewrite-halide-broadcast lanes)
  (curryr sca-broadcast lanes))

(define (rewrite-halide-cast type lanes)
  (if (eq? lanes 1) (curryr sca-cast type) (curryr vec-cast type lanes)))

;; Define new syntax
(define-syntax-parser #%top
  ;; Scalar broadcasts
  [(_ . x:id)
   #:do [(define str (symbol->string (syntax-e #'x)))
         (define parsed (regexp-match #px"^x(\\d+)$" str))]
   #:when parsed
   #`(rewrite-halide-broadcast #,(string->number (second parsed)))]
  
  ;; Type Casts
  [(_ . x:id)
   #:do [(define str (symbol->string (syntax-e #'x)))
         (define parsed (regexp-match #px"^(uint\\d+|int\\d+)x(\\d+)$" str))]
   #:when parsed
   #`(rewrite-halide-cast #,(read (open-input-string (format "'~a" (second parsed))))
          #,(string->number (third parsed)))]

  ;; Recurse to base parser for everything else
  [(_ . x) #'(racket:#%top . x)])