#lang rosette

(require rosette/lib/match)
(require rake/hvx/ast/types)

(define trace (list))
(define (trace-length) (length trace))
(define (peek-trace) (first trace))
(define (peek-parent-trace) (second trace))
(define (push-trace node) (set! trace (cons node trace)))
(define (pop-trace) (set! trace (rest trace)))

(define (visit p transform [arg-pos -1])
  (push-trace p)
  (define outp
    (match p
      ;; Let Exprs
      [(let-expr var val body) (let-expr (transform var) (visit val transform) (visit body transform))]
      
      ;; HVX instructions for vector creation
      [(vread buf loc align) (transform (vread buf loc align))]
      [(vreadp buf loc align) (transform (vreadp buf loc align))]
      [(vsplat Rt) (transform (vsplat (visit Rt)))]

      ;; HVX instructions for data swizzling
      [(lo Vuu) (transform (lo (visit Vuu transform)))]
      [(hi Vuu) (transform (hi (visit Vuu transform)))]
      [(vcombine Vu Vv) (transform (vcombine (visit Vu transform) (visit Vv transform)))]
      [(vshuffe Vu Vv) (transform (vshuffe (visit Vu transform) (visit Vv transform)))]
      [(vshuffo Vu Vv) (transform (vshuffo (visit Vu transform) (visit Vv transform)))]
      [(vshuffo-n Vu Vv signed?) (transform (vshuffo-n (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
      [(vshuffoe Vu Vv) (transform (vshuffoe (visit Vu transform) (visit Vv transform)))]
      ;[(vswap Qt Vu Vv)
      ;[(vmux Qt Vu Vv)
      ;[(vsat Vu Vv)
      [(valign Vu Vv Rt) (transform (valign (visit Vu transform) (visit Vv transform) (visit Rt transform)))]
      [(vlalign Vu Vv Rt) (transform (vlalign (visit Vu transform) (visit Vv transform) (visit Rt transform)))]
      [(vror Vu Rt) (transform (vror (visit Vu transform) (visit Rt transform)))]
      ;[(vrotr Vu Vv)
      [(vdeal Vu) (transform (vdeal (visit Vu transform)))]
      [(vdeale Vu Vv) (transform (vdeale (visit Vu transform) (visit Vv transform)))]
      [(vshuff Vu) (transform (vshuff (visit Vu transform)))]
      [(vtranspose Vu Vv Rt) (transform (vtranspose (visit Vu transform) (visit Vv transform) (visit Rt transform)))]
      ;[(vpack Vu Vv)
      [(vpacke Vu Vv signed?) (transform (vpacke (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
      [(vpacko Vu Vv signed?) (transform (vpacko (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
      [(vpacko-n Vu Vv signed?) (transform (vpacko-n (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
      [(vunpack Vu) (transform (vunpack (visit Vu transform)))]
      ;[(vunpacko Vu)
      ;[(vlut Vu Vv)
      ;[(vgather Rt Mu Vv)

      ;; HVX instructions for type-casting
      [(vzxt Vu signed?) (transform (vzxt (visit Vu transform) (visit signed? transform)))]
      [(vsxt Vu signed?) (transform (vsxt (visit Vu transform) (visit signed? transform)))]

      ;; HVX instructions for data processing
      [(vadd Vu Vv sat?) (transform (vadd (visit Vu transform) (visit Vv transform) (visit sat? transform)))]
      [(vadd-w Vu Vv) (transform (vadd-w (visit Vu transform) (visit Vv transform)))]
      [(vadd-w-acc Vdd Vu Vv) (transform (vadd-w-acc (visit Vdd transform 0) (visit Vu transform 1) (visit Vv transform 2)))]
      [(vmpy Vu Rt) (transform (vmpy (visit Vu transform) (visit Rt transform)))]
      [(vmpyi Vu Rt) (transform (vmpyi (visit Vu transform) (visit Rt transform)))]
      [(vmpye Vu Rt) (transform (vmpye (visit Vu transform) (visit Rt transform)))]
      [(vmpy-acc Vdd Vu Rt) (transform (vmpy-acc (visit Vdd transform 0) (visit Vu transform 1) (visit Rt transform 2)))]
      [(vmpyi-acc Vd Vu Rt) (transform (vmpyi-acc (visit Vd transform) (visit Vu transform) (visit Rt transform)))]
      [(vmpye-acc Vd Vu Rt) (transform (vmpye-acc (visit Vd transform) (visit Vu transform) (visit Rt transform)))]
      [(vmpa Vuu Rt signed?) (transform (vmpa (visit Vuu transform) (visit Rt transform) (visit signed? transform)))]
      [(vmpa-acc Vdd Vuu Rt signed?) (transform (vmpa-acc (visit Vdd transform) (visit Vuu transform) (visit Rt transform) (visit signed? transform)))]
      [(vdmpy Vu Rt) (transform (vdmpy (visit Vu transform) (visit Rt transform)))]
      [(vdmpy-sw Vuu Rt) (transform (vdmpy-sw (visit Vuu transform) (visit Rt transform)))]
      [(vdmpy-acc Vd Vu Rt) (transform (vdmpy-acc (visit Vd transform) (visit Vu transform) (visit Rt transform)))]
      [(vdmpy-sw-acc Vdd Vuu Rt) (transform (vdmpy-sw-acc (visit Vdd transform) (visit Vuu transform) (visit Rt transform)))]
      [(vtmpy Vuu Rt signed?) (transform (vtmpy (visit Vuu transform) (visit Rt transform) (visit signed? transform)))]
      [(vtmpy-acc Vdd Vuu Rt signed?) (transform (vtmpy-acc (visit Vdd transform) (visit Vuu transform) (visit Rt transform) (visit signed? transform)))]
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
      [(gather* buff-reads) (transform (gather* buff-reads) arg-pos)]
      [(gather-vec buff-reads) (transform (gather-vec (hvx-ast-node-id p) buff-reads))]
      [(gather-vecp buff-reads) (transform (gather-vecp (hvx-ast-node-id p) buff-reads))]
      [(swizzle* vec) (transform (swizzle* (visit vec transform)))]
      [(swizzle vec) (transform (swizzle (hvx-ast-node-id p) (visit vec transform)))]

      [(??vread buf-opts idxs) (transform (??vread (visit buf-opts transform) (visit idxs transform)))]
      [(??vreadp buf-opts idxs) (transform (??vreadp (visit buf-opts transform) (visit idxs transform)))]
    
      [_ (transform p)]))

  (pop-trace)
    
  outp)

(provide
 (rename-out
  [visit visit-hvx]
  [peek-trace visitor-trace-peek]
  [peek-parent-trace visitor-trace-peek-parent]))