#lang rosette

(require rosette/lib/match)
(require rake/hvx/ast/types)

(provide
 (rename-out
  [visit hvx:visit]
  [visit-shallow hvx:visit-shallow]
  [peek-trace hvx:visitor-trace-peek]
  [peek-parent-trace hvx:visitor-trace-peek-parent]
  [trace-length hvx:visitor-trace-length]))

(define trace (list))
(define (trace-length) (length trace))
(define (peek-trace) (first trace))
(define (peek-parent-trace) (second trace))
(define (push-trace node) (set! trace (cons node trace)))
(define (pop-trace) (set! trace (rest trace)))

(define (visit p transform [arg-pos -1])
  (push-trace p)
  ;(println p)
  (define outp
    (match p
      ;; Let Exprs
      [(let-expr var val body) (let-expr (transform var) (visit val transform) (visit body transform))]

      ;; Concat tiles
      [(concat-tiles exprs) (transform (concat-tiles (for/list ([expr exprs]) (visit expr transform))))]
      
      ;; HVX instructions for vector creation
      [(vread buf loc align) (transform (vread (visit buf transform) loc align))]
      [(vreadp buf loc align) (transform (vreadp (visit buf transform) loc align))]
      [(vsplat Rt) (transform (vsplat (visit Rt transform)))]
      [(vsplat2 Rt) (transform (vsplat2 (visit Rt transform)))]

      ;; HVX instructions for data swizzling
      [(lo Vuu) (transform (lo (visit Vuu transform)))]
      [(hi Vuu) (transform (hi (visit Vuu transform)))]
      [(vcombine Vu Vv) (transform (vcombine (visit Vu transform) (visit Vv transform)))]
      [(vshuffe Vu Vv) (transform (vshuffe (visit Vu transform) (visit Vv transform)))]
      [(vshuffo Vu Vv) (transform (vshuffo (visit Vu transform) (visit Vv transform)))]
      [(vshuffe-n Vu Vv signed?) (transform (vshuffe-n (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
      [(vshuffo-n Vu Vv signed?) (transform (vshuffo-n (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
      [(vshuffoe Vu Vv) (transform (vshuffoe (visit Vu transform) (visit Vv transform)))]
      ;[(vswap Qt Vu Vv)
      [(vsat Vu Vv) (transform (vsat (visit Vu transform) (visit Vv transform)))]
      [(valign Vu Vv Rt) (transform (valign (visit Vu transform) (visit Vv transform) (visit Rt transform)))]
      [(vlalign Vu Vv Rt) (transform (vlalign (visit Vu transform) (visit Vv transform) (visit Rt transform)))]
      [(vror Vu Rt) (transform (vror (visit Vu transform) (visit Rt transform)))]
      ;[(vrotr Vu Vv)
      [(vdeal Vu) (transform (vdeal (visit Vu transform)))]
      [(vdeale Vu Vv) (transform (vdeale (visit Vu transform) (visit Vv transform)))]
      [(vshuff Vu) (transform (vshuff (visit Vu transform)))]
      [(vtranspose Vu Vv Rt) (transform (vtranspose (visit Vu transform) (visit Vv transform) (visit Rt transform)))]
      [(vinterleave Vuu) (transform (vinterleave (visit Vuu transform)))]
      [(vinterleave2 Vu Vv) (transform (vinterleave2 (visit Vu transform) (visit Vv transform)))]
      [(vinterleave4 Vuu Vvv Rt) (transform (vinterleave4 (visit Vuu transform) (visit Vvv transform) (visit Rt transform)))]
      [(vtranspose Vu Vv Rt) (transform (vtranspose (visit Vu transform) (visit Vv transform) (visit Rt transform)))]
      [(vpack Vu Vv signed?) (transform (vpack (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
      [(vpacke Vu Vv) (transform (vpacke (visit Vu transform) (visit Vv transform)))]
      [(vpacko Vu Vv) (transform (vpacko (visit Vu transform) (visit Vv transform)))]
      [(vpacke-n Vu Vv signed?) (transform (vpacke-n (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
      [(vpacko-n Vu Vv signed?) (transform (vpacko-n (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
      [(vunpack Vu) (transform (vunpack (visit Vu transform)))]
      ;[(vunpacko Vu)
      ;[(vlut Vu Vv)
      ;[(vgather Rt Mu Vv)

      ;; Conditionals
      [(vmux Qt Vu Vv) (transform (vmux (visit Qt transform) (visit Vu transform) (visit Vv transform)))]
      [(vcmp.lt Vu Vv) (transform (vcmp.lt (visit Vu transform) (visit Vv transform)))]

      ;; HVX instructions for type-casting
      [(vzxt Vu) (transform (vzxt (visit Vu transform)))]
      [(vsxt Vu) (transform (vsxt (visit Vu transform)))]
      [(reinterpret Vu) (transform (reinterpret (visit Vu transform)))]

      ;; HVX instructions for data processing
      [(vadd Vu Vv sat?) (transform (vadd (visit Vu transform) (visit Vv transform) (visit sat? transform)))]
      [(vadd-w Vu Vv) (transform (vadd-w (visit Vu transform) (visit Vv transform)))]
      [(vadd-w-acc Vdd Vu Vv) (transform (vadd-w-acc (visit Vdd transform 0) (visit Vu transform 1) (visit Vv transform 2)))]
      [(vsub Vu Vv sat?) (transform (vsub (visit Vu transform) (visit Vv transform) (visit sat? transform)))]
      [(vsub-w Vu Vv) (transform (vsub-w (visit Vu transform) (visit Vv transform)))]
      [(vmpy Vu Rt) (transform (vmpy (visit Vu transform) (visit Rt transform)))]
      [(vmpy-2 Vu Vv) (transform (vmpy-2 (visit Vu transform) (visit Vv transform)))]
      [(vmpyi Vu Rt) (transform (vmpyi (visit Vu transform) (visit Rt transform)))]
      [(vmpyie Vu Rt) (transform (vmpyie (visit Vu transform) (visit Rt transform)))]
      [(vmpyio Vu Rt) (transform (vmpyio (visit Vu transform) (visit Rt transform)))]
      [(vmpyie/o Vu Rt) (transform (vmpyie/o (visit Vu transform) (visit Rt transform)))]
      [(vmpye Vu Rt) (transform (vmpye (visit Vu transform) (visit Rt transform)))]
      [(vmpy-acc Vdd Vu Rt) (transform (vmpy-acc (visit Vdd transform 0) (visit Vu transform 1) (visit Rt transform 2)))]
      [(vmpyi-acc Vd Vu Rt) (transform (vmpyi-acc (visit Vd transform) (visit Vu transform) (visit Rt transform)))]
      [(vmpye-acc Vd Vu Rt) (transform (vmpye-acc (visit Vd transform) (visit Vu transform) (visit Rt transform)))]
      [(vmpy-frac Vd Vu rnd?) (transform (vmpy-frac (visit Vd transform) (visit Vu transform) (visit rnd? transform)))]
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
      [(vrmpy-2 Vu Vv) (transform (vrmpy-2 (visit Vu transform) (visit Vv transform)))]
      [(vrmpy-acc-2 Vd Vu Vv) (transform (vrmpy-acc-2 (visit Vd transform) (visit Vu transform) (visit Vv transform)))]
      [(vrmpy-sw Vuu Rt u1) (transform (vrmpy-sw (visit Vuu transform) (visit Rt transform) (visit u1 transform)))]
      [(vrmpy-sw-acc Vdd Vuu Rt u1) (transform (vrmpy-sw-acc (visit Vdd transform) (visit Vuu transform) (visit Rt transform) (visit u1 transform)))]
      [(vavg Vu Vv rnd?) (transform (vavg (visit Vu transform) (visit Vv transform) (visit rnd? transform)))]
      ;[(vnavg Vu Vv)
      ;[(vasl Vu Rt)
      [(vrsr Vu Vv) (transform (vrsr (visit Vu transform) (visit Vv transform)))]
      [(vlsr Vu Rt) (transform (vlsr (visit Vu transform) (visit Rt transform)))]
      [(vasr Vu Rt) (transform (vasr (visit Vu transform) (visit Rt transform)))]
      [(vasr-acc Vd Vu Rt) (transform (vasr-acc (visit Vd transform) (visit Vu transform) (visit Rt transform)))]
      [(vasr-n Vu Vv Rt round? sat? unsigned?) (transform (vasr-n (visit Vu transform) (visit Vv transform) (visit Rt transform) (visit round? transform) (visit sat? transform) (visit unsigned? transform)))]
      [(vround Vu Vv signed?) (transform (vround (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
      [(vabs Vu sat?) (transform (vabs (visit Vu transform) (visit sat? transform)))]
      [(vabsdiff Vu Vv) (transform (vabsdiff (visit Vu transform) (visit Vv transform)))]

      [(vmax Vu Vv) (transform (vmax (visit Vu transform) (visit Vv transform)))]
      [(vmin Vu Vv) (transform (vmin (visit Vu transform) (visit Vv transform)))]
    
      ;; New types to represent abstract expression / data movement (these types should never appear in output code)
      [(abstr-hvx-expr orig-expr abstr-vals offset) (transform p)]
      [(??lo/hi Vuu interleave?) (transform (??lo/hi (visit Vuu transform) (visit interleave? transform)))]
      [(??sub-expr exprs c) (transform (??sub-expr (for/list ([e exprs]) (visit e transform)) c))]
      [(??load id live-data buffer idx-tbl pair?) (transform (??load id live-data (visit buffer transform) idx-tbl pair?) arg-pos)]
      [(??shuffle id lds pair?) (??shuffle id (for/list ([ld lds]) (visit ld transform)) pair?)]
      [(??swizzle id live-data exprs idx-tbl pair?) (transform (??swizzle id live-data (for/list ([expr exprs]) (visit expr transform)) idx-tbl pair?))]

      ;[(gather* buff-reads) (transform (gather* buff-reads) arg-pos)]
      ;[(gather-vec buff-reads) (transform (gather-vec (hvx-ast-node-id p) buff-reads))]
      ;[(gather-vecp buff-reads) (transform (gather-vecp (hvx-ast-node-id p) buff-reads))]
      ;[(swizzle* vec) (transform (swizzle* (visit vec transform)))]

      ;[(??vread buf-opts idxs) (transform (??vread (visit buf-opts transform) (visit idxs transform)))]
      ;[(??vreadp buf-opts idxs) (transform (??vreadp (visit buf-opts transform) (visit idxs transform)))]
      
      [_ (transform p)]))

  (pop-trace)
    
  outp)


(define (visit-shallow p transform [arg-pos -1])
  (push-trace p)
  ;(println p)
  (define outp
    (match p
      ;; Let Exprs
      [(let-expr var val body) (let-expr (transform var) (visit-shallow val transform) (visit-shallow body transform))]

      ;; Concat tiles
      [(concat-tiles exprs) (transform (concat-tiles (for/list ([expr exprs]) (visit-shallow expr transform))))]
      
      ;; HVX instructions for vector creation
      [(vread buf loc align) (transform (vread buf loc align))]
      [(vreadp buf loc align) (transform (vreadp buf loc align))]
      [(vsplat Rt) (transform (vsplat (visit-shallow Rt transform)))]
      [(vsplat2 Rt) (transform (vsplat2 (visit-shallow Rt transform)))]

      ;; HVX instructions for data swizzling
      [(lo Vuu) (transform (lo (visit-shallow Vuu transform)))]
      [(hi Vuu) (transform (hi (visit-shallow Vuu transform)))]
      [(vcombine Vu Vv) (transform (vcombine (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      [(vshuffe Vu Vv) (transform (vshuffe (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      [(vshuffo Vu Vv) (transform (vshuffo (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      [(vshuffe-n Vu Vv signed?) (transform (vshuffe-n (visit-shallow Vu transform) (visit-shallow Vv transform) (visit-shallow signed? transform)))]
      [(vshuffo-n Vu Vv signed?) (transform (vshuffo-n (visit-shallow Vu transform) (visit-shallow Vv transform) (visit-shallow signed? transform)))]
      [(vshuffoe Vu Vv) (transform (vshuffoe (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      ;[(vswap Qt Vu Vv)
      [(vsat Vu Vv) (transform (vsat (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      [(valign Vu Vv Rt) (transform (valign (visit-shallow Vu transform) (visit-shallow Vv transform) (visit-shallow Rt transform)))]
      [(vlalign Vu Vv Rt) (transform (vlalign (visit-shallow Vu transform) (visit-shallow Vv transform) (visit-shallow Rt transform)))]
      [(vror Vu Rt) (transform (vror (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      ;[(vrotr Vu Vv)
      [(vdeal Vu) (transform (vdeal (visit-shallow Vu transform)))]
      [(vdeale Vu Vv) (transform (vdeale (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      [(vshuff Vu) (transform (vshuff (visit-shallow Vu transform)))]
      [(vtranspose Vu Vv Rt) (transform (vtranspose (visit-shallow Vu transform) (visit-shallow Vv transform) (visit-shallow Rt transform)))]
      [(vinterleave Vuu) (transform (vinterleave (visit-shallow Vuu transform)))]
      [(vinterleave2 Vu Vv) (transform (vinterleave2 (visit-shallow Vu transform)  (visit-shallow Vv transform)))]
      [(vinterleave4 Vuu Vvv Rt) (transform (vinterleave4 (visit-shallow Vuu transform) (visit-shallow Vvv transform) (visit-shallow Rt transform)))]
      [(vtranspose Vu Vv Rt) (transform (vtranspose (visit-shallow Vu transform) (visit-shallow Vv transform) (visit-shallow Rt transform)))]
      [(vpack Vu Vv signed?) (transform (vpack (visit-shallow Vu transform) (visit-shallow Vv transform) (visit-shallow signed? transform)))]
      [(vpacke Vu Vv) (transform (vpacke (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      [(vpacko Vu Vv) (transform (vpacko (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      [(vpacke-n Vu Vv signed?) (transform (vpacke-n (visit-shallow Vu transform) (visit-shallow Vv transform) (visit-shallow signed? transform)))]
      [(vpacko-n Vu Vv signed?) (transform (vpacko-n (visit-shallow Vu transform) (visit-shallow Vv transform) (visit-shallow signed? transform)))]
      [(vunpack Vu) (transform (vunpack (visit-shallow Vu transform)))]
      ;[(vunpacko Vu)
      ;[(vlut Vu Vv)
      ;[(vgather Rt Mu Vv)

      ;; Conditionals
      [(vmux Qt Vu Vv) (transform (vmux (visit-shallow Qt transform) (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      [(vcmp.lt Vu Vv) (transform (vcmp.lt (visit-shallow Vu transform) (visit-shallow Vv transform)))]

      ;; HVX instructions for type-casting
      [(vzxt Vu) (transform (vzxt (visit-shallow Vu transform)))]
      [(vsxt Vu) (transform (vsxt (visit-shallow Vu transform)))]
      [(reinterpret Vu) (transform (reinterpret (visit-shallow Vu transform)))]

      ;; HVX instructions for data processing
      [(vadd Vu Vv sat?) (transform (vadd (visit-shallow Vu transform) (visit-shallow Vv transform) (visit-shallow sat? transform)))]
      [(vadd-w Vu Vv) (transform (vadd-w (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      [(vadd-w-acc Vdd Vu Vv) (transform (vadd-w-acc (visit-shallow Vdd transform 0) (visit-shallow Vu transform 1) (visit-shallow Vv transform 2)))]
      [(vsub Vu Vv sat?) (transform (vsub (visit-shallow Vu transform) (visit-shallow Vv transform) (visit-shallow sat? transform)))]
      [(vsub-w Vu Vv) (transform (vsub-w (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      [(vmpy Vu Rt) (transform (vmpy (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      [(vmpy-2 Vu Vv) (transform (vmpy-2 (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      [(vmpyi Vu Rt) (transform (vmpyi (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      [(vmpyie Vu Rt) (transform (vmpyie (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      [(vmpyio Vu Rt) (transform (vmpyio (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      [(vmpyie/o Vu Rt) (transform (vmpyie/o (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      [(vmpye Vu Rt) (transform (vmpye (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      [(vmpy-acc Vdd Vu Rt) (transform (vmpy-acc (visit-shallow Vdd transform 0) (visit-shallow Vu transform 1) (visit-shallow Rt transform 2)))]
      [(vmpyi-acc Vd Vu Rt) (transform (vmpyi-acc (visit-shallow Vd transform) (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      [(vmpye-acc Vd Vu Rt) (transform (vmpye-acc (visit-shallow Vd transform) (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      [(vmpy-frac Vd Vu rnd?) (transform (vmpy-frac (visit-shallow Vd transform) (visit-shallow Vu transform) (visit-shallow rnd? transform)))]
      [(vmpa Vuu Rt) (transform (vmpa (visit-shallow Vuu transform) (visit-shallow Rt transform)))]
      [(vmpa-acc Vdd Vuu Rt) (transform (vmpa-acc (visit-shallow Vdd transform) (visit-shallow Vuu transform) (visit-shallow Rt transform)))]
      [(vdmpy Vu Rt) (transform (vdmpy (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      [(vdmpy-sw Vuu Rt) (transform (vdmpy-sw (visit-shallow Vuu transform) (visit-shallow Rt transform)))]
      [(vdmpy-acc Vd Vu Rt) (transform (vdmpy-acc (visit-shallow Vd transform) (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      [(vdmpy-sw-acc Vdd Vuu Rt) (transform (vdmpy-sw-acc (visit-shallow Vdd transform) (visit-shallow Vuu transform) (visit-shallow Rt transform)))]
      [(vtmpy Vuu Rt) (transform (vtmpy (visit-shallow Vuu transform) (visit-shallow Rt transform)))]
      [(vtmpy-acc Vdd Vuu Rt) (transform (vtmpy-acc (visit-shallow Vdd transform) (visit-shallow Vuu transform) (visit-shallow Rt transform)))]
      [(vrmpy Vu Rt) (transform (vrmpy (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      [(vrmpy-acc Vd Vu Rt) (transform (vrmpy-acc (visit-shallow Vd transform) (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      [(vrmpy-2 Vu Vv) (transform (vrmpy-2 (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      [(vrmpy-acc-2 Vd Vu Vv) (transform (vrmpy-acc-2 (visit-shallow Vd transform) (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      [(vrmpy-sw Vuu Rt u1) (transform (vrmpy-sw (visit-shallow Vuu transform) (visit-shallow Rt transform) (visit-shallow u1 transform)))]
      [(vrmpy-sw-acc Vdd Vuu Rt u1) (transform (vrmpy-sw-acc (visit-shallow Vdd transform) (visit-shallow Vuu transform) (visit-shallow Rt transform) (visit-shallow u1 transform)))]
      [(vavg Vu Vv rnd?) (transform (vavg (visit Vu transform) (visit Vv transform) (visit rnd? transform)))]
      ;[(vnavg Vu Vv)
      ;[(vasl Vu Rt)
      [(vrsr Vu Vv) (transform (vrsr (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      [(vlsr Vu Rt) (transform (vlsr (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      [(vasr Vu Rt) (transform (vasr (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      [(vasr-acc Vd Vu Rt) (transform (vasr-acc (visit-shallow Vd transform) (visit-shallow Vu transform) (visit-shallow Rt transform)))]
      [(vasr-n Vu Vv Rt round? sat? unsigned?) (transform (vasr-n (visit-shallow Vu transform) (visit-shallow Vv transform) (visit-shallow Rt transform) (visit-shallow round? transform) (visit-shallow sat? transform) (visit-shallow unsigned? transform)))]
      [(vround Vu Vv signed?) (transform (vround (visit-shallow Vu transform) (visit-shallow Vv transform) (visit-shallow signed? transform)))]
      [(vabs Vu sat?) (transform (vabs (visit-shallow Vu transform) (visit-shallow sat? transform)))]
      [(vabsdiff Vu Vv) (transform (vabsdiff (visit-shallow Vu transform) (visit-shallow Vv transform)))]

      [(vmax Vu Vv) (transform (vmax (visit-shallow Vu transform) (visit-shallow Vv transform)))]
      [(vmin Vu Vv) (transform (vmin (visit-shallow Vu transform) (visit-shallow Vv transform)))]
    
      ;; New types to represent abstract expression / data movement (these types should never appear in output code)
      [(abstr-hvx-expr orig-expr abstr-vals offset) (transform p)]
      [(??lo/hi Vuu interleave?) (transform (??lo/hi (visit-shallow Vuu transform) (visit-shallow interleave? transform)))]
      [(??load id live-data buffer idx-tbl pair?) (transform (??load id live-data buffer idx-tbl pair?) arg-pos)]
      [(??swizzle id live-data exprs idx-tbl pair?) (transform p)]
      [(??shuffle id lds pair?) (transform p)]

      ;[(gather* buff-reads) (transform (gather* buff-reads) arg-pos)]
      ;[(gather-vec buff-reads) (transform (gather-vec (hvx-ast-node-id p) buff-reads))]
      ;[(gather-vecp buff-reads) (transform (gather-vecp (hvx-ast-node-id p) buff-reads))]
      ;[(swizzle* vec) (transform (swizzle* (visit vec transform)))]

      ;[(??vread buf-opts idxs) (transform (??vread (visit buf-opts transform) (visit idxs transform)))]
      ;[(??vreadp buf-opts idxs) (transform (??vreadp (visit buf-opts transform) (visit idxs transform)))]
      
      [_ (transform p)]))

  (pop-trace)
    
  outp)