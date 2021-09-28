#lang rosette/safe

(require
  (for-syntax syntax/parse)
  (only-in rake/halide/ir/types buffer buffer-data sca-broadcast sca-cast vec-cast)
  rake/cpp)

(provide define-symbolic-buffer define-symbolic-buffer* define-symbolic-var)

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

;; Type Casts (scalar)
(define-syntax (uint8x1 stx) (syntax-case stx () [(_ sca) #'(sca-cast sca 'uint8)]))
(define-syntax (uint16x1 stx) (syntax-case stx () [(_ sca) #'(sca-cast sca 'uint16)]))
(define-syntax (uint32x1 stx) (syntax-case stx () [(_ sca) #'(sca-cast sca 'uint32)]))
(define-syntax (uint64x1 stx) (syntax-case stx () [(_ sca) #'(sca-cast sca 'uint64)]))

(define-syntax (int8x1 stx) (syntax-case stx () [(_ sca) #'(sca-cast sca 'int8)]))
(define-syntax (int16x1 stx) (syntax-case stx () [(_ sca) #'(sca-cast sca 'int16)]))
(define-syntax (int32x1 stx) (syntax-case stx () [(_ sca) #'(sca-cast sca 'int32)]))
(define-syntax (int64x1 stx) (syntax-case stx () [(_ sca) #'(sca-cast sca 'int64)]))

;; Type Casts (vectors)
(define-syntax (uint8x2 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint8 2)]))
(define-syntax (uint8x4 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint8 4)]))
(define-syntax (uint8x8 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint8 8)]))
(define-syntax (uint8x16 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint8 16)]))
(define-syntax (uint8x32 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint8 32)]))
(define-syntax (uint8x64 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint8 64)]))
(define-syntax (uint8x128 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint8 128)]))
(define-syntax (uint8x256 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint8 256)]))
(define-syntax (uint8x512 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint8 512)]))

(define-syntax (uint16x2 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint16 2)]))
(define-syntax (uint16x4 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint16 4)]))
(define-syntax (uint16x8 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint16 8)]))
(define-syntax (uint16x16 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint16 16)]))
(define-syntax (uint16x32 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint16 32)]))
(define-syntax (uint16x64 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint16 64)]))
(define-syntax (uint16x128 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint16 128)]))
(define-syntax (uint16x256 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint16 256)]))
(define-syntax (uint16x512 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint16 512)]))

(define-syntax (uint32x2 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint32 2)]))
(define-syntax (uint32x4 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint32 4)]))
(define-syntax (uint32x8 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint32 8)]))
(define-syntax (uint32x16 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint32 16)]))
(define-syntax (uint32x32 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint32 32)]))
(define-syntax (uint32x64 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint32 64)]))
(define-syntax (uint32x128 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint32 128)]))
(define-syntax (uint32x256 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint32 256)]))
(define-syntax (uint32x512 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint32 512)]))

(define-syntax (uint64x2 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint64 2)]))
(define-syntax (uint64x4 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint64 4)]))
(define-syntax (uint64x8 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint64 8)]))
(define-syntax (uint64x16 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint64 16)]))
(define-syntax (uint64x32 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint64 32)]))
(define-syntax (uint64x64 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint64 64)]))
(define-syntax (uint64x128 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint64 128)]))
(define-syntax (uint64x256 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint64 256)]))
(define-syntax (uint64x512 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'uint64 512)]))

(define-syntax (int8x2 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int8 2)]))
(define-syntax (int8x4 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int8 4)]))
(define-syntax (int8x8 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int8 8)]))
(define-syntax (int8x16 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int8 16)]))
(define-syntax (int8x32 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int8 32)]))
(define-syntax (int8x64 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int8 64)]))
(define-syntax (int8x128 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int8 128)]))
(define-syntax (int8x256 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int8 256)]))
(define-syntax (int8x512 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int8 512)]))

(define-syntax (int16x2 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int16 2)]))
(define-syntax (int16x4 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int16 4)]))
(define-syntax (int16x8 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int16 8)]))
(define-syntax (int16x16 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int16 16)]))
(define-syntax (int16x32 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int16 32)]))
(define-syntax (int16x64 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int16 64)]))
(define-syntax (int16x128 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int16 128)]))
(define-syntax (int16x256 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int16 256)]))
(define-syntax (int16x512 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int16 512)]))

(define-syntax (int32x2 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int32 2)]))
(define-syntax (int32x4 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int32 4)]))
(define-syntax (int32x8 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int32 8)]))
(define-syntax (int32x16 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int32 16)]))
(define-syntax (int32x32 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int32 32)]))
(define-syntax (int32x64 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int32 64)]))
(define-syntax (int32x128 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int32 128)]))
(define-syntax (int32x256 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int32 256)]))
(define-syntax (int32x512 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int32 512)]))

(define-syntax (int64x2 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int64 2)]))
(define-syntax (int64x4 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int64 4)]))
(define-syntax (int64x8 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int64 8)]))
(define-syntax (int64x16 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int64 16)]))
(define-syntax (int64x32 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int64 32)]))
(define-syntax (int64x64 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int64 64)]))
(define-syntax (int64x128 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int64 128)]))
(define-syntax (int64x256 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int64 256)]))
(define-syntax (int64x512 stx) (syntax-case stx () [(_ vec) #'(vec-cast vec 'int64 512)]))