#lang rosette

(require rosette/lib/match)
(require rake/halide/ir/types)
(require rake/cpp/types)
(require rake/hvx/ast/types)
(require rake/hvx/ast/visitor)
(require rake/hvx/interpreter)

(define t_i32 `int32)
(define t_i16 `int16)
(define t_i8 `int8)
(define t_16xi32 `int32x16)
(define t_32xi32 `int32x32)
(define t_64xi32 `int32x64)
(define t_128xi1 `int1x128)

;;convert integer to 8-bits integer
(define (int->8bit N)
  (define-values [v1 v2] (quotient/remainder N 16))
  (define digits (list (integer->char (+ v1 (if (< v1 10) 48 55))) (integer->char (+ v2 (if (< v2 10) 48 55)))))
  (define digitstr (list->string digits))
  (read (open-input-string (format "0x~a~a~a~a" digitstr digitstr digitstr digitstr))))

(define (generate instruction output-type inputs)
  `(,(instruction-helper instruction) ,output-type ,inputs))

(define (instruction-helper instruction)
  (read (open-input-string (format "llvm.hexagon.V6.~a.128B" instruction))))

(define (int->hex val)
  (if (>= val 0)
      (~a (format "~X" val) #:width 2 #:left-pad-string "0" #:align 'right)
      (~a (format "~X" (+ 256 val)) #:width 2 #:left-pad-string "0" #:align 'right)))

(define (bool->int val)
  (read (open-input-string (format "~a" (or (and val 1) 0)))))

(define-symbolic gross-hack integer?)
(define ite (match (if (< gross-hack 1) 2 3) [(expression op child ...) op]))

(define-symbolic hack (~> integer? integer?))
(define app (match (hack 0) [(expression op operands ...) op]))

(define (codegen-scalar Rt)
  (read
   (open-input-string
    (match Rt
      [(int8_t val) (~a (bitvector->integer val))]
      [(uint8_t val) (~a (bitvector->natural val))]
      [(int16_t val) (~a (bitvector->integer val))]
      [(uint16_t val) (~a (bitvector->natural val))]
      [(int32_t val) (~a (bitvector->integer val))]
      [(uint32_t val) (~a (bitvector->natural val))]
      [(list v0 v1 v2 v3)
       (cond
         [(empty? (symbolics Rt))
          (format "0x~a~a~a~a"
                  (int->hex (codegen-scalar v3))
                  (int->hex (codegen-scalar v2))
                  (int->hex (codegen-scalar v1))
                  (int->hex (codegen-scalar v0)))]
         [else
          (format "(halide.hexagon.dup4.b int32 (list ~a))" (codegen-scalar (eval v0)))])]
      [(list v0 v1)
       (format "0x~a~a"
               (int->hex (codegen-scalar v1))
               (int->hex (codegen-scalar v0)))]
      [(cons v0 v1)
       (cond
         [(empty? (symbolics Rt))
          (format "0x~a~a~a~a"
                  (int->hex (codegen-scalar v0))
                  (int->hex (codegen-scalar v1))
                  (int->hex (codegen-scalar v0))
                  (int->hex (codegen-scalar v1)))]
         [else
          (format "(halide.hexagon.interleave.b.dup2.h int32 (list ~a ~a))" (codegen-scalar (eval v0)) (codegen-scalar (eval v1)))])]
      
      [(expression op operands ...)
       (cond
         [(eq? op app) (format "(int8 (llvm.hexagon.V6.vread.128B int8 (list (int32 ~a) (int32 ~a))))" (list-ref operands 0) (list-ref operands 1))]
         [else (error "NYI: codegen scalar ~a" Rt)])]
      [_ (error "NYI: codegen scalar ~a" Rt)]))))

(define (string->sexp s)
  (read (open-input-string (format "~a" s))))

(define (input-arg a)
  `(,(p-type a) ,(codegen a)))

(define (p-type p)
  (match (interpret-hvx p)
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

(define (codegen-idx idx)
  (match idx
    [(expression op child ...)
     (cond
       [(eq? op ite)
        (match (list-ref child 0)
          [(expression op2 child2 ...)
           (cond
             [(eq? op2 <=)
              (if (eq? (format "~a" (list-ref child2 0)) (format "~a" (list-ref child 1)))
                  (format "(min ~a ~a)" (codegen-idx (list-ref child 1)) (codegen-idx (list-ref child 2)))
                  (format "(max ~a ~a)" (codegen-idx (list-ref child 1)) (codegen-idx (list-ref child 2))))]
             [else idx])]
          [_ idx])]
       [(eq? op quotient)
        (format "(/ ~a ~a)" (codegen-idx (list-ref child 0)) (codegen-idx (list-ref child 1)))]
       [(eq? op -)
        (match (length child)
          [1 (format "(~a 0 ~a)" op (codegen-idx (list-ref child 0)))]
          [2 (format "(~a ~a ~a)" op (codegen-idx (list-ref child 0)) (codegen-idx (list-ref child 1)))])]
       [else
        (match (length child)
          [1 (format "(~a ~a)" op (codegen-idx (list-ref child 0)))]
          [2 (format "(~a ~a ~a)" op (codegen-idx (list-ref child 0)) (codegen-idx (list-ref child 1)))])])]
    [_ idx]))

(define (codegen p)
  ;(printf (format "~a\n" p))
  (match p

    ;;let-exprs
    [(let-expr var val body)
     (define (repl-var node)
       (cond
         [(eq? node var) val]
         [else node]))
     (codegen (visit-hvx body repl-var))]
    
    ;;vread
    [(vread buf loc align)
     (generate
        `vread (p-type p)
        `(list
          (,t_i32 ,(codegen buf))
          (,t_i32 ,(string->sexp (codegen-idx loc)))
          (,t_i32 ,(string->sexp (aligned-mod align)))
          (,t_i32 ,(string->sexp (aligned-rem align)))))]

    [(vreadp buf loc align)
     (generate `vreadp (p-type p) `(list (,t_i32 ,(codegen buf)) (,t_i32 ,(string->sexp (codegen-idx loc)))))]

    ;;vsplat
    [(vsplat Rt)
     (match (interpret-hvx Rt)
       [(int32_t _) (generate `lvsplatw (p-type p) `(list (,t_i32 ,(eval-to-int Rt))))]
       [(int16_t _) (generate `lvsplath (p-type p) `(list (,t_i32 ,(eval-to-int Rt))))]
       [(int8_t _) (generate `lvsplatb (p-type p) `(list (,t_i32 ,(eval-to-int Rt))))]
      )]

    ;;lo
    [(lo Vuu) (generate `lo (p-type p) `(list (,(p-type Vuu) ,(codegen Vuu))))]

    ;;hi
    [(hi Vuu) (generate `hi (p-type p) `(list (,(p-type Vuu) ,(codegen Vuu))))]
    
    ;;vcombine
    [(vcombine Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i8x128 _) (i8x128 _)) (generate `vcombine (p-type p) `(list ,(input-arg Vv) ,(input-arg Vu)))]
       [(list (u8x128 _) (u8x128 _)) (generate `vcombine (p-type p) `(list ,(input-arg Vv) ,(input-arg Vu)))]
       [(list (i16x64 _) (i16x64 _)) (generate `vcombine (p-type p) `(list ,(input-arg Vv) ,(input-arg Vu)))]
       [(list (u16x64 _) (u16x64 _)) (generate `vcombine (p-type p) `(list ,(input-arg Vv) ,(input-arg Vu)))]
       [(list (i32x32 _) (i32x32 _)) (generate `vcombine (p-type p) `(list ,(input-arg Vv) ,(input-arg Vu)))]
       [(list (u32x32 _) (u32x32 _)) (generate `vcombine (p-type p) `(list ,(input-arg Vv) ,(input-arg Vu)))])]
    
    ;;vshuffe
    [(vshuffe Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i16x64 _)(i16x64 _)) (generate `vshuffeh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (i8x128 _)(i8x128 _)) (generate `vshuffeb (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
    
    ;;vshuffo
    [(vshuffo-n Vu Vv signed?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i16x64 _)(i16x64 _)) (generate `vshuffoh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (i8x128 _)(i8x128 _)) (generate `vshuffob (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
    
    ;;vshuffoe
    [(vshuffoe Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (u8x128 _)(u8x128 _)) (generate `vshufoeb (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (i8x128 _)(i8x128 _)) (generate `vshufoeb (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (i16x64 _)(i16x64 _)) (generate `vshufoeh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (u16x64 _)(u16x64 _)) (generate `vshufoeh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
    
    ;;vswap
    
    ;;vmux
    [(vmux Qt Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vmux (p-type p) `(list (int32 ,(codegen Qt)) ,(input-arg Vu) ,(input-arg Vv)))])]
    
    ;;vsat
    [(vsat Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vsatwh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (i16x64 _)(i16x64 _)) (generate `vsathub (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (u16x64 _)(u16x64 _)) (generate `vsathub (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (u32x32 _)(u32x32 _)) (generate `vsatuwuh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]  )]
    
    ;;valign
    [(valign Vu Vv Rt)
     ;;Register version not included
     (match (list (interpret-hvx Vv) (interpret-hvx Vu))
       [(list (i8x128 _) (i8x128 _)) (generate `valignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,Rt)))]
       [(list (u8x128 _) (u8x128 _)) (generate `valignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,Rt)))]
       [(list (i16x64 _) (i16x64 _)) (generate `valignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 2))))]
       [(list (u16x64 _) (u16x64 _)) (generate `valignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 2))))]
       [(list (i32x32 _) (i32x32 _)) (generate `valignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 4))))]
       [(list (u32x32 _) (u32x32 _)) (generate `valignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 4))))])]

    ;;vlalign
    [(vlalign Vu Vv Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i8x128 _) (i8x128 _)) (generate `vlalignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,Rt)))]
       [(list (u8x128 _) (u8x128 _)) (generate `vlalignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,Rt)))]
       [(list (i16x64 _) (i16x64 _)) (generate `vlalignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 2))))]
       [(list (u16x64 _) (u16x64 _)) (generate `vlalignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 2))))]
       [(list (i32x32 _) (i32x32 _)) (generate `vlalignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 4))))]
       [(list (u32x32 _) (u32x32 _)) (generate `vlalignbi (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(* Rt 4))))])]

    ;;vror
    [(vror Vu Rt)
     (match (interpret-hvx Vu)
       [(i8x128 _) (generate `vror (p-type p) `(list ,(input-arg Vu) (,t_i32 ,Rt)))]
       [(u8x128 _) (generate `vror (p-type p) `(list ,(input-arg Vu) (,t_i32 ,Rt)))]
       [(i16x64 _) (generate `vror (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(* Rt 2))))]
       [(u16x64 _) (generate `vror (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(* Rt 2))))]
       [(i32x32 _) (generate `vror (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(* Rt 4))))]
       [(u32x32 _) (generate `vror (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(* Rt 4))))])]
     
    ;;vrotr
    [(vrotr Vu Vv) (generate `vrotr (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
    
    ;;vdeal
    [(vdeal Vu)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vdealh (p-type p) `(list ,(input-arg Vu)))]
       [(i8x128 _) (generate `vdealb (p-type p) `(list ,(input-arg Vu)))]
       [(u8x128 _) (generate `vdealb (p-type p) `(list ,(input-arg Vu)))])]
    
    ;;vdeale
    [(vdeale Vu Vv) (generate `vdealb4w (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
    
    ;;vshuff
    [(vshuff Vu)
     (match (interpret-hvx Vu)
       [(i8x128 _) (generate `vshuffb (p-type p) `(list ,(input-arg Vu)))]
       [(u8x128 _) (generate `vshuffb (p-type p) `(list ,(input-arg Vu)))]
       [(i16x64 _) (generate `vshuffh (p-type p) `(list ,(input-arg Vu)))]
       [(u16x64 _) (generate `vshuffh (p-type p) `(list ,(input-arg Vu)))])]
    
    ;;vtranspose
    [(vtranspose Vu Vv Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Vu))
       [(list (i16x64 _) (i16x64 _)) (generate `vshuffvdd (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(- (* 2 Rt)))))])]

    ;;vinterleave
    [(vinterleave Vuu)
     (match (list (interpret-hvx Vuu))
       [(list (i16x64x2 _ _)) (generate `vshuffvdd (p-type p) `(list ,(input-arg (hi Vuu)) ,(input-arg (lo Vuu)) (,t_i32 ,-2)))])]
    
    ;;vpack
    [(vpack Vu Vv signed?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i16x64 _)(i16x64 _)) (generate `vpackhb.sat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (i32x32 _)(i32x32 _)) (generate `vpackwh.sat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (u16x64 _)(u16x64 _)) (generate `vpackhub.sat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (u32x32 _)(u32x32 _)) (generate `vpackwuh.sat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
    
    ;;vpacke
    [(vpacke Vu Vv signed?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vpackeh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (i16x64 _)(i16x64 _)) (generate `vpackeb (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
    
    ;;vpacko
    [(vpacko-n Vu Vv signed?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vpackoh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (i16x64 _)(i16x64 _)) (generate `vpackob (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
    
    ;;vunpack
    [(vunpack Vu)
     (match (interpret-hvx Vu)
       [(i8x128 _) (generate `vunpackb (p-type p) `(list ,(input-arg Vu)))]
       [(i16x64 _) (generate `vunpackh (p-type p) `(list ,(input-arg Vu)))]
       [(u8x128 _) (generate `vunpackub (p-type p) `(list ,(input-arg Vu)))]
       [(u16x64 _) (generate `vunpackuh (p-type p) `(list ,(input-arg Vu)))])]
    
    ;;vunpacko

    ;;vgather

    ;;vzxt
    [(vzxt Vu signed?)
     (match (interpret-hvx Vu)
       [(u8x128 _) (generate `vzb (p-type p) `(list ,(input-arg Vu)))]
       [(u16x64 _) (generate `vzh (p-type p) `(list ,(input-arg Vu)))])]
    
    ;;vsxt
    [(vsxt Vu signed?)
     (match (interpret-hvx Vu)
       [(u8x128 _) (generate `vsb (p-type p) `(list (,(p-type Vu) ,(codegen Vu))))]
       [(i8x128 _) (generate `vsb (p-type p) `(list (,(p-type Vu) ,(codegen Vu))))]
       [(u16x64 _) (generate `vsb (p-type p) `(list (,(p-type Vu) ,(codegen Vu))))]
       [(i16x64 _) (generate `vsh (p-type p) `(list (,(p-type Vu) ,(codegen Vu))))])]
    
    ;;vadd
    [(vadd Vu Vv sat?)
     (if sat?
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vaddbsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (i16x64 _) (i16x64 _)) (generate `vaddhsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (i32x32 _) (i32x32 _)) (generate `vaddwsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (u8x128 _) (i8x128 _)) (generate `vaddububb (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (u8x128 _) (u8x128 _)) (generate `vaddubsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (u16x64 _) (u16x64 _)) (generate `vadduhsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (u32x32 _) (u32x32 _)) (generate `vadduwsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]

           [(list (u16x64x2 _ _) (u16x64x2 _ _)) (generate `vadduhsat.dv (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))])
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vaddb (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (i16x64 _) (i16x64 _)) (generate `vaddh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (i32x32 _) (i32x32 _)) (generate `vaddw (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]))]
    
    ;;vadd-w
    [(vadd-w Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (u8x128 _) (u8x128 _)) (generate `vaddubh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (i16x64 _) (i16x64 _)) (generate `vaddhw (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (u16x64 _) (u16x64 _)) (generate `vadduhw (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))])]

    ;;vadd-w-acc
    [(vadd-w-acc Vdd Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (u8x128 _) (u8x128 _)) (generate `vaddubh.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (i16x64 _) (i16x64 _)) (generate `vaddhw.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (u16x64 _) (u16x64 _)) (generate `vadduhw.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vu) ,(input-arg Vv)))])]

    ;;vabsdiff
    [(vabsdiff Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (u16x64 _) (u16x64 _)) (generate `vabsdiffuh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
    
    ;;vmpy
    [(vmpy Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (int8_t _)) (generate `vmpybus (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
       [(list (u8x128 _) (uint8_t _)) (generate `vmpyub (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
       [(list (u16x64 _) (uint16_t _)) (generate `vmpyuh (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
       [(list (i16x64 _) (int16_t _)) (generate `vmpyh (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))])]
    
    ;;vmpyi
    [(vmpyi Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (i32x32 _) (int16_t _)) (generate `vmpyiwh (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
       [(list (i16x64 _) (int8_t _)) (generate `vmpyihh (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
       [(list (i32x32 _) (int8_t _)) (generate `vmpyiwb (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
       [(list (i32x32 _) (uint8_t _)) (generate `vmpyiwub (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))])]
    
    ;;vmpye
    [(vmpye Vu Rt) (generate `vmpyuhe (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
    
    ;;vmpy-acc
    [(vmpy-acc Vdd Vu Rt)
     (match (list (interpret-hvx Vdd) (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (i16x64x2 _ _) (u8x128 _) (int8_t _))
        (generate `vmpybus.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
       [(list (u16x64x2 _ _) (u8x128 _) (uint8_t _))
        (generate `vmpyub.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
       [(list (u32x32x2 _ _) (u16x64 _) (uint16_t _))
        (generate `vmpyuh.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
       [(list (i32x32x2 _ _) (i16x64 _) (int16_t _))
        (generate `vmpyh.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
       ;; todo:
       ; Vxx.w+=vmpy(Vu.h,Rt.h):sat ;;do not have a sat field
     )]
    
    ;;vmpyi-acc
    [(vmpyi-acc Vd Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (i32x32 _) (int16_t _)) (generate `vmpyiwh.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
       [(list (i16x64 _) (int8_t _)) (generate `vmpyihb.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
       [(list (i32x32 _) (int8_t _)) (generate `vmpyiwb.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
       [(list (i32x32 _) (uint8_t _)) (generate `vmpyiwub.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))])]
 
    ;;vmpye-acc
    [(vmpye-acc Vd Vu Rt) (generate `vmpyuhe.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]

    ;;(
    [(vmpa Vuu Rt signed?)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (u8x128x2 _ _) (cons (int8_t _) (int8_t _)))
        (generate `vmpabus (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u8x128x2 _ _) (cons (uint8_t _) (uint8_t _)))
        (generate `vmpabuu (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u16x64x2 _ _) (cons (int8_t _) (int8_t _)))
        (generate `vmpauhb (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64x2 _ _) (cons (int8_t _) (int8_t _)))
        (generate `vmpahb (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vmpa-acc
    [(vmpa-acc Vdd Vuu Rt signed?)
     (match (list (interpret-hvx Vdd) (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i16x64x2 _ _) (u8x128x2 _ _) (cons (int8_t w1) (int8_t w2)))
        (generate `vmpabus.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64x2 _ _) (u8x128x2 _ _) (cons (uint8_t w1) (uint8_t w2)))
        (generate `vmpabuu.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u16x64x2 _ _) (u8x128x2 _ _) (cons (uint8_t w1) (uint8_t w2)))
        (generate `vmpabuu.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i32x32x2 _ _) (u16x64x2 _ _) (cons (int8_t w1) (int8_t w2)))
        (generate `vmpauhb.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i32x32x2 _ _) (i16x64x2 _ _) (cons (int8_t w1) (int8_t w2)))
        (generate `vmpahb.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i32x32x2 _ _) (i16x64x2 _ _) (cons (uint8_t w1) (uint8_t w2)))
        (generate `vmpahb.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vdmpy
    [(vdmpy Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (int8_t _)) (generate `vdmpybus (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
       [(list (i16x64 _) (int8_t _)) (generate `vdmpyhb (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
       [(list (i16x64 _) (int16_t _)) (generate `vdmpyhsat (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
       [(list (i16x64 _) (uint16_t _)) (generate `vdmpyhsusat (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))])]
    
    ;;vdmpy-sw
    [(vdmpy-sw Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i16x64x2 _ _) (int16_t _)) (generate `vdmpyhisat (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
       [(list (i16x64x2 _ _) (uint16_t _)) (generate `vdmpyhsuisat (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
       [(list (u8x128x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vdmpybus.dv (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vdmpyhb.dv (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vdmpy-acc
    [(vdmpy-acc Vd Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (int8_t _)) (generate `vdmpybus.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
       [(list (i16x64 _) (int8_t _)) (generate `vdmpyhb.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt Rt Rt)))))]
       [(list (i16x64 _) (int16_t _)) (generate `vdmpyhsat.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
       [(list (i16x64 _) (uint16_t _)) (generate `vdmpyhsusat.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))])]
    
    ;;vdmpy-sw-acc
    [(vdmpy-sw-acc Vdd Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i16x64x2 _ _) (int16_t _)) (generate `vdmpyhisat.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
       [(list (i16x64x2 _ _) (uint16_t _)) (generate `vdmpyhsuisat.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar (list Rt Rt)))))]
       [(list (u8x128x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vdmpybus.dv.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vdmpyhb.dv.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vtmpy
    [(vtmpy Vuu Rt signed?)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i8x128x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vtmpyb (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u8x128x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vtmpybus (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u8x128x2 _ _) (cons (uint8_t _) (uint8_t _))) (generate `vtmpybus (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vtmpyhb (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vtmpy-acc
    [(vtmpy-acc Vdd Vuu Rt signed?)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i8x128x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vtmpyb.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u8x128x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vtmpybus.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vtmpyhb.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vrmpy
    [(vrmpy Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (list (uint8_t _) (uint8_t _) (uint8_t _) (uint8_t _))) (generate `vrmpyub (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u8x128 _) (list (int8_t _) (int8_t _) (int8_t _) (int8_t _))) (generate `vrmpybus (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))])]

    ;;vrmpy-acc
    [(vrmpy-acc Vd Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (list (uint8_t _) (uint8_t _) (uint8_t _) (uint8_t _))) (generate `vrmpyub.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u8x128 _) (list (int8_t _) (int8_t _) (int8_t _) (int8_t _))) (generate `vrmpybus.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vrmpy-p
    [(vrmpy-p Vuu Rt u1)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (u8x128x2 _ _) (list (uint8_t _) (uint8_t _) (uint8_t _) (uint8_t _)))
        (generate `vrmpyubi (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt)) (,t_i32 ,(bool->int u1))))]
       [(list (u8x128x2 _ _) (list (int8_t _) (int8_t _) (int8_t _) (int8_t _)))
        (generate `vrmpybusi (p-type p) `(list ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt)) (,t_i32 ,(bool->int u1))))])]
    
    ;;vrmpy-p-acc
    [(vrmpy-p-acc Vdd Vuu Rt u1)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (u8x128x2 _ _) (list (uint8_t _) (uint8_t _) (uint8_t _) (uint8_t _)))
        (generate `vrmpyubi.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt)) (,t_i32 ,(bool->int u1))))]
       [(list (u8x128x2 _ _) (list (int8_t _) (int8_t _) (int8_t _) (int8_t _)))
        (generate `vrmpybusi.acc (p-type p) `(list ,(input-arg Vdd) ,(input-arg Vuu) (,t_i32 ,(codegen-scalar Rt)) (,t_i32 ,(bool->int u1))))])]
    
    ;;vavg
    [(vavg Vu Vv rnd?)
     (if rnd?
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vavgbrnd (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (i16x64 _) (i16x64 _)) (generate `vavghrnd (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (i32x32 _) (i32x32 _)) (generate `vavgwrnd (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (u8x128 _) (u8x128 _)) (generate `vavgubrnd (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (u16x64 _) (u16x64 _)) (generate `vavguhrnd (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (u32x32 _) (u32x32 _)) (generate `vavguwrnd (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))])
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vavgb (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (i16x64 _) (i16x64 _)) (generate `vavgh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (i32x32 _) (i32x32 _)) (generate `vavgw (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (u8x128 _) (u8x128 _)) (generate `vavgub (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (u16x64 _) (u16x64 _)) (generate `vavguh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
           [(list (u32x32 _) (u32x32 _)) (generate `vavguw (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]))]
    
    ;;vnavg
    [(vnavg Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i8x128 _) (i8x128 _)) (generate `vnavgb (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (i16x64 _) (i16x64 _)) (generate `vnavgh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (i32x32 _) (i32x32 _)) (generate `vnavgw (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
       [(list (u8x128 _) (u8x128 _)) (generate `vnavgub (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))])]
    
    ;;vasl
    [(vasl Vu Rt)
     (match Vu
       [(i16x64 _) (generate `vaslh (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))]
       [(i32x32 _) (generate `vaslw (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vlsr
    [(vlsr Vu Rt)
     (match (interpret-hvx Vu)
       [(i8x128 _) (generate `vlsrb (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))]
       [(i16x64 _) (generate `vlsrh (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))]
       [(i32x32 _) (generate `vlsrw (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vasr
    [(vasr Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vasrh (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))]
       [(i32x32 _) (generate `vasrw (p-type p) `(list ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vasr-acc
    [(vasr-acc Vd Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vasrh.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))]
       [(i32x32 _) (generate `vasrw.acc (p-type p) `(list ,(input-arg Vd) ,(input-arg Vu) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vasr-n
    [(vasr-n Vu Vv Rt round? sat? unsigned?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv) (interpret-hvx Rt) (interpret-hvx round?) (interpret-hvx sat?) (interpret-hvx unsigned?))
       [(list (i16x64 v0) (i16x64 v1) (int8_t n) #f _ #t) (generate `vasrhubsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64 v0) (i16x64 v1) (int8_t n) #f _ #f) (generate `vasrhsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64 v0) (i16x64 v1) (int8_t n) #t _ #t) (generate `vasrhubrndsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64 v0) (i16x64 v1) (int8_t n) #t _ #f) (generate `vasrhrndsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(codegen-scalar Rt))))]

       [(list (u16x64 v0) (u16x64 v1) (int8_t n) #f _ _) (generate `vasruhubsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u16x64 v0) (u16x64 v1) (int8_t n) #t _ _) (generate `vasruhubrndsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(codegen-scalar Rt))))]

       [(list (i32x32 v0) (i32x32 v1) (int8_t n) #f _ #t) (generate `vasrwubsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i32x32 v0) (i32x32 v1) (int8_t n) #t _ #t) (generate `vasrwubrndsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(codegen-scalar Rt))))]

       [(list (i32x32 v0) (i32x32 v1) (int8_t n) #f #t #f) (generate `vasrwsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i32x32 v0) (i32x32 v1) (int8_t n) #f #f #f) (generate `vasrw (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i32x32 v0) (i32x32 v1) (int8_t n) #t _ #f) (generate `vasrwrndsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(codegen-scalar Rt))))]
       
       [(list (u32x32 v0) (u32x32 v1) (int8_t n) #f _ _) (generate `vasruwubsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u32x32 v0) (u32x32 v1) (int8_t n) #t _ _) (generate `vasruwubrndsat (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vround
    [(vround Vu Vv signed?)
      (if signed?
          (match (list (interpret-hvx Vu) (interpret-hvx Vv))
            [(list (i16x64 _) (i16x64 _)) (generate `vroundhb (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
            [(list (i32x32 _) (i32x32 _)) (generate `vroundwh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))])
          (match (list (interpret-hvx Vu) (interpret-hvx Vv))
            [(list (i16x64 _) (i16x64 _)) (generate `vroundhub (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
            [(list (u16x64 _) (u16x64 _)) (generate `vrounduwuh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
            [(list (u32x32 _) (u32x32 _)) (generate `vrounduwuh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]
            [(list (i32x32 _) (i32x32 _)) (generate `vroundwuh (p-type p) `(list ,(input-arg Vu) ,(input-arg Vv)))]))]

    ;vabs
    [(vabs Vu sat?)
     (if sat?
         (match (interpret-hvx Vu)
           [(i8x128 _) (generate `vabsb.sat (p-type p) `(list ,(input-arg Vu)))]
           [(i16x64 _) (generate `vabsh.sat (p-type p) `(list ,(input-arg Vu)))]
           [(i32x32 _) (generate `vabsw.sat (p-type p) `(list ,(input-arg Vu)))])
         (match (interpret-hvx Vu)
           [(i8x128 _) (generate `vabsb (p-type p) `(list ,(input-arg Vu)))]
           [(i16x64 _) (generate `vabsh (p-type p) `(list ,(input-arg Vu)))]
           [(i32x32 _) (generate `vabsw (p-type p) `(list ,(input-arg Vu)))]))]
    
    [(+ a b) (read (open-input-string (format "(+ ~a ~a)" (codegen a) (codegen b))))]
    [(- a b) (read (open-input-string (format "(- ~a ~a)" (codegen a) (codegen b))))]
    [(* a b) (read (open-input-string (format "(* ~a ~a)" (codegen a) (codegen b))))]
    [(- a)   (read (open-input-string (format "(- 0 ~a)" (codegen a))))]

    [(i8x128 Vu) (read (open-input-string (format "~a" Vu)))]
    [(u8x128 Vu) (read (open-input-string (format "~a" Vu)))]
    [(i16x64 Vu) (read (open-input-string (format "~a" Vu)))]
    [(u16x64 Vu) (read (open-input-string (format "~a" Vu)))]
    [(i32x32 Vu) (read (open-input-string (format "~a" Vu)))]
    [(u32x32 Vu) (read (open-input-string (format "~a" Vu)))]
    
    [(i8x128x2 Vu Vv) (read (open-input-string (format "~a~a" Vu Vu)))]
    [(u8x128x2 Vu Vv) (read (open-input-string (format "~a~a" Vu Vu)))]
    [(i16x64x2 Vu Vv) (read (open-input-string (format "~a~a" Vu Vu)))]
    [(u16x64x2 Vu Vv) (read (open-input-string (format "~a~a" Vu Vu)))]
    [(i32x32x2 Vu Vv) (read (open-input-string (format "~a~a" Vu Vu)))]
    [(u32x32x2 Vu Vv) (read (open-input-string (format "~a~a" Vu Vu)))]
    
    [_ (read (open-input-string (format "~a" p)))]))
    
(provide (rename-out [codegen llvm-codegen]))