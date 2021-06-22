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
  ;(println p)
  (define outp
    (match p
      ;; Let Exprs
      [(let-expr var val body) (let-expr (transform var) (visit val transform) (visit body transform))]

      ;; Concat tiles
      [(concat-tiles exprs) (transform (concat-tiles (for/list ([expr exprs]) (visit expr transform))))]
      
      ;; HVX instructions for vector creation
      [(vread buf loc align) (transform (vread buf loc align))]
      [(vreadp buf loc align) (transform (vreadp buf loc align))]
      [(vsplat Rt) (transform (vsplat (visit Rt transform)))]

      ;; HVX instructions for data swizzling
      [(lo Vuu) (transform (lo (visit Vuu transform)))]
      [(hi Vuu) (transform (hi (visit Vuu transform)))]
      [(vcombine Vu Vv) (transform (vcombine (visit Vu transform) (visit Vv transform)))]
      [(vshuffe Vu Vv) (transform (vshuffe (visit Vu transform) (visit Vv transform)))]
      [(vshuffo Vu Vv) (transform (vshuffo (visit Vu transform) (visit Vv transform)))]
      [(vshuffe-n Vu Vv signed?) (transform (vshuffe-n (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
      [(vshuffo-n Vu Vv) (transform (vshuffo-n (visit Vu transform) (visit Vv transform)))]
      [(vshuffoe Vu Vv) (transform (vshuffoe (visit Vu transform) (visit Vv transform)))]
      ;[(vswap Qt Vu Vv)
      ;[(vmux Qt Vu Vv)
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
      [(vinterleave4 Vuu Vvv Rt) (transform (vinterleave4 (visit Vuu transform) (visit Vvv transform) (visit Rt transform)))]
      [(vtranspose Vu Vv Rt) (transform (vtranspose (visit Vu transform) (visit Vv transform) (visit Rt transform)))]
      [(vpack Vu Vv signed?) (transform (vpack (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
      [(vpacke Vu Vv) (transform (vpacke (visit Vu transform) (visit Vv transform)))]
      [(vpacko Vu Vv) (transform (vpacko (visit Vu transform) (visit Vv transform)))]
      [(vpacke-n Vu Vv signed?) (transform (vpacke-n (visit Vu transform) (visit Vv transform) (visit signed? transform)))]
      [(vpacko-n Vu Vv) (transform (vpacko-n (visit Vu transform) (visit Vv transform)))]
      [(vunpack Vu) (transform (vunpack (visit Vu transform)))]
      ;[(vunpacko Vu)
      ;[(vlut Vu Vv)
      ;[(vgather Rt Mu Vv)

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
      [(vrmpy-p Vuu Rt u1) (transform (vrmpy-p (visit Vuu transform) (visit Rt transform) (visit u1 transform)))]
      [(vrmpy-p-acc Vdd Vuu Rt u1) (transform (vrmpy-p-acc (visit Vdd transform) (visit Vuu transform) (visit Rt transform) (visit u1 transform)))]
      ;[(vavg Vu Vv rnd?)
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
      [(??load id live-data buffer idx-tbl pair?) (transform (??load id live-data buffer idx-tbl pair?) arg-pos)]
      [(??swizzle id live-data exprs idx-tbl pair?) (transform (??swizzle id live-data (for/list ([expr exprs]) (visit expr transform)) idx-tbl pair?))]
      ;[(??lo/hi expr) (transform (??lo/hi (visit expr transform)))]

      ;[(gather* buff-reads) (transform (gather* buff-reads) arg-pos)]
      ;[(gather-vec buff-reads) (transform (gather-vec (hvx-ast-node-id p) buff-reads))]
      ;[(gather-vecp buff-reads) (transform (gather-vecp (hvx-ast-node-id p) buff-reads))]
      ;[(swizzle* vec) (transform (swizzle* (visit vec transform)))]

      ;[(??vread buf-opts idxs) (transform (??vread (visit buf-opts transform) (visit idxs transform)))]
      ;[(??vreadp buf-opts idxs) (transform (??vreadp (visit buf-opts transform) (visit idxs transform)))]
      
      [_ (transform p)]))

  (pop-trace)
    
  outp)

(provide
 (rename-out
  [visit visit-hvx]
  [peek-trace visitor-trace-peek]
  [peek-parent-trace visitor-trace-peek-parent]
  [trace-length visitor-trace-length]))