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
       [(int8_t _) (format "Q6_Vb_vsplat_R(~a)" (eval-to-int Rt))]
       [(int16_t _) (format "Q6_Vh_vsplat_R(~a)" (eval-to-int Rt))]
       [(int32_t _) (format "Q6_V_vsplat_R(~a)" (eval-to-int Rt))])
     ]

    ;;lo
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
    [(vshuffo Vu Vv signed?)
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
     (match (interpret-hvx Rt)
       [(int32_t _) (format "Q6_V_valign_VVI(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))]
       [integer (format "Q6_Vub_vsat_VhVh(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))])
     ]
    
    ;;vror
    [(vread Vu Rt)
     (format "Q6_V_vror_VR(~a, ~a)" (codegen Vu) (eval-to-int Rt))
     ]
    
    ;;vrotr
    [(vread Vu Vv)
     (format "Q6_V_vrotr_VR(~a, ~a)" (codegen Vu) (codegen Vv))
     ]
    
    ;;vdeal
    [(vdeal Vu)
     (match (interpret-hvx Vu)
       [(i8x128 _) (format "Q6_Vb_vdeal_Vb(~a)" (codegen Vu))]
       [(i16x64 _) (format "Q6_Vb_vdeal_Vh(~a)" (codegen Vu))])
     ]
    
    ;;vdeale
    [(vdeale Vu Vv)
     (format "Q6_Vb_vdeale_VbVb(~a, ~a)" (codegen Vu) (codegen Vv))
     ]
    
    ;;vshuff
    [(vshuff Vu)
     (match (interpret-hvx Vu)
       [(i8x128 _) (format "Q6_Vb_vshuff_Vb(~a)" (codegen Vu))]
       [(i16x64 _) (format "Q6_Vb_vshuff_Vh(~a)" (codegen Vu))])
     ]
    
    ;;vtranspose
    
    ;;vpack
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
    [(vpacko Vu Vv signed?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (format "Q6_Vh_vpacko_VwVw(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "Q6_Vb_vpacko_VhVh(~a, ~a)" (codegen Vu) (codegen Vv))])
     ]
    
    ;;vunpack
    [(vunpack Vu)
     (match (interpret-hvx Vu)
       [(i8x128 _) (format "Q6_Wh_vunpack_Vb(~a)" (codegen Vu))]
       [(i16x64 _) (format "Q6_Ww_vunpack_Vh(~a)" (codegen Vu))]
       [(u8x128 _) (format "Q6_Wuh_vunpack_Vub(~a)" (codegen Vu))]
       [(u16x64 _) (format "Q6_Wuw_vunpack_Vuh(~a)" (codegen Vu))])
     ]
    
    ;;vunpacko

    ;;vgather

    ;;vzxt
    [(vzxt Vu)
     (match (interpret-hvx Vu)
       [(u8x128 _) (format "Q6_Wuh_vzxt_Vub(~a)" (codegen Vu))]
       [(u16x64 _) (format "Q6_Wuw_vzxt_Vuh(~a)" (codegen Vu))])
     ]
    
    ;;vsxt
    [(vsxt Vu)
     (match (interpret-hvx Vu)
       [(i8x128 _) (format "Q6_Wh_vsxt_Vb(~a)" (codegen Vu))]
       [(i16x64 _) (format "Q6_Ww_vsxt_Vh(~a)" (codegen Vu))])
     ]

    
    ;;vadd
    [(vadd Vu Vv sat?)
     (if sat?
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (format "Q6_Vb_vadd_VbVb_sat(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (i16x64 _) (i16x64 _)) (format "Q6_Vh_vadd_VhVh_sat(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (i32x32 _) (i32x32 _)) (format "Q6_Vw_vadd_VwVw_sat(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (u8x128 _) (u8x128 _)) (format "Q6_Vub_vadd_VubVub_sat(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (u16x64 _) (u16x64 _)) (format "Q6_Vuh_vadd_VuhVuh_sat(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (u32x32 _) (u32x32 _)) (format "Q6_Vuw_vadd_VuwVuw_sat(~a, ~a)" (codegen Vu) (codegen Vv))]
           )
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (format "Q6_Vb_vadd_VbVb(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (i16x64 _) (i16x64 _)) (format "Q6_Vh_vadd_VhVh(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (i32x32 _) (i32x32 _)) (format "Q6_Vw_vadd_VwVw(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (u8x128 _) (u8x128 _)) (format "Q6_Vub_vadd_VubVub(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (u16x64 _) (u16x64 _)) (format "Q6_Vuh_vadd_VuhVuh(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (u32x32 _) (u32x32 _)) (format "Q6_Vuw_vadd_VuwVuw(~a, ~a)" (codegen Vu) (codegen Vv))]
           )
         )]
    
    ;;vadd-w
    [(vadd-w Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (u8x128 _)(u8x128 _)) (format "Q6_Wh_vadd_VubVub(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "Q6_Ww_vadd_VhVh(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (u16x64 _)(u16x64 _)) (format "Q6_Ww_vadd_VuhVuh(~a, ~a)" (codegen Vu) (codegen Vv))]
       )]
    
    ;;vadd-w-acc
    [(vadd Vdd Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (u8x128 _)(u8x128 _)) (format "Q6_Wh_vaddacc_WhVubVub(~a, ~a, ~a)" (codegen Vdd) (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "Q6_Ww_vaddacc_WwVhVh(~a, ~a, ~a)" (codegen Vdd) (codegen Vu) (codegen Vv))]
       [(list (u16x64 _)(u16x64 _)) (format "Q6_Ww_vaddacc_WwVuhVuh(~a, ~a, ~a)" (codegen Vdd) (codegen Vu) (codegen Vv))]
     )]
    
    ;;vmpy
    [(vmpy Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (int8_t _)) (format "Q6_Wh_vmpy_VubRb(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
       [(list (u8x128 _) (uint8_t _)) (format "Q6_Wuh_vmpy_VubRub(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
       [(list (u16x64 _) (uint16_t _)) (format "Q6_Wuw_vmpy_VuhRuh(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (int16_t _)) (format "Q6_Ww_vmpy_VhRh(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vmpyi
    [(vmpyi Vu Rt)
     (format "Q6_Vh_vmpyi_VhVh(~a, ~a)" (codegen Vu) (int->8bit (eval-to-int Rt)))]
    
    ;;vmpye
    [(vmpyi Vu Rt)
     (format "Q6_Vuw_vmpye_VuhRuh(~a, ~a)" (codegen Vu) (int->8bit (eval-to-int Rt)))]
    
    ;;vmpy-acc
    [(vmpy-acc Vdd Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (int8_t _)) (format "Q6_Wh_vmpyacc_WhVubRb(~a, ~a, ~a)" (codegen Vdd) (codegen Vu) (eval-to-int Rt))]
       [(list (u8x128 _) (uint8_t _)) (format "Q6_Wuh_vmpyacc_WuhVubRub(~a, ~a, ~a)" (codegen Vdd) (codegen Vu) (eval-to-int Rt))]
       [(list (u16x64 _) (uint16_t _)) (format "Q6_Wuw_vmpyacc_WuwVuhRuh(~a, ~a, ~a)" (codegen Vdd) (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (int16_t _)) (format "Q6_Ww_vmpyacc_WwVhRh(~a, ~a, ~a)" (codegen Vdd) (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vmpyi-acc
    [(vmpyi-acc Vd Vu Rt)
     (format "Q6_Vh_vmpyiacc_VhVhRb(~a, ~a, ~a)" (codegen Vd) (codegen Vu) (int->8bit (eval-to-int Rt)))]
    
    ;;vmpye-acc
    [(vmpyi-acc Vd Vu Rt)
     (format "Q6_Vuw_vmpyeacc_VuwVuhRuh(~a, ~a, ~a)" (codegen Vd) (codegen Vu) (int->8bit (eval-to-int Rt)))]
   
    ;;vmpa
    [(vmpa Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (u8x128x2 _ _) (int8_t _)) (format "Q6_Wh_vmpa_WubRb(~a, ~a)" (codegen Vuu) (eval-to-int Rt))]
       [(list (u8x128x2 _ _) (uint8_t _)) (format "Q6_Wh_vmpa_WubRub(~a, ~a)" (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (int16_t _)) (format "Q6_Ww_vmpa_WhRb(~a, ~a)" (codegen Vuu) (eval-to-int Rt))]
       [(list (u16x64x2 _ _) (int16_t _)) (format "Q6_Ww_vmpa_WuhRb(~a, ~a)" (codegen Vuu) (eval-to-int Rt))]
     )]
    
    ;;vmpa-acc
    [(vmpa-acc Vdd Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (u8x128x2 _ _) (int8_t _)) (format "Q6_Wh_vmpaacc_WhWubRb(~a, ~a, ~a)" (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (u8x128x2 _ _) (uint8_t _)) (format "Q6_Wh_vmpaacc_WhWubRub(~a, ~a, ~a)" (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (int16_t _)) (format "Q6_Ww_vmpaacc_WwWhRb(~a, ~a, ~a)" (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (u16x64x2 _ _) (int16_t _)) (format "Q6_Ww_vmpaacc_WwWuhRb(~a, ~a, ~a)" (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
     )]
    
    ;;vdmpy
    [(vdmpy Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (int8_t _)) (format "Q6_Vh_vdmpy_VubRb(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (int8_t _)) (format "Q6_Vw_vdmpy_VhRb(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (int16_t _)) (format "Q6_Vw_vdmpy_VhRh_sat(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (uint16_t _)) (format "Q6_Vw_vdmpy_VhRuh_sat(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
       [(list (u8x128 _) (int8_t _)) (format "Q6_Vh_vdmpy_VubRb(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vdmpy-sw
    [(vdmpy-sw Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i16x64x2 _ _) (int16_t _)) (format "Q6_Vw_vdmpy_WhRh_sat(~a, ~a)" (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (uint16_t _)) (format "Q6_Vw_vdmpy_WhRuh_sat(~a, ~a)" (codegen Vuu) (eval-to-int Rt))]
       [(list (u8x128x2 _ _) (int8_t _)) (format "Q6_Wh_vdmpy_WubRb(~a, ~a)" (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (int8_t _)) (format "Q6_Ww_vdmpy_WhRb(~a, ~a)" (codegen Vuu) (eval-to-int Rt))]
     )]
    
    ;;vdmpy-acc
    [(vdmpy-acc Vd Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (int8_t _)) (format "Q6_Vh_vdmpyacc_VhVubRb(~a, ~a, ~a)" (codegen Vd) (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (int8_t _)) (format "Q6_Vw_vdmpyacc_VwVhRb(~a, ~a, ~a)" (codegen Vd) (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (int16_t _)) (format "Q6_Vw_vdmpyacc_VwVhRh_sat(~a, ~a, ~a)" (codegen Vd) (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (uint16_t _)) (format "Q6_Vw_vdmpyacc_VwVhRuh_sat(~a, ~a, ~a)" (codegen Vd) (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vdmpy-sw-acc
    [(vdmpy-sw-acc Vdd Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i16x64x2 _ _) (int16_t _)) (format "Q6_Vw_vdmpyacc_VwWhRh_sat(~a, ~a, ~a)" (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (uint16_t _)) (format "Q6_Vw_vdmpyacc_VwWhRuh_sat(~a, ~a, ~a)" (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (u8x128x2 _ _) (int8_t _)) (format "Q6_Wh_vdmpyacc_WhWubRb(~a, ~a, ~a)" (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (int8_t _)) (format "Q6_Ww_vdmpyacc_WwWhRb(~a, ~a, ~a)" (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
     )]
    
    ;;vtmpy
    [(vtmpy Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i8x128x2 _ _) (int8_t _)) (format "Q6_Wh_vtmpy_WbRb(~a, ~a)" (codegen Vuu) (eval-to-int Rt))]
       [(list (u8x128x2 _ _) (int8_t _)) (format "Q6_Wh_vtmpy_WubRb(~a, ~a)" (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (int8_t _)) (format "Q6_Ww_vtmpy_WhRb(~a, ~a)" (codegen Vuu) (eval-to-int Rt))]
     )]
    
    ;;vtmpy-acc
    [(vtmpy-acc Vdd Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i8x128x2 _ _) (int8_t _)) (format "Q6_Wh_vtmpyacc_WhWbRb(~a, ~a, ~a)" (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (u8x128x2 _ _) (int8_t _)) (format "Q6_Wh_vtmpyacc_WhWubRb(~a, ~a, ~a)" (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (int8_t _)) (format "Q6_Ww_vtmpyacc_WwWhRb(~a, ~a, ~a)" (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
    )]
    
    ;;vrmpy
    [(vrmpy Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (uint8_t _)) (format "Q6_Vuw_vrmpy_VubRub(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
       [(list (u8x128 _) (int8_t _)) (format "Q6_Vw_vrmpy_VubRb(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vrmpy-acc
    [(vrmpy-acc Vd Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (uint8_t _)) (format "Q6_Vuw_vrmpyacc_VuwVubRub(~a, ~a, ~a)" (codegen Vd) (codegen Vu) (eval-to-int Rt))]
       [(list (u8x128 _) (int8_t _)) (format "Q6_Vw_vrmpyacc_VwVubRb(~a, ~a, ~a)" (codegen Vd) (codegen Vu) (eval-to-int Rt))]
    )]
    
    ;;vrmpy-p
    [(vrmpy-p Vuu Rt u1)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (u8x128x2 _ _) (uint8_t _)) (format "Q6_Wuw_vrmpy_WubRubI(~a, ~a, ~a)" (codegen Vuu) (eval-to-int Rt) (eval-to-int u1))]
       [(list (u8x128x2 _ _) (int8_t _)) (format "Q6_Ww_vrmpy_WubRbI(~a, ~a, ~a)" (codegen Vuu) (eval-to-int Rt) (eval-to-int u1))]
    )]
    
    ;;vrmpy-p-acc
    [(vrmpy-p-acc Vdd Vuu Rt u1)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (u8x128x2 _ _) (uint8_t _)) (format "Q6_Wuw_vrmpyacc_WuwWubRubI(~a, ~a, ~a, ~a)" (codegen Vdd) (codegen Vuu) (eval-to-int Rt) (eval-to-int u1))]
       [(list (u8x128x2 _ _) (int8_t _)) (format "Q6_Ww_vrmpyacc_WwWubRbI(~a, ~a, ~a, ~a)" (codegen Vdd) (codegen Vuu) (eval-to-int Rt) (eval-to-int u1))]
    )]
    
    ;;vavg
    [(vavg Vu Vv rnd?)
     (if rnd?
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (format "Q6_Vb_vavg_VbVb_rnd(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (i16x64 _) (i16x64 _)) (format "Q6_Vh_vavg_VhVh_rnd(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (i32x32 _) (i32x32 _)) (format "Q6_Vw_vavg_VwVw_rnd(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (u8x128 _) (u8x128 _)) (format "Q6_Vub_vavg_VubVub_rnd(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (u16x64 _) (u16x64 _)) (format "Q6_Vuh_vavg_VuhVuh_rnd(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (u32x32 _) (u32x32 _)) (format "Q6_Vuw_vavg_VuwVuw_rnd(~a, ~a)" (codegen Vu) (codegen Vv))]
           )
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (format "Q6_Vb_vavg_VbVb(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (i16x64 _) (i16x64 _)) (format "Q6_Vh_vavg_VhVh(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (i32x32 _) (i32x32 _)) (format "Q6_Vw_vavg_VwVw(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (u8x128 _) (u8x128 _)) (format "Q6_Vub_vavg_VubVub(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (u16x64 _) (u16x64 _)) (format "Q6_Vuh_vavg_VuhVuh(~a, ~a)" (codegen Vu) (codegen Vv))]
           [(list (u32x32 _) (u32x32 _)) (format "Q6_Vuw_vavg_VuwVuw(~a, ~a)" (codegen Vu) (codegen Vv))]
           )
      )]
    
    ;;vnavg
    [(vnavg Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i8x128 _)(i8x128 _)) (format "Q6_Vb_vnavg_VbVb(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (u8x128 _)(u8x128 _)) (format "Q6_Vb_vnavg_VubVub(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "Q6_Vh_vnavg_VhVh(~a, ~a)" (codegen Vu) (codegen Vv))]
       [(list (i32x32 _)(i32x32 _)) (format "Q6_Vw_vnavg_VwVw(~a, ~a)" (codegen Vu) (codegen Vv))]
     )]
    
    ;;vasl
    [(vasl Vu Rt)
     (match Vu
       [(i16x64 _) (format "Q6_Vh_vasl_VhR(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
       [(i32x32 _) (format "Q6_Vw_vasl_VwR(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vlsr
    [(vlsr Vu Rt)
     (match (interpret-hvx Vu)
       [(u8x128 _) (format "Q6_Vub_vlsr_VubR(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
       [(u16x64 _) (format "Q6_Vuh_vlsr_VuhR(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
       [(u32x32 _) (format "Q6_Vuw_vlsr_VuwR(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vasr
    [(vasr Vu Rt)
     (match (interpret-hvx Vu)
       [(u16x64 _) (format "Q6_Vh_vasr_VhR(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
       [(u32x32 _) (format "Q6_Vw_vasr_VwR(~a, ~a)" (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vasr-acc
    [(vasr-acc Vd Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (format "Q6_Vh_vasracc_VhVhR(~a, ~a, ~a)" (codegen Vd) (codegen Vu) (eval-to-int Rt))]
       [(i32x32 _) (format "Q6_Vw_vasracc_VwVwR(~a, ~a, ~a)" (codegen Vd) (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vasr-n
    [(vasr-n Vu Vv Rt round? sat? unsigned?)
     (if unsigned?
       (when sat?
           (if round?
               (match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (format "Q6_Vub_vasr_VhVhR_rnd_sat(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (u16x64 _) (u16x64 _)) (format "Q6_Vub_vasr_VuhVuhR_rnd_sat(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (i32x32 _) (i32x32 _)) (format "Q6_Vuh_vasr_VwVwR_rnd_sat(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (u32x32 _) (u32x32 _)) (format "Q6_Vuh_vasr_VuwVuwR_rnd_sat(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))])
               ((match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (format "Q6_Vub_vasr_VhVhR_sat(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (u16x64 _) (u16x64 _)) (format "Q6_Vub_vasr_VuhVuhR_sat(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (i32x32 _) (i32x32 _)) (format "Q6_Vuh_vasr_VwVwR_sat(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (u32x32 _) (u32x32 _)) (format "Q6_Vuh_vasr_VuwVuwR_sat(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))]))))
       (if sat?
           (if round?
               (match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (format "Q6_Vb_vasr_VhVhR_rnd_sat(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (i32x32 _) (i32x32 _)) (format "Q6_Vh_vasr_VwVwR_rnd_sat(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))])
               (match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (format "Q6_Vb_vasr_VhVhR_sat(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (i32x32 _) (i32x32 _)) (format "Q6_Vh_vasr_VwVwR_sat(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt))]))
           (format "Q6_Vh_vasr_VwVwR(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt)))
     )]
    
    ;;vround
    [(vround Vu Vv signed?)
      (if signed?
          (match (list (interpret-hvx Vu) (interpret-hvx Vv))
            [(list (i16x64 _) (i16x64 _)) (format "Q6_Vb_vround_VhVh_sat(~a, ~a)" (codegen Vu) (codegen Vv))]
            [(list (i32x32 _) (i32x32 _)) (format "Q6_Vh_vround_VwVw_sat(~a, ~a)" (codegen Vu) (codegen Vv))])
          (match (list (interpret-hvx Vu) (interpret-hvx Vv))
            [(list (i16x64 _) (i16x64 _)) (format "Q6_Vub_vround_VhVh_sat(~a, ~a)" (codegen Vu) (codegen Vv))]
            [(list (u16x64 _) (u16x64 _)) (format "Q6_Vub_vround_VuhVuh_sat(~a, ~a)" (codegen Vu) (codegen Vv))]
            [(list (u32x32 _) (u32x32 _)) (format "Q6_Vuh_vround_VuwVuw_sat(~a, ~a)" (codegen Vu) (codegen Vv))]
            [(list (i32x32 _) (i32x32 _)) (format "Q6_Vuh_vround_VwVw_sat(~a, ~a)" (codegen Vu) (codegen Vv))]))]

    [_ (format "~a" p)]))
    
(provide (rename-out [codegen cpp_codegen]))