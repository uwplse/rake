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
  rake/arm/ast/types)

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
    
    ;;;;;;;;;;;;;;;;; Instructions for vector creation ;;;;;;;;;;;;;;;
    
    [(arm:ld buf loc align output-type)
     (generate
      `ld (to-llvm-type arm-expr)
      `(list
        (,t_i32 ,(buffer-data buf))
        (,t_i32 ,(string->sexp (compile-idx loc)))
        (,t_i32 ,(string->sexp (aligned-mod align)))
        (,t_i32 ,(string->sexp (aligned-rem align)))))]

    [(arm:umax Vn Vm)
     (destruct* ((arm:interpret Vn) (arm:interpret Vm))
       [((arm:u8x8 v0) (arm:u8x8 v1)) (generate `umax.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
      )]
    
    [(arm:umin Vn Vm)
     (destruct* ((arm:interpret Vn) (arm:interpret Vm))
       [((arm:u8x8 v0) (arm:u8x8 v1)) (generate `umin.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
      )]
    
    [(arm:dup Vn)
     (destruct (arm:interpret Vn)
       ;; TODO: there are no llvm halide.ir.x128
       [(uint8_t _) `(halide.ir.x18, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
      )]

    ; [(vsplat Rt)
    ;  (destruct (hvx:interpret Rt)
    ;    [(uint8_t _) `(halide.ir.x128, (to-llvm-type hvx-expr), `(list, (compile-scalar Rt)))]
    ;    [(int16_t _) `(halide.ir.x64, (to-llvm-type hvx-expr), `(list, (compile-scalar Rt)))]
    ;    [(int8_t _) (generate `lvsplatw (to-llvm-type hvx-expr) `(list (,t_i32 ,(string->sexp (format "(halide.hexagon.dup4.b int32 (list ~a))" (compile-scalar Rt))))))]
    ;    [(uint8_t _) (generate `lvsplatw (to-llvm-type hvx-expr) `(list (,t_i32 ,(string->sexp (format "(halide.hexagon.dup4.b int32 (list ~a))" (compile-scalar Rt))))))]
    ;    [(int16_t _) (generate `lvsplatw (to-llvm-type hvx-expr) `(list (,t_i32 ,(string->sexp (format "(halide.hexagon.dup2.h int32 (list ~a))" (compile-scalar Rt))))))]
    ;    [(uint16_t _) (generate `lvsplatw (to-llvm-type hvx-expr) `(list (,t_i32 ,(string->sexp (format "(halide.hexagon.dup2.h int32 (list ~a))" (compile-scalar Rt))))))]
    ;    [(int32_t _) (generate `lvsplatw (to-llvm-type hvx-expr) `(list ,(compile-scalar Rt)))]
    ;    [(uint32_t _) (generate `lvsplatw (to-llvm-type hvx-expr) `(list ,(compile-scalar Rt)))])]

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
(define t_i16 `int16)
(define t_i8 `int8)
(define t_16xi32 `int32x16)
(define t_32xi32 `int32x32)
(define t_64xi32 `int32x64)
(define t_128xi1 `int1x128)

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
    [_ (error "implement the rest of the arm types")]))

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
