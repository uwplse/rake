#lang rosette

(require
  (only-in rosette/base/core/term @app)
  (only-in rosette/base/core/polymorphic ite)
  (only-in rosette/base/core/term @app)
  rosette/lib/match
  rosette/lib/destruct
  rake/cpp
  rake/halide
  rake/hvx/interpreter
  rake/hvx/ast/types)

(provide (rename-out [codegen llvm-codegen]))

(define (codegen hvx-expr out-file-path)
  (define out (open-output-file out-file-path #:exists 'replace))
  (pretty-write (compile hvx-expr) out)
  (close-output-port out))

(define (compile hvx-expr)
  ; (display (format "Compiling: ~a\n" (pretty-format hvx-expr)))
  (match hvx-expr

    ;;;;;;;;;;;;;;;;;;;;;;; Concatenate Tiles ;;;;;;;;;;;;;;;;;;;;;;;;
    
    [(concat-tiles tiles)
     (define tile-cnt (length tiles))
     (define tile-elems (hvx:num-elems (hvx:interpret (list-ref tiles 0))))
     (define tile-elemT (hvx:elem-type (hvx:interpret (list-ref tiles 0))))
     (define output-type (format "~ax~a" tile-elemT (* tile-cnt tile-elems)))
     
     ;(set! tiles (flatten (for/list ([tile tiles]) (if (hvx:vec-pair? (hvx:interpret tile)) (list (lo tile) (hi tile)) tile))))

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

    [(vread buf loc align)
     (generate
      `vread (to-llvm-type hvx-expr)
      `(list
        (,t_i32 ,(buffer-data buf))
        (,t_i32 ,(string->sexp (compile-idx loc)))
        (,t_i32 ,(string->sexp (aligned-mod align)))
        (,t_i32 ,(string->sexp (aligned-rem align)))))]

    [(vreadp buf loc align)
     (generate
      `vreadp (to-llvm-type hvx-expr)
      `(list
        (,t_i32 ,(buffer-data buf))
        (,t_i32 ,(string->sexp (compile-idx loc)))
        (,t_i32 ,(string->sexp (aligned-mod align)))
        (,t_i32 ,(string->sexp (aligned-rem align)))))]

    [(vsplat Rt)
     (destruct (hvx:interpret Rt)
       [(uint8_t _) `(halide.ir.x128, (to-llvm-type hvx-expr), `(list, (compile-scalar Rt)))]
       [(int16_t _) `(halide.ir.x64, (to-llvm-type hvx-expr), `(list, (compile-scalar Rt)))]
       [(int8_t _) (generate `lvsplatw (to-llvm-type hvx-expr) `(list (,t_i32 ,(string->sexp (format "(halide.hexagon.dup4.b int32 (list ~a))" (compile-scalar Rt))))))]
       [(uint8_t _) (generate `lvsplatw (to-llvm-type hvx-expr) `(list (,t_i32 ,(string->sexp (format "(halide.hexagon.dup4.b int32 (list ~a))" (compile-scalar Rt))))))]
       [(int16_t _) (generate `lvsplatw (to-llvm-type hvx-expr) `(list (,t_i32 ,(string->sexp (format "(halide.hexagon.dup2.h int32 (list ~a))" (compile-scalar Rt))))))]
       [(uint16_t _) (generate `lvsplatw (to-llvm-type hvx-expr) `(list (,t_i32 ,(string->sexp (format "(halide.hexagon.dup2.h int32 (list ~a))" (compile-scalar Rt))))))]
       [(int32_t _) (generate `lvsplatw (to-llvm-type hvx-expr) `(list ,(compile-scalar Rt)))]
       [(uint32_t _) (generate `lvsplatw (to-llvm-type hvx-expr) `(list ,(compile-scalar Rt)))])]

    [(ramp base stride len)
     `(halide.ir.ramp, (to-llvm-type hvx-expr)
      `(list, (compile-scalar base), (compile-scalar stride), (compile-scalar len)))]

    ;;;;;;;;;;;;;;;; Instructions for data movement ;;;;;;;;;;;;;;;;

    [(lo Vuu) (generate `lo (to-llvm-type hvx-expr) `(list ,(input-arg Vuu)))]

    [(hi Vuu) (generate `hi (to-llvm-type hvx-expr) `(list ,(input-arg Vuu)))]

    [(vcombine Vu Vv)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (generate `vcombine (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u8x128 v0) (u8x128 v1)) (generate `vcombine (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i16x64 v0) (i16x64 v1)) (generate `vcombine (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u16x64 v0) (u16x64 v1)) (generate `vcombine (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i32x32 v0) (i32x32 v1)) (generate `vcombine (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u32x32 v0) (u32x32 v1)) (generate `vcombine (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

    [(valign Vu Vv Rt)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (generate (if (> Rt 7) `valignb `valignbi) (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,Rt)))]
       [((u8x128 v0) (u8x128 v1)) (generate (if (> Rt 7) `valignb `valignbi) (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,Rt)))]
       [((i16x64 v0) (i16x64 v1)) (generate (if (> (* 2 Rt) 7) `valignb `valignbi) (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 2))))]
       [((u16x64 v0) (u16x64 v1)) (generate (if (> (* 2 Rt) 7) `valignb `valignbi) (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 2))))]
       [((i32x32 v0) (i32x32 v1)) (generate (if (> (* 4 Rt) 7) `valignb `valignbi) (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 4))))]
       [((u32x32 v0) (u32x32 v1)) (generate (if (> (* 4 Rt) 7) `valignb `valignbi) (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 4))))])]
    
    [(vshuff Vu)
     (destruct (hvx:interpret Vu)
       [(i8x128 _) (generate `vshuffb (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))]
       [(u8x128 _) (generate `vshuffb (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))]
       [(i16x64 _) (generate `vshuffh (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))]
       [(u16x64 _) (generate `vshuffh (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))])]
    
    [(vshuffe Vu Vv)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (generate `vshuffeb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u8x128 v0) (u8x128 v1)) (generate `vshuffeb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i16x64 v0) (i16x64 v1)) (generate `vshufeh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u16x64 v0) (u16x64 v1)) (generate `vshufeh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
    
    [(vshuffo Vu Vv)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (generate `vshuffob (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u8x128 v0) (u8x128 v1)) (generate `vshuffob (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i16x64 v0) (i16x64 v1)) (generate `vshufoh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u16x64 v0) (u16x64 v1)) (generate `vshufoh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
    
    [(vdeal Vu)
     (define eType (hvx:elem-type (hvx:interpret Vu)));  eType)
     (cond
       ;; We can do slightly nicer codegen when subexpr is a vsat
       [(and (vsat? Vu) (cpp:signed-type? (hvx:elem-type (hvx:interpret (vsat-Vu Vu)))))
        (cpp:signed-type? eType) (compile (vpack (vsat-Vu Vu) (vsat-Vv Vu) (cpp:signed-type? (hvx:elem-type (hvx:interpret Vu)))))]
       [else
        (destruct (hvx:interpret Vu)
          [(u8x128 v0) (generate `vdealb (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))]
          [(i8x128 v0) (generate `vdealb (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))]
          [(u16x64 v0) (generate `vdealh (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))]
          [(i16x64 v0) (generate `vdealh (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))])])]

    [(vpacke Vu Vv)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (generate `vpackeb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u8x128 v0) (u8x128 v1)) (generate `vpackeb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i16x64 v0) (i16x64 v1)) (generate `vpackeh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u16x64 v0) (u16x64 v1)) (generate `vpackeh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
    
    [(vpacko Vu Vv)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (generate `vpackob (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u8x128 v0) (u8x128 v1)) (generate `vpackob (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i16x64 v0) (i16x64 v1)) (generate `vpackoh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u16x64 v0) (u16x64 v1)) (generate `vpackoh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
    
    [(vinterleave Vuu)
     (destruct (hvx:interpret Vuu)
       [(i8x128x2 v1 v0) (generate `vshuffvdd (to-llvm-type hvx-expr) `(list ,(input-arg (hi Vuu)) ,(input-arg (lo Vuu)) (,t_i32 ,-1)))]
       [(u8x128x2 v1 v0) (generate `vshuffvdd (to-llvm-type hvx-expr) `(list ,(input-arg (hi Vuu)) ,(input-arg (lo Vuu)) (,t_i32 ,-1)))]
       [(i16x64x2 v1 v0) (generate `vshuffvdd (to-llvm-type hvx-expr) `(list ,(input-arg (hi Vuu)) ,(input-arg (lo Vuu)) (,t_i32 ,-2)))]
       [(u16x64x2 v1 v0) (generate `vshuffvdd (to-llvm-type hvx-expr) `(list ,(input-arg (hi Vuu)) ,(input-arg (lo Vuu)) (,t_i32 ,-2)))]
       [(i32x32x2 v1 v0) (generate `vshuffvdd (to-llvm-type hvx-expr) `(list ,(input-arg (hi Vuu)) ,(input-arg (lo Vuu)) (,t_i32 ,-4)))]
       [(u32x32x2 v1 v0) (generate `vshuffvdd (to-llvm-type hvx-expr) `(list ,(input-arg (hi Vuu)) ,(input-arg (lo Vuu)) (,t_i32 ,-4)))])]

    [(vinterleave2 Vu Vv)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((i8x128 v1) (i8x128 v0)) (generate `vshuffvdd (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,-1)))]
       [((u8x128 v1) (i8x128 v0)) (generate `vshuffvdd (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,-1)))]
       [((i16x64 v1) (i16x64 v0)) (generate `vshuffvdd (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,-2)))]
       [((u16x64 v1) (u16x64 v0)) (generate `vshuffvdd (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,-2)))]
       [((i32x32 v1) (i32x32 v0)) (generate `vshuffvdd (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,-4)))]
       [((u32x32 v1) (u32x32 v0)) (generate `vshuffvdd (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,-4)))])]

    [(vinterleave4 Vuu Vvv Rt)
     (destruct* ((hvx:interpret Vuu) (hvx:interpret Vvv))
       [((i8x128x2 v1 v0) (i8x128x2 v3 v2))
        (define lo-intrlv (generate `vshuffvdd (to-llvm-type Vvv) `(list ,(input-arg (lo (vinterleave Vvv))) ,(input-arg (lo (vinterleave Vuu))) (,t_i32 ,-1))))
        (define hi-intrlv (generate `vshuffvdd (to-llvm-type Vvv) `(list ,(input-arg (hi (vinterleave Vvv))) ,(input-arg (hi (vinterleave Vuu))) (,t_i32 ,-1))))
        (cond
          [(eq? Rt 0) (generate `lo (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , lo-intrlv)))]
          [(eq? Rt 1) (generate `hi (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , lo-intrlv)))]
          [(eq? Rt 2) (generate `lo (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , hi-intrlv)))]
          [(eq? Rt 3) (generate `hi (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , hi-intrlv)))])]
       [((u8x128x2 v1 v0) (u8x128x2 v3 v2))
        (define lo-intrlv (generate `vshuffvdd (to-llvm-type Vvv) `(list ,(input-arg (lo (vinterleave Vvv))) ,(input-arg (lo (vinterleave Vuu))) (,t_i32 ,-1))))
        (define hi-intrlv (generate `vshuffvdd (to-llvm-type Vvv) `(list ,(input-arg (hi (vinterleave Vvv))) ,(input-arg (hi (vinterleave Vuu))) (,t_i32 ,-1))))
        (cond
          [(eq? Rt 0) (generate `lo (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , lo-intrlv)))]
          [(eq? Rt 1) (generate `hi (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , lo-intrlv)))]
          [(eq? Rt 2) (generate `lo (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , hi-intrlv)))]
          [(eq? Rt 3) (generate `hi (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , hi-intrlv)))])]
       [((i16x64x2 v1 v0) (i16x64x2 v3 v2))
        (define lo-intrlv (generate `vshuffvdd (to-llvm-type Vvv) `(list ,(input-arg (lo (vinterleave Vvv))) ,(input-arg (lo (vinterleave Vuu))) (,t_i32 ,-2))))
        (define hi-intrlv (generate `vshuffvdd (to-llvm-type Vvv) `(list ,(input-arg (hi (vinterleave Vvv))) ,(input-arg (hi (vinterleave Vuu))) (,t_i32 ,-2))))
        (cond
          [(eq? Rt 0) (generate `lo (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , lo-intrlv)))]
          [(eq? Rt 1) (generate `hi (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , lo-intrlv)))]
          [(eq? Rt 2) (generate `lo (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , hi-intrlv)))]
          [(eq? Rt 3) (generate `hi (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , hi-intrlv)))])]
       [((u16x64x2 v1 v0) (u16x64x2 v3 v2))
        (define lo-intrlv (generate `vshuffvdd (to-llvm-type Vvv) `(list ,(input-arg (lo (vinterleave Vvv))) ,(input-arg (lo (vinterleave Vuu))) (,t_i32 ,-2))))
        (define hi-intrlv (generate `vshuffvdd (to-llvm-type Vvv) `(list ,(input-arg (hi (vinterleave Vvv))) ,(input-arg (hi (vinterleave Vuu))) (,t_i32 ,-2))))
        (cond
          [(eq? Rt 0) (generate `lo (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , lo-intrlv)))]
          [(eq? Rt 1) (generate `hi (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , lo-intrlv)))]
          [(eq? Rt 2) (generate `lo (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , hi-intrlv)))]
          [(eq? Rt 3) (generate `hi (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , hi-intrlv)))])]
       [((i32x32x2 v1 v0) (i32x32x2 v3 v2))
        (define lo-intrlv (generate `vshuffvdd (to-llvm-type Vvv) `(list ,(input-arg (lo (vinterleave Vvv))) ,(input-arg (lo (vinterleave Vuu))) (,t_i32 ,-4))))
        (define hi-intrlv (generate `vshuffvdd (to-llvm-type Vvv) `(list ,(input-arg (hi (vinterleave Vvv))) ,(input-arg (hi (vinterleave Vuu))) (,t_i32 ,-4))))
        (cond
          [(eq? Rt 0) (generate `lo (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , lo-intrlv)))]
          [(eq? Rt 1) (generate `hi (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , lo-intrlv)))]
          [(eq? Rt 2) (generate `lo (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , hi-intrlv)))]
          [(eq? Rt 3) (generate `hi (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , hi-intrlv)))])]
       [((u32x32x2 v1 v0) (u32x32x2 v3 v2))
         (define lo-intrlv (generate `vshuffvdd (to-llvm-type Vvv) `(list ,(input-arg (lo (vinterleave Vvv))) ,(input-arg (lo (vinterleave Vuu))) (,t_i32 ,-4))))
         (define hi-intrlv (generate `vshuffvdd (to-llvm-type Vvv) `(list ,(input-arg (hi (vinterleave Vvv))) ,(input-arg (hi (vinterleave Vuu))) (,t_i32 ,-4))))
         (cond
           [(eq? Rt 0) (generate `lo (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , lo-intrlv)))]
           [(eq? Rt 1) (generate `hi (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , lo-intrlv)))]
           [(eq? Rt 2) (generate `lo (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , hi-intrlv)))]
           [(eq? Rt 3) (generate `hi (to-llvm-type hvx-expr) `(list (,(to-llvm-type Vvv) , hi-intrlv)))])])]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Addition ;;;;;;;;;;;;;;;;;;;;;;;;;;;

    [(vadd Vu Vv sat?)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       ;; Signed types
       [((i8x128 lhs) (i8x128 rhs))
        (cond
          [sat? (generate `vaddbsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vaddb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((i16x64 lhs) (i16x64 rhs))
        (cond
          [sat? (generate `vaddhsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vaddh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((i32x32 lhs) (i32x32 rhs))
        (cond
          [sat? (generate `vaddwsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vaddw (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

       ;; Unsigned types
       [((u8x128 lhs) (i8x128 rhs))
        (cond
          [sat? (generate `vaddububb.sat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vaddb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((u8x128 lhs) (u8x128 rhs))
        (cond
          [sat? (generate `vaddubsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vaddb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((u16x64 lhs) (u16x64 rhs))
        (cond
          [sat? (generate `vadduhsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vaddh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((u32x32 lhs) (u32x32 rhs))
        (cond
          [sat? (generate `vadduwsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vaddw (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

       ;; Unsigned pair types
       [((i8x128x2 lhs-v0 lhs-v1) (i8x128x2 rhs-v0 rhs-v1))
        (cond
          [sat? (generate `vaddbsat.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vaddb.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((i16x64x2 lhs-v0 lhs-v1) (i16x64x2 rhs-v0 rhs-v1))
        (cond
          [sat? (generate `vaddhsat.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vaddh.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((i32x32x2 lhs-v0 lhs-v1) (i32x32x2 rhs-v0 rhs-v1))
        (cond
          [sat? (generate `vaddwsat.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vaddw.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

       ;; Unsigned pair types
       [((u8x128x2 lhs-v0 lhs-v1) (u8x128x2 rhs-v0 rhs-v1))
        (cond
          [sat? (generate `vaddubsat.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vaddb.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((u16x64x2 lhs-v0 lhs-v1) (u16x64x2 rhs-v0 rhs-v1))
        (cond
          [sat? (generate `vadduhsat.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vaddh.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((u32x32x2 lhs-v0 lhs-v1) (u32x32x2 rhs-v0 rhs-v1))
        (cond
          [sat? (generate `vadduwsat.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vaddw.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])])]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Subtraction ;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;; Widening
    [(vsub-w Vu Vv)
     (match (list (hvx:interpret Vu) (hvx:interpret Vv))
       [(list (u8x128 v0) (u8x128 v1)) (generate `vsububh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (i16x64 v0) (i16x64 v1)) (generate `vsubhw (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (u16x64 v0) (u16x64 v1)) (generate `vsubuhw (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

    [(vsub Vu Vv sat?)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       ;; Signed types
       [((i8x128 lhs) (i8x128 rhs))
        (cond
          [sat? (generate `vsubbsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vsubb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((i16x64 lhs) (i16x64 rhs))
        (cond
          [sat? (generate `vsubhsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vsubh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((i32x32 lhs) (i32x32 rhs))
        (cond
          [sat? (generate `vsubwsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vsubw (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

       ;; Unsigned types
       [((u8x128 lhs) (i8x128 rhs))
        (cond
          [sat? (generate `vsubububb.sat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vsubb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((u8x128 lhs) (u8x128 rhs))
        (cond
          [sat? (generate `vsububsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vsubb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((u16x64 lhs) (u16x64 rhs))
        (cond
          [sat? (generate `vsubuhsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vsubh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((u32x32 lhs) (u32x32 rhs))
        (cond
          [sat? (generate `vsubuwsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vsubw (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

       ;; Unsigned pair types
       [((i8x128x2 lhs-v0 lhs-v1) (i8x128x2 rhs-v0 rhs-v1))
        (cond
          [sat? (generate `vsubbsat.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vsubb.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((i16x64x2 lhs-v0 lhs-v1) (i16x64x2 rhs-v0 rhs-v1))
        (cond
          [sat? (generate `vsubhsat.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vsubh.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((i32x32x2 lhs-v0 lhs-v1) (i32x32x2 rhs-v0 rhs-v1))
        (cond
          [sat? (generate `vsubwsat.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vsubw.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

       ;; Unsigned pair types
       [((u8x128x2 lhs-v0 lhs-v1) (u8x128x2 rhs-v0 rhs-v1))
        (cond
          [sat? (generate `vsububsat.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vsubb.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((u16x64x2 lhs-v0 lhs-v1) (u16x64x2 rhs-v0 rhs-v1))
        (cond
          [sat? (generate `vsubuhsat.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vsubh.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((u32x32x2 lhs-v0 lhs-v1) (u32x32x2 rhs-v0 rhs-v1))
        (cond
          [sat? (generate `vsubuwsat.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vsubw.dv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])])]
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;; Multiplication ;;;;;;;;;;;;;;;;;;;;;;;;

    ;; Vector scalar multiplication (non-widening)
    [(vmpyi Vu Rt)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Rt))
       [((i16x64 v0) (int8_t v1)) (generate `vmpyihb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.b Rt)))))]
       [((i32x32 v0) (int8_t v1)) (generate `vmpyiwb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.b Rt)))))]
       [((i32x32 v0) (uint8_t v1)) (generate `vmpyiwub (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.ub Rt)))))]
       [((i32x32 v0) (int16_t v1)) (generate `vmpyiwh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.h Rt)))))])]

    [(vmpyi-acc Vd Vu Rt)
     (define iRt (hvx:interpret Rt))
     (define one (cpp:eval (cpp:cast (int8_t (bv 1 8)) (cpp:type iRt))))
     (define minus_one (cpp:eval (cpp:cast (int8_t (bv -1 8)) (cpp:type iRt))))
     (define zero (cpp:eval (cpp:cast (int8_t (bv 0 8)) (cpp:type iRt))))
     (cond
       ;; If we are multiplying with 1, emit an add instead
       [(and (concrete? iRt) (eq? (cpp:eval iRt) one))
        (compile (vadd Vd Vu #f))]
       ;; If we are multiplying with -11, emit a sub instead
       [(and (concrete? iRt) (eq? (cpp:eval iRt) minus_one))
        (compile (vsub Vd Vu #f))]
       ;; If we are multiplying with a power of two, emit a shift left instead
       [(and (concrete? iRt) (eq? (bvand (cpp:eval iRt) (bvsub (cpp:eval iRt) one)) zero)) 
        (compile (vasl-acc Vd Vu (log-2 iRt)))]
       [else
        (destruct* ((hvx:interpret Vu) (hvx:interpret Rt))
          [((i16x64 v0) (int8_t v1)) (generate `vmpyihb.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.b Rt)))))]
          [((i32x32 v0) (int8_t v1)) (generate `vmpyiwb.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.b Rt)))))]
          [((i32x32 v0) (uint8_t v1)) (generate `vmpyiwub.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.ub Rt)))))]
          [((i32x32 v0) (int16_t v1)) (generate `vmpyiwh.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.h Rt)))))])])]

    [(vasl-acc Vd Vu Rt)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vu) (hvx:interpret Rt))
       [((i16x64 v0) (i16x64 v1) (int8_t r)) (generate `vaslh.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(compile-scalar r))))]
       [((i32x32 v0) (i32x32 v1) (int8_t r)) (generate `vaslw.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(compile-scalar r))))])]
 
    ;; Vector-scalar multiplication (widening)
    [(vmpy Vu Rt)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Rt))
       [((u8x128 lhs) (int8_t v)) (generate `vmpybus (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.b Rt)))))]
       [((u8x128 lhs) (uint8_t v)) (generate `vmpyub (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.ub Rt)))))]
       [((u16x64 lhs) (uint16_t v)) (generate `vmpyuh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.uh Rt)))))]
       [((i16x64 lhs) (int16_t v)) (generate `vmpyh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.h Rt)))))])]
    
    [(vmpy-acc Vdd Vu Rt)
     (destruct* ((hvx:interpret Vdd) (hvx:interpret Vu) (hvx:interpret Rt))
       [((i16x64x2 acc-v0 acc-v1) (u8x128 lhs) (int8_t v))
        (generate `vmpybus.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vdd) ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.b Rt)))))]
       [((u16x64x2 acc-v0 acc-v1) (u8x128 lhs) (uint8_t v))
        (generate `vmpyub.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vdd) ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.ub Rt)))))]
       [((u32x32x2 acc-v0 acc-v1) (u16x64 lhs) (uint16_t v))
        (generate `vmpyuh.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vdd) ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.uh Rt)))))]
       [((i32x32x2 acc-v0 acc-v1) (i16x64 lhs) (int16_t v))
        (generate `vmpyhsat.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vdd) ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.h Rt)))))])]

    ;; Vector-vector multiplication (widening)
    [(vmpy-2 Vu Vv)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (generate `vmpybv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u8x128 v0) (i8x128 v1)) (generate `vmpybusv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u8x128 v0) (u8x128 v1)) (generate `vmpyubv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u16x64 v0) (u16x64 v1)) (generate `vmpyuhv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i16x64 v0) (i16x64 v1)) (generate `vmpyhv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i16x64 v0) (u16x64 v1)) (generate `vmpyhus (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

    ;; 32x32 Fractional Multiply
    [(vmpy-frac Vu Vv rnd?)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
      [((i32x32 v0) (i32x32 v1))
       (generate
        `vmpyowh.rnd.sacc
        (to-llvm-type hvx-expr)
        `(list
          ,`(,(to-llvm-type hvx-expr) ,(generate `vmpyewuh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv))))
          ,(input-arg Vu)
          ,(input-arg Vv)))])]

    ;; Multiply even half words with scalar-words
    [(vmpyie Vu Rt)
     (define w (hvx:interpret Rt))
     (destruct (hvx:interpret Vu)
      [(i16x64 v0) (generate `vmpyiewuh (to-llvm-type hvx-expr) `(list ,(input-arg (vsplat Rt)) ,(input-arg Vu)))]
      [(u16x64 v0) (generate `vmpyiewuh (to-llvm-type hvx-expr) `(list ,(input-arg (vsplat Rt)) ,(input-arg Vu)))])]

    ;; Multiply odd half words with scalar-words
    [(vmpyio Vu Rt)
     (define w (hvx:interpret Rt))
     (destruct (hvx:interpret Vu)
      [(i16x64 v0) (generate `vmpyiowh (to-llvm-type hvx-expr) `(list ,(input-arg (vsplat Rt)) ,(input-arg Vu)))]
      [(u16x64 v0) (generate `vmpyiowh (to-llvm-type hvx-expr) `(list ,(input-arg (vsplat Rt)) ,(input-arg Vu)))])]

    ;; 16x16 doubling saturating multiply optional rounding
    [(vmpy-hh Vu Rt rnd?)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Rt))
      [((i16x64 v0) (int16_t v1))
       (if rnd?
           (generate `vmpyhsrs (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.h Rt)))))
           (generate `vmpyhss (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (Rt.h Rt))))))])]
    
    ;;;;;;;;;;;;;;;;;;;;;;; Fused Multiply Adds ;;;;;;;;;;;;;;;;;;;;;;
    
    [(vdmpy Vu Rt)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Rt))
       [((u8x128 data) (Rt2.b w1 w2)) (generate `vdmpybus (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar Rt))))]
       [((i16x64 data) (Rt2.b w1 w2)) (generate `vdmpyhb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar Rt))))]
       [((i16x64 data) (Rt2.h w1 w2)) (generate `vdmpyhsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar Rt))))]
       [((i16x64 data) (Rt2.uh w1 w2)) (generate `vdmpyhsusat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar Rt))))])]

    [(vmpa Vuu Rt)
     (destruct* ((hvx:interpret Vuu) (hvx:interpret Rt))
       [((u8x128x2 v0 v1) (Rt2.b w1 w2))
        (generate `vmpabus (to-llvm-type hvx-expr) `(list ,(input-arg Vuu) (,t_i32 ,(compile-scalar Rt))))]
       [((u8x128x2 v0 v1) (Rt2.ub w1 w2))
        (generate `vmpabuu (to-llvm-type hvx-expr) `(list ,(input-arg Vuu) (,t_i32 ,(compile-scalar Rt))))]
       [((u16x64x2 v0 v1) (Rt2.b w1 w2))
        (generate `vmpauhb (to-llvm-type hvx-expr) `(list ,(input-arg Vuu) (,t_i32 ,(compile-scalar Rt))))]
       [((i16x64x2 v0 v1) (Rt2.b w1 w2))
        (generate `vmpahb (to-llvm-type hvx-expr) `(list ,(input-arg Vuu) (,t_i32 ,(compile-scalar Rt))))])]
    
    [(vmpa-acc Vdd Vuu Rt)
     (destruct* ((hvx:interpret Vdd) (hvx:interpret Vuu) (hvx:interpret Rt))
       [((i16x64x2 v0 v1) (u8x128x2 v2 v3) (Rt2.b w1 w2))
        (generate `vmpabus.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(compile-scalar Rt))))]
       [((i16x64x2 v0 v1) (u8x128x2 v2 v3) (Rt2.ub w1 w2))
        (generate `vmpabuu.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(compile-scalar Rt))))]
       [((i32x32x2 v0 v1) (u16x64x2 v2 v3) (Rt2.b w1 w2))
        (generate `vmpauhb.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(compile-scalar Rt))))]
       [((i32x32x2 v0 v1) (i16x64x2 v2 v3) (Rt2.b w1 w2))
        (generate `vmpahb.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(compile-scalar Rt))))])]

    [(vtmpy Vuu Rt)
     (destruct* ((hvx:interpret Vuu) (hvx:interpret Rt))
       [((i8x128x2 v0 v1) (Rt2.b w1 w2)) (generate `vtmpyb (to-llvm-type hvx-expr) `(list ,(input-arg Vuu) (,t_i32 ,(compile-scalar Rt))))]
       [((u8x128x2 v0 v1) (Rt2.b w1 w2)) (generate `vtmpybus (to-llvm-type hvx-expr) `(list ,(input-arg Vuu) (,t_i32 ,(compile-scalar Rt))))]
       [((i16x64x2 v0 v1) (Rt2.b w1 w2)) (generate `vtmpyhb (to-llvm-type hvx-expr) `(list ,(input-arg Vuu) (,t_i32 ,(compile-scalar Rt))))])]
    
    [(vtmpy-acc Vdd Vuu Rt)
     (destruct* ((hvx:interpret Vuu) (hvx:interpret Rt))
       [((i8x128x2 v0 v1) (Rt2.b w1 w2)) (generate `vtmpyb.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(compile-scalar Rt))))]
       [((u8x128x2 v0 v1) (Rt2.b w1 w2)) (generate `vtmpybus.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(compile-scalar Rt))))]
       [((i16x64x2 v0 v1) (Rt2.b w1 w2)) (generate `vtmpyhb.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(compile-scalar Rt))))])]

    [(vrmpy Vu Rt)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Rt))
       [((u8x128 v0) (Rt4.b w1 w2 w3 w4)) (generate `vrmpybus (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar Rt))))]
       [((u8x128 v0) (Rt4.ub w1 w2 w3 w4)) (generate `vrmpyub (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar Rt))))])]

    [(vrmpy-acc Vd Vu Rt)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Rt))
       [((u8x128 v0) (Rt4.b w1 w2 w3 w4)) (generate `vrmpybus.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(compile-scalar Rt))))]
       [((u8x128 v0) (Rt4.ub w1 w2 w3 w4)) (generate `vrmpyub.acc (to-llvm-type hvx-expr) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(compile-scalar Rt))))])]

    [(vrmpy-2 Vu Vv)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((u8x128 v0) (u8x128 v1)) (generate `vrmpyubv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i8x128 v0) (i8x128 v1)) (generate `vrmpybv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u8x128 v0) (i8x128 v1)) (generate `vrmpybusv (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

    [(vrmpy-acc-2 Vd Vu Vv) (compile (vadd Vd (vrmpy-2 Vu Vv) #f))]
    
    ;;;;;;;;;;;;;;;;;;;;;;;; Shifts & Rounding ;;;;;;;;;;;;;;;;;;;;;;;

    [(vsat Vu Vv)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((i16x64 v0) (i16x64 v1)) (generate `vsathub (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u16x64 v0) (u16x64 v1)) (generate `vsathub (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i32x32 v0) (i32x32 v1)) (generate `vsatwh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u32x32 v0) (u32x32 v1)) (generate `vsatuwuh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
    
    [(vpack Vu Vv signed?)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((i16x64 _) (i16x64 _))
        (if signed?
            (generate `vpackhb.sat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))
            (generate `vpackhub.sat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv))))]
       [((u16x64 _) (u16x64 _))
        (if signed?
            (generate `vpackhb.sat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))
            (generate `vpackhub.sat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv))))]
       [((i32x32 _) (i32x32 _))
        (if signed?
            (generate `vpackwh.sat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))
            (generate `vpackwuh.sat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv))))])]

    [(vround Vu Vv signed?)
     (destruct* ((hvx:interpret Vv) (hvx:interpret Vu))
       [((i16x64 v0) (i16x64 v1))
        (cond
          [signed? (generate `vroundhb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vroundhub (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((u16x64 v0) (u16x64 v1))
        (generate `vrounduhub (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i32x32 v0) (i32x32 v1))
        (cond
          [signed? (generate `vroundwh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
          [else (generate `vroundwuh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
       [((u32x32 v0) (u32x32 v1))
        (generate `vrounduwuh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

    [(vrsr Vu Vv) `(halide.ir.rounding_shift_right, (to-llvm-type hvx-expr), `(list ,(input-arg Vu) ,(input-arg Vv)))]

    [(vasr Vu Rt)
     (destruct (hvx:interpret Vu)
       [(i16x64 v0) (generate `vasrh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (cpp:eval (hvx:interpret Rt))))))]
       [(u16x64 v0) (generate `vasrh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (cpp:eval (hvx:interpret Rt))))))]
       [(i32x32 v0) (generate `vasrw (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (cpp:eval (hvx:interpret Rt))))))]
       [(u32x32 v0) (generate `vasrw (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (cpp:eval (hvx:interpret Rt))))))])]
    
    [(vlsr Vu Rt)
     (destruct (hvx:interpret Vu)
       [(u8x128 v0) (generate `vlsrb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (cpp:eval (hvx:interpret Rt))))))]
       [(u16x64 v0) (generate `vlsrh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (cpp:eval (hvx:interpret Rt))))))]
       [(u32x32 v0) (generate `vlsrw (to-llvm-type hvx-expr) `(list ,(input-arg Vu) (,t_i32 ,(compile-scalar (cpp:eval (hvx:interpret Rt))))))])]
    
    [(vshuffo-n Vu Vv signed?)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((i16x64 v0) (i16x64 v1)) (generate `vshufob (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u16x64 v0) (u16x64 v1)) (generate `vshufob (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i32x32 v0) (i32x32 v1)) (generate `vshufoh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u32x32 v0) (u32x32 v1)) (generate `vshufoh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

    [(vpacko-n Vu Vv signed?)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((i16x64 v0) (i16x64 v1)) (generate `vpackob (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u16x64 v0) (u16x64 v1)) (generate `vpackob (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i32x32 v0) (i32x32 v1)) (generate `vpackoh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u32x32 v0) (u32x32 v1)) (generate `vpackoh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

    [(vasr-n Vu Vv Rt round? sat? unsigned?)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv) (hvx:interpret Rt))
       [((i16x64 v0) (i16x64 v1) (int8_t n))
        (cond
          [(and round? unsigned?)
           (generate `vasrhubrndsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) ,(compile-scalar (int32x1 Rt))))]
          [round?
           (generate `vasrhrndsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) ,(compile-scalar (int32x1 Rt))))]
          [unsigned?
           (generate `vasrhubsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) ,(compile-scalar (int32x1 Rt))))]
          [else
           (generate `vasrhsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) ,(compile-scalar (int32x1 Rt))))])]
       [((u16x64 v0) (u16x64 v1) (int8_t n))
        (cond
          [round?
           (generate `vasruhubrndsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) ,(compile-scalar (int32x1 Rt))))]
          [else
           (generate `vasruhubsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) ,(compile-scalar (int32x1 Rt))))])]
       [((i32x32 v0) (i32x32 v1) (int8_t n))
        (cond
          [(and (not round?) unsigned?)
           (generate `vasrwubsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) ,(compile-scalar (int32x1 Rt))))]
          [(and round? unsigned?)
           (generate `vasrwubrndsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) ,(compile-scalar (int32x1 Rt))))]
          [(and (not round?) sat? (not unsigned?))
           (generate `vasrwhsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) ,(compile-scalar (int32x1 Rt))))]
          [(and (not round?) (not sat?) (not unsigned?))
           (generate `vasrw (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) ,(compile-scalar (int32x1 Rt))))]
          [(and round? (not unsigned?))
           (generate `vasrwhrndsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) ,(compile-scalar (int32x1 Rt))))])]
       [((u32x32 v0) (u32x32 v1) (int8_t n))
        (cond
          [round?
           (generate `vasruwubrndsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) ,(compile-scalar (int32x1 Rt))))]
          [else
           (generate `vasruwubsat (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv) ,(compile-scalar (int32x1 Rt))))])])]
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;; Min / Max ;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    [(vmax Vu Vv)
     (define res-type (to-llvm-type hvx-expr))
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (generate `vmaxb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u8x128 v0) (u8x128 v1)) (generate `vmaxub (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i16x64 v0) (i16x64 v1)) (generate `vmaxh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u16x64 v0) (u16x64 v1)) (generate `vmaxuh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i32x32 v0) (i32x32 v1)) (generate `vmaxw (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

    [(vmin Vu Vv)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((i8x128 v0) (i8x128 v1)) (generate `vminb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u8x128 v0) (u8x128 v1)) (generate `vminub (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i16x64 v0) (i16x64 v1)) (generate `vminh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u16x64 v0) (u16x64 v1)) (generate `vminuh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i32x32 v0) (i32x32 v1)) (generate `vminw (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;; Type Casts ;;;;;;;;;;;;;;;;;;;;;;;;;;;

    [(reinterpret Vu) (compile Vu)]

    [(vzxt Vu)
     (destruct (hvx:interpret Vu)
       [(u8x128 v0) (generate `vzb (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))]
       [(u16x64 v0) (generate `vzh (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))])]
    
    [(vsxt Vu)
     (destruct (hvx:interpret Vu)
       [(i8x128 v0) (generate `vsb (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))]
       [(i16x64 v0) (generate `vsh (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))])]
    
    [(vunpack Vu)
     (destruct (hvx:interpret Vu)
      [(i8x128 v0) (generate `vunpackb (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))]
      [(u8x128 v0) (generate `vunpackub (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))]
      [(i16x64 v0) (generate `vunpackh (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))]
      [(u16x64 v0) (generate `vunpackuh (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))])]

    [(vunpack Vu)
     (destruct (hvx:interpret Vu)
      [(i8x128 v0) (generate `vunpackb (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))]
      [(u8x128 v0) (generate `vunpackub (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))]
      [(i16x64 v0) (generate `vunpackh (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))]
      [(u16x64 v0) (generate `vunpackuh (to-llvm-type hvx-expr) `(list ,(input-arg Vu)))])]

     [(vpacke-n Vu Vv signed?)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((i16x64 v0) (i16x64 v1)) (generate `vpackeb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u16x64 v0) (u16x64 v1)) (generate `vpackeb (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i32x32 v0) (i32x32 v1)) (generate `vpackeh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u32x32 v0) (u32x32 v1)) (generate `vpackeh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;; Absolute Difference ;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    [(vabsdiff Vu Vv)
     (destruct* ((hvx:interpret Vu) (hvx:interpret Vv))
       [((u8x128 v0) (u8x128 v1)) (generate `vabsdiffub (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i16x64 v0) (i16x64 v1)) (generate `vabsdiffh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((u16x64 v0) (u16x64 v1)) (generate `vabsdiffuh (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [((i32x32 v0) (i32x32 v1)) (generate `vabsdiffw (to-llvm-type hvx-expr) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
    
    [_ (string->sexp (format "~a" hvx-expr))]))

(define (generate instruction output-type inputs)
  `(,(instruction-helper instruction) ,output-type ,inputs))

(define (instruction-helper instruction)
  (string->sexp (format "llvm.hexagon.V6.~a.128B" instruction)))

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

(define (to-llvm-type hvx-expr)
  (match (hvx:interpret hvx-expr)
    [(int8_t v) (string->sexp "int8")]
    [(int16_t v) (string->sexp "int16")]
    [(int32_t v) (string->sexp "int32")]
    [(int64_t v) (string->sexp "int64")]
    [(uint8_t v) (string->sexp "uint8")]
    [(uint16_t v) (string->sexp "uint16")]
    [(uint32_t v) (string->sexp "uint32")]
    [(uint64_t v) (string->sexp "uint64")]
    [(i8x128 data) (string->sexp "int8x128")]
    [(u8x128 data) (string->sexp "uint8x128")]
    [(i16x64 data) (string->sexp "int16x64")]
    [(u16x64 data) (string->sexp "uint16x64")]
    [(i32x32 data) (string->sexp "int32x32")]
    [(u32x32 data) (string->sexp "uint32x32")]
    [(i8x128x2 data-v0 data-v1) (string->sexp "int8x256")]
    [(u8x128x2 data-v0 data-v1) (string->sexp "uint8x256")]
    [(i16x64x2 data-v0 data-v1) (string->sexp "int16x128")]
    [(u16x64x2 data-v0 data-v1) (string->sexp "uint16x128")]
    [(i32x32x2 data-v0 data-v1) (string->sexp "int32x64")]
    [(u32x32x2 data-v0 data-v1) (string->sexp "uint32x64")]))

;; Borrowed from Rosette
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

(define (compile-scalar Rt)
  (define res
    (match Rt
      [(Rt.b v0)
       (cond
         [(concrete? Rt)
          (define val (hvx:interpret v0))
          (format "0x~a~a~a~a"
                  (bv->str (cpp:eval val))
                  (bv->str (cpp:eval val))
                  (bv->str (cpp:eval val))
                  (bv->str (cpp:eval val)))]
         [else
          (format "(halide.hexagon.dup4.b int32 (list ~a))" (compile-scalar v0))])]
      [(Rt.ub v0)
       (cond
         [(concrete? Rt)
          (define val (hvx:interpret v0))
          (format "0x~a~a~a~a"
                  (bv->str (cpp:eval val))
                  (bv->str (cpp:eval val))
                  (bv->str (cpp:eval val))
                  (bv->str (cpp:eval val)))]
         [else
          (format "(halide.hexagon.dup4.b int32 (list ~a))" (compile-scalar v0))])]
      [(Rt.h v0)
       (cond
         [(concrete? Rt)
          (define val (hvx:interpret v0))
          (format "0x~a~a"
                  (bv->str (cpp:eval val))
                  (bv->str (cpp:eval val)))]
         [else
          (format "(halide.hexagon.dup2.h int32 (list ~a))" (compile-scalar v0))])]
      [(Rt.uh v0)
       (cond
         [(concrete? Rt)
          (define val (hvx:interpret v0))
          (format "0x~a~a"
                  (bv->str (cpp:eval val))
                  (bv->str (cpp:eval val)))]
         [else
          (format "(halide.hexagon.dup2.h int32 (list ~a))" (compile-scalar v0))])]
      [(Rt2.b v0 v1)
       (assert (concrete? Rt))
       (define val0 (hvx:interpret v0))
       (define val1 (hvx:interpret v1))
       (format "0x~a~a~a~a"
               (bv->str (cpp:eval val1))
               (bv->str (cpp:eval val0))
               (bv->str (cpp:eval val1))
               (bv->str (cpp:eval val0)))]
      [(Rt2.ub v0 v1)
       (assert (concrete? Rt))
       (define val0 (hvx:interpret v0))
       (define val1 (hvx:interpret v1))
       (format "0x~a~a~a~a"
               (bv->str (cpp:eval val1))
               (bv->str (cpp:eval val0))
               (bv->str (cpp:eval val1))
               (bv->str (cpp:eval val0)))]
      [(Rt2.h v0 v1)
       (cond
         [(concrete? Rt)
          (define val0 (hvx:interpret v0))
          (define val1 (hvx:interpret v1))
          (format "0x~a~a"
                  (bv->str (cpp:eval val1))
                  (bv->str (cpp:eval val0)))]
         [else
          (format "(halide.hexagon.pack2.h int32 (list ~a ~a))" (compile-scalar v1) (compile-scalar v0))])]
      [(Rt2.uh v0 v1)
       (assert (concrete? Rt))
       (define val0 (hvx:interpret v0))
       (define val1 (hvx:interpret v1))
       (format "0x~a~a"
               (bv->str (cpp:eval val1))
               (bv->str (cpp:eval val0)))]
      [(Rt4.b v0 v1 v2 v3)
       (define val0 (hvx:interpret v0))
       (define val1 (hvx:interpret v1))
       (define val2 (hvx:interpret v2))
       (define val3 (hvx:interpret v3))
       (cond
         [(concrete? Rt)
          (format "0x~a~a~a~a"
                  (bv->str (cpp:eval val3))
                  (bv->str (cpp:eval val2))
                  (bv->str (cpp:eval val1))
                  (bv->str (cpp:eval val0)))]
         [(vsplatr? v0 v1 v2 v3)
          (format "(halide.hexagon.dup4.b int32 (list ~a))" (compile-scalar v0))]
         [(contiguous-reads? val0 val1 val2 val3)
          (define rd (strip-casts v0))
          (assert (load-sca? rd))
          (define buf (load-sca-buf rd))
          (define loc (load-sca-idx rd))
          (define align (aligned 4 0))
          (define ld (generate
                      `vread `uint8x4
                      `(list
                        (,t_i32 ,(buffer-data buf))
                        (,t_i32 ,(string->sexp (compile-idx loc)))
                        (,t_i32 ,(string->sexp 4))
                        (,t_i32 ,(string->sexp 0)))))
          (format "(halide.reinterpret int32 (list (int8x4 ~a)))" ld)]
         [else
          (assert #f)])]
      [(Rt4.ub v0 v1 v2 v3)
       (define val0 (hvx:interpret v0))
       (define val1 (hvx:interpret v1))
       (define val2 (hvx:interpret v2))
       (define val3 (hvx:interpret v3))
       (cond
         [(concrete? Rt)
          (format "0x~a~a~a~a"
                  (bv->str (cpp:eval val3))
                  (bv->str (cpp:eval val2))
                  (bv->str (cpp:eval val1))
                  (bv->str (cpp:eval val0)))]
         [(vsplatr? v0 v1 v2 v3)
          (format "(halide.hexagon.dup4.b int32 (list ~a))" (compile-scalar v0))]
         [(contiguous-reads? val0 val1 val2 val3)
          (define rd (strip-casts v0))
          (assert (load-sca? rd))
          (define buf (load-sca-buf rd))
          (define loc (load-sca-idx rd))
          (define align (aligned 4 0))
          (define ld (generate
                      `vread `uint8x4
                      `(list
                        (,t_i32 ,(buffer-data buf))
                        (,t_i32 ,(string->sexp (compile-idx loc)))
                        (,t_i32 ,(string->sexp 4))
                        (,t_i32 ,(string->sexp 0)))))
          (format "(halide.reinterpret uint32 (list (uint8x4 ~a)))" ld)]
         [else
          (assert #f)])]

      [(int8_t val) (format "(int8 ~a)" (compile-scalar val))]
      [(uint8_t val) (format "(uint8 ~a)" (compile-scalar val))]
      [(int16_t val) (format "(int16 ~a)" (compile-scalar val))]
      [(uint16_t val) (format "(uint16 ~a)" (compile-scalar val))]
      [(int32_t val) (format "(int32 ~a)" (compile-scalar val))]
      [(uint32_t val) (format "(uint32 ~a)" (compile-scalar val))]

      [(sca-cast val type) (format "(~a (~ax1 ~a (list ~a)))" type type type (compile-scalar val))]

      [(sca-add a b) (format "(~a (+ ~a ~a))" (to-llvm-type Rt) (compile-scalar a) (compile-scalar b))]
      [(sca-sub a b) (format "(~a (- ~a ~a))" (to-llvm-type Rt) (compile-scalar a) (compile-scalar b))]
      [(sca-mul a b) (format "(~a (* ~a ~a))" (to-llvm-type Rt) (compile-scalar a) (compile-scalar b))]
      [(sca-min a b) (format "(~a (min ~a ~a))" (to-llvm-type Rt) (compile-scalar a) (compile-scalar b))]
      [(sca-max a b) (format "(~a (max ~a ~a))" (to-llvm-type Rt) (compile-scalar a) (compile-scalar b))]

      [(load-sca buffer idx) (format "(~a (halide.load.scalar ~a (list (int32 ~a) (int32 ~a))))"
                                     (to-llvm-type Rt) (to-llvm-type Rt) (buffer-data buffer) (compile-idx idx))]
      
      [(constant id type) (format "~a" (syntax->datum id))]
      [(bv _ _) (format "0x~a" (bv->str Rt))]
      [(? number? n) (format "~a" n)]
      [(expression op child ...)
       (match (length child)
         [1 (format "(~a ~a)" op (compile-scalar (list-ref child 0)))]
         [2 (format "(~a ~a ~a)" op (compile-scalar (list-ref child 0)) (compile-scalar (list-ref child 1)))])]
      
      [_ (error "NYI: compile scalar ~a" Rt)]))
  
  (string->sexp res))

(define (compile-idx idx)
  (cond
    [(concrete? idx) (hvx:interpret idx)]
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

(define (log-2 val)
  (int8_t (bv (exact-round (log (cpp:eval-to-int val) 2)) 8)))

(define (contiguous-reads? . reads)
  (define (contiguous? vals)
    (cond
      [(< (length vals) 2) #t]
      [else
       (define v1 (first vals))
       (define v2 (second vals))

       (define (check val1 val2)
         (for*/all ([v1 val1 #:exhaustive] [v2 val2 #:exhaustive])
           (match* (v1 v2)
             [((expression (== @app) xs ...) (expression (== @app) xs2 ...))
              (and
               (eq? (list-ref xs 0) (list-ref xs2 0))
               (eq? (add1 (list-ref xs 1)) (list-ref xs2 1)))]
             [(_ _) #f])))

       (and (check v1 v2) (contiguous? (rest vals)))]))
  (contiguous? (map cpp:eval reads)))

(define (vsplatr? . vals)
  (eq? 1 (set-count (list->set vals))))

(define (strip-casts expr)
  (cond
    [(sca-cast? expr) (strip-casts (sca-cast-sca expr))]
    [else expr]))

;(define-symbolic-buffer input2 uint8_t)
;(define-symbolic-var input2_zero uint8_t)
;(define-symbolic t74 integer?)
;(define-symbolic t75 integer?)
;(define-symbolic t79 integer?)
;(define-symbolic output.s0.y.rebased integer?)
;(compile-idx (* t75 (+ output.s0.y.rebased (+ t79 (- t74)))))
;(compile-scalar (int32x1 (sca-mul (sca-sub (int16x1 (load-sca input2 (* t75 (+ output.s0.y.rebased (+ t79 (- t74)))))) (int16x1 input2_zero)) (int16_t (bv #x0040 16)))))

;      [(int8_t val) (~a (bitvector->integer val))]
;      [(uint8_t val) (~a (bitvector->natural val))]
;      [(int16_t val) (~a (bitvector->integer val))]
;      [(uint16_t val) (~a (bitvector->natural val))]
;      [(int32_t val) (~a (bitvector->integer val))]
;      [(uint32_t val) (~a (bitvector->natural val))]
;      [(list v0 v1 v2 v3)
;       (cond
;         [(empty? (symbolics Rt))
;          (format "0x~a~a~a~a"
;                  (int->hex (codegen-scalar v3))
;                  (int->hex (codegen-scalar v2))
;                  (int->hex (codegen-scalar v1))
;                  (int->hex (codegen-scalar v0)))]
;         [else
;          (format "(halide.hexagon.dup4.b int32 (list ~a))" (codegen-scalar (cpp:eval v0)))])]
;      [(list v0 v1)
;       (format "0x~a~a"
;               (int->hex (codegen-scalar v1))
;               (int->hex (codegen-scalar v0)))]
;      [(cons v0 v1)
;       (cond
;         [(empty? (symbolics Rt))
;          (format "0x~a~a~a~a"
;                  (int->hex (codegen-scalar v0))
;                  (int->hex (codegen-scalar v1))
;                  (int->hex (codegen-scalar v0))
;                  (int->hex (codegen-scalar v1)))]
;         [else
;          (format "(halide.hexagon.interleave.b.dup2.h int32 (list ~a ~a))" (codegen-scalar (cpp:eval v0)) (codegen-scalar (cpp:eval v1)))])]
;      
;      [(expression op operands ...)
;       (cond
;         [(eq? op app) (format "(int8 (llvm.hexagon.V6.vread.128B int8 (list (int32 ~a) (int32 ~a))))" (list-ref operands 0) (list-ref operands 1))]
;         [else (error "NYI: codegen scalar ~a" Rt)])]
      ;[_ (error "NYI: codegen scalar ~a" Rt)]))))

;(require rosette/lib/match)
;(require rake/halide/ir/types)
;(require rake/cpp/types)
;(require rake/hvx/ast/types)
;(require rake/hvx/ast/visitor)
;(require rake/hvx/interpreter)
;
;;;convert integer to 8-bits integer
;(define (int->8bit N)
;  (define-values [v1 v2] (quotient/remainder N 16))
;  (define digits (list (integer->char (+ v1 (if (< v1 10) 48 55))) (integer->char (+ v2 (if (< v2 10) 48 55)))))
;  (define digitstr (list->string digits))
;  (read (open-input-string (format "0x~a~a~a~a" digitstr digitstr digitstr digitstr))))
;
;(define (generate instruction output-type inputs)
;  `(,(instruction-helper instruction) ,output-type ,inputs))
;
;(define (instruction-helper instruction)
;  (read (open-input-string (format "llvm.hexagon.V6.~a.128B" instruction))))
;
;(define (bool->int val)
;  (read (open-input-string (format "~a" (or (and val 1) 0)))))
;
;(define-symbolic gross-hack integer?)
;(define ite (match (if (< gross-hack 1) 2 3) [(expression op child ...) op]))
;
;(define-symbolic hack (~> integer? integer?))
;(define app (match (hack 0) [(expression op operands ...) op]))
;
;(define (codegen-scalar Rt)
;  (read
;   (open-input-string
;    (match Rt
;      [(int8_t val) (~a (bitvector->integer val))]
;      [(uint8_t val) (~a (bitvector->natural val))]
;      [(int16_t val) (~a (bitvector->integer val))]
;      [(uint16_t val) (~a (bitvector->natural val))]
;      [(int32_t val) (~a (bitvector->integer val))]
;      [(uint32_t val) (~a (bitvector->natural val))]
;      [(list v0 v1 v2 v3)
;       (cond
;         [(empty? (symbolics Rt))
;          (format "0x~a~a~a~a"
;                  (int->hex (codegen-scalar v3))
;                  (int->hex (codegen-scalar v2))
;                  (int->hex (codegen-scalar v1))
;                  (int->hex (codegen-scalar v0)))]
;         [else
;          (format "(halide.hexagon.dup4.b int32 (list ~a))" (codegen-scalar (cpp:eval v0)))])]
;      [(list v0 v1)
;       (format "0x~a~a"
;               (int->hex (codegen-scalar v1))
;               (int->hex (codegen-scalar v0)))]
;      [(cons v0 v1)
;       (cond
;         [(empty? (symbolics Rt))
;          (format "0x~a~a~a~a"
;                  (int->hex (codegen-scalar v0))
;                  (int->hex (codegen-scalar v1))
;                  (int->hex (codegen-scalar v0))
;                  (int->hex (codegen-scalar v1)))]
;         [else
;          (format "(halide.hexagon.interleave.b.dup2.h int32 (list ~a ~a))" (codegen-scalar (cpp:eval v0)) (codegen-scalar (cpp:eval v1)))])]
;      
;      [(expression op operands ...)
;       (cond
;         [(eq? op app) (format "(int8 (llvm.hexagon.V6.vread.128B int8 (list (int32 ~a) (int32 ~a))))" (list-ref operands 0) (list-ref operands 1))]
;         [else (error "NYI: codegen scalar ~a" Rt)])]
;      [_ (error "NYI: codegen scalar ~a" Rt)]))))
;
;(define (input-arg a)
;  `(,(p-type a) ,(codegen a)))
;
;(define (double-len t)
;  (match t
;    ['int16x64 'int16x128]
;    ['int32x64 'int32x128]))
;
;(define (codegen p)
;  ;(printf (format "Codegen: ~a\n" p))
;  (match p
;
;    [(list v0 v1)
;     (generate `concat_vectors (double-len (p-type (first p))) `(list ,(input-arg v0) ,(input-arg v1)))]
;    
;    ;;let-exprs
;    [(let-expr var val body)
;     (define (repl-var node)
;       (cond
;         [(eq? node var) val]
;         [else node]))
;     (cond
;       [(list? body) (codegen (for/list ([e body]) (visit-hvx e repl-var)))]
;       [else (codegen (visit-hvx body repl-var))])]
;    
; 
;    ;;vmux
;    [(vmux Qt Vu Vv)
;     (match (list (hvx:interpret Vu) (hvx:interpret Vv))
;       [(list (i32x32 _)(i32x32 _)) (generate `vmux (p-type p) `(list (int32 ,(codegen Qt)) ,(input-arg Vu) ,(input-arg Vv)))])]
;
;    ;;vlalign
;    [(vlalign Vu Vv Rt)
;     (match (list (hvx:interpret Vu) (hvx:interpret Vv))
;       [(list (i8x128 _) (i8x128 _)) (generate `vlalignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,Rt)))]
;       [(list (u8x128 _) (u8x128 _)) (generate `vlalignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,Rt)))]
;       [(list (i16x64 _) (i16x64 _)) (generate `vlalignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 2))))]
;       [(list (u16x64 _) (u16x64 _)) (generate `vlalignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 2))))]
;       [(list (i32x32 _) (i32x32 _)) (generate `vlalignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 4))))]
;       [(list (u32x32 _) (u32x32 _)) (generate `vlalignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 4))))])]
;
;    ;;vror
;    [(vror Vu Rt)
;     (match (hvx:interpret Vu)
;       [(i8x128 _) (generate `vror (p-type p) `(list ,(input-arg Vu) (,t_i32 ,Rt)))]
;       [(u8x128 _) (generate `vror (p-type p) `(list ,(input-arg Vu) (,t_i32 ,Rt)))]
;       [(i16x64 _) (generate `vror (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(* Rt 2))))]
;       [(u16x64 _) (generate `vror (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(* Rt 2))))]
;       [(i32x32 _) (generate `vror (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(* Rt 4))))]
;       [(u32x32 _) (generate `vror (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(* Rt 4))))])]
;     
;    ;;vrotr
;    [(vrotr Vu Vv) (generate `vrotr (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
;    
;    ;;vdeal
;    [(vdeal Vu)
;     (match (hvx:interpret Vu)
;       [(i16x64 _) (generate `vdealh (p-type p) `(list ,(input-arg Vu)))]
;       [(i8x128 _) (generate `vdealb (p-type p) `(list ,(input-arg Vu)))]
;       [(u8x128 _) (generate `vdealb (p-type p) `(list ,(input-arg Vu)))])]
;    
;    ;;vdeale
;    [(vdeale Vu Vv) (generate `vdealb4w (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
;   
;    
;    ;;vtranspose
;    [(vtranspose Vu Vv Rt)
;     (match (list (hvx:interpret Vu) (hvx:interpret Vu))
;       [(list (i16x64 _) (i16x64 _)) (generate `vshuffvdd (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(- (* 2 Rt)))))])]  
;   
;    
;    ;;vunpack
;    [(vunpack Vu)
;     (match (hvx:interpret Vu)
;       [(i8x128 _) (generate `vunpackb (p-type p) `(list ,(input-arg Vu)))]
;       [(i16x64 _) (generate `vunpackh (p-type p) `(list ,(input-arg Vu)))]
;       [(u8x128 _) (generate `vunpackub (p-type p) `(list ,(input-arg Vu)))]
;       [(u16x64 _) (generate `vunpackuh (p-type p) `(list ,(input-arg Vu)))])]
;
;    ;;vadd-w-acc
;    [(vadd-w-acc Vdd Vu Vv)
;     (match (list (hvx:interpret Vu) (hvx:interpret Vv))
;       [(list (u8x128 _) (u8x128 _)) (generate `vaddubh.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vu) ,(input-arg Vv)))]
;       [(list (i16x64 _) (i16x64 _)) (generate `vaddhw.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vu) ,(input-arg Vv)))]
;       [(list (u16x64 _) (u16x64 _)) (generate `vadduhw.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vu) ,(input-arg Vv)))])]
;
;    ;;vabsdiff
;    [(vabsdiff Vu Vv)
;     (match (list (hvx:interpret Vu) (hvx:interpret Vv))
;       [(list (u16x64 _) (u16x64 _)) (generate `vabsdiffuh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
;    
;    ;;vmpy
;    [(vmpy Vu Rt)
;     (match (list (hvx:interpret Vu) (hvx:interpret Rt))
;       [(list (u8x128 _) (int8_t _)) (generate `vmpybus (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
;       [(list (u8x128 _) (uint8_t _)) (generate `vmpyub (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
;       [(list (u16x64 _) (uint16_t _)) (generate `vmpyuh (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
;       [(list (i16x64 _) (int16_t _)) (generate `vmpyh (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))])]
;    
;    ;;vmpye
;    [(vmpye Vu Rt) (generate `vmpyuhe (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
;    
;    ;;vmpy-acc
;    [(vmpy-acc Vdd Vu Rt)
;     (match (list (hvx:interpret Vdd) (hvx:interpret Vu) (hvx:interpret Rt))
;       [(list (i16x64x2 _ _) (u8x128 _) (int8_t _))
;        (generate `vmpybus.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
;       [(list (u16x64x2 _ _) (u8x128 _) (uint8_t _))
;        (generate `vmpyub.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
;       [(list (u32x32x2 _ _) (u16x64 _) (uint16_t _))
;        (generate `vmpyuh.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
;       [(list (i32x32x2 _ _) (i16x64 _) (int16_t _))
;        (generate `vmpyh.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
;       ;; todo:
;       ; Vxx.w+=vmpy(Vu.h,Rt.h):sat ;;do not have a sat field
;     )]
;
;    ;;vmpye-acc
;    [(vmpye-acc Vd Vu Rt) (generate `vmpyuhe.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
;    
;    ;;vdmpy
;    [(vdmpy Vu Rt)
;     (match (list (hvx:interpret Vu) (hvx:interpret Rt))
;       [(list (u8x128 _) (int8_t _)) (generate `vdmpybus (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
;       [(list (i16x64 _) (int8_t _)) (generate `vdmpyhb (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
;       [(list (i16x64 _) (int16_t _)) (generate `vdmpyhsat (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
;       [(list (i16x64 _) (uint16_t _)) (generate `vdmpyhsusat (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))])]
;    
;    ;;vdmpy-sw
;    [(vdmpy-sw Vuu Rt)
;     (match (list (hvx:interpret Vuu) (hvx:interpret Rt))
;       [(list (i16x64x2 _ _) (int16_t _)) (generate `vdmpyhisat (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
;       [(list (i16x64x2 _ _) (uint16_t _)) (generate `vdmpyhsuisat (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
;       [(list (u8x128x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vdmpybus.dv (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
;       [(list (i16x64x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vdmpyhb.dv (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))])]
;    
;    ;;vdmpy-acc
;    [(vdmpy-acc Vd Vu Rt)
;     (match (list (hvx:interpret Vu) (hvx:interpret Rt))
;       [(list (u8x128 _) (int8_t _)) (generate `vdmpybus.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
;       [(list (i16x64 _) (int8_t _)) (generate `vdmpyhb.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
;       [(list (i16x64 _) (int16_t _)) (generate `vdmpyhsat.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
;       [(list (i16x64 _) (uint16_t _)) (generate `vdmpyhsusat.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))])]
;    
;    ;;vdmpy-sw-acc
;    [(vdmpy-sw-acc Vdd Vuu Rt)
;     (match (list (hvx:interpret Vuu) (hvx:interpret Rt))
;       [(list (i16x64x2 _ _) (int16_t _)) (generate `vdmpyhisat.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
;       [(list (i16x64x2 _ _) (uint16_t _)) (generate `vdmpyhsuisat.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
;       [(list (u8x128x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vdmpybus.dv.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
;       [(list (i16x64x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vdmpyhb.dv.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))])]
;    
;    ;;vrmpy-p
;    [(vrmpy-p Vuu Rt u1)
;     (match (list (hvx:interpret Vuu) (hvx:interpret Rt))
;       [(list (u8x128x2 _ _) (list (uint8_t _) (uint8_t _) (uint8_t _) (uint8_t _)))
;        (generate `vrmpyubi (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt)) (,t_i32 ,(bool->int u1))))]
;       [(list (u8x128x2 _ _) (list (int8_t _) (int8_t _) (int8_t _) (int8_t _)))
;        (generate `vrmpybusi (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt)) (,t_i32 ,(bool->int u1))))])]
;    
;    ;;vrmpy-p-acc
;    [(vrmpy-p-acc Vdd Vuu Rt u1)
;     (match (list (hvx:interpret Vuu) (hvx:interpret Rt))
;       [(list (u8x128x2 _ _) (list (uint8_t _) (uint8_t _) (uint8_t _) (uint8_t _)))
;        (generate `vrmpyubi.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt)) (,t_i32 ,(bool->int u1))))]
;       [(list (u8x128x2 _ _) (list (int8_t _) (int8_t _) (int8_t _) (int8_t _)))
;        (generate `vrmpybusi.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt)) (,t_i32 ,(bool->int u1))))])]
;    
;    ;;vavg
;    [(vavg Vu Vv rnd?)
;     (if rnd?
;         (match (list (hvx:interpret Vu) (hvx:interpret Vv))
;           [(list (i8x128 _) (i8x128 _)) (generate `vavgbrnd (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
;           [(list (i16x64 _) (i16x64 _)) (generate `vavghrnd (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
;           [(list (i32x32 _) (i32x32 _)) (generate `vavgwrnd (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
;           [(list (u8x128 _) (u8x128 _)) (generate `vavgubrnd (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
;           [(list (u16x64 _) (u16x64 _)) (generate `vavguhrnd (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
;           [(list (u32x32 _) (u32x32 _)) (generate `vavguwrnd (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))])
;         (match (list (hvx:interpret Vu) (hvx:interpret Vv))
;           [(list (i8x128 _) (i8x128 _)) (generate `vavgb (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
;           [(list (i16x64 _) (i16x64 _)) (generate `vavgh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
;           [(list (i32x32 _) (i32x32 _)) (generate `vavgw (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
;           [(list (u8x128 _) (u8x128 _)) (generate `vavgub (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
;           [(list (u16x64 _) (u16x64 _)) (generate `vavguh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
;           [(list (u32x32 _) (u32x32 _)) (generate `vavguw (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]))]
;    
;    ;;vnavg
;    [(vnavg Vu Vv)
;     (match (list (hvx:interpret Vu) (hvx:interpret Vv))
;       [(list (i8x128 _) (i8x128 _)) (generate `vnavgb (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
;       [(list (i16x64 _) (i16x64 _)) (generate `vnavgh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
;       [(list (i32x32 _) (i32x32 _)) (generate `vnavgw (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
;       [(list (u8x128 _) (u8x128 _)) (generate `vnavgub (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
;    
;    ;;vasl
;    [(vasl Vu Rt)
;     (match Vu
;       [(i16x64 _) (generate `vaslh (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))]
;       [(i32x32 _) (generate `vaslw (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))])]
;    
;    ;;vlsr
;    [(vlsr Vu Rt)
;     (match (hvx:interpret Vu)
;       [(i8x128 _) (generate `vlsrb (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))]
;       [(i16x64 _) (generate `vlsrh (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))]
;       [(i32x32 _) (generate `vlsrw (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))])]
;    
;    ;;vasr-acc
;    [(vasr-acc Vd Vu Rt)
;     (match (hvx:interpret Vu)
;       [(i16x64 _) (generate `vasrh.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))]
;       [(i32x32 _) (generate `vasrw.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))])]
;
;    ;vabs
;    [(vabs Vu sat?)
;     (if sat?
;         (match (hvx:interpret Vu)
;           [(i8x128 _) (generate `vabsb.sat (p-type p) `(list ,(input-arg Vu)))]
;           [(i16x64 _) (generate `vabsh.sat (p-type p) `(list ,(input-arg Vu)))]
;           [(i32x32 _) (generate `vabsw.sat (p-type p) `(list ,(input-arg Vu)))])
;         (match (hvx:interpret Vu)
;           [(i8x128 _) (generate `vabsb (p-type p) `(list ,(input-arg Vu)))]
;           [(i16x64 _) (generate `vabsh (p-type p) `(list ,(input-arg Vu)))]
;           [(i32x32 _) (generate `vabsw (p-type p) `(list ,(input-arg Vu)))]))]
;    
;    [(+ a b) (read (open-input-string (format "(+ ~a ~a)" (codegen a) (codegen b))))]
;    [(- a b) (read (open-input-string (format "(- ~a ~a)" (codegen a) (codegen b))))]
;    [(* a b) (read (open-input-string (format "(* ~a ~a)" (codegen a) (codegen b))))]
;    [(- a)   (read (open-input-string (format "(- 0 ~a)" (codegen a))))]
;
;    [(i8x128 Vu) (read (open-input-string (format "~a" Vu)))]
;    [(u8x128 Vu) (read (open-input-string (format "~a" Vu)))]
;    [(i16x64 Vu) (read (open-input-string (format "~a" Vu)))]
;    [(u16x64 Vu) (read (open-input-string (format "~a" Vu)))]
;    [(i32x32 Vu) (read (open-input-string (format "~a" Vu)))]
;    [(u32x32 Vu) (read (open-input-string (format "~a" Vu)))]
;    
;    [(i8x128x2 Vu Vv) (read (open-input-string (format "~a~a" Vu Vu)))]
;    [(u8x128x2 Vu Vv) (read (open-input-string (format "~a~a" Vu Vu)))]
;    [(i16x64x2 Vu Vv) (read (open-input-string (format "~a~a" Vu Vu)))]
;    [(u16x64x2 Vu Vv) (read (open-input-string (format "~a~a" Vu Vu)))]
;    [(i32x32x2 Vu Vv) (read (open-input-string (format "~a~a" Vu Vu)))]
;    [(u32x32x2 Vu Vv) (read (open-input-string (format "~a~a" Vu Vu)))]
;    
;    [_ (read (open-input-string (format "~a" p)))]))
;    
;(provide (rename-out [codegen llvm-codegen]))