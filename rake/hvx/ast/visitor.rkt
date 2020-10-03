#lang rosette

(require rosette/lib/match)
(require rake/hvx/ast/types)

(define (visit p transform)
  (match p
    [(vread buf loc) (transform (vread buf loc))]
    [(vsplat Rt) (transform (vsplat Rt))]
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
    [(vasr Vu Rt) (transform (vasr (visit Vu transform) (visit Rt transform)))]
    [(vasr-acc Vd Vu Rt) (transform (vasr-acc (visit Vd transform) (visit Vu transform) (visit Rt transform)))]
    [(vasr-n Vu Vv Rt round? sat? unsigned?) (transform (vasr-n (visit Vu transform) (visit Vv transform) (visit Rt transform) (visit round? transform) (visit sat? transform) (visit unsigned? transform)))]
    [(vround Vu Vv signed?) (transform (vround (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
    [(vpacko Vu Vv signed?) (transform (vpacko (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
    [(vshuffo Vu Vv signed?) (transform (vshuffo (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
    [(gather* buff-reads) (transform (gather* buff-reads))]
    [(gather buff-reads) (transform (gather buff-reads))]
    [(swizzle vec) (transform (swizzle (visit vec transform)))]
    [_ p]))

(provide (rename-out [visit visit-hvx]))