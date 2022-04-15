#lang rosette

(require
  (only-in rosette/base/core/term @app)
  (only-in rosette/base/core/polymorphic ite)
  (only-in rosette/base/core/term @app)
  rosette/lib/match
  rosette/lib/destruct
  rake/cpp
  rake/halide
  rake/x86/ast/interpreter
  rake/x86/ast/types
)

(provide (rename-out [codegen x86:llvm-codegen]))

(define (codegen x86-expr out-file-path)
  (define out (open-output-file out-file-path #:exists 'replace))
  (pretty-write (compile x86-expr) out)
  (close-output-port out))

(define (compile x86-expr)
  (match x86-expr

    [(x86:vpbroadcastq imm64)
     (destruct (x86:interpret imm64)
       ;; TODO: there are no llvm intrinsics for these...
       [(int64_t _)  `(halide.ir.x4, (to-llvm-type x86-expr), `(list, (compile-scalar imm64)))]
       [(uint64_t _)  `(halide.ir.x4, (to-llvm-type x86-expr), `(list, (compile-scalar imm64)))]
       [_ (error (format "x86:vpbroadcastq variant not understood: ~a" x86-expr))])]

    [(x86:vpbroadcastd imm32)
     (destruct (x86:interpret imm32)
       ;; TODO: there are no llvm intrinsics for these...
       [(int32_t _)  `(halide.ir.x8, (to-llvm-type x86-expr), `(list, (compile-scalar imm32)))]
       [(uint32_t _)  `(halide.ir.x8, (to-llvm-type x86-expr), `(list, (compile-scalar imm32)))]
       [_ (error (format "x86:vpbroadcastd variant not understood: ~a" x86-expr))])]

    [(x86:vpbroadcastw imm16)
     (destruct (x86:interpret imm16)
       ;; TODO: there are no llvm intrinsics for these...
       [(int16_t _)  `(halide.ir.x16, (to-llvm-type x86-expr), `(list, (compile-scalar imm16)))]
       [(uint16_t _)  `(halide.ir.x16, (to-llvm-type x86-expr), `(list, (compile-scalar imm16)))]
       [_ (error (format "x86:vpbroadcastw variant not understood: ~a" x86-expr))])]

    [(x86:vpbroadcastb imm8)
     (destruct (x86:interpret imm8)
       ;; TODO: there are no llvm intrinsics for these...
       [(int8_t _)  `(halide.ir.x32, (to-llvm-type x86-expr), `(list, (compile-scalar imm8)))]
       [(uint8_t _)  `(halide.ir.x32, (to-llvm-type x86-expr), `(list, (compile-scalar imm8)))]
       [_ (error (format "x86:vpbroadcastb variant not understood: ~a" x86-expr))])]

    [(x86:vpbroadcastq_128 imm64)
     (destruct (x86:interpret imm64)
       ;; TODO: there are no llvm intrinsics for these...
       [(int64_t _)  `(halide.ir.x2, (to-llvm-type x86-expr), `(list, (compile-scalar imm64)))]
       [(uint64_t _)  `(halide.ir.x2, (to-llvm-type x86-expr), `(list, (compile-scalar imm64)))]
       [_ (error (format "x86:vpbroadcastq_128 variant not understood: ~a" x86-expr))])]

    [(x86:vpbroadcastd_128 imm32)
     (destruct (x86:interpret imm32)
       ;; TODO: there are no llvm intrinsics for these...
       [(int32_t _)  `(halide.ir.x4, (to-llvm-type x86-expr), `(list, (compile-scalar imm32)))]
       [(uint32_t _)  `(halide.ir.x4, (to-llvm-type x86-expr), `(list, (compile-scalar imm32)))]
       [_ (error (format "x86:vpbroadcastd_128 variant not understood: ~a" x86-expr))])]

    [(x86:vpbroadcastw_128 imm16)
     (destruct (x86:interpret imm16)
       ;; TODO: there are no llvm intrinsics for these...
       [(int16_t _)  `(halide.ir.x8, (to-llvm-type x86-expr), `(list, (compile-scalar imm16)))]
       [(uint16_t _)  `(halide.ir.x8, (to-llvm-type x86-expr), `(list, (compile-scalar imm16)))]
       [_ (error (format "x86:vpbroadcastw_128 variant not understood: ~a" x86-expr))])]

    [(x86:vpbroadcastb_128 imm8)
     (destruct (x86:interpret imm8)
       ;; TODO: there are no llvm intrinsics for these...
       [(int8_t _)  `(halide.ir.x16, (to-llvm-type x86-expr), `(list, (compile-scalar imm8)))]
       [(uint8_t _)  `(halide.ir.x16, (to-llvm-type x86-expr), `(list, (compile-scalar imm8)))]
       [_ (error (format "x86:vpbroadcastb_128 variant not understood: ~a" x86-expr))])]

    [(x86:vpmovzxbw_s a)
     (destruct (x86:interpret a)
       ;; TODO: there are no llvm intrinsics for these...
       [(x86:u8x16 _)  (generate-avx2 `pmovzxbw (to-llvm-type x86-expr) `(list ,(input-arg a)))]
       [_ (error (format "x86:vpmovzxbw_s variant not understood: ~a" x86-expr))])]

    [(x86:vpsllw a imm8)
     (destruct* ((x86:interpret a) (x86:interpret imm8))
       ;; TODO: there are no llvm intrinsics for these...
       [((x86:i16x16 _) (uint8_t _))  (generate-avx2 `pslli.w (to-llvm-type x86-expr) `(list ,(input-arg a) ,(compile-scalar imm8)))]
       [((x86:u16x16 _) (uint8_t _))  (generate-avx2 `pslli.w (to-llvm-type x86-expr) `(list ,(input-arg a) ,(compile-scalar imm8)))]
       [(_ _) (error (format "x86:vpsllw variant not understood: ~a" x86-expr))])]

    [(x86:vpaddw a b)
     (destruct* ((x86:interpret a) (x86:interpret b))
       ;; TODO: there are no llvm intrinsics for these...
       [((x86:i16x16 _) (x86:i16x16 _)) `(halide.ir.add, (to-llvm-type x86-expr), `(list ,(input-arg a) ,(input-arg b)))]
       [((x86:u16x16 _) (x86:u16x16 _)) `(halide.ir.add, (to-llvm-type x86-expr), `(list ,(input-arg a) ,(input-arg b)))]
       [(_ _) (error (format "x86:vpaddw variant not understood: ~a" x86-expr))])]

    [(x86:vpminub a b)
     (destruct* ((x86:interpret a) (x86:interpret b))
       [((x86:u8x32 _) (x86:u8x32 _)) (generate-avx2 `pminu.b (to-llvm-type x86-expr) `(list ,(input-arg a) ,(input-arg b)))]
       [(_ _) (error (format "x86:vpminub variant not understood: ~a" x86-expr))])]

    [(x86:vpmaxub a b)
     (destruct* ((x86:interpret a) (x86:interpret b))
       [((x86:u8x32 _) (x86:u8x32 _)) (generate-avx2 `pmaxu.b (to-llvm-type x86-expr) `(list ,(input-arg a) ,(input-arg b)))]
       [(_ _) (error (format "x86:vpmaxub variant not understood: ~a" x86-expr))])]

    ;;;;;;;;;;;;;;;;;;;;;;; SSE2 ;;;;;;;;;;;;;;;;;;;;;;;;

    [(x86:pminub a b)
     (destruct* ((x86:interpret a) (x86:interpret b))
       [((x86:u8x16 _) (x86:u8x16 _)) (generate-sse2 `pminu.b (to-llvm-type x86-expr) `(list ,(input-arg a) ,(input-arg b)))]
       [(_ _) (error (format "x86:pminub variant not understood: ~a" x86-expr))])]

    [(x86:pmaxub a b)
     (destruct* ((x86:interpret a) (x86:interpret b))
       [((x86:u8x16 _) (x86:u8x16 _)) (generate-sse2 `pmaxu.b (to-llvm-type x86-expr) `(list ,(input-arg a) ,(input-arg b)))]
       [(_ _) (error (format "x86:pmaxub variant not understood: ~a" x86-expr))])]

    ;;;;;;;;;;;;;;;;;;;;;;; Concatenate Tiles ;;;;;;;;;;;;;;;;;;;;;;;;

    [(x86:concat-tiles tiles)
     (define tile-cnt (length tiles))
     (define tile-elems (x86:num-elems (x86:interpret (list-ref tiles 0))))
     (define tile-elemT (x86:elem-type (x86:interpret (list-ref tiles 0))))
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

    ;;;;;;;;;;;;;;;;; Instructions for vector creation ;;;;;;;;;;;;;;;
    
    [(x86:ld buf loc align output-type)
     (generate-avx2
      `ld (to-llvm-type x86-expr)
      `(list
        (,t_i32 ,(buffer-data buf))
        (,t_i32 ,(string->sexp (compile-idx loc)))
        (,t_i32 ,(string->sexp (aligned-mod align)))
        (,t_i32 ,(string->sexp (aligned-rem align)))))]

    [(ramp base stride len)
     `(halide.ir.ramp, (to-llvm-type x86-expr)
      (list, (compile-scalar base), (compile-scalar stride), `(,t_i32 ,(compile-scalar len))))]

    [_ (string->sexp (format "~a" x86-expr))]))

