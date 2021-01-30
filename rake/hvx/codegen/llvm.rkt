#lang rosette

(require rosette/lib/match)
(require rake/cpp/types)
(require rake/hvx/ast/types)
(require rake/hvx/interpreter)

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
  
(define (codegen-scalar Rt)
  (read
   (open-input-string
    (match Rt
      ;[(int8_t val) ]
      [(int8_t val) (~a (bitvector->integer val))]
      [(uint8_t val) (~a (bitvector->natural val))]
      [(list v0 v1 v2 v3)
       (format "0x~a~a~a~a"
               (int->hex (codegen-scalar v3))
               (int->hex (codegen-scalar v2))
               (int->hex (codegen-scalar v1))
               (int->hex (codegen-scalar v0)))]
      [(cons v0 v1)
       (format "0x~a~a~a~a"
               (int->hex (codegen-scalar v1))
               (int->hex (codegen-scalar v0))
               (int->hex (codegen-scalar v1))
               (int->hex (codegen-scalar v0)))]
      [_ (error "NYI: codegen scalar ~a" Rt)]))))


;put a prefix to not overwrite the types in ast
(define t_i32 `int32)
(define t_i16 `int16)
(define t_i8 `int8)
(define t_16xi32 `int32x16)
(define t_32xi32 `int32x32)
(define t_64xi32 `int32x64)
(define t_128xi1 `int1x128)

(define (codegen p)
  ;;(printf (format "~a\n" p))
  (match p

    ;;vread
    [(vread buf loc)
     (generate `vread t_32xi32 `(list (,t_i32 ,(codegen buf)) (,t_i32 ,(codegen loc))))]

    ;;vsplat
    [(vsplat Rt)
     (match (interpret-hvx Rt)
       [(int32_t _) (generate `lvsplatw t_32xi32 `(list (,t_i32 ,(eval-to-int Rt))))]
       [(int16_t _) (generate `lvsplath t_32xi32 `(list (,t_i16 ,(eval-to-int Rt))))]
       [(int8_t _) (generate `lvsplatb t_32xi32 `(list (,t_i8 ,(eval-to-int Rt))))]      
      )]

    ;;lo
    [(lo Vuu)
     (if (hvx-pair? (interpret-hvx Vuu))
         (generate `lo t_32xi32 `(list (,t_64xi32 ,(codegen Vuu))))
         (generate `lo t_16xi32 `(list (,t_32xi32 ,(codegen Vuu)))))]

    ;;hi
    [(hi Vuu)
     (if (hvx-pair? (interpret-hvx Vuu))
         (generate `hi t_32xi32 `(list (,t_64xi32 ,(codegen Vuu))))
         (generate `hi t_16xi32 `(list (,t_32xi32 ,(codegen Vuu)))))]
    
    ;;vcombine
    [(vcombine Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i8x128 _) (i8x128 _)) (generate `vcombine t_64xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (u8x128 _) (u8x128 _)) (generate `vcombine t_64xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (i16x64 _) (i16x64 _)) (generate `vcombine t_64xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (u16x64 _) (u16x64 _)) (generate `vcombine t_64xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (i32x32 _) (i32x32 _)) (generate `vcombine t_64xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (u32x32 _) (u32x32 _)) (generate `vcombine t_64xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))])]
    
    ;;vshuffe
    [(vshuffe Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i16x64 _)(i16x64 _)) (generate `vshuffeh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (i8x128 _)(i8x128 _)) (generate `vshuffeb t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))])]
    
    ;;vshuffo
    [(vshuffo-n Vu Vv signed?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i16x64 _)(i16x64 _)) (generate `vshuffoh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (i8x128 _)(i8x128 _)) (generate `vshuffob t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))])]
    
    ;;vshuffoe
    [(vshuffoe Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i16x64 _)(i16x64 _)) (generate `vshuffoeh t_64xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (i8x128 _)(i8x128 _)) (generate `vshuffoeb t_64xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))])]
    
    ;;vswap
    
    ;;vmux
    [(vmux Qt Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vmux t_32xi32 `(list (,t_128xi1 ,(codegen Qt)) (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))])]
    
    ;;vsat
    [(vsat Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vsatwh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (i16x64 _)(i16x64 _)) (generate `vsathub t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (u32x32 _)(u32x32 _)) (generate `vsatuwuh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]  )]
    
    ;;valign
    [(valign Vu Vv Rt)
     (match (interpret-hvx Rt)
       [(int32_t _) (generate `valignb t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(codegen-scalar Rt))))]
       [integer (generate `valignbi t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(int->8bit Rt))))])]

    ;;vlalign
    [(vlalign Vu Vv Rt)
     (match (interpret-hvx Rt)
       [(int32_t _) (generate `vlalignb t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(codegen-scalar Rt))))]
       [integer (generate `vlalignbi t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(int->8bit Rt))))])]

    ;;vror
    [(vror Vu Rt) (generate `vror t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(eval-to-int Rt))))]
     
    ;;vrotr
    [(vrotr Vu Vv) (generate `vrotr t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen Vv))))]
    
    ;;vdeal
    [(vdeal Vu)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vdealh t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))]
       [(i8x128 _) (generate `vdealb t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))])]
    
    ;;vdeale
    [(vdeale Vu Vv) (generate `vdealb4w t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen Vv))))]
    
    ;;vshuff
    [(vshuff Vu)
     (match (interpret-hvx Vu)
       [(i8x128 _) (generate `vshuffb t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))]
       [(u8x128 _) (generate `vshuffb t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))]
       [(i16x64 _) (generate `vshuffh t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))]
       [(u16x64 _) (generate `vshuffh t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))])]
    
    ;;vtranspose
    
    ;;vpack
    [(vpack Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i16x64 _)(i16x64 _)) (generate `vpackhb.sat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (i32x32 _)(i32x32 _)) (generate `vpackwh.sat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (u16x64 _)(u16x64 _)) (generate `vpackhub.sat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (u32x32 _)(u32x32 _)) (generate `vpackwuh.sat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))])]
    
    ;;vpacke
    [(vpacke Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vpackeh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (i16x64 _)(i16x64 _)) (generate `vpackeb t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))])]
    
    ;;vpacko
    [(vpacko-n Vu Vv signed?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vpackoh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (i16x64 _)(i16x64 _)) (generate `vpackob t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))])]
    
    ;;vunpack
    [(vunpack Vu)
     (match (interpret-hvx Vu)
       [(i8x128 _) (generate `vunpackb t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))]
       [(i16x64 _) (generate `vunpackh t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))]
       [(u8x128 _) (generate `vunpackub t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))]
       [(u16x64 _) (generate `vunpackuh t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))])]
    
    ;;vunpacko

    ;;vgather

    ;;vzxt
    [(vzxt Vu signed?)
     (match (interpret-hvx Vu)
       [(u8x128 _) (generate `vzb t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))]
       [(u16x64 _) (generate `vzh t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))])]
    
    ;;vsxt
    [(vsxt Vu signed?)
     (match (interpret-hvx Vu)
       [(i8x128 _) (generate `vsb t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))]
       [(i16x64 _) (generate `vsh t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))])]
    
    ;;vadd
    [(vadd Vu Vv sat?)
     (if sat?
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vaddbsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (i16x64 _) (i16x64 _)) (generate `vaddhsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (i32x32 _) (i32x32 _)) (generate `vaddwsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (u8x128 _) (i8x128 _)) (generate `vaddububb t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (u8x128 _) (u8x128 _)) (generate `vaddubsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (u16x64 _) (u16x64 _)) (generate `vadduhsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (u32x32 _) (u32x32 _)) (generate `vadduwsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))])
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vaddb t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (i16x64 _) (i16x64 _)) (generate `vaddh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (i32x32 _) (i32x32 _)) (generate `vaddw t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]))]
    
    ;;vadd-w
    [(vadd-w Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (u8x128 _)(u8x128 _)) (generate `vaddubh t_64xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (i16x64 _)(i16x64 _)) (generate `vaddhw t_64xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (u16x64 _)(u16x64 _)) (generate `vadduhw t_64xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))])]

    ;;vadd-w-acc
    [(vadd-w-acc Vdd Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (u8x128 _)(u8x128 _)) (generate `vaddubh.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (i16x64 _)(i16x64 _)) (generate `vaddhw.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (u16x64 _)(u16x64 _)) (generate `vadduhw.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))])]
    
    ;;vmpy
    [(vmpy Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (int8_t _)) (generate `vmpybus t_64xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u8x128 _) (uint8_t _)) (generate `vmpyub t_64xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u16x64 _) (uint16_t _)) (generate `vmpyuh t_64xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64 _) (int16_t _)) (generate `vmpyh t_64xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vmpyi
    [(vmpyi Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (i32x32 _) (int16_t _)) (generate `vmpyiwh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64 _) (int8_t _)) (generate `vmpyihh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i32x32 _) (int8_t _)) (generate `vmpyiwb t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i32x32 _) (uint8_t _)) (generate `vmpyiwub t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vmpye
    [(vmpye Vu Rt) (generate `vmpyuhe t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
    
    ;;vmpy-acc
    [(vmpy-acc Vdd Vu Rt)
     (match (list (interpret-hvx Vdd) (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (i16x64x2 _ _) (u8x128 _) (int8_t _))
        (generate `vmpybus.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u16x64x2 _ _) (u8x128 _) (uint8_t _))
        (generate `vmpyub.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u32x32x2 _ _) (u16x64 _) (uint16_t _))
        (generate `vmpyuh.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i32x32x2 _ _) (i16x64 _) (int16_t _))
        (generate `vmpyh.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       ;; todo:
       ; Vxx.w+=vmpy(Vu.h,Rt.h):sat ;;do not have a sat field
     )]
    
    ;;vmpyi-acc
    [(vmpyi-acc Vd Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (i32x32 _) (int16_t _)) (generate `vmpyiwh.acc t_32xi32 `(list (,t_32xi32 ,(codegen Vd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64 _) (int8_t _)) (generate `vmpyihb.acc t_32xi32 `(list (,t_32xi32 ,(codegen Vd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i32x32 _) (int8_t _)) (generate `vmpyiwb.acc t_32xi32 `(list (,t_32xi32 ,(codegen Vd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i32x32 _) (uint8_t _)) (generate `vmpyiwub.acc t_32xi32 `(list (,t_32xi32 ,(codegen Vd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))])]
 
    ;;vmpye-acc
    [(vmpye-acc Vd Vu Rt) (generate `vmpyuhe.acc t_32xi32 `(list (,t_32xi32 ,(codegen Vd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]

    ;;vmpa
    [(vmpa Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (u8x128x2 _ _) (cons (int8_t _) (int8_t _)))
        (generate `vmpabus t_32xi32 `(list (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u8x128x2 _ _) (cons (uint8_t _) (uint8_t _)))
        (generate `vmpabuu t_32xi32 `(list (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u16x64x2 _ _) (cons (int8_t _) (int8_t _)))
        (generate `vmpauhb t_32xi32 `(list (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64x2 _ _) (cons (int8_t _) (int8_t _)))
        (generate `vmpahb t_32xi32 `(list (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vmpa-acc
    [(vmpa-acc Vdd Vuu Rt)
     (match (list (interpret-hvx Vdd) (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i16x64x2 _ _) (u8x128x2 _ _) (cons (int8_t w1) (int8_t w2)))
        (generate `vmpabus.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64x2 _ _) (u8x128x2 _ _) (cons (uint8_t w1) (uint8_t w2)))
        (generate `vmpabuu.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i32x32x2 _ _) (u16x64x2 _ _) (cons (int8_t w1) (int8_t w2)))
        (generate `vmpauhb.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i32x32x2 _ _) (i16x64x2 _ _) (cons (int8_t w1) (int8_t w2)))
        (generate `vmpahb.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vdmpy
    [(vdmpy Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (int8_t _)) (generate `vdmpybus t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64 _) (int8_t _)) (generate `vdmpyhb t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64 _) (int16_t _)) (generate `vdmpyhsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64 _) (uint16_t _)) (generate `vdmpyhsusat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vdmpy-sw
    [(vdmpy-sw Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i16x64x2 _ _) (int16_t _)) (generate `vdmpyhisat t_32xi32 `(list (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64x2 _ _) (uint16_t _)) (generate `vdmpyhsuisat t_32xi32 `(list (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u8x128x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vdmpybus.dv t_64xi32 `(list (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vdmpyhb.dv t_64xi32 `(list (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vdmpy-acc
    [(vdmpy-acc Vd Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (int8_t _)) (generate `vdmpybus.acc t_32xi32 `(list (,t_32xi32 ,(codegen Vd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64 _) (int8_t _)) (generate `vdmpyhb.acc t_32xi32 `(list (,t_32xi32 ,(codegen Vd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64 _) (int16_t _)) (generate `vdmpyhsat.acc t_32xi32 `(list (,t_32xi32 ,(codegen Vd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64 _) (uint16_t _)) (generate `vdmpyhsusat.acc t_32xi32 `(list (,t_32xi32 ,(codegen Vd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vdmpy-sw-acc
    [(vdmpy-sw-acc Vdd Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i16x64x2 _ _) (int16_t _)) (generate `vdmpyhisat.acc t_32xi32 `(list (,t_32xi32 ,(codegen Vdd)) (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64x2 _ _) (uint16_t _)) (generate `vdmpyhsuisat.acc t_32xi32 `(list (,t_32xi32 ,(codegen Vdd)) (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u8x128x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vdmpybus.dv.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64x2 _ _) (cons (int8_t _) (int8_t _))) (generate `vdmpyhb.dv.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vtmpy
    [(vtmpy Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i8x128x2 _ _) (int8_t _)) (generate `vtmpyb t_64xi32 `(list (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u8x128x2 _ _) (int8_t _)) (generate `vtmpybus t_64xi32 `(list (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64x2 _ _) (int8_t _)) (generate `vtmpyhb t_64xi32 `(list (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vtmpy-acc
    [(vtmpy-acc Vdd Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i8x128x2 _ _) (int8_t _)) (generate `vtmpyb.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u8x128x2 _ _) (int8_t _)) (generate `vtmpybus.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (i16x64x2 _ _) (int8_t _)) (generate `vtmpyhb.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vrmpy
    [(vrmpy Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (uint8_t _)) (generate `vrmpyub t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u8x128 _) (int8_t _)) (generate `vrmpybus t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))])]

    ;;vrmpy-acc
    [(vrmpy-acc Vd Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (uint8_t _)) (generate `vrmpyub.acc t_32xi32 `(list (,t_32xi32 ,(codegen Vd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(list (u8x128 _) (int8_t _)) (generate `vrmpybus.acc t_32xi32 `(list (,t_32xi32 ,(codegen Vd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vrmpy-p
    [(vrmpy-p Vuu Rt u1)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (u8x128x2 _ _) (list (uint8_t _) (uint8_t _) (uint8_t _) (uint8_t _)))
        (generate `vrmpyubi t_64xi32 `(list (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt)) (,t_i32 ,(bool->int u1))))]
       [(list (u8x128x2 _ _) (list (int8_t _) (int8_t _) (int8_t _) (int8_t _)))
        (generate `vrmpybusi t_64xi32 `(list (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt)) (,t_i32 ,(bool->int u1))))])]
    
    ;;vrmpy-p-acc
    [(vrmpy-p-acc Vdd Vuu Rt u1)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (u8x128x2 _ _) (list (uint8_t _) (uint8_t _) (uint8_t _) (uint8_t _)))
        (generate `vrmpyubi.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt)) (,t_i32 ,(bool->int u1))))]
       [(list (u8x128x2 _ _) (list (int8_t _) (int8_t _) (int8_t _) (int8_t _)))
        (generate `vrmpybusi.acc t_64xi32 `(list (,t_64xi32 ,(codegen Vdd)) (,t_64xi32 ,(codegen Vuu)) (,t_i32 ,(codegen-scalar Rt)) (,t_i32 ,(bool->int u1))))])]
    
    ;;vavg
    [(vavg Vu Vv rnd?)
     (if rnd?
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vavgbrnd t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (i16x64 _) (i16x64 _)) (generate `vavghrnd t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (i32x32 _) (i32x32 _)) (generate `vavgwrnd t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (u8x128 _) (u8x128 _)) (generate `vavgubrnd t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (u16x64 _) (u16x64 _)) (generate `vavguhrnd t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (u32x32 _) (u32x32 _)) (generate `vavguwrnd t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))])
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vavgb t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (i16x64 _) (i16x64 _)) (generate `vavgh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (i32x32 _) (i32x32 _)) (generate `vavgw t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (u8x128 _) (u8x128 _)) (generate `vavgub t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (u16x64 _) (u16x64 _)) (generate `vavguh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
           [(list (u32x32 _) (u32x32 _)) (generate `vavguw t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]))]
    
    ;;vnavg
    [(vnavg Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i8x128 _) (i8x128 _)) (generate `vnavgb t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (i16x64 _) (i16x64 _)) (generate `vnavgh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (i32x32 _) (i32x32 _)) (generate `vnavgw t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
       [(list (u8x128 _) (u8x128 _)) (generate `vnavgub t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))])]
    
    ;;vasl
    [(vasl Vu Rt)
     (match Vu
       [(i16x64 _) (generate `vaslh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(i32x32 _) (generate `vaslw t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vlsr
    [(vlsr Vu Rt)
     (match (interpret-hvx Vu)
       [(i8x128 _) (generate `vlsrb t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(i16x64 _) (generate `vlsrh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(i32x32 _) (generate `vlsrw t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vasr
    [(vasr Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vasrh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(i32x32 _) (generate `vasrw t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vasr-acc
    [(vasr-acc Vd Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vasrh.acc t_32xi32 `(list (,t_32xi32 ,(codegen Vd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))]
       [(i32x32 _) (generate `vasrw.acc t_32xi32 `(list (,t_32xi32 ,(codegen Vd)) (,t_32xi32 ,(codegen Vu)) (,t_i32 ,(codegen-scalar Rt))))])]
    
    ;;vasr-n
    [(vasr-n Vu Vv Rt round? sat? unsigned?)
     (if unsigned?
       (when sat?
           (if round?
               (match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (generate `vasrhubrndsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(codegen-scalar Rt))))]
                 [(list (u16x64 _) (u16x64 _)) (generate `vasruhubrndsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(codegen-scalar Rt))))]
                 [(list (i32x32 _) (i32x32 _)) (generate `vasrwubrndsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(codegen-scalar Rt))))]
                 [(list (u32x32 _) (u32x32 _)) (generate `vasruwubrndsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(codegen-scalar Rt))))])
               ((match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (generate `vasrhubsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(codegen-scalar Rt))))]
                 [(list (u16x64 _) (u16x64 _)) (generate `vasruhubsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(codegen-scalar Rt))))]
                 [(list (i32x32 _) (i32x32 _)) (generate `vasrwubsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(codegen-scalar Rt))))]
                 [(list (u32x32 _) (u32x32 _)) (generate `vasruwubsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(codegen-scalar Rt))))]))))
       (if sat?
           (if round?
               (match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (generate `vasrhrndsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(codegen-scalar Rt))))]
                 [(list (i32x32 _) (i32x32 _)) (generate `vasrwrndsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(codegen-scalar Rt))))])
               (match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (generate `vasrhsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(codegen-scalar Rt))))]
                 [(list (i32x32 _) (i32x32 _)) (generate `vasrwsat t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(codegen-scalar Rt))))]))
           (generate `vasrw t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv)) (,t_i32 ,(codegen-scalar Rt))))))]
    
    ;;vround
    [(vround Vu Vv signed?)
      (if signed?
          (match (list (interpret-hvx Vu) (interpret-hvx Vv))
            [(list (i16x64 _) (i16x64 _)) (generate `vroundhb t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
            [(list (i32x32 _) (i32x32 _)) (generate `vroundwh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))])
          (match (list (interpret-hvx Vu) (interpret-hvx Vv))
            [(list (i16x64 _) (i16x64 _)) (generate `vroundhub t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
            [(list (u16x64 _) (u16x64 _)) (generate `vrounduwuh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
            [(list (u32x32 _) (u32x32 _)) (generate `vrounduwuh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]
            [(list (i32x32 _) (i32x32 _)) (generate `vroundwuh t_32xi32 `(list (,t_32xi32 ,(codegen Vu)) (,t_32xi32 ,(codegen Vv))))]))]

    ;vabs
    [(vabs Vu sat?)
     (if sat?
         (match (interpret-hvx Vu)
           [(i8x128 _) (generate `vabsb.sat t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))]
           [(i16x64 _) (generate `vabsh.sat t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))]
           [(i32x32 _) (generate `vabsw.sat t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))])
         (match (interpret-hvx Vu)
           [(i8x128 _) (generate `vabsb t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))]
           [(i16x64 _) (generate `vabsh t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))]
           [(i32x32 _) (generate `vabsw t_32xi32 `(list (,t_32xi32 ,(codegen Vu))))]))]
    
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