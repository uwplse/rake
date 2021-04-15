#lang rosette

(require rake/hvx/ast/types)
(require rake/halide/ir/analysis)
(require rake/halide/ir/types)
(require rake/util)

(require rosette/lib/match)

;; Utility function: Generates new algebraic variables
(define id -1)
(define (get-new-var)
  (set! id (add1 id 1))
  id)

;; Hash-table to map all buffer reads to the algebraic variable that represents it
(define mem-map (make-hash))

;; Utility function: Generates algebraic vars for each read in a gather node (see line 20)
(define (create-mem-vars key value)
  (when (not (hash-has-key? mem-map value))
    (hash-set! mem-map value (get-new-var))))

(define (encode-data p)
  (define buff-reads (extract-buf-reads-hal p))
  (set! buff-reads (set->list (list->set (flatten buff-reads))))
  (for ([buff-read buff-reads])
    (define-symbolic* x integer?)
    (hash-set! mem-map buff-read x))
  mem-map)

(define (encode-spec p)
  (define VEC_LANES (num-elems-hal p))
  (for/list ([lane VEC_LANES])
    ((encode p) lane)))

(struct cast-op (val type) #:transparent)
(struct add-op (v1 v2) #:transparent)
(struct sub-op (v1 v2) #:transparent)
(struct mul-op (v1 v2) #:transparent)
(struct div-op (v1 v2) #:transparent)
(struct min-op (v1 v2) #:transparent)
(struct max-op (v1 v2) #:transparent)
(struct if-op (v1 v2) #:transparent)
(struct lt-op (v1 v2) #:transparent)
(struct le-op (v1 v2) #:transparent)

(struct ??swizzle-gen-vecpair ())
(struct ??swizzle-gen-vec ())

(define (encode p)
  (match p
    ;; Constructors
    [(x32 sca) (lambda (i) (encode sca))]
    [(x64 sca) (lambda (i) (encode sca))]
    [(x128 sca) (lambda (i) (encode sca))]
    [(x256 sca) (lambda (i) (encode sca))]
    ;[(ramp buf base stride len) (lambda (i) (hash-ref mem-map (get (encode buf) (+ (encode base) (* i (encode stride))))))]

    [(slice_vectors vec base stride len) (lambda (i) ((encode vec) (+ (encode base) (* i (encode stride)))))]
    [(concat_vectors v1 v2) (lambda (i) (if (< i (num-elems-hal v1)) ((encode v1) i) ((encode v2) (- i (num-elems-hal v1)))))]

    ;; Type Casts
    [(uint8x32 vec) (lambda (i) (cast-op ((encode vec) i) 'uint8))]
    [(uint8x64 vec) (lambda (i) (cast-op ((encode vec) i) 'uint8))]
    [(uint8x128 vec) (lambda (i) (cast-op ((encode vec) i) 'uint8))]
    [(uint8x256 vec) (lambda (i) (cast-op ((encode vec) i) 'uint8))]

    [(int8x32 vec) (lambda (i) (cast-op ((encode vec) i) 'int8))]
    [(int8x64 vec) (lambda (i) (cast-op ((encode vec) i) 'int8))]
    [(int8x128 vec) (lambda (i) (cast-op ((encode vec) i) 'int8))]

    [(uint16x32 vec) (lambda (i) (cast-op ((encode vec) i) 'uint16))]
    [(uint16x64 vec) (lambda (i) (cast-op ((encode vec) i) 'uint16))]
    [(uint16x128 vec) (lambda (i) (cast-op ((encode vec) i) 'uint16))]

    [(int16x32 vec) (lambda (i) (cast-op ((encode vec) i) 'int16))]
    [(int16x64 vec) (lambda (i) (cast-op ((encode vec) i) 'int16))]
    [(int16x128 vec) (lambda (i) (cast-op ((encode vec) i) 'int16))]
    
    [(uint32x32 vec) (lambda (i) (cast-op ((encode vec) i) 'uint32))]
    [(uint32x64 vec) (lambda (i) (cast-op ((encode vec) i) 'uint32))]
    [(uint32x128 vec) (lambda (i) (cast-op ((encode vec) i) 'uint32))]

    [(int32x32 vec) (lambda (i) (cast-op ((encode vec) i) 'int32))]
    [(int32x64 vec) (lambda (i) (cast-op ((encode vec) i) 'int32))]
    [(int32x128 vec) (lambda (i) (cast-op ((encode vec) i) 'int32))]

    ;; Operations
    [(vec-add v1 v2) (lambda (i) (add-op ((encode v1) i) ((encode v2) i)))]
    [(vec-sub v1 v2) (lambda (i) (sub-op ((encode v1) i) ((encode v2) i)))]
    [(vec-mul v1 v2) (lambda (i) (mul-op ((encode v1) i) ((encode v2) i)))]
    [(vec-div v1 v2) (lambda (i) (div-op ((encode v1) i) ((encode v2) i)))]
    [(vec-min v1 v2) (lambda (i) (min-op ((encode v1) i) ((encode v2) i)))]
    [(vec-max v1 v2) (lambda (i) (max-op ((encode v1) i) ((encode v2) i)))]
    [(vec-if v1 v2 v3) (lambda (i) (if-op ((encode v1) i) ((encode v2) i) ((encode v3) i)))]
    [(vec-lt v1 v2) (lambda (i) (lt-op ((encode v1) i) ((encode v2) i)))]
    [(vec-le v1 v2) (lambda (i) (le-op ((encode v1) i) ((encode v2) i)))]    

    ;; Base case
    [_ p]))
    
(provide (except-out (all-defined-out) encode encode-data) (rename-out [encode-spec swizzleflow-encode-spec] [encode-data swizzleflow-encode-data]))