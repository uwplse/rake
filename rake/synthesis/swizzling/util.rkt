#lang rosette

(require rake/cpp/types)
(require rake/cpp/cast)

(require rake/hvx/ast/types)
(require rake/hvx/ast/visitor)
(require rake/hvx/interpreter)

(require rake/halide/ir/interpreter)

;; Returns the set of lanes to verify for during synthesis
(define (synthesis-vec-lanes expr num_lanes)
  (if (hvx-pair? expr)
      (append
       (list 0 1) ;; First two lanes of vec0
       (list (- (quotient num_lanes 2) 2) (- (quotient num_lanes 2) 1)) ;; Last two lanes of vec0
       (list (quotient num_lanes 2) (+ (quotient num_lanes 2) 1)) ;; First two lanes of vec1
       (list (- num_lanes 2) (- num_lanes 1))) ;; Last two lanes of vec1
      (append
       (list 0 1) ;; First two lanes
       (list (- (quotient num_lanes 2) 1) (quotient num_lanes 2)) ;; Two center lanes
       (list (- num_lanes 2) (- num_lanes 1))))) ;; Last two lanes of vec1

;; Check equality between lanes of Halide IR and HVX expressions
(define (lane-eq? oe se lane [offset 0]  [lane-offset 0])
  (cond
    [(or (i16x64x2? se) (u16x64x2? se))
     (set-curr-cn-hvx lane)
     (when (<= 0 lane 63)
       (assert (eq? (oe lane) (cpp-cast (v0-elem-hvx se lane) (type (oe lane))))))
     (when (<= 64 lane 127)
       (assert (eq? (oe lane) (cpp-cast (v1-elem-hvx se (- lane 64)) (type (oe lane))))))]
    [else
     (set-curr-cn-hvx (+ offset lane lane-offset))
     (assert (eq? (oe (+ offset lane)) (elem-hvx se lane)))]))

;; Check equality between lanes of two HVX expressions
(define (lane-eq-hvx? oe se lane)
  (cond
    [(or (i16x64x2? se) (u16x64x2? se))
     (set-curr-cn-hvx lane)
     (when (<= 0 lane 63)
       (assert (eq? (v0-elem-hvx oe lane) (v0-elem-hvx se lane))))
     (when (<= 64 lane 127)
       (assert (eq? (v1-elem-hvx oe (- lane 64)) (v1-elem-hvx se (- lane 64)))))]
    [else
     (set-curr-cn-hvx lane)
     (assert (eq? (elem-hvx oe lane) (elem-hvx se lane)))]))

