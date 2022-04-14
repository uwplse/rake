#lang rosette

(require
  (only-in rosette/base/core/term @app)
  (only-in rosette/base/core/polymorphic ite)
  (only-in rosette/base/core/term @app)
  rosette/lib/match
  rosette/lib/destruct
  rake/cpp
  rake/halide
  rake/arm/ast/interpreter
  rake/arm/ast/types
)

(provide (rename-out [codegen arm:llvm-codegen]))

(define (codegen arm-expr out-file-path)
  (define out (open-output-file out-file-path #:exists 'replace))
  (pretty-write (compile arm-expr) out)
  (close-output-port out))

(define (compile arm-expr)
  (match arm-expr

    ;;;;;;;;;;;;;;;;;;;;;;; Concatenate Tiles ;;;;;;;;;;;;;;;;;;;;;;;;

    [(arm:concat-tiles tiles)
     (define tile-cnt (length tiles))
     (define tile-elems (arm:num-elems (arm:interpret (list-ref tiles 0))))
     (define tile-elemT (arm:elem-type (arm:interpret (list-ref tiles 0))))
     (define output-type (format "~ax~a" tile-elemT (* tile-cnt tile-elems)))
     
     (define (tiles->compiled-str tiles)
       (cond
         [(eq? (length tiles) 1) (input-arg (first tiles))]
         [else
          (define curr-tile (input-arg (first tiles)))
          (format "~a ~a" curr-tile (tiles->compiled-str (rest tiles)))]))
     
     (match (length tiles)
       [1 (compile (first tiles))]
       [_ `(halide.concat_vectors, (string->sexp output-type), (string->sexp (format "(list ~a)" (tiles->compiled-str tiles))))])]


    [(arm:dup Vn)
     (destruct (arm:interpret Vn)
       ;; TODO: there are no llvm intrinsics for these...
       [(uint8_t _)  `(halide.ir.x8, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(int8_t _)   `(halide.ir.x8, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(uint16_t _) `(halide.ir.x4, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(int16_t _)  `(halide.ir.x4, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       ;; TODO: there are 2S and 4S variants of this instruction
       [(uint32_t _) `(halide.ir.x2, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(int32_t _)  `(halide.ir.x2, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       ;; Yes, the instruction type is 2D for 64-bit
       [(uint64_t _) `(halide.ir.x2, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(int64_t _)  `(halide.ir.x2, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [_ (error (format "arm:dup variant not understood: ~a" arm-expr))])]

    ;; TODO: this doesn't exist anymore??
    [(arm:dupw Vn)
     (destruct (arm:interpret Vn)
       ;; TODO: there are no llvm intrinsics for these...
       [(uint8_t _)  `(halide.ir.x16, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(int8_t _)   `(halide.ir.x16, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(uint16_t _) `(halide.ir.x8, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(int16_t _)  `(halide.ir.x8, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(uint32_t _) `(halide.ir.x4, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(int32_t _)  `(halide.ir.x4, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(uint64_t _) `(halide.ir.x2, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(int64_t _)  `(halide.ir.x2, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [_ (error (format "dupw variant not understood: ~a" arm-expr))])]

    ;;;;;;;;;;;;;;;;; Instructions for vector creation ;;;;;;;;;;;;;;;
    
    [(arm:ld buf loc align output-type)
     (generate
      `ld (to-llvm-type arm-expr)
      `(list
        (,t_i32 ,(buffer-data buf))
        (,t_i32 ,(string->sexp (compile-idx loc)))
        (,t_i32 ,(string->sexp (aligned-mod align)))
        (,t_i32 ,(string->sexp (aligned-rem align)))))]

    [(ramp base stride len)
     `(halide.ir.ramp, (to-llvm-type arm-expr)
      (list, (compile-scalar base), (compile-scalar stride), (compile-scalar len)))]

    [(arm:smax Vn Vm)
     (destruct* ((arm:interpret Vn) (arm:interpret Vm))
       [((arm:i8x8 v0) (arm:i8x8 v1)) (generate `smax.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i8x16 v0) (arm:i8x16 v1)) (generate `smax.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i16x4 v0) (arm:i16x4 v1)) (generate `smax.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i16x8 v0) (arm:i16x8 v1)) (generate `smax.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i32x2 v0) (arm:i32x2 v1)) (generate `smax.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i32x4 v0) (arm:i32x4 v1)) (generate `smax.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [(_ _) (error (format "arm:smax variant not understood: ~a\n~a\n~a\n\n" arm-expr (arm:interpret Vn) (arm:interpret Vm)))])]

    [(arm:smin Vn Vm)
     (destruct* ((arm:interpret Vn) (arm:interpret Vm))
       [((arm:i8x8 v0) (arm:i8x8 v1)) (generate `smin.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i8x16 v0) (arm:i8x16 v1)) (generate `smin.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i16x4 v0) (arm:i16x4 v1)) (generate `smin.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i16x8 v0) (arm:i16x8 v1)) (generate `smin.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i32x2 v0) (arm:i32x2 v1)) (generate `smin.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i32x4 v0) (arm:i32x4 v1)) (generate `smin.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [(_ _) (error (format "arm:smin variant not understood: ~a" arm-expr))])]

    [(arm:umax Vn Vm)
     (destruct* ((arm:interpret Vn) (arm:interpret Vm))
       [((arm:u8x8 v0) (arm:u8x8 v1)) (generate `umax.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u8x16 v0) (arm:u8x16 v1)) (generate `umax.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u16x4 v0) (arm:u16x4 v1)) (generate `umax.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u16x8 v0) (arm:u16x8 v1)) (generate `umax.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u32x2 v0) (arm:u32x2 v1)) (generate `umax.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u32x4 v0) (arm:u32x4 v1)) (generate `umax.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [(_ _) (error (format "arm:umax variant not understood: ~a" arm-expr))])]

    [(arm:umin Vn Vm)
     (destruct* ((arm:interpret Vn) (arm:interpret Vm))
       [((arm:u8x8 v0) (arm:u8x8 v1)) (generate `umin.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u8x16 v0) (arm:u8x16 v1)) (generate `umin.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u16x4 v0) (arm:u16x4 v1)) (generate `umin.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u16x8 v0) (arm:u16x8 v1)) (generate `umin.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u32x2 v0) (arm:u32x2 v1)) (generate `umin.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u32x4 v0) (arm:u32x4 v1)) (generate `umin.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [(_ _) (error (format "arm:umin variant not understood: ~a" arm-expr))])]

    [_ (string->sexp (format "~a" arm-expr))]))

(define (generate instruction output-type inputs)
  `(,(instruction-helper instruction) ,output-type ,inputs))

(define (instruction-helper instruction)
  (string->sexp (format "llvm.aarch64.neon.~a" instruction)))

(define (input-arg a)
  `(,(to-llvm-type a) ,(compile a)))

(define (string->sexp s)
  (read (open-input-string (format "~a" s))))

(define t_i32 `int32)

(define (to-llvm-type arm-expr)
  (match (arm:interpret arm-expr)
    [(int8_t v) (string->sexp "int8")]
    [(int16_t v) (string->sexp "int16")]
    [(int32_t v) (string->sexp "int32")]
    [(int64_t v) (string->sexp "int64")]
    [(uint8_t v) (string->sexp "uint8")]
    [(uint16_t v) (string->sexp "uint16")]
    [(uint32_t v) (string->sexp "uint32")]
    [(uint64_t v) (string->sexp "uint64")]
    [(arm:i8x8 data) (string->sexp "int8x8")]
    [(arm:u8x8 data) (string->sexp "uint8x8")]
    [(arm:i8x16 data) (string->sexp "int8x16")]
    [(arm:u8x16 data) (string->sexp "uint8x16")]
    [(arm:i16x4 data) (string->sexp "int16x4")]
    [(arm:u16x4 data) (string->sexp "uint16x4")]
    [(arm:i16x8 data) (string->sexp "int16x8")]
    [(arm:u16x8 data) (string->sexp "uint16x8")]
    [(arm:i32x2 data) (string->sexp "int32x2")]
    [(arm:u32x2 data) (string->sexp "uint32x2")]
    [(arm:i32x4 data) (string->sexp "int32x4")]
    [(arm:u32x4 data) (string->sexp "uint32x4")]
    [(arm:i64x2 data) (string->sexp "int64x2")]
    [(arm:u64x2 data) (string->sexp "uint64x2")]
    [_ (error (format "implement the rest of the arm types: ~a" arm-expr))]))

(define (compile-idx idx)
  (cond
    [(concrete? idx) (arm:interpret idx)]
    [else
     (match idx
       [(sca-add a b) (format "(+ ~a ~a)" (compile-idx a) (compile-idx b))]
       [(sca-sub a b) (format "(- ~a ~a)" (compile-idx a) (compile-idx b))]
       [(sca-mul a b) (format "(* ~a ~a)" (compile-idx a) (compile-idx b))]
       [(sca-div a b) (format "(/ ~a ~a)" (compile-idx a) (compile-idx b))]
       [(sca-mod a b) (format "(% ~a ~a)" (compile-idx a) (compile-idx b))]
       [(sca-min a b) (format "(max ~a ~a)" (compile-idx a) (compile-idx b))]
       [(sca-max a b) (format "(max ~a ~a)" (compile-idx a) (compile-idx b))]
       [(var-lookup var val) (format "~a" var)]
    
       ;; Special handing for ite
       [(expression (== ite) child ...)
        (match (list-ref child 0)
          [(expression op2 child2 ...)
           (cond
             [(eq? op2 <=)
              (if (eq? (format "~a" (list-ref child2 0)) (format "~a" (list-ref child 1)))
                  (format "(min ~a ~a)" (compile-idx (list-ref child 1)) (compile-idx (list-ref child 2)))
                  (format "(max ~a ~a)" (compile-idx (list-ref child 1)) (compile-idx (list-ref child 2))))]
             [else idx])]
          [_ idx])]

       ;; Special handing for subtracts
       [(expression (== -) child ...)
        (match (length child)
          [1 (format "(~a 0 ~a)" - (compile-idx (list-ref child 0)))]
          [2 (format "(~a ~a ~a)" - (compile-idx (list-ref child 0)) (compile-idx (list-ref child 1)))])]

       ;; Special handing for quotient
       [(expression (== quotient) child ...)
        (format "(/ ~a ~a)" (compile-idx (list-ref child 0)) (compile-idx (list-ref child 1)))]
    
       ;; Base case for everything else
       [(expression op child ...)
        (match (length child)
          [1 (format "(~a ~a)" op (compile-idx (list-ref child 0)))]
          [2 (format "(~a ~a ~a)" op (compile-idx (list-ref child 0)) (compile-idx (list-ref child 1)))])]

       [_ idx])]))

(define (ufinitize val bitwidth) 
  (let* ([mask (arithmetic-shift -1 bitwidth)]
         [masked (bitwise-and (bitwise-not mask) (exact-truncate val))])
    masked))

(define (bv->str val)
  (match val
    [(bv v (bitvector bw))
     (let*-values ([(q r) (quotient/remainder bw 4)]
                   [(p b mw) (if (zero? r) (values "x" 16 q) (values "b" 2 bw))])
       (format "~a" (~r (ufinitize v bw) #:base b #:pad-string "0" #:min-width mw)))]))
;; -----

(define (compile-scalar s)
  (define res
    (match s
      [(int8_t val) (format "(int8 ~a)" (compile-scalar val))]
      [(uint8_t val) (format "(uint8 ~a)" (compile-scalar val))]
      [(int16_t val) (format "(int16 ~a)" (compile-scalar val))]
      [(uint16_t val) (format "(uint16 ~a)" (compile-scalar val))]
      [(int32_t val) (format "(int32 ~a)" (compile-scalar val))]
      [(uint32_t val) (format "(uint32 ~a)" (compile-scalar val))]

      [(sca-cast val type) (format "(~a (~ax1 ~a (list ~a)))" type type type (compile-scalar val))]

      [(sca-add a b) (format "(~a (+ ~a ~a))" (to-llvm-type s) (compile-scalar a) (compile-scalar b))]
      [(sca-sub a b) (format "(~a (- ~a ~a))" (to-llvm-type s) (compile-scalar a) (compile-scalar b))]
      [(sca-mul a b) (format "(~a (* ~a ~a))" (to-llvm-type s) (compile-scalar a) (compile-scalar b))]
      [(sca-min a b) (format "(~a (min ~a ~a))" (to-llvm-type s) (compile-scalar a) (compile-scalar b))]
      [(sca-max a b) (format "(~a (max ~a ~a))" (to-llvm-type s) (compile-scalar a) (compile-scalar b))]

      [(load-sca buffer idx) (format "(~a (halide.load.scalar ~a (list (int32 ~a) (int32 ~a))))"
                                     (to-llvm-type s) (to-llvm-type s) (buffer-data buffer) (compile-idx idx))]
      
      [(constant id type) (format "~a" (syntax->datum id))]
      [(bv _ _) (format "0x~a" (bv->str s))]
      [(? number? n) (format "~a" n)]
      [(expression op child ...)
       (match (length child)
         [1 (format "(~a ~a)" op (compile-scalar (list-ref child 0)))]
         [2 (format "(~a ~a ~a)" op (compile-scalar (list-ref child 0)) (compile-scalar (list-ref child 1)))])]
      
      [_ (error "arm:llvm-codegen: compile-scalar ~a" s)]))
  
  (string->sexp res))
