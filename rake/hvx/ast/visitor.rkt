#lang rosette

(require rosette/lib/match)
(require rake/hvx/ast/types)

(define (visit p transform)
  (match p
    ;; HVX instructions for vector creation
    [(vread buf loc) (transform (vread buf loc))]
    [(vreadp buf loc) (transform (vread buf loc))]
    [(vsplat Rt) (transform (vsplat Rt))]

    ;; HVX instructions for data swizzling
    ;[(lo Vuu)
    ;[(hi Vuu)
    ;[(vcombine Vu Vv)
    ;[(vshuffe Vu Vv)
    [(vshuffo Vu Vv) (transform (vshuffo (visit Vu transform) (visit Vv transform)))]
    [(vshuffo-n Vu Vv signed?) (transform (vshuffo-n (visit Vu transform) (visit Vv transform) (visit signed?)))]
    ;[(vshuffoe Vu Vv)
    ;[(vswap Qt Vu Vv)
    ;[(vmux Qt Vu Vv)
    ;[(vsat Vu Vv)
    ;[(valign Vu Vv Rt)
    ;[(vlalign Vu Vv Rt)
    ;[(vror Vu Rt)
    ;[(vrotr Vu Vv)
    ;[(vdeal Vu)
    ;[(vdeale Vu Vv)
    ;[(vshuff Vu)
    ;[(vtranspose Vu Vv Rt)
    ;[(vpack Vu Vv)
    ;[(vpacke Vu Vv)
    [(vpacko Vu Vv) (transform (vpacko (visit Vu transform) (visit Vv transform)))]
    [(vpacko-n Vu Vv signed?) (transform (vpacko-n (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
    ;[(vunpack Vu)
    ;[(vunpacko Vu)
    ;[(vlut Vu Vv)
    ;[(vgather Rt Mu Vv)

    ;; HVX instructions for type-casting
    ;[(vzxt Vu signed?)
    ;[(vsxt Vu signed?)

    ;; HVX instructions for data processing
    [(vadd Vu Vv sat?) (transform (vadd (visit Vu transform) (visit Vv transform) (visit sat? transform)))]
    [(vadd-w Vu Vv) (transform (vadd-w (visit Vu transform) (visit Vv transform)))]
    [(vadd-w-acc Vdd Vu Vv) (transform (vadd-w-acc (visit Vdd transform) (visit Vu transform) (visit Vv transform)))]
    [(vmpy Vu Rt) (transform (vmpy (visit Vu transform) (visit Rt transform)))]
    [(vmpyi Vu Rt) (transform (vmpyi (visit Vu transform) (visit Rt transform)))]
    [(vmpye Vu Rt) (transform (vmpye (visit Vu transform) (visit Rt transform)))]
    [(vmpy-acc Vdd Vu Rt) (transform (vmpy-acc (visit Vdd transform) (visit Vu transform) (visit Rt transform)))]
    [(vmpyi-acc Vd Vu Rt) (transform (vmpyi-acc (visit Vd transform) (visit Vu transform) (visit Rt transform)))]
    [(vmpye-acc Vd Vu Rt) (transform (vmpye-acc (visit Vd transform) (visit Vu transform) (visit Rt transform)))]
    [(vmpa Vuu Rt) (transform (vmpa (visit Vuu transform) (visit Rt transform)))]
    [(vmpa-acc Vdd Vuu Rt) (transform (vmpa-acc (visit Vdd transform) (visit Vuu transform) (visit Rt transform)))]
    [(vdmpy Vu Rt) (transform (vdmpy (visit Vu transform) (visit Rt transform)))]
    [(vdmpy-sw Vuu Rt) (transform (vdmpy-sw (visit Vuu transform) (visit Rt transform)))]
    [(vdmpy-acc Vd Vu Rt) (transform (vdmpy-acc (visit Vd transform) (visit Vu transform) (visit Rt transform)))]
    [(vdmpy-sw-acc Vdd Vuu Rt) (transform (vdmpy-sw-acc (visit Vdd transform) (visit Vuu transform) (visit Rt transform)))]
    [(vtmpy Vuu Rt) (transform (vtmpy (visit Vuu transform) (visit Rt transform)))]
    [(vtmpy-acc Vdd Vuu Rt) (transform (vtmpy-acc (visit Vdd transform) (visit Vuu transform) (visit Rt transform)))]
    [(vrmpy Vu Rt) (transform (vrmpy (visit Vu transform) (visit Rt transform)))]
    [(vrmpy-acc Vd Vu Rt) (transform (vrmpy-acc (visit Vd transform) (visit Vu transform) (visit Rt transform)))]
    [(vrmpy-p Vuu Rt u1) (transform (vrmpy-p (visit Vuu transform) (visit Rt transform) (visit u1 transform)))]
    [(vrmpy-p-acc Vdd Vuu Rt u1) (transform (vrmpy-p-acc (visit Vdd transform) (visit Vuu transform) (visit Rt transform) (visit u1 transform)))]
    ;[(vavg Vu Vv rnd?)
    ;[(vnavg Vu Vv)
    ;[(vasl Vu Rt)
    ;[(vlsr Vu Rt)
    [(vasr Vu Rt) (transform (vasr (visit Vu transform) (visit Rt transform)))]
    [(vasr-acc Vd Vu Rt) (transform (vasr-acc (visit Vd transform) (visit Vu transform) (visit Rt transform)))]
    [(vasr-n Vu Vv Rt round? sat? unsigned?) (transform (vasr-n (visit Vu transform) (visit Vv transform) (visit Rt transform) (visit round? transform) (visit sat? transform) (visit unsigned? transform)))]
    [(vround Vu Vv signed?) (transform (vround (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
    
    ;; New instructions types we introduce to abstract away data-movement.
    ;; These instr types should never exist in output code.
    [(gather* buff-reads) (transform (gather* buff-reads))]
    [(gather buff-reads gid) (transform (gather buff-reads gid))]
    [(swizzle vec) (transform (swizzle (visit vec transform)))]
    
    [_ p]))

(provide (rename-out [visit visit-hvx]))