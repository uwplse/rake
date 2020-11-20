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

(define (codegen p)
  ;;(printf (format "~a\n" p))
  (match p

    ;;vread
    [(vread buf loc)
     (generate `vread `int32x32 `(list (i32 ,(codegen buf)) (i32 ,(codegen loc))))]

    ;;vsplat
    [(vsplat Rt)
     (match (interpret-hvx Rt)
       [(int32_t _) (generate `lvsplatb `int32x32 `(i32 ,(eval-to-int Rt)))]
      )]

    ;;lo
    [(lo Vuu)
     (match (interpret-hvx Vuu)
       [(i32x32x2 _ _) (generate `lo `int32x32 `(64xi32 ,(codegen Vuu)))]
       [(i32x32 _) (generate `lo `16xi32 `(int32x32 ,(codegen Vuu)))])]

    ;;hi
    [(hi Vuu)
     (match (interpret-hvx Vuu)
       [(i32x32x2 _ _) (generate `hi `int32x32 `(64xi32 ,(codegen Vuu)))]
       [(i32x32 _) (generate `hi `16xi32 `(int32x32 ,(codegen Vuu)))])]
    
    ;;vcombine
    [(vcombine Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vcombine `64xi32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))])]
    
    ;;vshuffe
    [(vshuffe Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vshuffeb `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))])]
    
    ;;vshuffo
    [(vshuffo Vu Vv signed?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vshuffob `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))])]
    
    ;;vshuffoe  -G
    [(vshuffoe Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vshuffoeb `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))])]

    
    ;;vswap
    
    ;;vmux
    [(vmux Qt Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vmux `int32x32 `(list (128xi1 ,(codegen Qt)) (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))])]
    
    ;;vsat
    
    ;;valign
    [(valign Vu Vv Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `valignb `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv)) (i32 ,(codegen Rt))))])]
        
    ;;vror  -G
    [(vror Vu Rt)
     (match (interpret-hvx Vu)
       [(i32x32 _) (generate `vror `int32x32 `(list (int32x32 ,(codegen Vu)) (i32 ,(codegen Rt))))])]
     
    ;;vrotr
    
    ;;vdeal
    
    ;;vdeale

    ;;vshuff
    [(vshuff Vu)
     (match (interpret-hvx Vu)
       [(i32x32 _) (generate `vshuffh `int32x32 `(int32x32 ,(codegen Vu)))])
     ]
    
    ;;vtranspose
    
    ;;vpack -G
    [(vpack Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vpackh `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))])]
    
    
    ;;vpacke
    [(vpacke Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vpackeh `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))])]
    
    ;;vpacko  -G
    [(vpacko Vu Vv signed?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vpackoh `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))])]
    
    
    ;;vunpack  -G
    [(vunpack Vu)
     (match (interpret-hvx Vu)
       [(i32x32 _) (generate `vunpackh `int32x32 `(int32x32 ,(codegen Vu)))])]
    
    
    ;;vunpacko  -G
    [(vpacko Vu Vv signed?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vunpackoh `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))])]
    
    ;;vgather

    ;;vzxt
    
    ;;vsxt

    
    ;;vadd
    [(vadd Vu Vv sat?)
     (if sat?
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vaddbsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (i16x64 _) (i16x64 _)) (generate `vaddhsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (i32x32 _) (i32x32 _)) (generate `vaddwsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (u8x128 _) (u8x128 _)) (generate `vaddubsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (u16x64 _) (u16x64 _)) (generate `vadduhsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (u32x32 _) (u32x32 _)) (generate `vadduwsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
          )
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vaddb `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (i16x64 _) (i16x64 _)) (generate `vaddh `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (i32x32 _) (i32x32 _)) (generate `vaddw `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           )
         )]
    
    ;;vadd-w   
    ;;vadd-w-acc
    
    ;;vmpy
    [(vmpy Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vmpyh `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
       [(u8x128 _) (generate `vmpyub `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
       [(u16x64 _) (generate `vmpyuh `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
     )]
    
    ;;vmpyi
    
    ;;vmpye
    
    ;;vmpy-acc
    [(vmpy-acc Vdd Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vmpyh.acc `int32x32 `(list (64xi32 ,(codegen Vdd)) (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
       [(u8x128 _) (generate `vmpyub.acc `int32x32 `(list (64xi32 ,(codegen Vdd)) (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
       [(u16x64 _) (generate `vmpyuh.acc `int32x32 `(list (64xi32 ,(codegen Vdd)) (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
     )]
    
    ;;vmpyi-acc
    [(vmpyi-acc Vd Vu Rt)
     (match (list (interpret-hvx Vd) (interpret-hvx Vu))
       [(list (i16x64 _) (i16x64 _)) (generate `vmpyihb.acc `int32x32 `(list (int32x32 ,(codegen Vd)) (int32x32 ,(codegen Vu)) (i32 ,(eval-to-int Rt))))]
       [(list (i32x32 _) (i32x32 _)) (generate `vmpyiwb.acc `int32x32 `(list (int32x32 ,(codegen Vd)) (int32x32 ,(codegen Vu)) (i32 ,(eval-to-int Rt))))])
     ]
 
    ;;vmpye-acc

    ;;vmpa
    [(vmpa Vuu Rt)
     (match (interpret-hvx Vuu)
       [(i16x64x2 _ _) (generate `vmpahb `int32x32 `(list (64xi32 ,(codegen Vuu)) (int32x32 ,(codegen Rt))))]
       )]
    
    ;;vmpa-acc
    [(vmpa-acc Vdd Vuu Rt)
     (match (interpret-hvx Vuu)
       [(i16x64x2 _ _) (generate `vmpahb.acc `int32x32 `(list (64xi32 ,(codegen Vdd)) (64xi32 ,(codegen Vuu)) (int32x32 ,(codegen Rt))))]
       )]
    
    ;;vdmpy
    [(vdmpy Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vdmpyhb `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
     )]
    
    ;;vdmpy-sw
    
    ;;vdmpy-acc
    [(vdmpy-acc Vd Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vdmpyhb.acc `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
     )]
    
    ;;vdmpy-sw-acc
    
    ;;vtmpy
    [(vtmpy Vuu Rt)
     (match (interpret-hvx Vuu)
       [(i16x64x2 _ _) (generate `vtmpyhb `int32x32 `(list (64xi32 ,(codegen Vuu)) (int32x32 ,(codegen Rt))))]
     )]
    
    
    ;;vtmpy-acc
    [(vtmpy-acc Vdd Vuu Rt)
     (match (interpret-hvx Vuu)
       [(i16x64x2 _ _) (generate `vtmpyhb.acc `int32x32 `(list (64xi32 ,(codegen Vdd)) (64xi32 ,(codegen Vuu)) (int32x32 ,(codegen Rt))))]
     )]
    
    ;;vrmpy
    [(vrmpy Vu Rt)
     (match (interpret-hvx Vu)
       [(i32x32 _) (generate `vrmpyub `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
    )]
    
    ;;vrmpy-acc
    [(vrmpy-acc Vd Vu Rt)
     (match (interpret-hvx Vu)
       [(i32x32 _) (generate `vrmpyub.acc `int32x32 `(list (int32x32 ,(codegen Vd)) (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
    )]
    
    ;;vrmpy-p
    ;;vrmpy-p-acc
    
    ;;vavg
    [(vavg Vu Vv rnd?)
     (if rnd?
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vavgbrnd `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (i16x64 _) (i16x64 _)) (generate `vavghrnd `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (i32x32 _) (i32x32 _)) (generate `vavgwrnd `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (u8x128 _) (u8x128 _)) (generate `vavgubrnd `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (u16x64 _) (u16x64 _)) (generate `vavguhrnd `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (u32x32 _) (u32x32 _)) (generate `vavguwrnd `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           )
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vavgb `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (i16x64 _) (i16x64 _)) (generate `vavgh `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (i32x32 _) (i32x32 _)) (generate `vavgw `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (u8x128 _) (u8x128 _)) (generate `vavgub `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (u16x64 _) (u16x64 _)) (generate `vavguh `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           [(list (u32x32 _) (u32x32 _)) (generate `vavguw `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
           )
      )]
    
    ;;vnavg
    [(vnavg Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i8x128 _) (i8x128 _)) (generate `vnavgb `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
       [(list (i16x64 _) (i16x64 _)) (generate `vnavgh `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
       [(list (i32x32 _) (i32x32 _)) (generate `vnavgw `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
       [(list (u8x128 _) (u8x128 _)) (generate `vnavgub `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv))))]
     )]
    
    ;;vasl
    [(vasl Vu Rt)
     (match Vu
       [(i16x64 _) (generate `vaslh `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
       [(i32x32 _) (generate `vaslw `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
     )]
    
    ;;vlsr
    [(vlsr Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vlsrh `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
       [(i32x32 _) (generate `vlsrw `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
     )]
    
    ;;vasr
    [(vasr Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vasrh `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
       [(i32x32 _) (generate `vasrw `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
     )]
    
    ;;vasr-acc
    [(vasr-acc Vd Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vasrh.acc `int32x32 `(list (int32x32 (codegen Vd)) (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
       [(i32x32 _) (generate `vasrw.acc `int32x32 `(list (int32x32 (codegen Vd)) (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Rt))))]
       )]
    
    ;;vasr-n
    [(vasr-n Vu Vv Rt round? sat? unsigned?)
     (if unsigned?
       (when sat?
           (if round?
               (match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (generate `vasrhubrndsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (u16x64 _) (u16x64 _)) (generate `vasruhubrndsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (i32x32 _) (i32x32 _)) (generate `vasrwubrndsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (u32x32 _) (u32x32 _)) (generate `vasruwubrndsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))])
               ((match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (generate `vasrhubsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (u16x64 _) (u16x64 _)) (generate `vasruhubsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (i32x32 _) (i32x32 _)) (generate `vasrwubsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (u32x32 _) (u32x32 _)) (generate `vasruwubsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]))))
       (if sat?
           (if round?
               (match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (generate `vasrhrndsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (i32x32 _) (i32x32 _)) (generate `vasrwrndsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))])
               (match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (generate `vasrhsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (i32x32 _) (i32x32 _)) (generate `vasrwsat `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]))
           (generate `vasrw `int32x32 `(list (int32x32 ,(codegen Vu)) (int32x32 ,(codegen Vv)) (i32 ,(eval-to-int Rt)))))
     )]
    ;;vround

    [_ (read (open-input-string (format "~a" p)))]))
    
(provide (rename-out [codegen llvm_codegen]))