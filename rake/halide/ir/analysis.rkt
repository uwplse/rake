#lang rosette

(require rake/util)
(require rake/cpp/types)
(require rake/halide/ir/types)
(require rake/halide/ir/interpreter)

(require rosette/lib/match)

;; Extract buffer reads
(define (extract-buf-reads expr)
  (for/fold ([buff-reads '()]) ([i (num-elems-hal expr)]) (append buff-reads (list (extract-lane-buf-reads ((interpret-halide expr) i))))))
  
(define (extract-lane-buf-reads expr)
  (match expr
    [(int8_t v) (extract-lane-buf-reads v)]
    [(int16_t v) (extract-lane-buf-reads v)]
    [(int32_t v) (extract-lane-buf-reads v)]
    [(uint8_t v) (extract-lane-buf-reads v)]
    [(uint16_t v) (extract-lane-buf-reads v)]
    [(uint32_t v) (extract-lane-buf-reads v)]

    [(expression op operands ...)

     ;; Silly workaround -- ask rosette folks how to do this properly
     (define-symbolic hack (~> integer? (bitvector 16)))
     (define hack2 (hack 0))
     (define app (match hack2 [(expression op2 ops2 ...) op2]))
     
     (cond
       [(eq? op bvadd) (flatten (for/list ([operand operands]) (extract-lane-buf-reads operand)))]
       [(eq? op bvmul) (flatten (for/list ([operand operands]) (extract-lane-buf-reads operand)))]
       [(eq? op bvsdiv) (flatten (for/list ([operand operands]) (extract-lane-buf-reads operand)))]
       [(eq? op bvudiv) (flatten (for/list ([operand operands]) (extract-lane-buf-reads operand)))]
       [(eq? op bvashr) (flatten (for/list ([operand operands]) (extract-lane-buf-reads operand)))]
       [(eq? op bvneg) (flatten (for/list ([operand operands]) (extract-lane-buf-reads operand)))]
       [(eq? op extract) (flatten (for/list ([operand operands]) (extract-lane-buf-reads operand)))]
       [(eq? op zero-extend) (flatten (for/list ([operand operands]) (extract-lane-buf-reads operand)))]
       [(eq? op sign-extend) (flatten (for/list ([operand operands]) (extract-lane-buf-reads operand)))]
       [(eq? op app) (mk-typed-expr expr (var-type (list-ref operands 0)))]
       [else (error "NYI: extract buffer reads from" expr)])]
     
    [_ (list)]))

(define (cast-type vec toT)
  (define fromT (type ((interpret-halide vec) 0)))
  (match (cons fromT toT)
    [(cons 'int16 'uint8) 'down-cast]
    [(cons 'uint8 'int16) 'down-cast]
    [_ (error "NYI: infer cast type" fromT toT)]))

;; Extract the set of operators used in the code
(define (extract-live-ops expr)
  (match expr
    ;; Constructors
    [(x32 sca) (list)]
    [(x64 sca) (list)]
    [(x128 sca) (list)]
    [(x256 sca) (list)]
    [(ramp buf base stride len) (list)]

    [(slice_vectors vec base stride len) (append (list 'slice) (extract-live-ops vec))]
    [(concat_vectors v1 v2) (append (list 'concat) (extract-live-ops v1) (extract-live-ops v2))]

    ;; Type Casts
    [(uint8x32 vec) (append (list 'cast (cast-type vec 'uint8)) (extract-live-ops vec))]
    [(uint16x32 vec) (append (list 'cast (cast-type vec 'uint16)) (extract-live-ops vec))]
    [(uint32x32 vec) (append (list 'cast (cast-type vec 'uint32)) (extract-live-ops vec))]
    [(int8x32 vec) (append (list 'cast (cast-type vec 'int8)) (extract-live-ops vec))]
    [(int16x32 vec) (append (list 'cast (cast-type vec 'int16)) (extract-live-ops vec))]
    [(int32x32 vec) (append (list 'cast (cast-type vec 'int32)) (extract-live-ops vec))]
    [(uint8x64 vec) (append (list 'cast (cast-type vec 'uint8)) (extract-live-ops vec))]
    [(uint16x64 vec) (append (list 'cast (cast-type vec 'uint16)) (extract-live-ops vec))]
    [(uint32x64 vec) (append (list 'cast (cast-type vec 'uint32)) (extract-live-ops vec))]
    [(int8x64 vec) (append (list 'cast (cast-type vec 'int8)) (extract-live-ops vec))]
    [(int16x64 vec) (append (list 'cast (cast-type vec 'int16)) (extract-live-ops vec))]
    [(int32x64 vec) (append (list 'cast (cast-type vec 'int32)) (extract-live-ops vec))]
    [(uint8x128 vec) (append (list 'cast (cast-type vec 'uint8)) (extract-live-ops vec))]
    [(uint16x128 vec) (append (list 'cast (cast-type vec 'uint16)) (extract-live-ops vec))]
    [(uint32x128 vec) (append (list 'cast (cast-type vec 'uint32)) (extract-live-ops vec))]
    [(int8x128 vec) (append (list 'cast (cast-type vec 'int8)) (extract-live-ops vec))]
    [(int16x128 vec) (append (list 'cast (cast-type vec 'int16)) (extract-live-ops vec))]
    [(int32x128 vec) (append (list 'cast (cast-type vec 'int32)) (extract-live-ops vec))]
    [(uint8x256 vec) (append (list 'cast (cast-type vec 'uint8)) (extract-live-ops vec))]

    ;; Operations
    [(vec-add v1 v2) (append (list 'add) (extract-live-ops v1) (extract-live-ops v2))]
    [(vec-sub v1 v2) (append (list 'sub) (extract-live-ops v1) (extract-live-ops v2))]
    [(vec-div v1 v2) (if (broadcast? v2)
                         (append (list 'vec-sca-div) (extract-live-ops v1) (extract-live-ops v2))
                         (append (list 'vec-vec-div) (extract-live-ops v1) (extract-live-ops v2)))]
    [(vec-mul v1 v2) (if (or (broadcast? v1) (broadcast? v2))
                         (append (list 'vec-sca-mul) (extract-live-ops v1) (extract-live-ops v2))
                         (append (list 'vec-vec-mul) (extract-live-ops v1) (extract-live-ops v2)))]
    
    ;; Base case
    [_ (error "Don't know how to get live ops from:" expr)]))

;; Extract constants used with various operators
(define (extract-add-consts expr)
  (match expr
    ;; Constructors
    [(x32 sca) (list)]
    [(x64 sca) (list)]
    [(x128 sca) (list)]
    [(x256 sca) (list)]
    [(ramp buf base stride len) (list)]

    [(slice_vectors vec base stride len) (extract-add-consts vec)]
    [(concat_vectors v1 v2) (append (extract-add-consts v1) (extract-add-consts v2))]

    ;; Type Casts
    [(uint8x32 vec) (extract-add-consts vec)]
    [(uint16x32 vec) (extract-add-consts vec)]
    [(uint32x32 vec) (extract-add-consts vec)]
    [(int8x32 vec) (extract-add-consts vec)]
    [(int16x32 vec) (extract-add-consts vec)]
    [(int32x32 vec) (extract-add-consts vec)]
    [(uint8x64 vec) (extract-add-consts vec)]
    [(uint16x64 vec) (extract-add-consts vec)]
    [(uint32x64 vec) (extract-add-consts vec)]
    [(int8x64 vec) (extract-add-consts vec)]
    [(int16x64 vec) (extract-add-consts vec)]
    [(int32x64 vec) (extract-add-consts vec)]
    [(uint8x128 vec) (extract-add-consts vec)]
    [(uint16x128 vec) (extract-add-consts vec)]
    [(uint32x128 vec) (extract-add-consts vec)]
    [(int8x128 vec) (extract-add-consts vec)]
    [(int16x128 vec) (extract-add-consts vec)]
    [(int32x128 vec) (extract-add-consts vec)]
    [(uint8x256 vec) (extract-add-consts vec)]

    ;; Operations
    [(vec-add v1 v2) (append
                      (if (broadcast? v1) (extract-consts v1) (extract-add-consts v1))
                      (if (broadcast? v2) (extract-consts v2) (extract-add-consts v2)))]
    [(vec-sub v1 v2) (append (extract-add-consts v1) (extract-add-consts v2))]
    [(vec-mul v1 v2) (append (extract-add-consts v1) (extract-add-consts v2))]
    [(vec-div v1 v2) (append (extract-add-consts v1) (extract-add-consts v2))]
    
    ;; Base case
    [_ (error "Don't know how to extract consts from:" expr)]))

(define (extract-sub-consts expr)
  (match expr
    ;; Constructors
    [(x32 sca) (list)]
    [(x64 sca) (list)]
    [(x128 sca) (list)]
    [(x256 sca) (list)]
    [(ramp buf base stride len) (list)]

    [(slice_vectors vec base stride len) (extract-sub-consts vec)]
    [(concat_vectors v1 v2) (append (extract-sub-consts v1) (extract-sub-consts v2))]

    ;; Type Casts
    [(uint8x32 vec) (extract-sub-consts vec)]
    [(uint16x32 vec) (extract-sub-consts vec)]
    [(uint32x32 vec) (extract-sub-consts vec)]
    [(int8x32 vec) (extract-sub-consts vec)]
    [(int16x32 vec) (extract-sub-consts vec)]
    [(int32x32 vec) (extract-sub-consts vec)]
    [(uint8x64 vec) (extract-sub-consts vec)]
    [(uint16x64 vec) (extract-sub-consts vec)]
    [(uint32x64 vec) (extract-sub-consts vec)]
    [(int8x64 vec) (extract-sub-consts vec)]
    [(int16x64 vec) (extract-sub-consts vec)]
    [(int32x64 vec) (extract-sub-consts vec)]
    [(uint8x128 vec) (extract-sub-consts vec)]
    [(uint16x128 vec) (extract-sub-consts vec)]
    [(uint32x128 vec) (extract-sub-consts vec)]
    [(int8x128 vec) (extract-sub-consts vec)]
    [(int16x128 vec) (extract-sub-consts vec)]
    [(int32x128 vec) (extract-sub-consts vec)]
    [(uint8x256 vec) (extract-sub-consts vec)]

    ;; Operations
    [(vec-add v1 v2) (append (extract-sub-consts v1) (extract-sub-consts v2))]
    [(vec-sub v1 v2) (append
                      (if (broadcast? v1) (extract-consts v1) (extract-sub-consts v1))
                      (if (broadcast? v2) (extract-consts v2) (extract-sub-consts v2)))]
    [(vec-mul v1 v2) (append (extract-sub-consts v1) (extract-sub-consts v2))]
    [(vec-div v1 v2) (append (extract-sub-consts v1) (extract-sub-consts v2))]
    
    ;; Base case
    [_ (error "Don't know how to extract consts from:" expr)]))

(define (extract-mul-consts expr)
  (match expr
    ;; Constructors
    [(x32 sca) (list)]
    [(x64 sca) (list)]
    [(x128 sca) (list)]
    [(x256 sca) (list)]
    [(ramp buf base stride len) (list)]

    [(slice_vectors vec base stride len) (extract-mul-consts vec)]
    [(concat_vectors v1 v2) (append (extract-mul-consts v1) (extract-mul-consts v2))]

    ;; Type Casts
    [(uint8x32 vec) (extract-mul-consts vec)]
    [(uint16x32 vec) (extract-mul-consts vec)]
    [(uint32x32 vec) (extract-mul-consts vec)]
    [(int8x32 vec) (extract-mul-consts vec)]
    [(int16x32 vec) (extract-mul-consts vec)]
    [(int32x32 vec) (extract-mul-consts vec)]
    [(uint8x64 vec) (extract-mul-consts vec)]
    [(uint16x64 vec) (extract-mul-consts vec)]
    [(uint32x64 vec) (extract-mul-consts vec)]
    [(int8x64 vec) (extract-mul-consts vec)]
    [(int16x64 vec) (extract-mul-consts vec)]
    [(int32x64 vec) (extract-mul-consts vec)]
    [(uint8x128 vec) (extract-mul-consts vec)]
    [(uint16x128 vec) (extract-mul-consts vec)]
    [(uint32x128 vec) (extract-mul-consts vec)]
    [(int8x128 vec) (extract-mul-consts vec)]
    [(int16x128 vec) (extract-mul-consts vec)]
    [(int32x128 vec) (extract-mul-consts vec)]
    [(uint8x256 vec) (extract-mul-consts vec)]

    ;; Operations
    [(vec-add v1 v2) (append (extract-mul-consts v1) (extract-mul-consts v2))]
    [(vec-sub v1 v2) (append (extract-mul-consts v1) (extract-mul-consts v2))]
    [(vec-mul v1 v2) (append
                      (if (broadcast? v1) (extract-consts v1) (extract-mul-consts v1))
                      (if (broadcast? v2) (extract-consts v2) (extract-mul-consts v2)))]
    [(vec-div v1 v2) (append (extract-mul-consts v1) (extract-mul-consts v2))]
    
    ;; Base case
    [_ (error "Don't know how to extract consts from:" expr)]))

(define (extract-div-consts expr)
  (match expr
    ;; Constructors
    [(x32 sca) (list)]
    [(x64 sca) (list)]
    [(x128 sca) (list)]
    [(x256 sca) (list)]
    [(ramp buf base stride len) (list)]

    [(slice_vectors vec base stride len) (extract-div-consts vec)]
    [(concat_vectors v1 v2) (append (extract-div-consts v1) (extract-div-consts v2))]

    ;; Type Casts
    [(uint8x32 vec) (extract-div-consts vec)]
    [(uint16x32 vec) (extract-div-consts vec)]
    [(uint32x32 vec) (extract-div-consts vec)]
    [(int8x32 vec) (extract-div-consts vec)]
    [(int16x32 vec) (extract-div-consts vec)]
    [(int32x32 vec) (extract-div-consts vec)]
    [(uint8x64 vec) (extract-div-consts vec)]
    [(uint16x64 vec) (extract-div-consts vec)]
    [(uint32x64 vec) (extract-div-consts vec)]
    [(int8x64 vec) (extract-div-consts vec)]
    [(int16x64 vec) (extract-div-consts vec)]
    [(int32x64 vec) (extract-div-consts vec)]
    [(uint8x128 vec) (extract-div-consts vec)]
    [(uint16x128 vec) (extract-div-consts vec)]
    [(uint32x128 vec) (extract-div-consts vec)]
    [(int8x128 vec) (extract-div-consts vec)]
    [(int16x128 vec) (extract-div-consts vec)]
    [(int32x128 vec) (extract-div-consts vec)]
    [(uint8x256 vec) (extract-div-consts vec)]

    ;; Operations
    [(vec-add v1 v2) (append (extract-div-consts v1) (extract-div-consts v2))]
    [(vec-sub v1 v2) (append (extract-div-consts v1) (extract-div-consts v2))]
    [(vec-mul v1 v2) (append (extract-div-consts v1) (extract-div-consts v2))]
    [(vec-div v1 v2) (if (broadcast? v2) (extract-consts v2) (extract-div-consts v2))]
    
    ;; Base case
    [_ (error "Don't know how to extract consts from:" expr)]))

(define (broadcast? vec)
  (define v (strip-halide-casts vec))
  (match v
    [(x32 sca) #t]
    [(x64 sca) #t]
    [(x128 sca) #t]
    [(x256 sca) #t]
    [_ #f]))

(define (extract-consts vec)
  (define v (strip-halide-casts vec))
  (match v
    [(x32 sca) (list ((interpret-halide vec) 0))]
    [(x64 sca) (list ((interpret-halide vec) 0))]
    [(x128 sca) (list ((interpret-halide vec) 0))]
    [(x256 sca) (list ((interpret-halide vec) 0))]
    [_ (error "Don't know how to extract constant from:" v)]))

(define (strip-halide-casts expr)
  (match expr
    [(uint8x32 vec) (strip-halide-casts vec)]
    [(uint16x32 vec) (strip-halide-casts vec)]
    [(uint32x32 vec) (strip-halide-casts vec)]
    [(int8x32 vec) (strip-halide-casts vec)]
    [(int16x32 vec) (strip-halide-casts vec)]
    [(int32x32 vec) (strip-halide-casts vec)]
    [(uint8x64 vec) (strip-halide-casts vec)]
    [(uint16x64 vec) (strip-halide-casts vec)]
    [(uint32x64 vec) (strip-halide-casts vec)]
    [(int8x64 vec) (strip-halide-casts vec)]
    [(int16x64 vec) (strip-halide-casts vec)]
    [(int32x64 vec) (strip-halide-casts vec)]
    [(uint8x128 vec) (strip-halide-casts vec)]
    [(uint16x128 vec) (strip-halide-casts vec)]
    [(uint32x128 vec) (strip-halide-casts vec)]
    [(int8x128 vec) (strip-halide-casts vec)]
    [(int16x128 vec) (strip-halide-casts vec)]
    [(int32x128 vec) (strip-halide-casts vec)]
    [(uint8x256 vec) (strip-halide-casts vec)]
    [_ expr]))

(provide
 (rename-out
  [extract-buf-reads extract-buf-reads-hal]
  [extract-live-ops extract-live-ops-hal]
  [extract-add-consts extract-add-consts-hal]
  [extract-sub-consts extract-sub-consts-hal]
  [extract-mul-consts extract-mul-consts-hal]
  [extract-div-consts extract-div-consts-hal]))