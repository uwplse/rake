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

(define prefix "Q6_")

(define (codegen p)
  ;;(printf (format "~a\n" p))
  (match p

    ;;vread
    [(vread buf loc)
     (format "~aVh_load(~a, ~a)" prefix (codegen buf) (codegen loc))
     ]

    ;;vsplat
    [(vsplat Rt)
     (match (interpret-hvx Rt)
       [(int8_t _) (format "~aVb_vsplat_R(~a)" prefix (eval-to-int Rt))]
       [(int16_t _) (format "~aVh_vsplat_R(~a)" prefix (eval-to-int Rt))]
       [(int32_t _) (format "~aV_vsplat_R(~a)" prefix (eval-to-int Rt))])
     ]

    ;;lo
    [(lo Vuu)
     (format "~aV_lo_W(~a)" prefix (codegen Vuu))
     ]

    ;;hi
    [(hi Vuu)
     (format "~aV_hi_W(~a)" prefix (codegen Vuu))
     ]
    
    ;;vcombine
    [(vcombine Vu Vv)
     (format "~aW_vcombine_VV(~a, ~a)" prefix (codegen Vu) (codegen Vv))
     ]
    
    ;;vshuffe
    [(vshuffe Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i8x128 _)(i8x128 _)) (format "~aVb_vshuffe_VbVb(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "~aVh_vshuffe_VhVh(~a, ~a)" prefix (codegen Vu) (codegen Vv))])
     ]
    
    ;;vshuffo
    [(vshuffo Vu Vv signed?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i8x128 _)(i8x128 _)) (format "~aVb_vshuffo_VbVb(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "~aVh_vshuffo_VhVh(~a, ~a)" prefix (codegen Vu) (codegen Vv))])
     ]
    
    ;;vshuffoe
    [(vshuffoe Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i8x128 _)(i8x128 _)) (format "~aVb_vshuffoe_VbVb(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "~aVh_vshuffoe_VhVh(~a, ~a)" prefix (codegen Vu) (codegen Vv))])
     ]

    ;;vswap
    [(vswap Qt Vu Vv)
     (format "~aW_vswap_QVV(~a, ~a, ~a)" prefix (codegen Qt) (codegen Vu) (codegen Vv))
     ]
    
    ;;vmux
    [(vmux Qt Vu Vv)
     (format "~aV_vmux_QVV(~a, ~a, ~a)" prefix (codegen Qt) (codegen Vu) (codegen Vv))
     ]
    
    ;;vsat
    [(vsat Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (format "~aVh_vsat_VwVw(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "~aVub_vsat_VhVh(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       [(list (u32x32 _)(u32x32 _)) (format "~aVuh_vsat_VuwVuw(~a, ~a)" prefix (codegen Vu) (codegen Vv))])
     ]
    
    ;;valign
    [(valign Vu Vv Rt)
     (match (interpret-hvx Rt)
       [(int32_t _) (format "~aV_valign_VVI(~a, ~a, ~a)" prefix (codegen Vu) (codegen Vv) (eval-to-int Rt))]
       [integer (format "~aVub_vsat_VhVh(~a, ~a, ~a)" prefix (codegen Vu) (codegen Vv) (eval-to-int Rt))])
     ]
    
    ;;vror
    [(vread Vu Rt)
     (format "~aV_vror_VR(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))
     ]
    
    ;;vrotr
    [(vread Vu Vv)
     (format "~aV_vrotr_VR(~a, ~a)" prefix (codegen Vu) (codegen Vv))
     ]
    
    ;;vdeal
    [(vdeal Vu)
     (match (interpret-hvx Vu)
       [(i8x128 _) (format "~aVb_vdeal_Vb(~a)" prefix (codegen Vu))]
       [(i16x64 _) (format "~aVb_vdeal_Vh(~a)" prefix (codegen Vu))])
     ]
    
    ;;vdeale
    [(vdeale Vu Vv)
     (format "~aVb_vdeale_VbVb(~a, ~a)" prefix (codegen Vu) (codegen Vv))
     ]
    
    ;;vshuff
    [(vshuff Vu)
     (match (interpret-hvx Vu)
       [(i8x128 _) (format "~aVb_vshuff_Vb(~a)" prefix (codegen Vu))]
       [(i16x64 _) (format "~aVb_vshuff_Vh(~a)" prefix (codegen Vu))])
     ]
    
    ;;vtranspose
    
    ;;vpack
    [(vpack Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (format "~aVh_vpack_VwVw_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "~aVb_vpack_VhVh_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       [(list (u32x32 _)(u32x32 _)) (format "~aVuh_vpack_VwVw_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       [(list (u16x64 _)(u16x64 _)) (format "~aVub_vpack_VhVh_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))])
     ]
    
    ;;vpacke
    [(vpacke Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (format "~aVh_vpacke_VwVw(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "~aVb_vpacke_VhVh(~a, ~a)" prefix (codegen Vu) (codegen Vv))])
     ]
    
    ;;vpacko
    [(vpacko Vu Vv signed?)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i32x32 _)(i32x32 _)) (format "~aVh_vpacko_VwVw(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "~aVb_vpacko_VhVh(~a, ~a)" prefix (codegen Vu) (codegen Vv))])
     ]
    
    ;;vunpack
    [(vunpack Vu)
     (match (interpret-hvx Vu)
       [(i8x128 _) (format "~aWh_vunpack_Vb(~a)" prefix (codegen Vu))]
       [(i16x64 _) (format "~aWw_vunpack_Vh(~a)" prefix (codegen Vu))]
       [(u8x128 _) (format "~aWuh_vunpack_Vub(~a)" prefix (codegen Vu))]
       [(u16x64 _) (format "~aWuw_vunpack_Vuh(~a)" prefix (codegen Vu))])
     ]
    
    ;;vunpacko

    ;;vgather

    ;;vzxt
    [(vzxt Vu)
     (match (interpret-hvx Vu)
       [(u8x128 _) (format "~aWuh_vzxt_Vub(~a)" prefix (codegen Vu))]
       [(u16x64 _) (format "~aWuw_vzxt_Vuh(~a)" prefix (codegen Vu))])
     ]
    
    ;;vsxt
    [(vsxt Vu)
     (match (interpret-hvx Vu)
       [(i8x128 _) (format "~aWh_vsxt_Vb(~a)" prefix (codegen Vu))]
       [(i16x64 _) (format "~aWw_vsxt_Vh(~a)" prefix (codegen Vu))])
     ]

    
    ;;vadd
    [(vadd Vu Vv sat?)
     (if sat?
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (format "~aVb_vadd_VbVb_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (i16x64 _) (i16x64 _)) (format "~aVh_vadd_VhVh_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (i32x32 _) (i32x32 _)) (format "~aVw_vadd_VwVw_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (u8x128 _) (u8x128 _)) (format "~aVub_vadd_VubVub_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (u16x64 _) (u16x64 _)) (format "~aVuh_vadd_VuhVuh_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (u32x32 _) (u32x32 _)) (format "~aVuw_vadd_VuwVuw_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           )
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (format "~aVb_vadd_VbVb(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (i16x64 _) (i16x64 _)) (format "~aVh_vadd_VhVh(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (i32x32 _) (i32x32 _)) (format "~aVw_vadd_VwVw(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (u8x128 _) (u8x128 _)) (format "~aVub_vadd_VubVub(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (u16x64 _) (u16x64 _)) (format "~aVuh_vadd_VuhVuh(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (u32x32 _) (u32x32 _)) (format "~aVuw_vadd_VuwVuw(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           )
         )]
    
    ;;vadd-w
    [(vadd-w Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (u8x128 _)(u8x128 _)) (format "~aWh_vadd_VubVub(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "~aWw_vadd_VhVh(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       [(list (u16x64 _)(u16x64 _)) (format "~aWw_vadd_VuhVuh(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       )]
    
    ;;vadd-w-acc
    [(vadd Vdd Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (u8x128 _)(u8x128 _)) (format "~aWh_vaddacc_WhVubVub(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "~aWw_vaddacc_WwVhVh(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vu) (codegen Vv))]
       [(list (u16x64 _)(u16x64 _)) (format "~aWw_vaddacc_WwVuhVuh(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vu) (codegen Vv))]
     )]
    
    ;;vmpy
    [(vmpy Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (int8_t _)) (format "~aWh_vmpy_VubRb(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
       [(list (u8x128 _) (uint8_t _)) (format "~aWuh_vmpy_VubRub(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
       [(list (u16x64 _) (uint16_t _)) (format "~aWuw_vmpy_VuhRuh(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (int16_t _)) (format "~aWw_vmpy_VhRh(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vmpyi
    [(vmpyi Vu Rt)
     (format "~aVh_vmpyi_VhVh(~a, ~a)" prefix (codegen Vu) (int->8bit (eval-to-int Rt)))]
    
    ;;vmpye
    [(vmpyi Vu Rt)
     (format "~aVuw_vmpye_VuhRuh(~a, ~a)" prefix (codegen Vu) (int->8bit (eval-to-int Rt)))]
    
    ;;vmpy-acc
    [(vmpy-acc Vdd Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (int8_t _)) (format "~aWh_vmpyacc_WhVubRb(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vu) (eval-to-int Rt))]
       [(list (u8x128 _) (uint8_t _)) (format "~aWuh_vmpyacc_WuhVubRub(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vu) (eval-to-int Rt))]
       [(list (u16x64 _) (uint16_t _)) (format "~aWuw_vmpyacc_WuwVuhRuh(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (int16_t _)) (format "~aWw_vmpyacc_WwVhRh(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vmpyi-acc
    [(vmpyi-acc Vd Vu Rt)
     (format "~aVh_vmpyiacc_VhVhRb(~a, ~a, ~a)" prefix (codegen Vd) (codegen Vu) (int->8bit (eval-to-int Rt)))]
    
    ;;vmpye-acc
    [(vmpyi-acc Vd Vu Rt)
     (format "~aVuw_vmpyeacc_VuwVuhRuh(~a, ~a, ~a)" prefix (codegen Vd) (codegen Vu) (int->8bit (eval-to-int Rt)))]
   
    ;;vmpa
    [(vmpa Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (u8x128x2 _ _) (int8_t _)) (format "~aWh_vmpa_WubRb(~a, ~a)" prefix (codegen Vuu) (eval-to-int Rt))]
       [(list (u8x128x2 _ _) (uint8_t _)) (format "~aWh_vmpa_WubRub(~a, ~a)" prefix (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (int16_t _)) (format "~aWw_vmpa_WhRb(~a, ~a)" prefix (codegen Vuu) (eval-to-int Rt))]
       [(list (u16x64x2 _ _) (int16_t _)) (format "~aWw_vmpa_WuhRb(~a, ~a)" prefix (codegen Vuu) (eval-to-int Rt))]
     )]
    
    ;;vmpa-acc
    [(vmpa-acc Vdd Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (u8x128x2 _ _) (int8_t _)) (format "~aWh_vmpaacc_WhWubRb(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (u8x128x2 _ _) (uint8_t _)) (format "~aWh_vmpaacc_WhWubRub(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (int16_t _)) (format "~aWw_vmpaacc_WwWhRb(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (u16x64x2 _ _) (int16_t _)) (format "~aWw_vmpaacc_WwWuhRb(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
     )]
    
    ;;vdmpy
    [(vdmpy Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (int8_t _)) (format "~aVh_vdmpy_VubRb(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (int8_t _)) (format "~aVw_vdmpy_VhRb(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (int16_t _)) (format "~aVw_vdmpy_VhRh_sat(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (uint16_t _)) (format "~aVw_vdmpy_VhRuh_sat(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
       [(list (u8x128 _) (int8_t _)) (format "~aVh_vdmpy_VubRb(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vdmpy-sw
    [(vdmpy-sw Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i16x64x2 _ _) (int16_t _)) (format "~aVw_vdmpy_WhRh_sat(~a, ~a)" prefix (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (uint16_t _)) (format "~aVw_vdmpy_WhRuh_sat(~a, ~a)" prefix (codegen Vuu) (eval-to-int Rt))]
       [(list (u8x128x2 _ _) (int8_t _)) (format "~aWh_vdmpy_WubRb(~a, ~a)" prefix (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (int8_t _)) (format "~aWw_vdmpy_WhRb(~a, ~a)" prefix (codegen Vuu) (eval-to-int Rt))]
     )]
    
    ;;vdmpy-acc
    [(vdmpy-acc Vd Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (int8_t _)) (format "~aVh_vdmpyacc_VhVubRb(~a, ~a, ~a)" prefix (codegen Vd) (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (int8_t _)) (format "~aVw_vdmpyacc_VwVhRb(~a, ~a, ~a)" prefix (codegen Vd) (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (int16_t _)) (format "~aVw_vdmpyacc_VwVhRh_sat(~a, ~a, ~a)" prefix (codegen Vd) (codegen Vu) (eval-to-int Rt))]
       [(list (i16x64 _) (uint16_t _)) (format "~aVw_vdmpyacc_VwVhRuh_sat(~a, ~a, ~a)" prefix (codegen Vd) (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vdmpy-sw-acc
    [(vdmpy-sw-acc Vdd Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i16x64x2 _ _) (int16_t _)) (format "~aVw_vdmpyacc_VwWhRh_sat(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (uint16_t _)) (format "~aVw_vdmpyacc_VwWhRuh_sat(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (u8x128x2 _ _) (int8_t _)) (format "~aWh_vdmpyacc_WhWubRb(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (int8_t _)) (format "~aWw_vdmpyacc_WwWhRb(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
     )]
    
    ;;vtmpy
    [(vtmpy Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i8x128x2 _ _) (int8_t _)) (format "~aWh_vtmpy_WbRb(~a, ~a)" prefix (codegen Vuu) (eval-to-int Rt))]
       [(list (u8x128x2 _ _) (int8_t _)) (format "~aWh_vtmpy_WubRb(~a, ~a)" prefix (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (int8_t _)) (format "~aWw_vtmpy_WhRb(~a, ~a)" prefix (codegen Vuu) (eval-to-int Rt))]
     )]
    
    ;;vtmpy-acc
    [(vtmpy-acc Vdd Vuu Rt)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (i8x128x2 _ _) (int8_t _)) (format "~aWh_vtmpyacc_WhWbRb(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (u8x128x2 _ _) (int8_t _)) (format "~aWh_vtmpyacc_WhWubRb(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
       [(list (i16x64x2 _ _) (int8_t _)) (format "~aWw_vtmpyacc_WwWhRb(~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vuu) (eval-to-int Rt))]
    )]
    
    ;;vrmpy
    [(vrmpy Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (uint8_t _)) (format "~aVuw_vrmpy_VubRub(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
       [(list (u8x128 _) (int8_t _)) (format "~aVw_vrmpy_VubRb(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vrmpy-acc
    [(vrmpy-acc Vd Vu Rt)
     (match (list (interpret-hvx Vu) (interpret-hvx Rt))
       [(list (u8x128 _) (uint8_t _)) (format "~aVuw_vrmpyacc_VuwVubRub(~a, ~a, ~a)" prefix (codegen Vd) (codegen Vu) (eval-to-int Rt))]
       [(list (u8x128 _) (int8_t _)) (format "~aVw_vrmpyacc_VwVubRb(~a, ~a, ~a)" prefix (codegen Vd) (codegen Vu) (eval-to-int Rt))]
    )]
    
    ;;vrmpy-p
    [(vrmpy-p Vuu Rt u1)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (u8x128x2 _ _) (uint8_t _)) (format "~aWuw_vrmpy_WubRubI(~a, ~a, ~a)" prefix (codegen Vuu) (eval-to-int Rt) (eval-to-int u1))]
       [(list (u8x128x2 _ _) (int8_t _)) (format "~aWw_vrmpy_WubRbI(~a, ~a, ~a)" prefix (codegen Vuu) (eval-to-int Rt) (eval-to-int u1))]
    )]
    
    ;;vrmpy-p-acc
    [(vrmpy-p-acc Vdd Vuu Rt u1)
     (match (list (interpret-hvx Vuu) (interpret-hvx Rt))
       [(list (u8x128x2 _ _) (uint8_t _)) (format "~aWuw_vrmpyacc_WuwWubRubI(~a, ~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vuu) (eval-to-int Rt) (eval-to-int u1))]
       [(list (u8x128x2 _ _) (int8_t _)) (format "~aWw_vrmpyacc_WwWubRbI(~a, ~a, ~a, ~a)" prefix (codegen Vdd) (codegen Vuu) (eval-to-int Rt) (eval-to-int u1))]
    )]
    
    ;;vavg
    [(vavg Vu Vv rnd?)
     (if rnd?
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (format "~aVb_vavg_VbVb_rnd(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (i16x64 _) (i16x64 _)) (format "~aVh_vavg_VhVh_rnd(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (i32x32 _) (i32x32 _)) (format "~aVw_vavg_VwVw_rnd(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (u8x128 _) (u8x128 _)) (format "~aVub_vavg_VubVub_rnd(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (u16x64 _) (u16x64 _)) (format "~aVuh_vavg_VuhVuh_rnd(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (u32x32 _) (u32x32 _)) (format "~aVuw_vavg_VuwVuw_rnd(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           )
         (match (list (interpret-hvx Vu) (interpret-hvx Vv))
           [(list (i8x128 _) (i8x128 _)) (format "~aVb_vavg_VbVb(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (i16x64 _) (i16x64 _)) (format "~aVh_vavg_VhVh(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (i32x32 _) (i32x32 _)) (format "~aVw_vavg_VwVw(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (u8x128 _) (u8x128 _)) (format "~aVub_vavg_VubVub(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (u16x64 _) (u16x64 _)) (format "~aVuh_vavg_VuhVuh(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           [(list (u32x32 _) (u32x32 _)) (format "~aVuw_vavg_VuwVuw(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
           )
      )]
    
    ;;vnavg
    [(vnavg Vu Vv)
     (match (list (interpret-hvx Vu) (interpret-hvx Vv))
       [(list (i8x128 _)(i8x128 _)) (format "~aVb_vnavg_VbVb(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       [(list (u8x128 _)(u8x128 _)) (format "~aVb_vnavg_VubVub(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       [(list (i16x64 _)(i16x64 _)) (format "~aVh_vnavg_VhVh(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
       [(list (i32x32 _)(i32x32 _)) (format "~aVw_vnavg_VwVw(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
     )]
    
    ;;vasl
    [(vasl Vu Rt)
     (match Vu
       [(i16x64 _) (format "~aVh_vasl_VhR(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
       [(i32x32 _) (format "~aVw_vasl_VwR(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vlsr
    [(vlsr Vu Rt)
     (match (interpret-hvx Vu)
       [(u8x128 _) (format "~aVub_vlsr_VubR(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
       [(u16x64 _) (format "~aVuh_vlsr_VuhR(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
       [(u32x32 _) (format "~aVuw_vlsr_VuwR(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vasr
    [(vasr Vu Rt)
     (match (interpret-hvx Vu)
       [(u16x64 _) (format "~aVh_vasr_VhR(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
       [(u32x32 _) (format "~aVw_vasr_VwR(~a, ~a)" prefix (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vasr-acc
    [(vasr-acc Vd Vu Rt)
     (match (interpret-hvx Vu)
       [(i16x64 _) (format "~aVh_vasracc_VhVhR(~a, ~a, ~a)" prefix (codegen Vd) (codegen Vu) (eval-to-int Rt))]
       [(i32x32 _) (format "~aVw_vasracc_VwVwR(~a, ~a, ~a)" prefix (codegen Vd) (codegen Vu) (eval-to-int Rt))]
     )]
    
    ;;vasr-n
    [(vasr-n Vu Vv Rt round? sat? unsigned?)
     (if unsigned?
       (when sat?
           (if round?
               (match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (format "~aVub_vasr_VhVhR_rnd_sat(~a, ~a, ~a)" prefix (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (u16x64 _) (u16x64 _)) (format "~aVub_vasr_VuhVuhR_rnd_sat(~a, ~a, ~a)" prefix (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (i32x32 _) (i32x32 _)) (format "~aVuh_vasr_VwVwR_rnd_sat(~a, ~a, ~a)" prefix (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (u32x32 _) (u32x32 _)) (format "~aVuh_vasr_VuwVuwR_rnd_sat(~a, ~a, ~a)" prefix (codegen Vu) (codegen Vv) (eval-to-int Rt))])
               ((match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (format "~aVub_vasr_VhVhR_sat(~a, ~a, ~a)" prefix (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (u16x64 _) (u16x64 _)) (format "~aVub_vasr_VuhVuhR_sat(~a, ~a, ~a)" prefix (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (i32x32 _) (i32x32 _)) (format "~aVuh_vasr_VwVwR_sat(~a, ~a, ~a)" prefix (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (u32x32 _) (u32x32 _)) (format "~aVuh_vasr_VuwVuwR_sat(~a, ~a, ~a)" prefix (codegen Vu) (codegen Vv) (eval-to-int Rt))]))))
       (if sat?
           (if round?
               (match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (format "~aVb_vasr_VhVhR_rnd_sat(~a, ~a, ~a)" prefix (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (i32x32 _) (i32x32 _)) (format "~aVh_vasr_VwVwR_rnd_sat(~a, ~a, ~a)" prefix (codegen Vu) (codegen Vv) (eval-to-int Rt))])
               (match (list (interpret-hvx Vu) (interpret-hvx Vv))
                 [(list (i16x64 _) (i16x64 _)) (format "~aVb_vasr_VhVhR_sat(~a, ~a, ~a)" prefix (codegen Vu) (codegen Vv) (eval-to-int Rt))]
                 [(list (i32x32 _) (i32x32 _)) (format "~aVh_vasr_VwVwR_sat(~a, ~a, ~a)" prefix (codegen Vu) (codegen Vv) (eval-to-int Rt))]))
           (format "~aVh_vasr_VwVwR(~a, ~a, ~a)" (codegen Vu) (codegen Vv) (eval-to-int Rt)))
     )]
    
    ;;vround
    [(vround Vu Vv signed?)
      (if signed?
          (match (list (interpret-hvx Vu) (interpret-hvx Vv))
            [(list (i16x64 _) (i16x64 _)) (format "~aVb_vround_VhVh_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
            [(list (i32x32 _) (i32x32 _)) (format "~aVh_vround_VwVw_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))])
          (match (list (interpret-hvx Vu) (interpret-hvx Vv))
            [(list (i16x64 _) (i16x64 _)) (format "~aVub_vround_VhVh_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
            [(list (u16x64 _) (u16x64 _)) (format "~aVub_vround_VuhVuh_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
            [(list (u32x32 _) (u32x32 _)) (format "~aVuh_vround_VuwVuw_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))]
            [(list (i32x32 _) (i32x32 _)) (format "~aVuh_vround_VwVw_sat(~a, ~a)" prefix (codegen Vu) (codegen Vv))]))]

    [_ (format "~a" p)]))
    
(provide (rename-out [codegen cpp_codegen]))