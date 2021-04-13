#lang rosette

(require rosette/lib/match)
(require rake/cpp/types)

(struct hvx-ast-node (id))

;; Let exprs
(struct let-expr (var val body) #:transparent)

;; HVX vector types
(struct i8x128 (Vu) #:transparent)
(struct u8x128 (Vu) #:transparent)
(struct i16x64 (Vu) #:transparent)
(struct u16x64 (Vu) #:transparent)
(struct i32x32 (Vu) #:transparent)
(struct u32x32 (Vu) #:transparent)

(struct i8x128x2 (Vu Vv) #:transparent)
(struct u8x128x2 (Vu Vv) #:transparent)
(struct i16x64x2 (Vu Vv) #:transparent)
(struct u16x64x2 (Vu Vv) #:transparent)
(struct i32x32x2 (Vu Vv) #:transparent)
(struct u32x32x2 (Vu Vv) #:transparent)
     
;; HVX instructions for vector creation
(struct vread (buf loc align) #:transparent)
(struct vreadp (buf loc align) #:transparent)
(struct vsplat (Rt) #:transparent)

;; HVX instructions for data swizzling
(struct lo (Vuu) #:transparent)
(struct hi (Vuu) #:transparent)
(struct vcombine (Vu Vv) #:transparent)
(struct vshuffe (Vu Vv) #:transparent)
(struct vshuffo (Vu Vv) #:transparent)
(struct vshuffo-n (Vu Vv signed?) #:transparent)
(struct vshuffoe (Vu Vv) #:transparent)
(struct vswap (Qt Vu Vv) #:transparent)
(struct vmux (Qt Vu Vv) #:transparent)
(struct vsat (Vu Vv) #:transparent)
(struct valign (Vu Vv Rt) #:transparent)
(struct vlalign (Vu Vv Rt) #:transparent)
(struct vror (Vu Rt) #:transparent)
(struct vrotr (Vu Vv) #:transparent)
(struct vdeal (Vu) #:transparent)
(struct vdeale (Vu Vv) #:transparent)
(struct vshuff (Vu) #:transparent)
(struct vtranspose (Vu Vv Rt) #:transparent)
(struct vpack (Vu Vv signed?) #:transparent)
(struct vpacke (Vu Vv signed?) #:transparent)
(struct vpacko (Vu Vv signed?) #:transparent)
(struct vpacko-n (Vu Vv signed?) #:transparent)
(struct vunpack (Vu) #:transparent)
(struct vunpacko (Vu) #:transparent)
(struct vlut (Vu Vv) #:transparent)
(struct vgather (Rt Mu Vv) #:transparent)
(struct vinterleave (Vuu) #:transparent)

;; HVX instructions for type-casting
(struct vzxt (Vu signed?) #:transparent)
(struct vsxt (Vu signed?) #:transparent)

;; HVX instructions for data processing
(struct vadd (Vu Vv sat?) #:transparent)
(struct vadd-w (Vu Vv) #:transparent)
(struct vadd-w-acc (Vdd Vu Vv) #:transparent)
(struct vsub (Vu Vv sat?) #:transparent)
(struct vsub-w (Vu Vv) #:transparent)
(struct vmpy (Vu Rt) #:transparent)
(struct vmpyi (Vu Rt) #:transparent)
(struct vmpye (Vu Rt) #:transparent)
(struct vmpy-acc (Vdd Vu Rt) #:transparent)
(struct vmpyi-acc (Vd Vu Rt) #:transparent)
(struct vmpye-acc (Vd Vu Rt) #:transparent)
(struct vmpa (Vuu Rt signed?) #:transparent)
(struct vmpa-acc (Vdd Vuu Rt signed?) #:transparent)
(struct vdmpy (Vu Rt) #:transparent)
(struct vdmpy-sw (Vuu Rt) #:transparent)
(struct vdmpy-acc (Vd Vu Rt) #:transparent)
(struct vdmpy-sw-acc (Vdd Vuu Rt) #:transparent)
(struct vtmpy (Vuu Rt signed?) #:transparent)
(struct vtmpy-acc (Vdd Vuu Rt signed?) #:transparent)
(struct vrmpy (Vu Rt) #:transparent)
(struct vrmpy-acc (Vd Vu Rt) #:transparent)
(struct vrmpy-p (Vuu Rt u1) #:transparent)
(struct vrmpy-p-acc (Vdd Vuu Rt u1) #:transparent)
(struct vavg (Vu Vv rnd?) #:transparent)
(struct vnavg (Vu Vv) #:transparent)
(struct vasl (Vu Rt) #:transparent)
(struct vlsr (Vu Rt) #:transparent)
(struct vasr (Vu Rt) #:transparent)
(struct vasr-acc (Vd Vu Rt) #:transparent)
(struct vasr-n (Vu Vv Rt round? sat? unsigned?) #:transparent)
(struct vround (Vu Vv signed?) #:transparent)
(struct vabs (Vu sat?) #:transparent)
(struct vabsdiff (Vu Vv) #:transparent)

(struct vmax (Vu Vv) #:transparent)
(struct vmin (Vu Vv) #:transparent)

;; New instructions types we introduce to abstract away data-movement.
;; These instr types should never exist in output code.
(struct gather* (buff-reads))
(struct gather-vec (buff-reads) #:super struct:hvx-ast-node)
(struct gather-vecp (buff-reads) #:super struct:hvx-ast-node)
(struct swizzle* (vec) #:transparent)
(struct swizzle (vec) #:transparent #:super struct:hvx-ast-node)
(struct serve-vec (vec type opts sols))
(struct serve-vec-pair (v0 v1 type opts sols))
(struct ??vread (buf-opts load-idxs) #:transparent)
(struct ??vreadp (buf-opts load-idxs) #:transparent)

(struct abstr-sub-expr (id vec) #:transparent)

;; Type signatures
(struct instr-sig (ret-val args) #:transparent)

(define (instr-forms instr)
  (cond
    
    ;; HVX instructions for data swizzling
    [(eq? lo instr) (list
                     (instr-sig 'i8x128 (list 'i8x128x2))
                     (instr-sig 'i16x64 (list 'i16x64x2))
                     (instr-sig 'i32x32 (list 'i32x32x2))
                     (instr-sig 'u8x128 (list 'u8x128x2))
                     (instr-sig 'u16x64 (list 'u16x64x2))
                     (instr-sig 'u32x32 (list 'u32x32x2)))]
    
    [(eq? hi instr) (list
                     (instr-sig 'i8x128 (list 'i8x128x2))
                     (instr-sig 'i16x64 (list 'i16x64x2))
                     (instr-sig 'i32x32 (list 'i32x32x2))
                     (instr-sig 'u8x128 (list 'u8x128x2))
                     (instr-sig 'u16x64 (list 'u16x64x2))
                     (instr-sig 'u32x32 (list 'u32x32x2)))]

    [(eq? vcombine instr) (list
                           (instr-sig 'i8x128x2 (list 'i8x128 'i8x128))
                           (instr-sig 'i16x64x2 (list 'i16x64 'i16x64))
                           (instr-sig 'i32x32x2 (list 'i32x32 'i32x32))
                           (instr-sig 'u8x128x2 (list 'u8x128 'u8x128))
                           (instr-sig 'u16x64x2 (list 'u16x64 'u16x64))
                           (instr-sig 'u32x32x2 (list 'u32x32 'u32x32)))]

    [(eq? vshuff instr) (list
                         (instr-sig 'i8x128 (list 'i8x128))
                         (instr-sig 'u8x128 (list 'u8x128))
                         (instr-sig 'i16x64 (list 'i16x64))
                         (instr-sig 'u16x64 (list 'u16x64)))]

    [(eq? vshuffe instr) (list
                          (instr-sig 'i8x128 (list 'i8x128 'i8x128))
                          (instr-sig 'u8x128 (list 'u8x128 'u8x128))
                          (instr-sig 'i16x64 (list 'i16x64 'i16x64))
                          (instr-sig 'u16x64 (list 'u16x64 'u16x64)))]

    [(eq? vshuffo instr) (list
                          (instr-sig 'i8x128 (list 'i8x128 'i8x128))
                          (instr-sig 'u8x128 (list 'u8x128 'u8x128))
                          (instr-sig 'i16x64 (list 'i16x64 'i16x64))
                          (instr-sig 'u16x64 (list 'u16x64 'u16x64)))]

    [(eq? vshuffoe instr) (list
                           (instr-sig 'i8x128x2 (list 'i8x128 'i8x128))
                           (instr-sig 'u8x128x2 (list 'u8x128 'u8x128))
                           (instr-sig 'i16x64x2 (list 'i16x64 'i16x64))
                           (instr-sig 'u16x64x2 (list 'u16x64 'u16x64)))]

    [(eq? valign instr) (list
                         (instr-sig 'i8x128 (list 'i8x128 'i8x128 'const))
                         (instr-sig 'u8x128 (list 'u8x128 'u8x128 'const))
                         (instr-sig 'i16x64 (list 'i16x64 'i16x64 'const))
                         (instr-sig 'u16x64 (list 'u16x64 'u16x64 'const))
                         (instr-sig 'i32x32 (list 'i32x32 'i32x32 'const))
                         (instr-sig 'u32x32 (list 'u32x32 'u32x32 'const)))]

    [(eq? vlalign instr) (list
                         (instr-sig 'i8x128 (list 'i8x128 'i8x128 'const))
                         (instr-sig 'u8x128 (list 'u8x128 'u8x128 'const))
                         (instr-sig 'i16x64 (list 'i16x64 'i16x64 'const))
                         (instr-sig 'u16x64 (list 'u16x64 'u16x64 'const))
                         (instr-sig 'i32x32 (list 'i32x32 'i32x32 'const))
                         (instr-sig 'u32x32 (list 'u32x32 'u32x32 'const)))]

    [(eq? vror instr) (list
                       (instr-sig 'i8x128 (list 'i8x128 'const))
                       (instr-sig 'u8x128 (list 'u8x128 'const))
                       (instr-sig 'i16x64 (list 'i16x64 'const))
                       (instr-sig 'u16x64 (list 'u16x64 'const))
                       (instr-sig 'i32x32 (list 'i32x32 'const))
                       (instr-sig 'u32x32 (list 'u32x32 'const)))]

    [(eq? vdeal instr) (list
                        (instr-sig 'i8x128 (list 'i8x128))
                        (instr-sig 'u8x128 (list 'u8x128))
                        (instr-sig 'i16x64 (list 'i16x64))
                        (instr-sig 'u16x64 (list 'u16x64)))]

    [(eq? vdeale instr) (list
                         (instr-sig 'i8x128 (list 'i8x128 'i8x128))
                         (instr-sig 'u8x128 (list 'u8x128 'u8x128)))]

    [(eq? vpacke instr) (list
                         (instr-sig 'i8x128 (list 'i16x64 'i16x64 #t))
                         (instr-sig 'u8x128 (list 'i16x64 'i16x64 #f))
                         (instr-sig 'i8x128 (list 'u16x64 'u16x64 #t))
                         (instr-sig 'u8x128 (list 'u16x64 'u16x64 #f))
                         (instr-sig 'i16x64 (list 'i32x32 'i32x32 #t))
                         (instr-sig 'u16x64 (list 'i32x32 'i32x32 #f))
                         (instr-sig 'i16x64 (list 'u32x32 'u32x32 #t))
                         (instr-sig 'u16x64 (list 'u32x32 'u32x32 #f)))]

    [(eq? vpacko instr) (list
                         (instr-sig 'i8x128 (list 'i16x64 'i16x64 #t))
                         (instr-sig 'u8x128 (list 'i16x64 'i16x64 #f))
                         (instr-sig 'i8x128 (list 'u16x64 'u16x64 #t))
                         (instr-sig 'u8x128 (list 'u16x64 'u16x64 #f))
                         (instr-sig 'i16x64 (list 'i32x32 'i32x32 #t))
                         (instr-sig 'u16x64 (list 'i32x32 'i32x32 #f))
                         (instr-sig 'i16x64 (list 'u32x32 'u32x32 #t))
                         (instr-sig 'u16x64 (list 'u32x32 'u32x32 #f)))]

    [(eq? vunpack instr) (list
                          (instr-sig 'i16x64x2 (list 'i8x128))
                          (instr-sig 'u16x64x2 (list 'u8x128))
                          (instr-sig 'i32x32x2 (list 'i16x64))
                          (instr-sig 'u32x32x2 (list 'u16x64)))]

    [(eq? vtranspose instr) (list
                             (instr-sig 'i16x64x2 (list 'i16x64 'i16x64 'const))
                             (instr-sig 'u16x64x2 (list 'u16x64 'u16x64 'const)))]

    [(eq? vinterleave instr) (list
                              (instr-sig 'i16x64x2 (list 'i16x64x2))
                              (instr-sig 'u16x64x2 (list 'u16x64x2)))]

    ;(struct vlut (Vu Vv) #:transparent)
    ;(struct vgather (Rt Mu Vv) #:transparent)
    ;(struct vswap (Qt Vu Vv) #:transparent)
    ;(struct vmux (Qt Vu Vv) #:transparent)

    ;; HVX instructions for type-casting
    [(eq? vzxt instr) (list
                       (instr-sig 'i16x64x2 (list 'u8x128 #t))
                       (instr-sig 'i16x64x2 (list 'i8x128 #t))
                       (instr-sig 'i32x32x2 (list 'u16x64 #t))
                       (instr-sig 'i32x32x2 (list 'i16x64 #t))
                       (instr-sig 'u16x64x2 (list 'u8x128 #f))
                       (instr-sig 'u16x64x2 (list 'i8x128 #f))
                       (instr-sig 'u32x32x2 (list 'u16x64 #f))
                       (instr-sig 'u32x32x2 (list 'i16x64 #f)))]
           
    [(eq? vsxt instr) (list
                       (instr-sig 'i16x64x2 (list 'u8x128 #t))
                       (instr-sig 'i16x64x2 (list 'i8x128 #t))
                       (instr-sig 'i32x32x2 (list 'u16x64 #t))
                       (instr-sig 'i32x32x2 (list 'i16x64 #t))
                       (instr-sig 'u16x64x2 (list 'u8x128 #f))
                       (instr-sig 'u16x64x2 (list 'i8x128 #f))
                       (instr-sig 'u32x32x2 (list 'u16x64 #f))
                       (instr-sig 'u32x32x2 (list 'i16x64 #f)))]

    ;; HVX instructions for data processing
    [(eq? vadd instr) (list
                       (instr-sig 'i8x128 (list 'i8x128 'i8x128 'bool))
                       (instr-sig 'i16x64 (list 'i16x64 'i16x64 'bool))
                       (instr-sig 'i32x32 (list 'i32x32 'i32x32 'bool))

                       (instr-sig 'u8x128 (list 'u8x128 'i8x128 'bool))
                       (instr-sig 'u8x128 (list 'u8x128 'u8x128 'bool))
                       (instr-sig 'u16x64 (list 'u16x64 'u16x64 'bool))
                       (instr-sig 'u32x32 (list 'u32x32 'u32x32 'bool))

                       (instr-sig 'i8x128x2 (list 'i8x128x2 'i8x128x2 'bool))
                       (instr-sig 'i16x64x2 (list 'i16x64x2 'i16x64x2 'bool))
                       (instr-sig 'i32x32x2 (list 'i32x32x2 'i32x32x2 'bool))

                       (instr-sig 'u8x128x2 (list 'u8x128x2 'u8x128x2 'bool))
                       (instr-sig 'u16x64x2 (list 'u16x64x2 'u16x64x2 'bool))
                       (instr-sig 'u32x32x2 (list 'u32x32x2 'u32x32x2 'bool)))]
    
    [(eq? vadd-w instr) (list
                         (instr-sig 'i16x64x2 (list 'u8x128 'u8x128))
                         (instr-sig 'i32x32x2 (list 'u16x64 'u16x64))
                         (instr-sig 'i32x32x2 (list 'i16x64 'i16x64)))]
    
    [(eq? vadd-w-acc instr) (list
                             (instr-sig 'i16x64x2 (list 'i16x64x2 'u8x128 'u8x128))
                             (instr-sig 'i32x32x2 (list 'i32x32x2 'u16x64 'u16x64))
                             (instr-sig 'i32x32x2 (list 'i32x32x2 'i16x64 'i16x64)))]
    [(eq? vmpy instr) (list
                       (instr-sig 'i16x64x2 (list 'u8x128 'int8))
                       (instr-sig 'u16x64x2 (list 'u8x128 'uint8))
                       (instr-sig 'i32x32x2 (list 'i16x64 'int16))
                       (instr-sig 'u32x32x2 (list 'u16x64 'uint16)))]
    
    [(eq? vmpyi instr) (list
                        (instr-sig 'i16x64 (list 'i16x64 'int8))
                        (instr-sig 'i32x32 (list 'i32x32 'int8))
                        ;(instr-sig 'i32x32 (list 'i32x32 'uint8))
                        ;(instr-sig 'i32x32 (list 'i32x32 'int16))
                        )]
                        
    [(eq? vmpye instr) (list
                        (instr-sig 'u32x32 (list 'i32x32 'uint16))
                        (instr-sig 'u32x32 (list 'u32x32 'uint16)))]
     
    [(eq? vmpy-acc instr) (list
                           (instr-sig 'i16x64x2 (list 'i16x64x2 'u8x128 'int8))
                           (instr-sig 'u16x64x2 (list 'u16x64x2 'u8x128 'uint8))
                           (instr-sig 'i32x32x2 (list 'i32x32x2 'i16x64 'int16))
                           (instr-sig 'u32x32x2 (list 'u32x32x2 'u16x64 'uint16)))]
    
    [(eq? vmpyi-acc instr) (list
                            (instr-sig 'i16x64 (list 'i16x64 'i16x64 'int8))
                            (instr-sig 'i32x32 (list 'i32x32 'i32x32 'int8))
                            ;(instr-sig 'i32x32 (list 'i32x32 'i32x32 'uint8))
                            ;(instr-sig 'i32x32 (list 'i32x32 'i32x32 'int16))
                            )]
     
    [(eq? vmpye-acc instr) (list
                            (instr-sig 'u32x32 (list 'u32x32 'i32x32 'uint16))
                            (instr-sig 'u32x32 (list 'u32x32 'u32x32 'uint16)))]
     
    [(eq? vmpa instr) (list
                       (instr-sig 'i16x64x2 (list 'u8x128x2 'int8x2 #t))
                       ;(instr-sig 'i16x64x2 (list 'u8x128x2 'uint8x2 #t))
                       (instr-sig 'u16x64x2 (list 'u8x128x2 'unt8x2 #f))
                       (instr-sig 'i32x32x2 (list 'u16x64x2 'int8x2 #t))
                       (instr-sig 'i32x32x2 (list 'i16x64x2 'int8x2 #t)))]
    
    [(eq? vmpa-acc instr) (list
                           (instr-sig 'i16x64x2 (list 'i16x64x2 'u8x128x2 'int8x2 #t))
                           ;(instr-sig 'i16x64x2 (list 'i16x64x2 'u8x128x2 'uint8x2 #t))
                           (instr-sig 'u16x64x2 (list 'u16x64x2 'u8x128x2 'uint8x2 #f))
                           (instr-sig 'i32x32x2 (list 'i32x32x2 'u16x64x2 'int8x2 #t))
                           (instr-sig 'i32x32x2 (list 'i32x32x2 'i16x64x2 'int8x2 #t)))]
    
    [(eq? vdmpy instr) (list
                        (instr-sig 'i16x64 (list 'u8x128 'int8x2))
                        (instr-sig 'i32x32 (list 'i16x64 'int8x2))
                        (instr-sig 'i32x32 (list 'i16x64 'int16x2))
                        (instr-sig 'i32x32 (list 'i16x64 'uint16x2))
                        (instr-sig 'i32x32 (list 'i16x64x2 'int16x2))
                        (instr-sig 'i32x32 (list 'i16x64x2 'uint16x2)))]
    
    [(eq? vdmpy-sw instr) (list
                           (instr-sig 'i16x64x2 (list 'u8x128x2 'int8x2))
                           (instr-sig 'i32x32x2 (list 'i16x64x2 'int8x2)))]
 
    [(eq? vdmpy-acc instr) (list
                            (instr-sig 'i16x64 (list 'i16x64 'u8x128 'int8x2))
                            (instr-sig 'i32x32 (list 'i32x32 'i16x64 'int8x2))
                            (instr-sig 'i32x32 (list 'i32x32 'i16x64 'int16x2))
                            (instr-sig 'i32x32 (list 'i32x32 'i16x64 'uint16x2))
                            (instr-sig 'i32x32 (list 'i32x32 'i16x64x2 'int16x2))
                            (instr-sig 'i32x32 (list 'i32x32'i16x64x2 'uint16x2)))]
    
    [(eq? vdmpy-sw-acc instr) (list
                               (instr-sig 'i16x64x2 (list 'i16x64x2 'u8x128x2 'int8x2))
                               (instr-sig 'i32x32x2 (list 'i32x32x2 'i16x64x2 'int8x2)))]

    [(eq? vtmpy instr) (list
                        (instr-sig 'i16x64x2 (list 'i8x128x2 'int8x2 #t))
                        (instr-sig 'i16x64x2 (list 'u8x128x2 'int8x2 #t))
                        (instr-sig 'u16x64x2 (list 'u8x128x2 'uint8x2 #f))
                        (instr-sig 'i32x32x2 (list 'i16x64x2 'int8x2 #t)))]

    [(eq? vtmpy-acc instr) (list
                            (instr-sig 'i16x64x2 (list 'i16x64x2 'i8x128x2 'int8x2 #t))
                            (instr-sig 'i16x64x2 (list 'i16x64x2 'u8x128x2 'int8x2 #t))
                            (instr-sig 'u16x64x2 (list 'u16x64x2 'u8x128x2 'uint8x2 #f))
                            (instr-sig 'i32x32x2 (list 'i32x32x2 'i16x64x2 'int8x2 #t)))]
    
    [(eq? vrmpy instr) (list
                        (instr-sig 'u32x32 (list 'u8x128 'uint8x4))
                        (instr-sig 'i32x32 (list 'u8x128 'int8x4)))]

    [(eq? vrmpy-acc instr) (list
                            (instr-sig 'u32x32 (list 'u32x32 'u8x128 'uint8x4))
                            (instr-sig 'i32x32 (list 'i32x32 'u8x128 'int8x4)))]
                        
    [(eq? vrmpy-p instr) (list
                          (instr-sig 'u32x32x2 (list 'u8x128x2 'uint8x4))
                          (instr-sig 'i32x32x2 (list 'u8x128x2 'int8x4)))]
    
    [(eq? vrmpy-p-acc instr) (list
                              (instr-sig 'u32x32x2 (list 'u32x32x2 'u8x128x2 'uint8x4))
                              (instr-sig 'i32x32x2 (list 'i32x32x2 'u8x128x2 'int8x4)))]
    
    ;[vavg
    ;[vnavg
    [(eq? vasl instr) (list
                       (instr-sig 'i16x64 (list 'i16x64 'i8x128x2 'int8))
                       (instr-sig 'i16x64 (list 'i16x64 'i8x128x2 'int8)))]
    ;[vlsr
    ;[vasr
    ;[vasr-acc
    ;[vasr-n
    ;[vround
    [else (error "Unknown instruction:" instr)]))


;; Sine utility methods for HVX types
(define (v0 vec-p)
  (match vec-p
    [(i8x128x2 v0 v1) (i8x128 v0)]
    [(u8x128x2 v0 v1) (u8x128 v0)]
    [(i16x64x2 v0 v1) (i16x64 v0)]
    [(u16x64x2 v0 v1) (u16x64 v0)]
    [(i32x32x2 v0 v1) (i32x32 v0)]
    [(u32x32x2 v0 v1) (u32x32 v0)]))

(define (v1 vec-p)
  (match vec-p
    [(i8x128x2 v0 v1) (i8x128 v1)]
    [(u8x128x2 v0 v1) (u8x128 v1)]
    [(i16x64x2 v0 v1) (i16x64 v1)]
    [(u16x64x2 v0 v1) (u16x64 v1)]
    [(i32x32x2 v0 v1) (i32x32 v1)]
    [(u32x32x2 v0 v1) (u32x32 v1)]))

(define (elem vec idx)
  (match vec
    [(i8x128 data) (data idx)]
    [(u8x128 data) (data idx)]
    [(i16x64 data) (data idx)]
    [(u16x64 data) (data idx)]
    [(i32x32 data) (data idx)]
    [(u32x32 data) (data idx)]))

(define (v0-elem vec-p idx)
  (match vec-p
    [(i8x128x2 v0 v1) (v0 idx)]
    [(u8x128x2 v0 v1) (v0 idx)]
    [(i16x64x2 v0 v1) (v0 idx)]
    [(u16x64x2 v0 v1) (v0 idx)]
    [(i32x32x2 v0 v1) (v0 idx)]
    [(u32x32x2 v0 v1) (v0 idx)]))

(define (v1-elem vec-p idx)
  (match vec-p
    [(i8x128x2 v0 v1) (v1 idx)]
    [(u8x128x2 v0 v1) (v1 idx)]
    [(i16x64x2 v0 v1) (v1 idx)]
    [(u16x64x2 v0 v1) (v1 idx)]
    [(i32x32x2 v0 v1) (v1 idx)]
    [(u32x32x2 v0 v1) (v1 idx)]))

(define (elem-type expr)
  (cond
    [(eq? i8x128 expr) 'int8]
    [(eq? u8x128 expr) 'uint8]
    [(eq? i16x64 expr) 'int16]
    [(eq? u16x64 expr) 'uint16]
    [(eq? i32x32 expr) 'int32]
    [(eq? u32x32 expr) 'uint32]
    [(eq? i8x128x2 expr) 'int8]
    [(eq? u8x128x2 expr) 'uint8]
    [(eq? i16x64x2 expr) 'int16]
    [(eq? u16x64x2 expr) 'uint16]
    [(eq? i32x32x2 expr) 'int32]
    [(eq? u32x32x2 expr) 'uint32]

    [(eq? 'i8x128 expr) 'int8]
    [(eq? 'u8x128 expr) 'uint8]
    [(eq? 'i16x64 expr) 'int16]
    [(eq? 'u16x64 expr) 'uint16]
    [(eq? 'i32x32 expr) 'int32]
    [(eq? 'u32x32 expr) 'uint32]
    [(eq? 'i8x128x2 expr) 'int8]
    [(eq? 'u8x128x2 expr) 'uint8]
    [(eq? 'i16x64x2 expr) 'int16]
    [(eq? 'u16x64x2 expr) 'uint16]
    [(eq? 'i32x32x2 expr) 'int32]
    [(eq? 'u32x32x2 expr) 'uint32]))

(define (num-elems expr)
  (match expr
    [(i8x128 data) 128]
    [(u8x128 data) 128]
    [(i16x64 data) 64]
    [(u16x64 data) 64]
    [(i32x32 data) 32]
    [(u32x32 data) 32]
    [(i8x128x2 data-v0 data-v1) 256]
    [(u8x128x2 data-v0 data-v1) 256]
    [(i16x64x2 data-v0 data-v1) 128]
    [(u16x64x2 data-v0 data-v1) 128]
    [(i32x32x2 data-v0 data-v1) 64]
    [(u32x32x2 data-v0 data-v1) 64]))

(define (hvx-pair? v)
  (match v
    [(i8x128 data) #f]
    [(u8x128 data) #f]
    [(i16x64 data) #f]
    [(u16x64 data) #f]
    [(i32x32 data) #f]
    [(u32x32 data) #f]
    [(i8x128x2 data-v0 data-v1) #t]
    [(u8x128x2 data-v0 data-v1) #t]
    [(i16x64x2 data-v0 data-v1) #t]
    [(u16x64x2 data-v0 data-v1) #t]
    [(i32x32x2 data-v0 data-v1) #t]
    [(u32x32x2 data-v0 data-v1) #t]

    ['i8x128 #f]
    ['u8x128 #f]
    ['i16x64 #f]
    ['u16x64 #f]
    ['i32x32 #f]
    ['u32x32 #f]
    ['i8x128x2 #t]
    ['u8x128x2 #t]
    ['i16x64x2 #t]
    ['u16x64x2 #t]
    ['i32x32x2 #t]
    ['u32x32x2 #t]))

(define (hvx-type expr)
  (match expr
    [(i8x128 data) 'i8x128]
    [(u8x128 data) 'u8x128]
    [(i16x64 data) 'i16x64]
    [(u16x64 data) 'u16x64]
    [(i32x32 data) 'i32x32]
    [(u32x32 data) 'u32x32]
    [(i8x128x2 data-v0 data-v1) 'i8x128x2]
    [(u8x128x2 data-v0 data-v1) 'u8x128x2]
    [(i16x64x2 data-v0 data-v1) 'i16x64x2]
    [(u16x64x2 data-v0 data-v1) 'u16x64x2]
    [(i32x32x2 data-v0 data-v1) 'i32x32x2]
    [(u32x32x2 data-v0 data-v1) 'u32x32x2]))

(provide
 (except-out (all-defined-out) elem v0-elem v1-elem num-elems)
 (rename-out [elem elem-hvx] [v0-elem v0-elem-hvx] [v1-elem v1-elem-hvx] [num-elems num-elems-hvx]))