(define (generate-avx2 instruction output-type inputs)
  `(,(instruction-helper-avx2 instruction) ,output-type ,inputs))

(define (generate-sse2 instruction output-type inputs)
  `(,(instruction-helper-sse2 instruction) ,output-type ,inputs))

(define (instruction-helper-sse2 instruction)
  (string->sexp (format "llvm.x86.sse2.~a" instruction)))

(define (instruction-helper-avx2 instruction)
  (string->sexp (format "llvm.x86.avx2.~a" instruction)))

(define (input-arg a)
  `(,(to-llvm-type a) ,(compile a)))

(define (string->sexp s)
  (read (open-input-string (format "~a" s))))

(define t_i32 `int32)

(define (to-llvm-type x86-expr)
  (match (x86:interpret x86-expr)
    [(int8_t v) (string->sexp "int8")]
    [(int16_t v) (string->sexp "int16")]
    [(int32_t v) (string->sexp "int32")]
    [(int64_t v) (string->sexp "int64")]
    [(uint8_t v) (string->sexp "uint8")]
    [(uint16_t v) (string->sexp "uint16")]
    [(uint32_t v) (string->sexp "uint32")]
    [(uint64_t v) (string->sexp "uint64")]
    [(x86:i8x32 data) (string->sexp "int8x32")]
    [(x86:u8x32 data) (string->sexp "uint8x32")]
    [(x86:i8x16 data) (string->sexp "int8x16")]
    [(x86:u8x16 data) (string->sexp "uint8x16")]
    [(x86:i16x16 data) (string->sexp "int16x16")]
    [(x86:u16x16 data) (string->sexp "uint16x16")]
    [(x86:i16x8 data) (string->sexp "int16x8")]
    [(x86:u16x8 data) (string->sexp "uint16x8")]
    [(x86:i32x8 data) (string->sexp "int32x8")]
    [(x86:u32x8 data) (string->sexp "uint32x8")]
    [(x86:i32x4 data) (string->sexp "int32x4")]
    [(x86:u32x4 data) (string->sexp "uint32x4")]
    [(x86:i64x2 data) (string->sexp "int64x2")]
    [(x86:u64x2 data) (string->sexp "uint64x2")]
    [(x86:i64x4 data) (string->sexp "int64x4")]
    [(x86:u64x4 data) (string->sexp "uint64x4")]
    [_ (error (format "implement the rest of the x86 types: ~a" x86-expr))]))

(define (compile-idx idx)
  (cond
    [(concrete? idx) (x86:interpret idx)]
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
      
      [_ (error "x86:llvm-codegen: compile-scalar ~a" s)]))
  
  (string->sexp res))
