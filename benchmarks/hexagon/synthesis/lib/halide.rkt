#lang rosette

(require "cpp.rkt")
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
(struct uint8x32 (vec vtype) #:transparent)
(struct uint16x32 (vec vtype) #:transparent)
(struct uint32x32 (vec vtype) #:transparent)
(struct int8x32 (vec vtype) #:transparent)
(struct int16x32 (vec vtype) #:transparent)
(struct int32x32 (vec vtype) #:transparent)
(struct uint8x64 (vec vtype) #:transparent)
(struct uint16x64 (vec vtype) #:transparent)
(struct uint32x64 (vec vtype) #:transparent)
(struct int8x64 (vec vtype) #:transparent)
(struct int16x64 (vec vtype) #:transparent)
(struct int32x64 (vec vtype) #:transparent)
(struct uint8x128 (vec vtype) #:transparent)
(struct uint16x128 (vec vtype) #:transparent)
(struct uint32x128 (vec vtype) #:transparent)
(struct int8x128 (vec vtype) #:transparent)
(struct int16x128 (vec vtype) #:transparent)
(struct int32x128 (vec vtype) #:transparent)

;; Operations
(struct vec-add (v1 v2) #:transparent)
(struct vec-sub (v1 v2) #:transparent)
(struct vec-mul (v1 v2) #:transparent)
(struct vec-sdiv (v1 v2) #:transparent)
(struct vec-udiv (v1 v2) #:transparent)

;; Hexagon instructions
(struct halide.hexagon.packhi.vh (vec) #:transparent)
(struct halide.hexagon.add_mul.vh.vh.b (acc v s) #:transparent)

(define (interpret p)
  (match p
    ;; Constructors
    [(x32 sca) (lambda (i) (interpret sca))]
    [(x64 sca) (lambda (i) (interpret sca))]
    [(x128 sca) (lambda (i) (interpret sca))]
    [(ramp buf base stride len) (lambda (i) ((interpret buf) (+ (interpret base) (* i (interpret stride)))))]

    [(slice_vectors vec base stride len) (lambda (i) ((interpret vec) (+ (interpret base) (* i (interpret stride)))))]
    [(concat_vectors v1 v2) (lambda (i) (if (< i (vec-len v1)) ((interpret v1) i) ((interpret v2) (- i (vec-len v1)))))]

    ;; Type Casts
    [(uint8x32 vec vtype) (castvec (interpret vec) vtype 'uint8)]
    [(uint16x32 vec vtype) (castvec (interpret vec) vtype 'uint16)]
    [(uint32x32 vec vtype) (castvec (interpret vec) vtype 'uint32)]
    [(int8x32 vec vtype) (castvec (interpret vec) vtype 'int8)]
    [(int16x32 vec vtype) (castvec (interpret vec) vtype 'int16)]
    [(int32x32 vec vtype) (castvec (interpret vec) vtype 'int32)]
    [(uint8x64 vec vtype) (castvec (interpret vec) vtype 'uint8)]
    [(uint16x64 vec vtype) (castvec (interpret vec) vtype 'uint16)]
    [(uint32x64 vec vtype) (castvec (interpret vec) vtype 'uint32)]
    [(int8x64 vec vtype) (castvec (interpret vec) vtype 'int8)]
    [(int16x64 vec vtype) (castvec (interpret vec) vtype 'int16)]
    [(int32x64 vec vtype) (castvec (interpret vec) vtype 'int32)]
    [(uint8x128 vec vtype) (castvec (interpret vec) vtype 'uint8)]
    [(uint16x128 vec vtype) (castvec (interpret vec) vtype 'uint16)]
    [(uint32x128 vec vtype) (castvec (interpret vec) vtype 'uint32)]
    [(int8x128 vec vtype) (castvec (interpret vec) vtype 'int8)]
    [(int16x128 vec vtype) (castvec (interpret vec) vtype 'int16)]
    [(int32x128 vec vtype) (castvec (interpret vec) vtype 'int32)]

    ;; Operations
    [(vec-add v1 v2) (lambda (i) (bvadd ((interpret v1) i) ((interpret v2) i)))]
    [(vec-sub v1 v2) (lambda (i) (bvsub ((interpret v1) i) ((interpret v2) i)))]
    [(vec-mul v1 v2) (lambda (i) (bvmul ((interpret v1) i) ((interpret v2) i)))]
    [(vec-sdiv v1 v2) (lambda (i) (bvsdiv ((interpret v1) i) ((interpret v2) i)))]
    [(vec-udiv v1 v2) (lambda (i) (bvudiv ((interpret v1) i) ((interpret v2) i)))]

    ;; Hexagon instructions
    [(halide.hexagon.packhi.vh vec) (lambda (i) (extract 15 8 ((interpret vec) i)))]
    [(halide.hexagon.add_mul.vh.vh.b acc v s) (lambda (i) (bvadd ((interpret acc) i) (bvmul ((interpret v) i) (cpp_cast (interpret s) 'int8 'int16))))]
    
    ;; Base case
    [_ p]))

(define (vec-len p)
  (match p
    ;; Constructors
    [(x32 sca) 32]
    [(x64 sca) 64]
    [(x128 sca) 128]
    [(ramp buf base stride len) len]

    [(slice_vectors vec base stride len) len]
    [(concat_vectors v1 v2) (+ (vec-len v1) (vec-len v2))]

    ;; Type Casts
    [(uint8x32 vec vtype) 32]
    [(uint16x32 vec vtype) 32]
    [(uint32x32 vec vtype) 32]
    [(int8x32 vec vtype) 32]
    [(int16x32 vec vtype) 32]
    [(int32x32 vec vtype) 32]
    [(uint8x64 vec vtype) 64]
    [(uint16x64 vec vtype) 64]
    [(uint32x64 vec vtype) 64]
    [(int8x64 vec vtype) 64]
    [(int16x64 vec vtype) 64]
    [(int32x64 vec vtype) 64]
    [(uint8x128 vec vtype) 128]
    [(uint16x128 vec vtype) 128]
    [(uint32x128 vec vtype) 128]
    [(int8x128 vec vtype) 128]
    [(int16x128 vec vtype) 128]
    [(int32x128 vec vtype) 128]

    ;; Operations
    [(vec-add v1 v2) (vec-len v1)]
    [(vec-sub v1 v2) (vec-len v1)]
    [(vec-mul v1 v2) (vec-len v1)]
    [(vec-sdiv v1 v2) (vec-len v1)]
    [(vec-udiv v1 v2) (vec-len v1)]

    ;; Hexagon instructions
    [(halide.hexagon.packhi.vh vec) (vec-len vec)]
    [(halide.hexagon.add_mul.vh.vh.b acc v s) (vec-len acc)]
    
    ;; Base case
    [_ (error "Don't know how to get vector length from:" p)]))

;; Model vector casts
(define (castvec val from to)
  (match from
    ['int8
     (match to
       ['int8 val]
       ['int16 (lambda (i) (cpp_cast (val i) 'int8 'int16))]
       ['int32 (lambda (i) (cpp_cast (val i) 'int8 'int32))]
       ['uint8 val]
       ['uint16 (lambda (i) (cpp_cast (val i) 'int8 'uint16))]
       ['uint32 (lambda (i) (cpp_cast (val i) 'int8 'uint32))])]
    ['uint8
     (match to
       ['int8 val]
       ['int16 (lambda (i) (cpp_cast (val i) 'uint8 'int16))]
       ['int32 (lambda (i) (cpp_cast (val i) 'uint8 'int32))]
       ['uint8 val]
       ['uint16 (lambda (i) (cpp_cast (val i) 'uint8 'uint16))]
       ['uint32 (lambda (i) (cpp_cast (val i) 'uint8 'uint32))])]
    ['int16
     (match to
       ['int8 (lambda (i) (cpp_cast (val i) 'int16 'int8))]
       ['uint8 (lambda (i) (cpp_cast (val i) 'int16 'uint8))]
       ['int16 val]
       ['uint16 val]
       ['int32 (lambda (i) (cpp_cast (val i) 'int16 'int32))]
       ['uint32 (lambda (i) (cpp_cast (val i) 'int16 'uint32))])]
    ['int32
     (match to
       ['int8 (lambda (i) (cpp_cast (val i) 'int32 'int8))]
       ['uint8 (lambda (i) (cpp_cast (val i) 'int32 'uint8))]
       ['int16 (lambda (i) (cpp_cast (val i) 'int32 'int16))]
       ['uint16 (lambda (i) (cpp_cast (val i) 'int32 'uint16))]
       ['int32 val]
       ['uint32 val])]))

(provide (except-out (all-defined-out) interpret) (rename-out [interpret interpret-halide]))