;; Check equality between two HVX vector expressions
;; TODO: Lanes should not be hardcoded but acquired from synthesis-vec-lanes
(define (hvx-vec-eq? oe se)
  (define N (num-elems-hvx se))
  (cond
    [(and (hvx-pair? se) (hvx-pair? oe))
     (for ([lane 2])
       (set-curr-cn-hvx lane)
       (assert (eq? (v0-elem-hvx oe lane) (v0-elem-hvx se lane))))
     (for ([lane (in-range (- (quotient N 2) 2) (quotient N 2))])
       (set-curr-cn-hvx lane)
       (assert (eq? (v0-elem-hvx oe lane) (v0-elem-hvx se lane))))
     (for ([lane (in-range (quotient N 2) (+ (quotient N 2) 2))])
       (set-curr-cn-hvx lane)
       (assert (eq? (v1-elem-hvx oe (- lane (quotient N 2))) (v1-elem-hvx se (- lane (quotient N 2))))))
     (for ([lane (in-range (- N 2) N)])
       (set-curr-cn-hvx lane)
       (assert (eq? (v1-elem-hvx oe (- lane (quotient N 2))) (v1-elem-hvx se (- lane (quotient N 2))))))]
    [(not (or (hvx-pair? se) (hvx-pair? oe)))
     (for ([lane 2])
       (set-curr-cn-hvx lane)
       (assert (eq? (elem-hvx oe lane) (elem-hvx se lane))))
     (for ([lane (in-range 63 65)])
       (set-curr-cn-hvx lane)
       (assert (eq? (elem-hvx oe lane) (elem-hvx se lane))))
     (for ([lane (in-range (- N 2) N)])
       (set-curr-cn-hvx lane)
       (assert (eq? (elem-hvx oe lane) (elem-hvx se lane))))]
    [else (assert #f)]))

;; Pre-processing. Replaces generic gather* nodes with specialized nodes that output either
;; an hvx vector or vector pair, based on the synthesized template.
(define (specialize-gather*-nodes hvx-expr-sketch)
  (define next-id 0)
  (define (iden node [arg-pos -1])
    (match node
      [(swizzle* vec) (set! next-id (add1 next-id)) (swizzle next-id vec)]
      [(gather-vec opts) (set! next-id (add1 next-id)) (gather-vec next-id opts)]
      [(gather-vecp opts) (set! next-id (add1 next-id)) (gather-vecp next-id opts)]
      [(gather* opts)
       (set! next-id (add1 next-id))
       (match (visitor-trace-peek-parent)
         [(vzxt Vu signed?) (gather-vec next-id opts)]
         [(vsxt Vu signed?) (gather-vec next-id opts)]
         [(reinterpret Vu) (gather-vec next-id opts)]
         [(vadd Vu Vv sat?) (gather-vec next-id opts)]
         [(vadd-w Vu Vv) (gather-vec next-id opts)]
         [(vadd-w-acc Vdd Vu Vv) (if (eq? arg-pos 0) (gather-vecp next-id opts) (gather-vec next-id opts))]
         [(vmpy Vu Rt) (gather-vec next-id opts)]
         [(vmpyi Vu Rt) (gather-vec next-id opts)]
         [(vmpye Vu Rt) (gather-vec next-id opts)]
         [(vmpy-acc Vdd Vu Rt) (if (eq? arg-pos 0) (gather-vecp next-id opts) (gather-vec next-id opts))]
         [(vmpyi-acc Vd Vu Rt) (gather-vec next-id opts)]
         [(vmpye-acc Vd Vu Rt) (gather-vec next-id opts)]
         [(vmpa Vuu Rt signed?) (gather-vecp next-id opts)]
         [(vmpa-acc Vdd Vuu Rt signed?) (gather-vecp next-id opts)]
         [(vdmpy Vu Rt) (gather-vec next-id opts)]
         [(vdmpy-sw Vuu Rt) (gather-vecp next-id opts)]
         [(vdmpy-acc Vd Vu Rt) (gather-vec next-id opts)]
         [(vdmpy-sw-acc Vdd Vuu Rt) (gather-vecp next-id opts)]
         [(vtmpy Vuu Rt signed?) (gather-vecp next-id opts)]
         [(vtmpy-acc Vdd Vuu Rt signed?) (gather-vecp next-id opts)]
         [(vrmpy Vu Rt) (gather-vec next-id opts)]
         [(vrmpy-acc Vd Vu Rt) (gather-vec next-id opts)]
         [(vrmpy-p Vuu Rt u1) (gather-vecp next-id opts)]
         [(vrmpy-p-acc Vdd Vuu Rt u1) (gather-vecp next-id opts)]
         [(vavg Vu Vv rnd?) (gather-vec next-id opts)]
         [(vnavg Vu Vv) (gather-vec next-id opts)]
         [(vasl Vu Rt) (gather-vec next-id opts)]
         [(vlsr Vu Rt) (gather-vec next-id opts)]
         [(vasr Vu Rt) (gather-vec next-id opts)]
         [(vasr-acc Vd Vu Rt) (gather-vec next-id opts)]
         [(vasr-n Vu Vv Rt round? sat? unsigned?) (gather-vec next-id opts)]
         [(vround Vu Vv signed?) (gather-vec next-id opts)]
         [(vmax Vu Vv) (gather-vec next-id opts)]
         [(vmin Vu Vv) (gather-vec next-id opts)])]
      [_ node]))
  (visit-hvx hvx-expr-sketch iden))

(provide (all-defined-out))