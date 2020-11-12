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
     (generate `vread `32xi32 `(list (i32 ,(codegen buf)) (i32 ,(codegen loc))))]

    ;;vsplat
    [(vsplat Rt)
     (match (interpret-hvx Rt)
       [(int32_t _) (generate `lvsplatb `32xi32 `(i32 ,(eval-to-int Rt)))]
      )]

    ;;lo
    [(lo Vuu)
     (match (interpret-hvx Vuu)
       [(i32x32x2 _ _) (generate `lo `32xi32 `(64xi32 ,(codegen Vuu)))]
       [(i32x32 _) (generate `lo `16xi32 `(32xi32 ,(codegen Vuu)))])]

    ;;hi
    [(hi Vuu)
     (match (interpret-hvx Vuu)
       [(i32x32x2 _ _) (generate `hi `32xi32 `(64xi32 ,(codegen Vuu)))]
       [(i32x32 _) (generate `hi `16xi32 `(32xi32 ,(codegen Vuu)))])]
    
    ;;vcombine
    [(vcombine Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vcombine `64xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))])]
    
    ;;vshuffe
    [(vshuffe Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vshuffeb `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))])]
    
    ;;vshuffo
    [(vshuffo Vu Vv signed?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vshuffob `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))])]
    
    ;;vshuffoe  -G
    [(vshuffoe Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vshuffoeb `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))])]

    
    ;;vswap
    
    ;;vmux
    [(vmux Qt Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vmux `32xi32 `(list (128xi1 ,(codegen Qt)) (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))])]
    
    ;;vsat
    
    ;;valign
    [(valign Vu Vv Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `valignb `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv)) (i32 ,(codegen Rt))))])]
        
    ;;vror  -G
    [(vror Vu Rt)
     (match (interpret-hvx Vu)
       [(i32x32 _) (generate `vror `32xi32 `(list (32xi32 ,(codegen Vu)) (i32 ,(codegen Rt))))])]
     
    ;;vrotr
    
    ;;vdeal
    
    ;;vdeale

    ;;vshuff
    [(vshuff Vu)
     (match (interpret-hvx Vu)
       [(i32x32 _) (generate `vshuffh `32xi32 `(32xi32 ,(codegen Vu)))])
     ]
    
    ;;vtranspose
    
    ;;vpack -G
    [(vpack Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vpackh `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))])]
    
    
    ;;vpacke
    [(vpacke Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vpackeh `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))])]
    
    ;;vpacko  -G
    [(vpacko Vu Vv signed?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vpackoh `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))])]
    
    
    ;;vunpack  -G
    [(vunpack Vu)
     (match (interpret-hvx Vu)
       [(i32x32 _) (generate `vunpackh `32xi32 `(32xi32 ,(codegen Vu)))])]
    
    
    ;;vunpacko  -G
    [(vpacko Vu Vv signed?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (generate `vunpackoh `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))])]
    
    ;;vgather

    ;;vzxt
    
    ;;vsxt

    
    ;;vadd
    [(vadd Vu Vv sat?)
     (if sat?
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vaddbsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (i16x64 _) (i16x64 _)) (generate `vaddhsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (i32x32 _) (i32x32 _)) (generate `vaddwsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (u8x128 _) (u8x128 _)) (generate `vaddubsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (u16x64 _) (u16x64 _)) (generate `vadduhsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (u32x32 _) (u32x32 _)) (generate `vadduwsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
          )
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vaddb `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (i16x64 _) (i16x64 _)) (generate `vaddh `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (i32x32 _) (i32x32 _)) (generate `vaddw `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           )
         )]
    
    ;;vadd-w   
    ;;vadd-w-acc
    
    ;;vmpy
    [(vmpy Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vmpyh `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
       [(u8x128 _) (generate `vmpyub `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
       [(u16x64 _) (generate `vmpyuh `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
     )]
    
    ;;vmpyi
    
    ;;vmpye
    
    ;;vmpy-acc
    [(vmpy-acc Vdd Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vmpyh.acc `32xi32 `(list (64xi32 ,(codegen Vdd)) (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
       [(u8x128 _) (generate `vmpyub.acc `32xi32 `(list (64xi32 ,(codegen Vdd)) (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
       [(u16x64 _) (generate `vmpyuh.acc `32xi32 `(list (64xi32 ,(codegen Vdd)) (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
     )]
    
    ;;vmpyi-acc
    [(vmpyi-acc Vd Vu Rt)
     (match (list (interpret-hvx Vd) (interpret-hvx Vu))
       [(list (i16x64 _) (i16x64 _)) (generate `vmpyihb.acc `32xi32 `(list (32xi32 ,(codegen Vd)) (32xi32 ,(codegen Vu)) (i32 ,(eval-to-int Rt))))]
       [(list (i32x32 _) (i32x32 _)) (generate `vmpyiwb.acc `32xi32 `(list (32xi32 ,(codegen Vd)) (32xi32 ,(codegen Vu)) (i32 ,(eval-to-int Rt))))])
     ]
 
    ;;vmpye-acc

    ;;vmpa
    [(vmpa Vuu Rt)
     (match (interpret-hvx Vuu)
       [(i16x64x2 _ _) (generate `vmpahb `32xi32 `(list (64xi32 ,(codegen Vuu)) (32xi32 ,(codegen Rt))))]
       )]
    
    ;;vmpa-acc
    [(vmpa-acc Vdd Vuu Rt)
     (match (interpret-hvx Vuu)
       [(i16x64x2 _ _) (generate `vmpahb.acc `32xi32 `(list (64xi32 ,(codegen Vdd)) (64xi32 ,(codegen Vuu)) (32xi32 ,(codegen Rt))))]
       )]
    
    ;;vdmpy
    [(vdmpy Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vdmpyhb `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
     )]
    
    ;;vdmpy-sw
    
    ;;vdmpy-acc
    [(vdmpy-acc Vd Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vdmpyhb.acc `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
     )]
    
    ;;vdmpy-sw-acc
    
    ;;vtmpy
    [(vtmpy Vuu Rt)
     (match (interpret-hvx Vuu)
       [(i16x64x2 _ _) (generate `vtmpyhb `32xi32 `(list (64xi32 ,(codegen Vuu)) (32xi32 ,(codegen Rt))))]
     )]
    
    
    ;;vtmpy-acc
    [(vtmpy-acc Vdd Vuu Rt)
     (match (interpret-hvx Vuu)
       [(i16x64x2 _ _) (generate `vtmpyhb.acc `32xi32 `(list (64xi32 ,(codegen Vdd)) (64xi32 ,(codegen Vuu)) (32xi32 ,(codegen Rt))))]
     )]
    
    ;;vrmpy
    [(vrmpy Vu Rt)
     (match (interpret-hvx Vu)
       [(i32x32 _) (generate `vrmpyub `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
    )]
    
    ;;vrmpy-acc
    [(vrmpy-acc Vd Vu Rt)
     (match (interpret-hvx Vu)
       [(i32x32 _) (generate `vrmpyub.acc `32xi32 `(list (32xi32 ,(codegen Vd)) (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
    )]
    
    ;;vrmpy-p
    ;;vrmpy-p-acc
    
    ;;vavg
    [(vavg Vu Vv rnd?)
     (if rnd?
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vavgbrnd `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (i16x64 _) (i16x64 _)) (generate `vavghrnd `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (i32x32 _) (i32x32 _)) (generate `vavgwrnd `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (u8x128 _) (u8x128 _)) (generate `vavgubrnd `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (u16x64 _) (u16x64 _)) (generate `vavguhrnd `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (u32x32 _) (u32x32 _)) (generate `vavguwrnd `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           )
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (generate `vavgb `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (i16x64 _) (i16x64 _)) (generate `vavgh `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (i32x32 _) (i32x32 _)) (generate `vavgw `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (u8x128 _) (u8x128 _)) (generate `vavgub `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (u16x64 _) (u16x64 _)) (generate `vavguh `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           [(list (u32x32 _) (u32x32 _)) (generate `vavguw `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
           )
      )]
    
    ;;vnavg
    [(vnavg Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i8x128 _) (i8x128 _)) (generate `vnavgb `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
       [(list (i16x64 _) (i16x64 _)) (generate `vnavgh `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
       [(list (i32x32 _) (i32x32 _)) (generate `vnavgw `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
       [(list (u8x128 _) (u8x128 _)) (generate `vnavgub `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv))))]
     )]
    
    ;;vasl
    [(vasl Vu Rt)
     (match Vu
       [(i16x64 _) (generate `vaslh `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
       [(i32x32 _) (generate `vaslw `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
     )]
    
    ;;vlsr
    [(vlsr Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vlsrh `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
       [(i32x32 _) (generate `vlsrw `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
     )]
    
    ;;vasr
    [(vasr Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vasrh `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
       [(i32x32 _) (generate `vasrw `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
     )]
    
    ;;vasr-acc
    [(vasr-acc Vd Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (generate `vasrh.acc `32xi32 `(list (32xi32 (codegen Vd)) (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
       [(i32x32 _) (generate `vasrw.acc `32xi32 `(list (32xi32 (codegen Vd)) (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Rt))))]
       )]
    
    ;;vasr-n
    [(vasr-n Vu Vv Rt round? sat? unsigned?)
     (if unsigned?
       (when sat?
           (if round?
               (match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (generate `vasrhubrndsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (u16x64 _) (u16x64 _)) (generate `vasruhubrndsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (i32x32 _) (i32x32 _)) (generate `vasrwubrndsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (u32x32 _) (u32x32 _)) (generate `vasruwubrndsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))])
               ((match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (generate `vasrhubsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (u16x64 _) (u16x64 _)) (generate `vasruhubsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (i32x32 _) (i32x32 _)) (generate `vasrwubsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (u32x32 _) (u32x32 _)) (generate `vasruwubsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]))))
       (if sat?
           (if round?
               (match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (generate `vasrhrndsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (i32x32 _) (i32x32 _)) (generate `vasrwrndsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))])
               (match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (generate `vasrhsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]
                 [(list (i32x32 _) (i32x32 _)) (generate `vasrwsat `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv)) (i32 ,(eval-to-int Rt))))]))
           (generate `vasrw `32xi32 `(list (32xi32 ,(codegen Vu)) (32xi32 ,(codegen Vv)) (i32 ,(eval-to-int Rt)))))
     )]
    ;;vround

    [_ (read (open-input-string (format "~a" p)))]))
    
(provide (rename-out [codegen llvm_codegen]))