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
    (format "0x~a~a~a~a" digitstr digitstr digitstr digitstr))

(define (codegen p)
  ;;(printf (format "~a\n" p))
  (match p

    ;;vread
    [(vread buf loc)
     (format "Q6_Vh_load(~a, ~a)" (codegen buf) (codegen loc))
     ]

    ;;vsplat
    [(vsplat Rt)
     (match (interpret-hvx Rt)
       [(int8_t _) (format "Q6_Vb_vsplat_R(~a)" (codegen Rt))]
       [(int16_t _) (format "Q6_Vh_vsplat_R(~a)" (codegen Rt))]
       [(int32_t _) (format "Q6_V_vsplat_R(~a)" (codegen Rt))])
     ]

    ;;lo  --Did not find this instruction and 'hi' instruction on the reference manual,
    ;;but would like to make this guess based on guassian.c file
    [(lo Vuu)
     (format "Q6_V_lo_W(~a)" (codegen Vuu))
     ]

    ;;hi
    [(hi Vuu)
     (format "Q6_V_hi_W(~a)" (codegen Vuu))
     ]
    
    ;;vcombine
    [(vcombine Vu Vv)
     (format "Q6_W_vcombine_VV(~a, ~a)" (codegen Vu) (codegen Vv))
     ]
    
    ;;vshuffe
    [(vshuffe Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i8x128 _)(i8x128 _)) (format "Q6_Vb_vshuffe_VbVb(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "Q6_Vh_vshuffe_VhVh(~a, ~a)" (codegen Vu) (codegen Vv))])
     ]
    
    ;;vshuffo
    [(vshuffo Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i8x128 _)(i8x128 _)) (format "Q6_Vb_vshuffo_VbVb(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "Q6_Vh_vshuffo_VhVh(~a, ~a)" (codegen Vu) (codegen Vv))])
     ]
    
    ;;vshuffoe
    [(vshuffoe Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i8x128 _)(i8x128 _)) (format "Q6_Vb_vshuffoe_VbVb(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "Q6_Vh_vshuffoe_VhVh(~a, ~a)" (codegen Vu) (codegen Vv))])
     ]

    ;;vswap
    [(vswap Qt Vu Vv)
     (format "Q6_W_vswap_QVV(~a, ~a, ~a)" (codegen Qt) (codegen Vu) (codegen Vv))
     ]
    
    ;;vmux
    [(vmux Qt Vu Vv)
     (format "Q6_V_vmux_QVV(~a, ~a, ~a)" (codegen Qt) (codegen Vu) (codegen Vv))
     ]
    
    ;;vsat
    [(vsat Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (format "Q6_Vh_vsat_VwVw(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "Q6_Vub_vsat_VhVh(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (u32x32 _)(u32x32 _)) (format "Q6_Vuh_vsat_VuwVuw(~a, ~a)" (codegen Vu) (codegen Vv))])
     ]
    
    ;;valign
    [(valign Vu Vv Rt)
     (match Rt
       [(int32_t _) (format "Q6_V_valign_VVI(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (codegen Rt))]
       [integer (format "Q6_Vub_vsat_VhVh(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (codegen Rt))])
     ]
    
    ;;vror
    [(vread Vu Rt)
     (format "Q6_V_vror_VR(~a, ~a)" (codegen Vu) (codegen Rt))
     ]
    
    ;;vrotr
    [(vread Vu Vv)
     (format "Q6_V_vrotr_VR(~a, ~a)" (codegen Vu) (codegen Vv))
     ]
    
    ;;vdeal
    [(vdeal Vu)
     (match Vu
       [(i8x128 _) (format "Q6_Vb_vdeal_Vb(~a)" (codegen Vu))]
       [(i16x64 _) (format "Q6_Vb_vdeal_Vh(~a)" (codegen Vu))])
     ]
    
    ;;vdeale
    [(vdeale Vu Vv)
     (format "Q6_Vb_vdeale_VbVb(~a, ~a)" (codegen Vu) (codegen Vv))
     ]
    
    ;;vshuff
    [(vshuff Vu)
     (match Vu
       [(i8x128 _) (format "Q6_Vb_vshuff_Vb(~a)" (codegen Vu))]
       [(i16x64 _) (format "Q6_Vb_vshuff_Vh(~a)" (codegen Vu))])
     ]
    
    ;;vtranspose
    
    ;;vpack   --unsigned ones: how to detect the output type diffs?
    [(vpack Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (format "Q6_Vh_vpack_VwVw_sat(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "Q6_Vb_vpack_VhVh_sat(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (u32x32 _)(u32x32 _)) (format "Q6_Vuh_vpack_VwVw_sat(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (u16x64 _)(u16x64 _)) (format "Q6_Vub_vpack_VhVh_sat(~a, ~a)" (codegen Vu) (codegen Vv))])
     ]
    
    ;;vpacke
    [(vpacke Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (format "Q6_Vh_vpacke_VwVw(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "Q6_Vb_vpacke_VhVh(~a, ~a)" (codegen Vu) (codegen Vv))])
     ]
    
    ;;vpacko
    [(vpacko Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (format "Q6_Vh_vpacko_VwVw(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "Q6_Vb_vpacko_VhVh(~a, ~a)" (codegen Vu) (codegen Vv))])
     ]
    
    ;;vunpack
    [(vunpack Vu)
     (match Vu
       [(i8x128 _) (format "Q6_Wh_vunpack_Vb(~a)" (codegen Vu))]
       [(i16x64 _) (format "Q6_Ww_vunpack_Vh(~a)" (codegen Vu))]
       [(u8x128 _) (format "Q6_Wuh_vunpack_Vub(~a)" (codegen Vu))]
       [(u16x64 _) (format "Q6_Wuw_vunpack_Vuh(~a)" (codegen Vu))])
     ]
    
    ;;vunpacko

    ;;vgather
    
    ;; vasr-n
    [(vasr-n Vu Vv Rt round? sat? unsigned?)
     (when unsigned?
     (match (list (interpret-hvx Vu) (interpret-hvx Vv) (interpret-hvx Rt))
       [(list (i16x64 _)  (i16x64 _) (int8_t _))
        (format "Q6_Vub_vasr_VhVhR_rnd_sat(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))]
       [_ (format "~a" p)]
       ))]

    ;; vmpyi-acc
    [(vmpyi-acc Vd Vu Rt)
     (match (list (interpret-hvx Vd) (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (i16x64 d) (i16x64 u) (int8_t _))
        (format "Q6_Vh_vmpyiacc_VhVhRb(~a, ~a, ~a)" (codegen Vd) (codegen Vu) (int->8bit (eval-to-int Rt)))]
       [_ (format "~a" p)]
       )]

    ;;vadd
    [(vadd Vu Vv sat?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i16x64 _) (i16x64 _))
        (format "Q6_Vh_vadd_VhVh(~a, ~a)" (codegen Vu) (codegen Vv))]
       [_ (format "~a" p)]
       )]



    ;;+
    [(+ a b)
     (format "~a+~a" (codegen b) (codegen a))]
    
    ;; Gather instruction
    [(gather ht) "<cpp-gather-isntr>"]
     
    [_ (format "~a" p)]))
    
(provide (rename-out [codegen cpp_codegen]))