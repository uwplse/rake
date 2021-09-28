#lang rosette/safe

(require
  rosette/lib/destruct
  rake/cpp/types)

(provide (all-defined-out)
 ;(except-out (all-defined-out) instr-forms v0 v1 elem v0-elem v1-elem elem-type num-elems vec-pair? type)
 ;(prefix-out hvx: instr-forms)
 ;(prefix-out hvx: elem)
 ;(prefix-out hvx: elem-type)
 ;(prefix-out hvx: num-elems)
 ;(prefix-out hvx: vec-pair?)
 ;(prefix-out hvx: type)
 )

(struct ast-node (id))

;; ARM vector types
(struct i8x16 (Vn) #:transparent)
(struct u8x16 (Vn) #:transparent)
(struct i16x8 (Vn) #:transparent)
(struct u16x8 (Vn) #:transparent)
(struct i32x4 (Vn) #:transparent)
(struct u32x4 (Vn) #:transparent)
     
;; Halide instructions for vector creation
;; Does ARM have any special ones we should consider?
(struct vread (buf loc align) #:transparent)
(struct x4 (val) #:transparent)
(struct x8 (val) #:transparent)
(struct x16 (val) #:transparent)

;; ARM data processing instructions
(struct abs (Vn Vm) #:transparent) ; Absolute
(struct sabd (Vn Vm) #:transparent) ; Signed absolute difference
(struct uabd (Vn Vm) #:transparent) ; Unsigned absolute difference
(struct smull (Vn Vm) #:transparent) ; Signed widening multiply
(struct umull (Vn Vm) #:transparent) ; Unsigned widening multiply