#lang rosette/safe

(require
  (only-in racket/base error)
  (only-in racket/struct make-constructor-style-printer)
  rosette/lib/destruct
  rake/cpp/types)

(provide
 (except-out (all-defined-out) instr-forms v0 v1 elem v0-elem v1-elem elem-type num-elems vec-pair? type)
 (prefix-out hvx: instr-forms)
 (prefix-out hvx: v0)
 (prefix-out hvx: v1)
 (prefix-out hvx: elem)
 (prefix-out hvx: v0-elem)
 (prefix-out hvx: v1-elem)
 (prefix-out hvx: elem-type)
 (prefix-out hvx: num-elems)
 (prefix-out hvx: vec-pair?)
 (prefix-out hvx: type))

(struct hvx-ast-node (id))

;; Let exprs
(struct let-expr (var val body) #:transparent)

;; Scalar types
(struct Rt.b (v0) #:transparent)
(struct Rt.ub (v0) #:transparent)
(struct Rt.h (v0) #:transparent)
(struct Rt.uh (v0) #:transparent)
(struct Rt.w (v0) #:transparent)
(struct Rt.uw (v0) #:transparent)
(struct Rt2.b (v0 v1) #:transparent)
(struct Rt2.ub (v0 v1) #:transparent)
(struct Rt2.h (v0 v1) #:transparent)
(struct Rt2.uh (v0 v1) #:transparent)
(struct Rt4.b (v0 v1 v2 v3) #:transparent)
(struct Rt4.ub (v0 v1 v2 v3) #:transparent)

;; Concat vectors (not an intrinsic but a useful construct)
(struct concat-tiles (vecs) #:transparent)

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
(struct vshuffe-n (Vu Vv signed?) #:transparent)
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
(struct vpack (Vu Vv signed?) #:transparent)
(struct vpacke (Vu Vv) #:transparent)
(struct vpacko (Vu Vv) #:transparent)
(struct vpacke-n (Vu Vv signed?) #:transparent)
(struct vpacko-n (Vu Vv) #:transparent)
(struct vunpack (Vu) #:transparent)
(struct vunpacko (Vu) #:transparent)
(struct vlut (Vu Vv) #:transparent)
(struct vgather (Rt Mu Vv) #:transparent)
(struct vtranspose (Vu Vv Rt) #:transparent)

;; HVX instructions for type-casting
(struct vzxt (Vu) #:transparent)
(struct vsxt (Vu) #:transparent)
(struct reinterpret (Vu) #:transparent)

;; HVX instructions for data processing
(struct vadd (Vu Vv sat?) #:transparent)
(struct vadd-w (Vu Vv) #:transparent)
(struct vadd-w-acc (Vdd Vu Vv) #:transparent)
(struct vsub (Vu Vv sat?) #:transparent)
(struct vsub-w (Vu Vv) #:transparent)
(struct vmpy (Vu Rt) #:transparent)
(struct vmpy-2 (Vu Vv) #:transparent)
(struct vmpyi (Vu Rt) #:transparent)
(struct vmpyie (Vu Rt) #:transparent)
(struct vmpyie-2 (Vu Vv) #:transparent)
(struct vmpye (Vu Rt) #:transparent)
(struct vmpyieo (Vu Vv) #:transparent)
(struct vmpyio (Vu Vv) #:transparent)
(struct vmpyo (Vu Rt rnd?) #:transparent)
(struct vmpy-acc (Vdd Vu Rt) #:transparent)
(struct vmpyi-acc (Vd Vu Rt) #:transparent)
(struct vmpye-acc (Vd Vu Rt) #:transparent)
(struct vmpy-frac (Vu Vv rnd?) #:transparent)
(struct vmpa (Vuu Rt) #:transparent)
(struct vmpa-acc (Vdd Vuu Rt) #:transparent)
(struct vdmpy (Vu Rt) #:transparent)
(struct vdmpy-sw (Vuu Rt) #:transparent)
(struct vdmpy-acc (Vd Vu Rt) #:transparent)
(struct vdmpy-sw-acc (Vdd Vuu Rt) #:transparent)
(struct vtmpy (Vuu Rt) #:transparent)
(struct vtmpy-acc (Vdd Vuu Rt) #:transparent)
(struct vrmpy (Vu Rt) #:transparent)
(struct vrmpy-2 (Vu Vv) #:transparent)
(struct vrmpy-acc (Vd Vu Rt) #:transparent)
(struct vrmpy-acc-2 (Vd Vu Vv) #:transparent)
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
(struct vdsad (Vuu Rt) #:transparent)
(struct vrsad (Vuu Rt u1) #:transparent)
(struct vmax (Vu Vv) #:transparent)
(struct vmin (Vu Vv) #:transparent)

;; Halide HVX abstractions
(struct vrsr (Vu Vv) #:transparent)
(struct vinterleave (Vuu) #:transparent)
(struct vinterleave2 (Vu Vv) #:transparent)
(struct vinterleave4 (Vuu Vvv Rt) #:transparent)

;; New types to represent abstract computation (these types should never appear in output code)
(struct abstr-hvx-expr (orig-expr abstr-vals offset))

;; New types to represent abstract data movement (these types should never appear in output code)
(struct ??shuffle (Vu Vv shuffle-tbl) #:transparent)
(struct ??abstr-load (live-data buffer))
(struct ??load (id live-data buffer gather-tbl pair?)
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) `??load)
      (lambda (obj) (list (??load-id obj) (??load-buffer obj) (??load-pair? obj)))))]
  #:methods gen:equal+hash
  [(define (equal-proc a b equal?-recur) (and (equal?-recur (??load-id a) (??load-id b)) (equal?-recur (??load-live-data a) (??load-live-data b))))
   (define (hash-proc a hash-recur) (??load-id a))
   (define (hash2-proc a hash2-recur) (??load-id a))])
(struct ??swizzle (id live-data exprs gather-tbl pair?)
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) `??swizzle)
      (lambda (obj) (list (??swizzle-id obj) (??swizzle-pair? obj)))))]
  #:methods gen:equal+hash
  [(define (equal-proc a b equal?-recur) (and (equal?-recur (??swizzle-id a) (??swizzle-id b)) (equal?-recur (??swizzle-live-data a) (??swizzle-live-data b))))
   (define (hash-proc a hash-recur) (??swizzle-id a))
   (define (hash2-proc a hash2-recur) (??swizzle-id a))])
(struct ??sub-expr (exprs c)
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) `??sub-expr)
      (lambda (obj) (if (concrete? (??sub-expr-c obj))
                        (list (list-ref (??sub-expr-exprs obj) (??sub-expr-c obj)))
                        (list (length (??sub-expr-exprs obj)) (??sub-expr-c obj))))))])

;; Type signatures
(struct instr-sig (ret-val args) #:transparent)

(define (instr-forms instr)
  (cond
    [(eq? vread instr) (list
                        (instr-sig 'i8x128 (list 'bufi8))
                        (instr-sig 'i16x64 (list 'bufi16))
                        (instr-sig 'i32x32 (list 'bufi32))
                        (instr-sig 'u8x128 (list 'bufu8))
                        (instr-sig 'u16x64 (list 'bufu16))
                        (instr-sig 'u32x32 (list 'bufu32)))]

    [(eq? vreadp instr) (list
                        (instr-sig 'i8x128x2 (list 'bufi8))
                        (instr-sig 'i16x64x2 (list 'bufi16))
                        (instr-sig 'i32x32x2 (list 'bufi32))
                        (instr-sig 'u8x128x2 (list 'bufu8))
                        (instr-sig 'u16x64x2 (list 'bufu16))
                        (instr-sig 'u32x32x2 (list 'bufu32)))]
    
    [(eq? vsplat instr) (list
                         (instr-sig 'i8x128 (list 'int8))
                         (instr-sig 'i16x64 (list 'int16))
                         (instr-sig 'i32x32 (list 'int32))
                         (instr-sig 'u8x128 (list 'uint8))
                         (instr-sig 'u16x64 (list 'uint16))
                         (instr-sig 'u32x32 (list 'uint32)))]
    
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
                         (instr-sig 'i8x128 (list 'i8x128 'i8x128))
                         (instr-sig 'u8x128 (list 'u8x128 'u8x128))
                         (instr-sig 'i16x64 (list 'i16x64 'i16x64))
                         (instr-sig 'u16x64 (list 'u16x64 'u16x64)))]

    [(eq? vpacko instr) (list
                         (instr-sig 'i8x128 (list 'i8x128 'i8x128))
                         (instr-sig 'u8x128 (list 'u8x128 'u8x128))
                         (instr-sig 'i16x64 (list 'i16x64 'i16x64))
                         (instr-sig 'u16x64 (list 'u16x64 'u16x64)))]

    [(eq? vunpack instr) (list
                          (instr-sig 'i16x64x2 (list 'i8x128))
                          (instr-sig 'u16x64x2 (list 'u8x128))
                          (instr-sig 'i32x32x2 (list 'i16x64))
                          (instr-sig 'u32x32x2 (list 'u16x64)))]

    [(eq? vinterleave instr) (list
                              (instr-sig 'i8x128x2 (list 'i8x128x2))
                              (instr-sig 'u8x128x2 (list 'u8x128x2))
                              (instr-sig 'i16x64x2 (list 'i16x64x2))
                              (instr-sig 'u16x64x2 (list 'u16x64x2))
                              (instr-sig 'i32x32x2 (list 'i32x32x2))
                              (instr-sig 'u32x32x2 (list 'u32x32x2)))]

    [(eq? vinterleave2 instr) (list
                               (instr-sig 'i8x128x2 (list 'i8x128 'i8x128))
                               (instr-sig 'u8x128x2 (list 'u8x128 'u8x128))
                               (instr-sig 'i16x64x2 (list 'i16x64 'i16x64))
                               (instr-sig 'u16x64x2 (list 'u16x64 'u16x64))
                               (instr-sig 'i32x32x2 (list 'i32x32 'i32x32))
                               (instr-sig 'u32x32x2 (list 'u32x32 'u32x32)))]

    [(eq? vinterleave4 instr) (list
                               (instr-sig 'i8x128 (list 'i8x128x2 'i8x128x2 'const))
                               (instr-sig 'u8x128 (list 'u8x128x2 'u8x128x2 'const))
                               (instr-sig 'i16x64 (list 'i16x64x2 'i16x64x2 'const))
                               (instr-sig 'u16x64 (list 'u16x64x2 'u16x64x2 'const))
                               (instr-sig 'i32x32 (list 'i32x32x2 'i32x32x2 'const))
                               (instr-sig 'u32x32 (list 'u32x32x2 'u32x32x2 'const)))]

    [(eq? vtranspose instr) (list
                                (instr-sig 'i8x128x2 (list 'i8x128 'i8x128 'const))
                                (instr-sig 'u8x128x2 (list 'u8x128 'u8x128 'const))
                                (instr-sig 'i16x64x2 (list 'i16x64 'i16x64 'const))
                                (instr-sig 'u16x64x2 (list 'u16x64 'u16x64 'const))
                                (instr-sig 'i32x32x2 (list 'i32x32 'i32x32 'const))
                                (instr-sig 'u32x32x2 (list 'u32x32 'u32x32 'const)))]

    ;(struct vlut (Vu Vv) #:transparent)
    ;(struct vgather (Rt Mu Vv) #:transparent)
    ;(struct vswap (Qt Vu Vv) #:transparent)
    ;(struct vmux (Qt Vu Vv) #:transparent)

    ;; HVX instructions for type-casting
    [(eq? reinterpret instr) (list
                              (instr-sig 'i8x128 (list 'u8x128))
                              (instr-sig 'u8x128 (list 'i8x128))
                              (instr-sig 'i16x64 (list 'u16x64))
                              (instr-sig 'u16x64 (list 'i16x64))
                              (instr-sig 'i32x32 (list 'u32x32))
                              (instr-sig 'u32x32 (list 'i32x32)))]
    
    [(eq? vzxt instr) (list
                       (instr-sig 'u16x64x2 (list 'u8x128))
                       (instr-sig 'u32x32x2 (list 'u16x64)))]
           
    [(eq? vsxt instr) (list
                       (instr-sig 'i16x64x2 (list 'i8x128))
                       (instr-sig 'i32x32x2 (list 'i16x64)))]

    [(eq? vpacke-n instr) (list
                           (instr-sig 'i8x128 (list 'i16x64 'i16x64 #t))
                           (instr-sig 'u8x128 (list 'i16x64 'i16x64 #f))
                           (instr-sig 'i8x128 (list 'u16x64 'u16x64 #t))
                           (instr-sig 'u8x128 (list 'u16x64 'u16x64 #f))
                           (instr-sig 'i16x64 (list 'i32x32 'i32x32 #t))
                           (instr-sig 'u16x64 (list 'i32x32 'i32x32 #f))
                           (instr-sig 'i16x64 (list 'u32x32 'u32x32 #t))
                           (instr-sig 'u16x64 (list 'u32x32 'u32x32 #f)))]

    [(eq? vshuffe-n instr) (list
                            (instr-sig 'i8x128 (list 'i16x64 'i16x64 #t))
                            (instr-sig 'u8x128 (list 'i16x64 'i16x64 #f))
                            (instr-sig 'i8x128 (list 'u16x64 'u16x64 #t))
                            (instr-sig 'u8x128 (list 'u16x64 'u16x64 #f))
                            (instr-sig 'i16x64 (list 'i32x32 'i32x32 #t))
                            (instr-sig 'u16x64 (list 'i32x32 'i32x32 #f))
                            (instr-sig 'i16x64 (list 'u32x32 'u32x32 #t))
                            (instr-sig 'u16x64 (list 'u32x32 'u32x32 #f)))]

    [(eq? vshuffo-n instr) (list
                            (instr-sig 'i8x128 (list 'i16x64 'i16x64 #t))
                            (instr-sig 'u8x128 (list 'i16x64 'i16x64 #f))
                            (instr-sig 'i8x128 (list 'u16x64 'u16x64 #t))
                            (instr-sig 'u8x128 (list 'u16x64 'u16x64 #f))
                            (instr-sig 'i16x64 (list 'i32x32 'i32x32 #t))
                            (instr-sig 'u16x64 (list 'i32x32 'i32x32 #f))
                            (instr-sig 'i16x64 (list 'u32x32 'u32x32 #t))
                            (instr-sig 'u16x64 (list 'u32x32 'u32x32 #f)))]
    
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

    [(eq? vsub instr) (list
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

    [(eq? vsub-w instr) (list
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

    [(eq? vmpy-2 instr) (list
                         (instr-sig 'i16x64x2 (list 'i8x128 'i8x128))
                         (instr-sig 'i16x64x2 (list 'u8x128 'i8x128))
                         (instr-sig 'u16x64x2 (list 'u8x128 'u8x128))
                         (instr-sig 'u32x32x2 (list 'u16x64 'u16x64))
                         (instr-sig 'i32x32x2 (list 'i16x64 'i16x64))
                         (instr-sig 'i32x32x2 (list 'i16x64 'u16x64)))]

    [(eq? vmpyi instr) (list
                        (instr-sig 'i16x64 (list 'i16x64 'int8))
                        (instr-sig 'i32x32 (list 'i32x32 'int8))
                        ;(instr-sig 'i32x32 (list 'i32x32 'uint8))
                        ;(instr-sig 'i32x32 (list 'i32x32 'int16))
                        )]
    
    [(eq? vmpyie instr) (list
                         (instr-sig 'i32x32x2 (list 'u16x64 'int32))
                         (instr-sig 'i32x32x2 (list 'i16x64 'int32)))]

    [(eq? vmpyie-2 instr) (list
                           (instr-sig 'i32x32x2 (list 'i32x32 'u16x64))
                           (instr-sig 'i32x32x2 (list 'i32x32 'i16x64)))]

    ;[(eq? vmpyieo instr) (list
                          ;(instr-sig 'i32x32 (list 'i16x64 'i16x64)))]

    ;[(eq? vmpyio instr) (list
                          ;(instr-sig 'i32x32 (list 'i32x32 'i16x64)))]

    ;[(eq? vmpyo instr) (list
                          ;(instr-sig 'i32x32 (list 'i32x32 'i16x64)))]

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

    [(eq? vmpy-frac instr) (list
                            (instr-sig 'i32x32 (list 'i32x32 'i32x32 'bool)))]

    [(eq? vmpa instr) (list
                       (instr-sig 'i16x64x2 (list 'u8x128x2 'int8x2))
                       (instr-sig 'i16x64x2 (list 'u8x128x2 'uint8x2))
                       (instr-sig 'i32x32x2 (list 'u16x64x2 'int8x2))
                       (instr-sig 'i32x32x2 (list 'i16x64x2 'int8x2)))]
    
    [(eq? vmpa-acc instr) (list
                           (instr-sig 'i16x64x2 (list 'i16x64x2 'u8x128x2 'int8x2))
                           (instr-sig 'i16x64x2 (list 'i16x64x2 'u8x128x2 'uint8x2))
                           (instr-sig 'i32x32x2 (list 'i32x32x2 'u16x64x2 'int8x2))
                           (instr-sig 'i32x32x2 (list 'i32x32x2 'i16x64x2 'int8x2)))]
    
    [(eq? vdmpy instr) (list
                        (instr-sig 'i16x64 (list 'u8x128 'int8x2))
                        (instr-sig 'i32x32 (list 'i16x64 'int8x2))
                        (instr-sig 'i32x32 (list 'i16x64 'int16x2))
                        (instr-sig 'i32x32 (list 'i16x64 'uint16x2))
                        ;(instr-sig 'i32x32 (list 'i16x64x2 'int16x2))
                        ;(instr-sig 'i32x32 (list 'i16x64x2 'uint16x2))
                        )]
    
    [(eq? vdmpy-sw instr) (list
                           (instr-sig 'i16x64x2 (list 'u8x128x2 'int8x2))
                           (instr-sig 'i32x32x2 (list 'i16x64x2 'int8x2)))]
 
    [(eq? vdmpy-acc instr) (list
                            (instr-sig 'i16x64 (list 'i16x64 'u8x128 'int8x2))
                            (instr-sig 'i32x32 (list 'i32x32 'i16x64 'int8x2))
                            (instr-sig 'i32x32 (list 'i32x32 'i16x64 'int16x2))
                            (instr-sig 'i32x32 (list 'i32x32 'i16x64 'uint16x2)))]
    
    [(eq? vdmpy-sw-acc instr) (list
                               (instr-sig 'i16x64x2 (list 'i16x64x2 'u8x128x2 'int8x2))
                               (instr-sig 'i32x32x2 (list 'i32x32x2 'i16x64x2 'int8x2)))]

    [(eq? vtmpy instr) (list
                        (instr-sig 'i16x64x2 (list 'i8x128x2 'int8x2))
                        (instr-sig 'i16x64x2 (list 'u8x128x2 'int8x2))
                        (instr-sig 'i32x32x2 (list 'i16x64x2 'int8x2)))]

    [(eq? vtmpy-acc instr) (list
                            (instr-sig 'i16x64x2 (list 'i16x64x2 'i8x128x2 'int8x2))
                            (instr-sig 'i16x64x2 (list 'i16x64x2 'u8x128x2 'int8x2))
                            (instr-sig 'i32x32x2 (list 'i32x32x2 'i16x64x2 'int8x2)))]
    
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
    
    [(eq? vrmpy-2 instr) (list
                          (instr-sig 'u32x32 (list 'u8x128 'u8x128))
                          (instr-sig 'i32x32 (list 'i8x128 'i8x128))
                          (instr-sig 'i32x32 (list 'u8x128 'i8x128)))]

    [(eq? vrmpy-acc-2 instr) (list
                              (instr-sig 'u32x32 (list 'u32x32 'u8x128 'u8x128))
                              (instr-sig 'i32x32 (list 'i32x32 'i8x128 'i8x128))
                              (instr-sig 'i32x32 (list 'i32x32 'u8x128 'i8x128)))]
    
    [(eq? vavg instr) (list
                       (instr-sig 'i8x128 (list 'i8x128 'i8x128 'bool))
                       (instr-sig 'u8x128 (list 'u8x128 'u8x128 'bool))
                       (instr-sig 'i16x64 (list 'i16x64 'i16x64 'bool))
                       (instr-sig 'u16x64 (list 'u16x64 'u16x64 'bool))
                       (instr-sig 'i32x32 (list 'i32x32 'i32x32 'bool))
                       (instr-sig 'u32x32 (list 'u32x32 'u32x32 'bool)))]
     
    [(eq? vnavg instr) (list
                        (instr-sig 'i8x128 (list 'i8x128 'i8x128))
                        (instr-sig 'i8x128 (list 'u8x128 'u8x128))
                        (instr-sig 'i16x64 (list 'i16x64 'i16x64))
                        (instr-sig 'i32x32 (list 'i32x32 'i32x32)))]
    
    [(eq? vasl instr) (list
                       (instr-sig 'i16x64 (list 'i16x64 'i8x128x2 'int8))
                       (instr-sig 'i16x64 (list 'i16x64 'i8x128x2 'int8)))]

    [(eq? vlsr instr) (list
                       (instr-sig 'u8x128 (list 'u8x128 'int8))
                       (instr-sig 'u16x64 (list 'u16x64 'int8))
                       (instr-sig 'u32x32 (list 'u32x32 'int8)))]

    [(eq? vrsr instr) (list
                       (instr-sig 'i8x128 (list 'i8x128 'i8x128))
                       (instr-sig 'i16x64 (list 'i16x64 'i16x64))
                       (instr-sig 'i32x32 (list 'i32x32 'i32x32))
                       (instr-sig 'u8x128 (list 'u8x128 'u8x128))
                       (instr-sig 'u16x64 (list 'u16x64 'u16x64))
                       (instr-sig 'u32x32 (list 'u32x32 'u32x32)))]

    [(eq? vasr instr) (list
                       (instr-sig 'i16x64 (list 'i16x64 'int8))
                       (instr-sig 'u16x64 (list 'u16x64 'int8))
                       (instr-sig 'i32x32 (list 'i32x32 'int8))
                       (instr-sig 'u32x32 (list 'u32x32 'int8)))]

     ;[vasr-acc
    
    [(eq? vasr-n instr) (list
                         (instr-sig 'u8x128 (list 'i16x64 'i16x64 'int8 'bool #t #t))
                         (instr-sig 'u8x128 (list 'u16x64 'u16x64 'int8 'bool #t #t))
                         (instr-sig 'u16x64 (list 'i32x32 'i32x32 'int8 'bool #t #t))
                         (instr-sig 'i16x64 (list 'i32x32 'i32x32 'int8 'bool 'bool #f))
                         (instr-sig 'u16x64 (list 'u32x32 'u32x32 'int8 'bool #t #t)))]

    [(eq? vsat instr) (list
                       (instr-sig 'u8x128 (list 'i16x64 'i16x64))
                       (instr-sig 'u8x128 (list 'u16x64 'u16x64))
                       (instr-sig 'i16x64 (list 'i32x32 'i32x32))
                       (instr-sig 'u16x64 (list 'u32x32 'u32x32)))]

    [(eq? vpack instr) (list
                        (instr-sig 'i8x128 (list 'i16x64 'i16x64 #t))
                        (instr-sig 'u8x128 (list 'i16x64 'i16x64 #f))
                        (instr-sig 'i8x128 (list 'u16x64 'u16x64 #t))
                        (instr-sig 'u8x128 (list 'u16x64 'u16x64 #f))
                        (instr-sig 'i16x64 (list 'i32x32 'i32x32 #t))
                        (instr-sig 'u16x64 (list 'i32x32 'i32x32 #f))
                        (instr-sig 'i16x64 (list 'u32x32 'u32x32 #t))
                        (instr-sig 'u16x64 (list 'u32x32 'u32x32 #f)))]
        
    [(eq? vround instr) (list
                         (instr-sig 'i8x128 (list 'i16x64 'i16x64 #t))
                         (instr-sig 'u8x128 (list 'i16x64 'i16x64 #f))
                         (instr-sig 'u8x128 (list 'u16x64 'u16x64 #f))
                         (instr-sig 'i16x64 (list 'i32x32 'i32x32 #t))
                         (instr-sig 'u16x64 (list 'i32x32 'i32x32 #f))
                         (instr-sig 'u16x64 (list 'u32x32 'u32x32 #f)))]

    [(eq? vabs instr) (list
                           (instr-sig 'i8x128 (list 'i8x128 'bool))
                           (instr-sig 'i16x64 (list 'i16x64 'bool)))]
    
    [(eq? vabsdiff instr) (list
                           (instr-sig 'u8x128 (list 'u8x128 'u8x128))
                           (instr-sig 'u16x64 (list 'i16x64 'i16x64))
                           (instr-sig 'u16x64 (list 'u16x64 'u16x64))
                           (instr-sig 'u32x32 (list 'i32x32 'i32x32)))]

    [(eq? vdsad instr) (list
                        (instr-sig 'u32x32x2 (list 'u16x64x2 'uint16x2)))]

    [(eq? vrsad instr) (list
                        (instr-sig 'u32x32x2 (list 'u8x128x2 'uint8x4 'const)))]
    
    [(eq? vmax instr) (list
                       (instr-sig 'i8x128 (list 'i8x128 'i8x128))
                       (instr-sig 'u8x128 (list 'u8x128 'u8x128))
                       (instr-sig 'i16x64 (list 'i16x64 'i16x64))
                       (instr-sig 'u16x64 (list 'u16x64 'u16x64))
                       (instr-sig 'i32x32 (list 'i32x32 'i32x32)))]

    [(eq? vmin instr) (list
                       (instr-sig 'i8x128 (list 'i8x128 'i8x128))
                       (instr-sig 'u8x128 (list 'u8x128 'u8x128))
                       (instr-sig 'i16x64 (list 'i16x64 'i16x64))
                       (instr-sig 'u16x64 (list 'u16x64 'u16x64))
                       (instr-sig 'i32x32 (list 'i32x32 'i32x32)))]
    
    [else (error "Unknown instruction:" instr)]))


;; Sine utility methods for HVX types
(define (v0 vec-p)
  (destruct vec-p
    [(i8x128x2 v0 v1) (i8x128 v0)]
    [(u8x128x2 v0 v1) (u8x128 v0)]
    [(i16x64x2 v0 v1) (i16x64 v0)]
    [(u16x64x2 v0 v1) (u16x64 v0)]
    [(i32x32x2 v0 v1) (i32x32 v0)]
    [(u32x32x2 v0 v1) (u32x32 v0)]))

(define (v1 vec-p)
  (destruct vec-p
    [(i8x128x2 v0 v1) (i8x128 v1)]
    [(u8x128x2 v0 v1) (u8x128 v1)]
    [(i16x64x2 v0 v1) (i16x64 v1)]
    [(u16x64x2 v0 v1) (u16x64 v1)]
    [(i32x32x2 v0 v1) (i32x32 v1)]
    [(u32x32x2 v0 v1) (u32x32 v1)]))

(define (elem vec idx)
  (destruct vec
    [(i8x128 data) (data idx)]
    [(u8x128 data) (data idx)]
    [(i16x64 data) (data idx)]
    [(u16x64 data) (data idx)]
    [(i32x32 data) (data idx)]
    [(u32x32 data) (data idx)]))

(define (v0-elem vec-p idx)
  (destruct vec-p
    [(i8x128x2 v0 v1) (v0 idx)]
    [(u8x128x2 v0 v1) (v0 idx)]
    [(i16x64x2 v0 v1) (v0 idx)]
    [(u16x64x2 v0 v1) (v0 idx)]
    [(i32x32x2 v0 v1) (v0 idx)]
    [(u32x32x2 v0 v1) (v0 idx)]))

(define (v1-elem vec-p idx)
  (destruct vec-p
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

    [(i8x128? expr) 'int8]
    [(u8x128? expr) 'uint8]
    [(i16x64? expr) 'int16]
    [(u16x64? expr) 'uint16]
    [(i32x32? expr) 'int32]
    [(u32x32? expr) 'uint32]
    [(i8x128x2? expr) 'int8]
    [(u8x128x2? expr) 'uint8]
    [(i16x64x2? expr) 'int16]
    [(u16x64x2? expr) 'uint16]
    [(i32x32x2? expr) 'int32]
    [(u32x32x2? expr) 'uint32]

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
  (destruct expr
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

(define (vec-pair? v)
  (cond
    [(i8x128? v) #f]
    [(u8x128? v) #f]
    [(i16x64? v) #f]
    [(u16x64? v) #f]
    [(i32x32? v) #f]
    [(u32x32? v) #f]
    [(i8x128x2? v) #t]
    [(u8x128x2? v) #t]
    [(i16x64x2? v) #t]
    [(u16x64x2? v) #t]
    [(i32x32x2? v) #t]
    [(u32x32x2? v) #t]

    [(eq? v 'i8x128) #f]
    [(eq? v 'u8x128) #f]
    [(eq? v 'i16x64) #f]
    [(eq? v 'u16x64) #f]
    [(eq? v 'i32x32) #f]
    [(eq? v 'u32x32) #f]
    [(eq? v 'i8x128x2) #t]
    [(eq? v 'u8x128x2) #t]
    [(eq? v 'i16x64x2) #t]
    [(eq? v 'u16x64x2) #t]
    [(eq? v 'i32x32x2) #t]
    [(eq? v 'u32x32x2) #t]))

(define (type expr)
  (destruct expr
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