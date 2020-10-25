#lang rosette

(require rosette/lib/match)

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
(struct vread (buf loc) #:transparent)
(struct vsplat (Rt) #:transparent)

;; HVX instructions for data swizzling
(struct lo (Vuu) #:transparent)
(struct hi (Vuu) #:transparent)
(struct vcombine (Vu Vv) #:transparent)
(struct vshuffe (Vu Vv) #:transparent)
(struct vshuffo (Vu Vv signed?) #:transparent)
(struct vshuffoe (Vu Vv) #:transparent)
(struct vswap (Qt Vu Vv) #:transparent)
(struct vmux (Qt Vu Vv) #:transparent)
(struct vsat (Vu Vv) #:transparent)
(struct valign (Vu Vv Rt) #:transparent)
(struct vror (Vu Rt) #:transparent)
(struct vrotr (Vu Vv) #:transparent)
(struct vdeal (Vu) #:transparent)
(struct vdeale (Vu Vv) #:transparent)
(struct vshuff (Vu) #:transparent)
(struct vtranspose (Vu Vv Rt) #:transparent)
(struct vpack (Vu Vv) #:transparent)
(struct vpacke (Vu Vv) #:transparent)
(struct vpacko (Vu Vv signed?) #:transparent)
(struct vunpack (Vu) #:transparent)
(struct vunpacko (Vu) #:transparent)
(struct vgather (Rt Mu Vv) #:transparent)

;; HVX instructions for type-casting
(struct vzxt (Vu) #:transparent)
(struct vsxt (Vu) #:transparent)

;; HVX instructions for data processing
(struct vadd (Vu Vv sat?) #:transparent)
(struct vadd-w (Vu Vv) #:transparent)
(struct vadd-w-acc (Vdd Vu Vv) #:transparent)
(struct vmpy (Vu Rt) #:transparent)
(struct vmpyi (Vu Rt) #:transparent)
(struct vmpye (Vu Rt) #:transparent)
(struct vmpy-acc (Vdd Vu Rt) #:transparent)
(struct vmpyi-acc (Vd Vu Rt) #:transparent)
(struct vmpye-acc (Vd Vu Rt) #:transparent)
(struct vmpa (Vuu Rt) #:transparent)
(struct vmpa-acc (Vdd Vuu Rt) #:transparent)
(struct vdmpy (Vu Rt) #:transparent)
(struct vdmpy-sw (Vuu Rt) #:transparent)
(struct vdmpy-acc (Vd Vu Rt) #:transparent)
(struct vdmpy-sw-acc (Vdd Vuu Rt) #:transparent)
(struct vtmpy (Vuu Rt) #:transparent)
(struct vtmpy-acc (Vdd Vuu Rt) #:transparent)
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

;; New instructions types we introduce to abstract away data-movement.
;; These instr types should never exist in output code.
(struct gather (buff-reads id))
(struct gather* (buff-reads))
(struct swizzle (vec) #:transparent)

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
    [(u32x32x2 data-v0 data-v1) #t]))

(provide
 (except-out (all-defined-out) elem v0-elem v1-elem num-elems)
 (rename-out [elem elem-hvx] [v0-elem v0-elem-hvx] [v1-elem v1-elem-hvx] [num-elems num-elems-hvx]))