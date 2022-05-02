#lang rosette

(require
  (only-in rosette/base/core/term @app)
  (only-in rosette/base/core/polymorphic ite)
  (only-in rosette/base/core/term @app)
  rosette/lib/match
  rosette/lib/destruct
  rake/cpp
  rake/halide
  rake/arm/ast/interpreter
  rake/arm/ast/types
)

(provide (rename-out [codegen arm:llvm-codegen]))

(define (codegen arm-expr out-file-path)
  (define out (open-output-file out-file-path #:exists 'replace))
  (pretty-write (compile arm-expr) out)
  (close-output-port out))

(define (compile arm-expr)
  (match arm-expr

    [(arm:abs Vn)
      (destruct (arm:interpret Vn)
        [(arm:i8x8 v0)
          (generate `abs.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ))]
        [(arm:i8x16 v0)
          (generate `abs.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ))]
        [(arm:i16x4 v0)
          (generate `abs.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ))]
        [(arm:i16x8 v0)
          (generate `abs.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ))]
        [(arm:i32x2 v0)
          (generate `abs.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ))]
        [(arm:i32x4 v0)
          (generate `abs.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ))]
        ;; TODO: there is a 64-bit variant called llvm.aarch64.neon.abs.v1i64 in LLVM?
        [_ (error (format "arm:abs variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:add Vn Vm)
      ;; There are no intrinsics for add
      `(halide.ir.add, (to-llvm-type arm-expr), `(list ,(input-arg Vn) ,(input-arg Vm)))]

    [(arm:addhn Vd Vn Vm Vb)
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm) (arm:interpret Vb))
        [((arm:i16x8 v0) (arm:i16x8 v1) (arm:i16x8 v2) (arm:i16x8 v3))
          (generate-rake `addhn_i16x16 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(input-arg Vn) ,(input-arg Vm) ,(input-arg Vb)))]
        [((arm:i32x4 v0) (arm:i32x4 v1) (arm:i32x4 v2) (arm:i32x4 v3))
          (generate-rake `addhn_i32x8 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(input-arg Vn) ,(input-arg Vm) ,(input-arg Vb)))]
        [((arm:i64x2 v0) (arm:i64x2 v1) (arm:i64x2 v2) (arm:i64x2 v3))
          (generate-rake `addhn_i64x4 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(input-arg Vn) ,(input-arg Vm) ,(input-arg Vb)))]
        [((arm:u16x8 v0) (arm:u16x8 v1) (arm:u16x8 v2) (arm:u16x8 v3))
          (generate-rake `addhn_i16x16 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(input-arg Vn) ,(input-arg Vm) ,(input-arg Vb)))]
        [((arm:u32x4 v0) (arm:u32x4 v1) (arm:u32x4 v2) (arm:u32x4 v3))
         (generate-rake `addhn_i32x8 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(input-arg Vn) ,(input-arg Vm) ,(input-arg Vb)))]
        [((arm:u64x2 v0) (arm:u64x2 v1) (arm:u64x2 v2) (arm:u64x2 v3))
          (generate-rake `addhn_i64x4 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(input-arg Vn) ,(input-arg Vm) ,(input-arg Vb)))]
        [(_ _ _ _) (error (format "arm:addhn variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:addp Vn Vm)
      (destruct* ((arm:interpret Vn) (arm:interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (generate `addp.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (generate `addp.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (generate `addp.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (generate `addp.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (generate `addp.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (generate `addp.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (generate `addp.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (generate `addp.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (generate `addp.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (generate `addp.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (generate `addp.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (generate `addp.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        ;; TODO: LLVM has a llvm.aarch64.neon.addp.v2i64 variant
        [(_ _) (error (format "arm:addp variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:addv Vn)
      (destruct* ((arm:interpret Vn))
        [((arm:u8x8 v0))
          `(llvm.vector.reduce.add.v8i8, (to-llvm-type arm-expr), `(list ,(input-arg Vn)))]
        [((arm:u16x4 v0))
          `(llvm.vector.reduce.add.v4i16, (to-llvm-type arm-expr), `(list ,(input-arg Vn)))]
        [((arm:u8x16 v0))
          `(llvm.vector.reduce.add.v16i8, (to-llvm-type arm-expr), `(list ,(input-arg Vn)))]
        [((arm:u16x8 v0))
          `(llvm.vector.reduce.add.v8i16, (to-llvm-type arm-expr), `(list ,(input-arg Vn)))]
        [((arm:u32x2 v0))
          `(llvm.vector.reduce.add.v2i32, (to-llvm-type arm-expr), `(list ,(input-arg Vn)))]
        [((arm:i8x8 v0))
          `(llvm.vector.reduce.add.v8i8, (to-llvm-type arm-expr), `(list ,(input-arg Vn)))]
        [((arm:i16x4 v0))
          `(llvm.vector.reduce.add.v4i16, (to-llvm-type arm-expr), `(list ,(input-arg Vn)))]
        [((arm:i8x16 v0))
          `(llvm.vector.reduce.add.v16i8, (to-llvm-type arm-expr), `(list ,(input-arg Vn)))]
        [((arm:i16x8 v0))
          `(llvm.vector.reduce.add.v8i16, (to-llvm-type arm-expr), `(list ,(input-arg Vn)))]
        [((arm:i32x2 v0))
          `(llvm.vector.reduce.add.v2i32, (to-llvm-type arm-expr), `(list ,(input-arg Vn)))]
        [(_) (assert #f "infeasible")])]

    [(arm:dup Vn)
     (destruct (arm:interpret Vn)
       ;; TODO: there are no llvm intrinsics for these...
       [(uint8_t _)  `(halide.ir.x8, (to-llvm-type arm-expr), `(list ,(compile-scalar Vn)))]
       [(int8_t _)   `(halide.ir.x8, (to-llvm-type arm-expr), `(list ,(compile-scalar Vn)))]
       [(uint16_t _) `(halide.ir.x4, (to-llvm-type arm-expr), `(list ,(compile-scalar Vn)))]
       [(int16_t _)  `(halide.ir.x4, (to-llvm-type arm-expr), `(list ,(compile-scalar Vn)))]
       ;; TODO: there are 2S and 4S variants of this instruction
       [(uint32_t _) `(halide.ir.x2, (to-llvm-type arm-expr), `(list ,(compile-scalar Vn)))]
       [(int32_t _)  `(halide.ir.x2, (to-llvm-type arm-expr), `(list ,(compile-scalar Vn)))]
       ;; Yes, the instruction type is 2D for 64-bit
       [(uint64_t _) `(halide.ir.x2, (to-llvm-type arm-expr), `(list ,(compile-scalar Vn)))]
       [(int64_t _)  `(halide.ir.x2, (to-llvm-type arm-expr), `(list ,(compile-scalar Vn)))]
       [_ (error (format "arm:dup variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:dupn Vn)
      (destruct (arm:interpret Vn)
        [(int8_t v0)
          `(halide.ir.x4, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
        [(uint8_t v0)
          `(halide.ir.x4, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
        [_ (error (format "arm:dupn variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    ;; TODO: this doesn't exist anymore??
    [(arm:dupw Vn)
     (destruct (arm:interpret Vn)
       ;; TODO: there are no llvm intrinsics for these...
       [(uint8_t _)  `(halide.ir.x16, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(int8_t _)   `(halide.ir.x16, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(uint16_t _) `(halide.ir.x8, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(int16_t _)  `(halide.ir.x8, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(uint32_t _) `(halide.ir.x4, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [(int32_t _)  `(halide.ir.x4, (to-llvm-type arm-expr), `(list, (compile-scalar Vn)))]
       [_ (error (format "arm:dupw variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    ;; TODO: the extract vectors codegen

    [(arm:mla-vs Vd Vn Vm)
      ;; TODO: no LLVM intrinsics, make SExpParser construct the correct code.
      `(halide.ir.mla, (to-llvm-type arm-expr), `(list ,(input-arg Vd) ,(input-arg Vn) ,(compile-scalar Vm)))]

    [(arm:mla-vv Vd Vn Vm)
      ;; TODO: no LLVM intrinsics, make SExpParser construct the correct code.
      `(halide.ir.mla, (to-llvm-type arm-expr), `(list ,(input-arg Vd) ,(input-arg Vn) ,(input-arg Vm)))]

    [(arm:mls-vs Vd Vn Vm)
      ;; TODO: no LLVM intrinsics, make SExpParser construct the correct code.
      `(halide.ir.mls, (to-llvm-type arm-expr), `(list ,(input-arg Vd) ,(input-arg Vn) ,(compile-scalar Vm)))]

    [(arm:mls-vv Vd Vn Vm)
      ;; TODO: no LLVM intrinsics, make SExpParser construct the correct code.
      `(halide.ir.mls, (to-llvm-type arm-expr), `(list ,(input-arg Vd) ,(input-arg Vn) ,(input-arg Vm)))]

    [(arm:mul-vs Vn Vm)
      ;; TODO: no LLVM intrinsics, make SExpParser construct the correct code.
      `(halide.ir.mul, (to-llvm-type arm-expr), `(list ,(input-arg Vn) ,(compile-scalar Vm)))]

    [(arm:mul-vv Vn Vm)
      ;; TODO: no LLVM intrinsics, make SExpParser construct the correct code.
      `(halide.ir.mul, (to-llvm-type arm-expr), `(list ,(input-arg Vn) ,(input-arg Vm)))]

    [(arm:neg Vn)
      ;; TODO: no LLVM intrinsics, make SExpParser construct the correct code.
      `(halide.ir.neg, (to-llvm-type arm-expr), `(list ,(input-arg Vn)))]

    [(arm:raddhn Vd Vn Vm Vb)
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm) (arm:interpret Vb))
        [((arm:i16x8 v0) (arm:i16x8 v1) (arm:i16x8 v2) (arm:i16x8 v3))
          (generate-rake `raddhn_i16x16 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(input-arg Vn) ,(input-arg Vm) ,(input-arg Vb)))]
        [((arm:i32x4 v0) (arm:i32x4 v1) (arm:i32x4 v2) (arm:i32x4 v3))
          (generate-rake `raddhn_i32x8 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(input-arg Vn) ,(input-arg Vm) ,(input-arg Vb)))]
        [((arm:i64x2 v0) (arm:i64x2 v1) (arm:i64x2 v2) (arm:i64x2 v3))
          (generate-rake `raddhn_i64x4 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(input-arg Vn) ,(input-arg Vm) ,(input-arg Vb)))]
        [((arm:u16x8 v0) (arm:u16x8 v1) (arm:u16x8 v2) (arm:u16x8 v3))
          (generate-rake `raddhn_i16x16 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(input-arg Vn) ,(input-arg Vm) ,(input-arg Vb)))]
        [((arm:u32x4 v0) (arm:u32x4 v1) (arm:u32x4 v2) (arm:u32x4 v3))
          (generate-rake `raddhn_i32x8 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(input-arg Vn) ,(input-arg Vm) ,(input-arg Vb)))]
        [((arm:u64x2 v0) (arm:u64x2 v1) (arm:u64x2 v2) (arm:u64x2 v3))
          (generate-rake `raddhn_i64x4 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(input-arg Vn) ,(input-arg Vm) ,(input-arg Vb)))]
        [(_ _ _ _) (error (format "arm:raddhn variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:uaddw Vd Vn Vm)
      ;; TODO: no LLVM intrinsics, make SExpParser construct the correct code.
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm))
        [((arm:u16x8 v0) (arm:u8x16 v1) (uint1_t v2))
           (handle-wide-slice-binary1 arm-expr `wide_add Vd Vn v2)]
        [((arm:u32x4 v0) (arm:u16x8 v1) (uint1_t v2))
           (handle-wide-slice-binary1 arm-expr `wide_add Vd Vn v2)]
        [((arm:u64x2 v0) (arm:u32x4 v1) (uint1_t v2))
           (handle-wide-slice-binary1 arm-expr `wide_add Vd Vn v2)]
        [(_ _ _) (error (format "arm:uaddw variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:saddw Vd Vn Vm)
      ;; TODO: no LLVM intrinsics, make SExpParser construct the correct code.
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm))
        [((arm:i16x8 v0) (arm:i8x16 v1) (uint1_t v2))
           (handle-wide-slice-binary1 arm-expr `wide_add Vd Vn v2)]
        [((arm:i32x4 v0) (arm:i16x8 v1) (uint1_t v2))
           (handle-wide-slice-binary1 arm-expr `wide_add Vd Vn v2)]
        [((arm:i64x2 v0) (arm:i32x4 v1) (uint1_t v2))
           (handle-wide-slice-binary1 arm-expr `wide_add Vd Vn v2)]
        [(_ _ _) (error (format "arm:saddw variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:umull-vs Vd Vn Vm)
      ;; TODO: we want llvm.aarch64.neon.umull.v* variants, but need the second type to be broadcast.
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm))
        [((arm:u8x16 v0) (uint8_t v1) (uint1_t v2))
            (handle-wide-slice-binary-broadcast generate-rake arm-expr `umull_u8x16 Vd Vn v2 `halide.ir.x16)]
        [((arm:u16x8 v0) (uint16_t v1) (uint1_t v2))
            (handle-wide-slice-binary-broadcast generate-rake arm-expr `umull_u16x8 Vd Vn v2 `halide.ir.x8)]
        [((arm:u32x4 v0) (uint32_t v1) (uint1_t v2))
            (handle-wide-slice-binary-broadcast generate-rake arm-expr `umull_u32x4 Vd Vn v2 `halide.ir.x4)]
        [(_ _ _) (error (format "arm:umull-vs variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:umull-vv Vd Vn Vm)
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm))
        [((arm:u8x16 v0) (arm:u8x16 v1) (uint1_t v2))
            (handle-wide-slice-binary2 arm-expr `umull_u8x16 Vd Vn v2)]
        [((arm:u16x8 v0) (arm:u16x8 v1) (uint1_t v2))
            (handle-wide-slice-binary2 arm-expr `umull_u16x8 Vd Vn v2)]
        [((arm:u32x4 v0) (arm:u32x4 v1) (uint1_t v2))
            (handle-wide-slice-binary2 arm-expr `umull_u32x4 Vd Vn v2)]
        [(_ _ _) (error (format "arm:umull-vv variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:rshrn Vd Vn Vm Vb)
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm) (arm:interpret Vb))
        [((arm:i16x8 v0) (uint16_t v1) (arm:i16x8 v2) (uint16_t v3))
          (generate-rake `rshrn_i16x16 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(compile-scalar (uint32x1 Vn)) ,(input-arg Vm) ,(compile-scalar (uint32x1 Vb))))]
        [((arm:i32x4 v0) (uint32_t v1) (arm:i32x4 v2) (uint32_t v3))
          (generate-rake `rshrn_i32x8 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(compile-scalar (uint32x1 Vn)) ,(input-arg Vm) ,(compile-scalar (uint32x1 Vb))))]
        [((arm:i64x2 v0) (uint64_t v1) (arm:i64x2 v2) (uint64_t v3))
          (generate-rake `rshrn_i64x4 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(compile-scalar (uint32x1 Vn)) ,(input-arg Vm) ,(compile-scalar (uint32x1 Vb))))]
        [((arm:u16x8 v0) (uint16_t v1) (arm:u16x8 v2) (uint16_t v3))
          (generate-rake `rshrn_i16x16 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(compile-scalar (uint32x1 Vn)) ,(input-arg Vm) ,(compile-scalar (uint32x1 Vb))))]
        [((arm:u32x4 v0) (uint32_t v1) (arm:u32x4 v2) (uint32_t v3))
          (generate-rake `rshrn_i32x8 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(compile-scalar (uint32x1 Vn)) ,(input-arg Vm) ,(compile-scalar (uint32x1 Vb))))]
        [((arm:u64x2 v0) (uint64_t v1) (arm:u64x2 v2) (uint64_t v3))
          (generate-rake `rshrn_i64x4 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(compile-scalar (uint32x1 Vn)) ,(input-arg Vm) ,(compile-scalar (uint32x1 Vb))))]
        [(_ _ _ _) (error (format "arm:rshrn variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:uqxtn Vn Vm)
      (destruct* ((arm:interpret Vn) (arm:interpret Vm))
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (generate-rake `uqxtn_u16x16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (generate-rake `uqxtn_u32x8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u64x2 v0) (arm:u64x2 v1))
          (generate-rake `uqxtn_u64x4 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [(_ _) (error (format "arm:uqxtn variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:usubl Vd Vn Vm)
      ;; TODO: no LLVM intrinsics, make SExpParser construct the correct code.
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm))
        [((arm:u8x16 v0) (arm:u8x16 v1) (uint1_t v2))
           (handle-wide-slice-binary2 arm-expr `widening_sub Vd Vn v2)]
        [((arm:u16x8 v0) (arm:u16x8 v1) (uint1_t v2))
           (handle-wide-slice-binary2 arm-expr `widening_sub Vd Vn v2)]
        [((arm:u32x4 v0) (arm:u32x4 v1) (uint1_t v2))
           (handle-wide-slice-binary2 arm-expr `widening_sub Vd Vn v2)]
        [(_ _ _) (error (format "arm:usubl variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:reinterpret Vn)
      `(halide.ir.reinterpret ,(to-llvm-type arm-expr), `(list ,(input-arg Vn)))]

    [(arm:smull-vs Vd Vn Vm)
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm))
        [((arm:i8x16 v0) (int8_t v1) (uint1_t v2))
           (handle-wide-slice-binary-broadcast generate-rake arm-expr `smull_i8x16 Vd Vn v2 `halide.ir.x16)]
        [((arm:i16x8 v0) (int16_t v1) (uint1_t v2))
           (handle-wide-slice-binary-broadcast generate-rake arm-expr `smull_i16x8 Vd Vn v2 `halide.ir.x8)]
        [((arm:i32x4 v0) (int32_t v1) (uint1_t v2))
           (handle-wide-slice-binary-broadcast generate-rake arm-expr `smull_i32x4 Vd Vn v2 `halide.ir.x4)]
        [(_ _ _) (error (format "arm:smull-vs variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:smull-vv Vd Vn Vm)
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1) (uint1_t v2))
          (handle-wide-slice-binary arm-expr `smull_i8x16 Vd Vn v2)]
        [((arm:i16x8 v0) (arm:i16x8 v1) (uint1_t v2))
           (handle-wide-slice-binary arm-expr `smull_i16x8 Vd Vn v2)]
        [((arm:i32x4 v0) (arm:i32x4 v1) (uint1_t v2))
           (handle-wide-slice-binary arm-expr `smull_i32x4 Vd Vn v2)]
        [(_ _ _) (error (format "arm:smull-vv variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:sxtl Vn Vm)
      ;; No LLVM intrinsics, just trust in LLVM->ARM
      (destruct* ((arm:interpret Vn) (arm:interpret Vm))
        [((arm:i8x16 v0) (uint1_t v1))
           (handle-wide-slice-unary arm-expr `sext Vn v1)]
        [((arm:i16x8 v0) (uint1_t v1))
           (handle-wide-slice-unary arm-expr `sext Vn v1)]
        [((arm:i32x4 v0) (uint1_t v1))
           (handle-wide-slice-unary arm-expr `sext Vn v1)]
        [(_ _) (error (format "arm:sxtl variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:uxtl Vn Vm)
      (destruct* ((arm:interpret Vn) (arm:interpret Vm))
        [((arm:u8x16 v0) (uint1_t v1))
           (handle-wide-slice-unary arm-expr `zext Vn v1)]
        [((arm:u16x8 v0) (uint1_t v1))
            (handle-wide-slice-unary arm-expr `zext Vn v1)]
        [((arm:u32x4 v0) (uint1_t v1))
            (handle-wide-slice-unary arm-expr `zext Vn v1)]
        [(_ _) (error (format "arm:uxtl variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    ;;;;;;;;;;;;;;;;;;;;;;; Concatenate Tiles ;;;;;;;;;;;;;;;;;;;;;;;;

    [(arm:concat-tiles tiles)
     (define tile-cnt (length tiles))
     (define tile-elems (arm:num-elems (arm:interpret (list-ref tiles 0))))
     (define tile-elemT (arm:elem-type (arm:interpret (list-ref tiles 0))))
     (define output-type (format "~ax~a" tile-elemT (* tile-cnt tile-elems)))

     (define (tiles->compiled-str tiles)
       (cond
         [(eq? (length tiles) 1) (input-arg (first tiles))]
         [else
          (define curr-tile (input-arg (first tiles)))
          (format "~a ~a" curr-tile (tiles->compiled-str (rest tiles)))]))

     (match (length tiles)
       [1 (compile (first tiles))]
       [_ `(halide.concat_vectors, (string->sexp output-type), (string->sexp (format "(list ~a)" (tiles->compiled-str tiles))))])]

    ;;;;;;;;;;;;;;;;; Instructions for vector creation ;;;;;;;;;;;;;;;
    
    [(arm:ld buf loc align output-type)
     (generate
      `ld (to-llvm-type arm-expr)
      `(list
        (,t_i32 ,(buffer-data buf))
        (,t_i32 ,(string->sexp (compile-idx loc)))
        (,t_i32 ,(string->sexp (aligned-mod align)))
        (,t_i32 ,(string->sexp (aligned-rem align)))))]

    [(ramp base stride len)
     `(halide.ir.ramp, (to-llvm-type arm-expr)
      (list, (compile-scalar base), (compile-scalar stride), `(,t_i32 ,(compile-scalar len))))]

    [(arm:smax Vn Vm)
     (destruct* ((arm:interpret Vn) (arm:interpret Vm))
       [((arm:i8x8 v0) (arm:i8x8 v1)) (generate `smax.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i8x16 v0) (arm:i8x16 v1)) (generate `smax.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i16x4 v0) (arm:i16x4 v1)) (generate `smax.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i16x8 v0) (arm:i16x8 v1)) (generate `smax.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i32x2 v0) (arm:i32x2 v1)) (generate `smax.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i32x4 v0) (arm:i32x4 v1)) (generate `smax.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [(_ _) (error (format "arm:smax variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:smin Vn Vm)
     (destruct* ((arm:interpret Vn) (arm:interpret Vm))
       [((arm:i8x8 v0) (arm:i8x8 v1)) (generate `smin.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i8x16 v0) (arm:i8x16 v1)) (generate `smin.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i16x4 v0) (arm:i16x4 v1)) (generate `smin.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i16x8 v0) (arm:i16x8 v1)) (generate `smin.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i32x2 v0) (arm:i32x2 v1)) (generate `smin.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:i32x4 v0) (arm:i32x4 v1)) (generate `smin.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [(_ _) (error (format "arm:smin variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:umax Vn Vm)
     (destruct* ((arm:interpret Vn) (arm:interpret Vm))
       [((arm:u8x8 v0) (arm:u8x8 v1)) (generate `umax.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u8x16 v0) (arm:u8x16 v1)) (generate `umax.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u16x4 v0) (arm:u16x4 v1)) (generate `umax.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u16x8 v0) (arm:u16x8 v1)) (generate `umax.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u32x2 v0) (arm:u32x2 v1)) (generate `umax.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u32x4 v0) (arm:u32x4 v1)) (generate `umax.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [(_ _) (error (format "arm:umax variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:umin Vn Vm)
     (destruct* ((arm:interpret Vn) (arm:interpret Vm))
       [((arm:u8x8 v0) (arm:u8x8 v1)) (generate `umin.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u8x16 v0) (arm:u8x16 v1)) (generate `umin.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u16x4 v0) (arm:u16x4 v1)) (generate `umin.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u16x8 v0) (arm:u16x8 v1)) (generate `umin.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u32x2 v0) (arm:u32x2 v1)) (generate `umin.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [((arm:u32x4 v0) (arm:u32x4 v1)) (generate `umin.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
       [(_ _) (error (format "arm:umin variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:sqrshrn Vd Vn Vm Vb)
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm) (arm:interpret Vb))
        [((arm:i16x8 v0) (uint16_t v1) (arm:i16x8 v2) (uint16_t v3))
          (generate-rake `sqrshrn_i16x16 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(compile-scalar (uint32x1 Vn)) ,(input-arg Vm) ,(compile-scalar (uint32x1 Vb))))]
        [((arm:i32x4 v0) (uint32_t v1) (arm:i32x4 v2) (uint32_t v3))
          (generate-rake `sqrshrn_i32x8 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(compile-scalar (uint32x1 Vn)) ,(input-arg Vm) ,(compile-scalar (uint32x1 Vb))))]
        [((arm:i64x2 v0) (uint64_t v1) (arm:i64x2 v2) (uint64_t v3))
          (generate-rake `sqrshrn_i64x4 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(compile-scalar (uint32x1 Vn)) ,(input-arg Vm) ,(compile-scalar (uint32x1 Vb))))]
        [(_ _ _ _) (error (format "arm:sqrshrn variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:sqshrn Vd Vn Vm Vb)
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm) (arm:interpret Vb))
        [((arm:i16x8 v0) (uint16_t v1) (arm:i16x8 v2) (uint16_t v3))
          (generate-rake `sqshrn_i16x16 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(compile-scalar (uint32x1 Vn)) ,(input-arg Vm) ,(compile-scalar (uint32x1 Vb))))]
        [((arm:i32x4 v0) (uint32_t v1) (arm:i32x4 v2) (uint32_t v3))
          (generate-rake `sqshrn_i32x8 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(compile-scalar (uint32x1 Vn)) ,(input-arg Vm) ,(compile-scalar (uint32x1 Vb))))]
        [((arm:i64x2 v0) (uint64_t v1) (arm:i64x2 v2) (uint64_t v3))
          (generate-rake `sqshrn_i64x4 (to-llvm-type arm-expr) `(list ,(input-arg Vd) ,(compile-scalar (uint32x1 Vn)) ,(input-arg Vm) ,(compile-scalar (uint32x1 Vb))))]
        [(_ _ _ _) (error (format "arm:sqshrn variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:saddl Vd Vn Vm)
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm))
        [((arm:i8x16 v0) (arm:i8x16 v1) (uint1_t v2))
           (handle-wide-slice-binary2 arm-expr `widening_add Vd Vn v2)]
        [((arm:i16x8 v0) (arm:i16x8 v1) (uint1_t v2))
           (handle-wide-slice-binary2 arm-expr `widening_add Vd Vn v2)]
        [((arm:i32x4 v0) (arm:i32x4 v1) (uint1_t v2))
           (handle-wide-slice-binary2 arm-expr `widening_add Vd Vn v2)]
        [(_ _ _) (error (format "arm:saddl variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    ;; TODO: calls to hand-created LLVM intrinsics.
    [(arm:uaddl Vd Vn Vm)
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm))
        [((arm:u8x16 v0) (arm:u8x16 v1) (uint1_t v2))
           (handle-wide-slice-binary2 arm-expr `widening_add Vd Vn v2)]
        [((arm:u16x8 v0) (arm:u16x8 v1) (uint1_t v2))
           (handle-wide-slice-binary2 arm-expr `widening_add Vd Vn v2)]
        [((arm:u32x4 v0) (arm:u32x4 v1) (uint1_t v2))
           (handle-wide-slice-binary2 arm-expr `widening_add Vd Vn v2)]
        [(_ _ _) (error (format "arm:uaddl variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:sqxtun Vn Vm)
      (destruct* ((arm:interpret Vn) (arm:interpret Vm))
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (generate-rake `sqxtun_i16x16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (generate-rake `sqxtun_i32x8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
          (generate-rake `sqxtun_i64x4 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [(_ _) (error (format "arm:sqxtun variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:smlal-vs Vd Vn Vm Vb)
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm) (arm:interpret Vb))
        [((arm:i16x8 v0) (arm:i8x16 v1) (int8_t v2) (uint1_t v3))
           (handle-wide-slice-binary1-broadcast arm-expr `mlal Vd Vn Vm v3 `halide.ir.x8)]
        [((arm:i32x4 v0) (arm:i16x8 v1) (int16_t v2) (uint1_t v3))
           (handle-wide-slice-binary1-broadcast arm-expr `mlal Vd Vn Vm v3 `halide.ir.x4)]
        [((arm:i64x2 v0) (arm:i32x4 v1) (int32_t v2) (uint1_t v3))
           (handle-wide-slice-binary1-broadcast arm-expr `mlal Vd Vn Vm v3 `halide.ir.x2)]
        [(_ _ _ _) (error (format "arm:smlal-vs variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:umlal-vs Vd Vn Vm Vb)
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm) (arm:interpret Vb))
        [((arm:u16x8 v0) (arm:u8x16 v1) (uint8_t v2) (uint1_t v3))
           (handle-wide-slice-binary1-broadcast arm-expr `mlal Vd Vn Vm v3 `halide.ir.x8)]
        [((arm:u32x4 v0) (arm:u16x8 v1) (uint16_t v2) (uint1_t v3))
           (handle-wide-slice-binary1-broadcast arm-expr `mlal Vd Vn Vm v3 `halide.ir.x4)]
        [((arm:u64x2 v0) (arm:u32x4 v1) (uint32_t v2) (uint1_t v3))
           (handle-wide-slice-binary1-broadcast arm-expr `mlal Vd Vn Vm v3 `halide.ir.x2)]
        [(_ _ _ _) (error (format "arm:umlal-vs variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:uabd Vn Vm)
      (destruct* ((arm:interpret Vn) (arm:interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (generate `uabd.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (generate `uabd.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (generate `uabd.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (generate `uabd.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (generate `uabd.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (generate `uabd.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [(_ _) (error (format "arm:uabd variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:sqadd Vn Vm)
      (destruct* ((arm:interpret Vn) (arm:interpret Vm))
        [((arm:i8x8 v0) (arm:i8x8 v1))
          (generate `sqadd.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:i8x16 v0) (arm:i8x16 v1))
          (generate `sqadd.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:i16x4 v0) (arm:i16x4 v1))
          (generate `sqadd.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (generate `sqadd.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:i32x2 v0) (arm:i32x2 v1))
          (generate `sqadd.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (generate `sqadd.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        ;; TODO: LLVM has i64 variants?
        [(_ _) (error (format "arm:sqadd variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:uqadd Vn Vm)
      (destruct* ((arm:interpret Vn) (arm:interpret Vm))
        [((arm:u8x8 v0) (arm:u8x8 v1))
          (generate `uqadd.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u8x16 v0) (arm:u8x16 v1))
          (generate `uqadd.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u16x4 v0) (arm:u16x4 v1))
          (generate `uqadd.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u16x8 v0) (arm:u16x8 v1))
          (generate `uqadd.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u32x2 v0) (arm:u32x2 v1))
          (generate `uqadd.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:u32x4 v0) (arm:u32x4 v1))
          (generate `uqadd.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        ;; TODO: LLVM has i64 variants?
        [(_ _) (error (format "arm:uqadd variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:sqrdmulh-vs Vn Vm)
      (destruct* ((arm:interpret Vn) (arm:interpret Vm))
        ;; TODO: might want to generate the normal (non-lane) versions?
        [((arm:i16x4 v0) (int16_t v1))
          (generate `sqrdmulh.lane.v4i16.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (arm:dup Vm)) ,(compile-scalar (uint32_t (bv 0 32)))))]
        [((arm:i16x8 v0) (int16_t v1))
          (generate `sqrdmulh.laneq.v8i16.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (arm:dupw Vm)) ,(compile-scalar (uint32_t (bv 0 32)))))]
        [((arm:i32x2 v0) (int32_t v1))
          (generate `sqrdmulh.lane.v2i32.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (arm:dup Vm)) ,(compile-scalar (uint32_t (bv 0 32)))))]
        [((arm:i32x4 v0) (int32_t v1))
          (generate `sqrdmulh.laneq.v4i32.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (arm:dupw Vm)) ,(compile-scalar (uint32_t (bv 0 32)))))]
        [(_ _) (error (format "arm:sqrdmulh-vs variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:udot.v4i32.v16i4 Vd Vn Vm)
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm))
        [((arm:i32x4 v0) (arm:u8x16 v1) (arm:u8x4 v2))
          (define-values (w0 w1 w2 w3) (get-dot_product-values Vm))
          (generate-rake
            `udot_i32x4_i8x16
            (to-llvm-type arm-expr)
            `(list ,(input-arg Vd) ,(input-arg Vn) ,(compile-scalar w0) ,(compile-scalar w1) ,(compile-scalar w2) ,(compile-scalar w3)))]
        [((arm:u32x4 v0) (arm:u8x16 v1) (arm:u8x4 v2))
          ;; TODO: is there a difference between the signed and unsigned versions?
          (define-values (w0 w1 w2 w3) (get-dot_product-values Vm))
          (generate-rake
            `udot_i32x4_i8x16
            (to-llvm-type arm-expr)
            `(list ,(input-arg Vd) ,(input-arg Vn) ,(compile-scalar w0) ,(compile-scalar w1) ,(compile-scalar w2) ,(compile-scalar w3)))]
        [(_ _ _) (error (format "arm:udot.v4i32.v16i4 variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:zip1 Vn Vm)
      ;; There are no intrinsics for zips
      `(halide.ir.interleave_lo, (to-llvm-type arm-expr), `(list ,(input-arg Vn) ,(input-arg Vm)))]

    [(arm:zip2 Vn Vm)
      ;; There are no intrinsics for zips
      `(halide.ir.interleave_hi, (to-llvm-type arm-expr), `(list ,(input-arg Vn) ,(input-arg Vm)))]

    [(arm:sshll Vd Vn Vm)
      (destruct* ((arm:interpret Vd) (arm:interpret Vn) (arm:interpret Vm))
        [((arm:i8x16 v0) (uint8_t v1) (uint1_t v2))
           ;; Sometimes we accidentally generate sshll by 0 instead of sext
           (if (and (concrete? v1) (bveq v1 (bv 0 8)))
             (compile (arm:sxtl Vd Vm))
             (handle-wide-slice-binary-broadcast generate-rake arm-expr `sshll_i8x16 Vd Vn v2 `halide.ir.x16))]
        [((arm:i16x8 v0) (uint16_t v1) (uint1_t v2))
           ;; Sometimes we accidentally generate sshll by 0 instead of sext
           (if (and (concrete? v1) (bveq v1 (bv 0 16)))
             (compile (arm:sxtl Vd Vm))
           (handle-wide-slice-binary-broadcast generate-rake arm-expr `sshll_i16x8 Vd Vn v2 `halide.ir.x8))]
        [((arm:i32x4 v0) (uint32_t v1) (uint1_t v2))
           ;; Sometimes we accidentally generate sshll by 0 instead of sext
           (if (and (concrete? v1) (bveq v1 (bv 0 32)))
             (compile (arm:sxtl Vd Vm))
           (handle-wide-slice-binary-broadcast generate-rake arm-expr `sshll_i32x4 Vd Vn v2 `halide.ir.x4))]
        [(_ _ _) (error (format "arm:sshll variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:sqxtn Vn Vm)
      (destruct* ((arm:interpret Vn) (arm:interpret Vm))
        [((arm:i16x8 v0) (arm:i16x8 v1))
          (generate-rake `sqxtn_i16x16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:i32x4 v0) (arm:i32x4 v1))
          (generate-rake `sqxtn_i32x8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [((arm:i64x2 v0) (arm:i64x2 v1))
          (generate-rake `sqxtn_i64x4 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg Vm)))]
        [(_ _) (error (format "arm:sqxtn variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:srshr-vs Vn Vm)
      (destruct* ((arm:interpret Vn) (arm:interpret Vm))
        [((arm:i8x8 v0) (uint8_t v1))
           (generate `srshl.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dup (uint8_t v1) 'int8))))]
        [((arm:i8x16 v0) (uint8_t v1))
           (generate `srshl.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dupw (uint8_t v1) 'int8))))]
        [((arm:i16x4 v0) (uint16_t v1))
           (generate `srshl.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dup (uint16_t v1) 'int16))))]
        [((arm:i16x8 v0) (uint16_t v1))
           (generate `srshl.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dupw (uint16_t v1) 'int16))))]
        [((arm:i32x2 v0) (uint32_t v1))
           (generate `srshl.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dup (uint32_t v1) 'int32))))]
        [((arm:i32x4 v0) (uint32_t v1))
           (generate `srshl.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dupw (uint32_t v1) 'int32))))]
        [((arm:i64x2 v0) (uint32_t v1))
           (generate `srshl.v2i64 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dup (uint32_t v1) 'int64))))]
        [(_ _)  (error (format "arm:srshr-vs variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:sshr-vs Vn Vm)
      (destruct* ((arm:interpret Vn) (arm:interpret Vm))
        [((arm:i8x8 v0) (uint8_t v1))
          (generate `sshl.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dup (uint8_t v1) 'int8))))]
        [((arm:i8x16 v0) (uint8_t v1))
          (generate `sshl.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dupw (uint8_t v1) 'int8))))]
        [((arm:i16x4 v0) (uint8_t v1))
          (generate `sshl.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dup (uint16x1 (uint8_t v1)) 'int16))))]
        [((arm:i16x8 v0) (uint8_t v1))
          (generate `sshl.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dupw (uint16x1 (uint8_t v1)) 'int16))))]
        [((arm:i32x2 v0) (uint8_t v1))
          (generate `sshl.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dup (uint32x1 (uint8_t v1)) 'int32))))]
        [((arm:i32x4 v0) (uint8_t v1))
          (generate `sshl.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dupw (uint32x1 (uint8_t v1)) 'int32))))]
        [((arm:i64x2 v0) (uint8_t v1))
          (generate `sshl.v2i64 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dup (uint64x1 (uint8_t v1)) 'int64))))]
        [(_ _) (error (format "arm:sshr-vs variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [(arm:sqrshr-vs Vn Vm)
      (destruct* ((arm:interpret Vn) (arm:interpret Vm))
        [((arm:i8x8 v0) (uint8_t v1))
          (generate `sqrshl.v8i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dup (uint8_t v1) 'int8))))]
        [((arm:i8x16 v0) (uint8_t v1))
          (generate `sqrshl.v16i8 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dupw (uint8_t v1) 'int8))))]
        [((arm:i16x4 v0) (uint16_t v1))
          (generate `sqrshl.v4i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dup (uint16_t v1) 'int16))))]
        [((arm:i16x8 v0) (uint16_t v1))
          (generate `sqrshl.v8i16 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dupw (uint16_t v1) 'int16))))]
        [((arm:i32x2 v0) (uint32_t v1))
          (generate `sqrshl.v2i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dup (uint32_t v1) 'int32))))]
        [((arm:i32x4 v0) (uint32_t v1))
          (generate `sqrshl.v4i32 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dupw (uint32_t v1) 'int32))))]
        [((arm:i64x2 v0) (uint64_t v1))
          (generate `sqrshl.v2i64 (to-llvm-type arm-expr) `(list ,(input-arg Vn) ,(input-arg (negate-and-dup (uint64_t v1) 'int64))))]
        [(_ _) (error (format "arm:sqrshr-vs variant not understood:\n~a\n" (pretty-format arm-expr)))])]

    [_ (string->sexp (format "~a" arm-expr))]))

(define (generate instruction output-type inputs)
  `(,(instruction-helper instruction) ,output-type ,inputs))

(define (generate-rake instruction output-type inputs)
  `(,(instruction-helper-rake instruction) ,output-type ,inputs))

(define (instruction-helper instruction)
  (string->sexp (format "llvm.aarch64.neon.~a" instruction)))

(define (instruction-helper-rake instruction)
  (string->sexp (format "rake.~a" instruction)))

(define (input-arg a)
  `(,(to-llvm-type a) ,(compile a)))

(define (string->sexp s)
  (read (open-input-string (format "~a" s))))

(define t_i32 `int32)

(define (is-scalar? arm-expr)
  (match (arm:interpret arm-expr)
    [(int8_t v) #t]
    [(int16_t v) #t]
    [(int32_t v) #t]
    [(int64_t v) #t]
    [(uint8_t v) #t]
    [(uint16_t v) #t]
    [(uint32_t v) #t]
    [(uint64_t v) #t]
    [(arm:i8x4 data) #f]
    [(arm:u8x4 data) #f]
    [(arm:i8x8 data) #f]
    [(arm:u8x8 data) #f]
    [(arm:i8x16 data) #f]
    [(arm:u8x16 data) #f]
    [(arm:i16x4 data) #f]
    [(arm:u16x4 data) #f]
    [(arm:i16x8 data) #f]
    [(arm:u16x8 data) #f]
    [(arm:i32x2 data) #f]
    [(arm:u32x2 data) #f]
    [(arm:i32x4 data) #f]
    [(arm:u32x4 data) #f]
    [(arm:i64x1 data) #t]
    [(arm:u64x1 data) #t]
    [(arm:i64x2 data) #f]
    [(arm:u64x2 data) #f]
    [_ (error (format "(arm:is-scalar?) implement the rest of the arm types: ~a\n~a\n" arm-expr (arm:interpret arm-expr)))]))

(define (to-llvm-type arm-expr)
  (match (arm:interpret arm-expr)
    [(int8_t v) (string->sexp "int8")]
    [(int16_t v) (string->sexp "int16")]
    [(int32_t v) (string->sexp "int32")]
    [(int64_t v) (string->sexp "int64")]
    [(uint8_t v) (string->sexp "uint8")]
    [(uint16_t v) (string->sexp "uint16")]
    [(uint32_t v) (string->sexp "uint32")]
    [(uint64_t v) (string->sexp "uint64")]
    [(arm:i8x4 data) (string->sexp "int8x4")]
    [(arm:u8x4 data) (string->sexp "uint8x4")]
    [(arm:i8x8 data) (string->sexp "int8x8")]
    [(arm:u8x8 data) (string->sexp "uint8x8")]
    [(arm:i8x16 data) (string->sexp "int8x16")]
    [(arm:u8x16 data) (string->sexp "uint8x16")]
    [(arm:i16x4 data) (string->sexp "int16x4")]
    [(arm:u16x4 data) (string->sexp "uint16x4")]
    [(arm:i16x8 data) (string->sexp "int16x8")]
    [(arm:u16x8 data) (string->sexp "uint16x8")]
    [(arm:i32x2 data) (string->sexp "int32x2")]
    [(arm:u32x2 data) (string->sexp "uint32x2")]
    [(arm:i32x4 data) (string->sexp "int32x4")]
    [(arm:u32x4 data) (string->sexp "uint32x4")]
    [(arm:i64x1 data) (string->sexp "int64")]
    [(arm:u64x1 data) (string->sexp "uint64")]
    [(arm:i64x2 data) (string->sexp "int64x2")]
    [(arm:u64x2 data) (string->sexp "uint64x2")]
    [_ (error (format "(arm:to-llvm-type) implement the rest of the arm types: ~a" arm-expr))]))

;; Useful helper function for ARM's weird narrowing instruction patterns.
(define (to-llvm-type-narrow arm-expr)
  (match (arm:interpret arm-expr)
    [(arm:i16x4 data) (string->sexp "int8x4")]
    [(arm:u16x4 data) (string->sexp "uint8x4")]
    [(arm:i16x8 data) (string->sexp "int8x8")]
    [(arm:u16x8 data) (string->sexp "uint8x8")]
    [(arm:i32x2 data) (string->sexp "int16x2")]
    [(arm:u32x2 data) (string->sexp "uint16x2")]
    [(arm:i32x4 data) (string->sexp "int16x4")]
    [(arm:u32x4 data) (string->sexp "uint16x4")]
    [(arm:i64x1 data) (string->sexp "int32")]
    [(arm:u64x1 data) (string->sexp "uint32")]
    [(arm:i64x2 data) (string->sexp "int32x2")]
    [(arm:u64x2 data) (string->sexp "uint32x2")]
    [_ (error (format "(arm:to-llvm-type-narrow) implement the rest of the arm types: ~a" arm-expr))]))

;; Useful helper function for arm's weird widening instructions
(define (to-llvm-type-wide arm-expr)
  (match (arm:interpret arm-expr)
    [(arm:i8x8 data) (string->sexp "int16x8")]
    [(arm:u8x8 data) (string->sexp "uint16x8")]
    [(arm:i8x16 data) (string->sexp "int16x16")]
    [(arm:u8x16 data) (string->sexp "uint16x16")]
    [(arm:i16x4 data) (string->sexp "int32x4")]
    [(arm:u16x4 data) (string->sexp "uint32x4")]
    [(arm:i16x8 data) (string->sexp "int32x8")]
    [(arm:u16x8 data) (string->sexp "uint32x8")]
    [(arm:i32x2 data) (string->sexp "int64x2")]
    [(arm:u32x2 data) (string->sexp "uint64x2")]
    [(arm:i32x4 data) (string->sexp "int64x4")]
    [(arm:u32x4 data) (string->sexp "uint64x4")]
    [_ (error (format "(arm:to-llvm-type-wide) implement the rest of the arm types: ~a" arm-expr))]))

;; Useful helper function for ARM's weird widening instruction patterns.
(define (to-llvm-type-half arm-expr)
  (match (arm:interpret arm-expr)
    [(arm:i8x16 data) (string->sexp "int8x8")]
    [(arm:u8x16 data) (string->sexp "uint8x8")]
    [(arm:i16x8 data) (string->sexp "int16x4")]
    [(arm:u16x8 data) (string->sexp "uint16x4")]
    [(arm:i32x4 data) (string->sexp "int32x2")]
    [(arm:u32x4 data) (string->sexp "uint32x2")]
    [(arm:i64x2 data) (string->sexp "int64")]
    [(arm:u64x2 data) (string->sexp "uint64")]
    [_ (error (format "(arm:to-llvm-type-half) implement the rest of the arm types: ~a" arm-expr))]))


(define (compile-idx idx)
  (cond
    [(concrete? idx) (arm:interpret idx)]
    [else
     (match idx
       [(sca-add a b) (format "(+ ~a ~a)" (compile-idx a) (compile-idx b))]
       [(sca-sub a b) (format "(- ~a ~a)" (compile-idx a) (compile-idx b))]
       [(sca-mul a b) (format "(* ~a ~a)" (compile-idx a) (compile-idx b))]
       [(sca-div a b) (format "(/ ~a ~a)" (compile-idx a) (compile-idx b))]
       [(sca-mod a b) (format "(% ~a ~a)" (compile-idx a) (compile-idx b))]
       [(sca-min a b) (format "(max ~a ~a)" (compile-idx a) (compile-idx b))]
       [(sca-max a b) (format "(max ~a ~a)" (compile-idx a) (compile-idx b))]
       [(var-lookup var val) (format "~a" var)]
    
       ;; Special handing for ite
       [(expression (== ite) child ...)
        (match (list-ref child 0)
          [(expression op2 child2 ...)
           (cond
             [(eq? op2 <=)
              (if (eq? (format "~a" (list-ref child2 0)) (format "~a" (list-ref child 1)))
                  (format "(min ~a ~a)" (compile-idx (list-ref child 1)) (compile-idx (list-ref child 2)))
                  (format "(max ~a ~a)" (compile-idx (list-ref child 1)) (compile-idx (list-ref child 2))))]
             [else idx])]
          [_ idx])]

       ;; Special handing for subtracts
       [(expression (== -) child ...)
        (match (length child)
          [1 (format "(~a 0 ~a)" - (compile-idx (list-ref child 0)))]
          [2 (format "(~a ~a ~a)" - (compile-idx (list-ref child 0)) (compile-idx (list-ref child 1)))])]

       ;; Special handing for quotient
       [(expression (== quotient) child ...)
        (format "(/ ~a ~a)" (compile-idx (list-ref child 0)) (compile-idx (list-ref child 1)))]
    
       ;; Base case for everything else
       [(expression op child ...)
        (match (length child)
          [1 (format "(~a ~a)" op (compile-idx (list-ref child 0)))]
          [2 (format "(~a ~a ~a)" op (compile-idx (list-ref child 0)) (compile-idx (list-ref child 1)))])]

       [_ idx])]))

(define (ufinitize val bitwidth) 
  (let* ([mask (arithmetic-shift -1 bitwidth)]
         [masked (bitwise-and (bitwise-not mask) (exact-truncate val))])
    masked))

(define (bv->str val)
  (match val
    [(bv v (bitvector bw))
     (let*-values ([(q r) (quotient/remainder bw 4)]
                   [(p b mw) (if (zero? r) (values "x" 16 q) (values "b" 2 bw))])
       (format "~a" (~r (ufinitize v bw) #:base b #:pad-string "0" #:min-width mw)))]))
;; -----

(define (compile-scalar s)
  (define res
    (match s
      [(int8_t val) (format "(int8 ~a)" (compile-scalar val))]
      [(uint8_t val) (format "(uint8 ~a)" (compile-scalar val))]
      [(int16_t val) (format "(int16 ~a)" (compile-scalar val))]
      [(uint16_t val) (format "(uint16 ~a)" (compile-scalar val))]
      [(int32_t val) (format "(int32 ~a)" (compile-scalar val))]
      [(uint32_t val) (format "(uint32 ~a)" (compile-scalar val))]

      [(sca-cast val type) (format "(~a (~ax1 ~a (list ~a)))" type type type (compile-scalar val))]

      [(sca-add a b) (format "(~a (+ ~a ~a))" (to-llvm-type s) (compile-scalar a) (compile-scalar b))]
      [(sca-sub a b) (format "(~a (- ~a ~a))" (to-llvm-type s) (compile-scalar a) (compile-scalar b))]
      [(sca-mul a b) (format "(~a (* ~a ~a))" (to-llvm-type s) (compile-scalar a) (compile-scalar b))]
      [(sca-min a b) (format "(~a (min ~a ~a))" (to-llvm-type s) (compile-scalar a) (compile-scalar b))]
      [(sca-max a b) (format "(~a (max ~a ~a))" (to-llvm-type s) (compile-scalar a) (compile-scalar b))]

      [(load-sca buffer idx) (format "(~a (halide.load.scalar ~a (list (int32 ~a) (int32 ~a))))"
                                     (to-llvm-type s) (to-llvm-type s) (buffer-data buffer) (compile-idx idx))]
      
      [(constant id type) (format "~a" (syntax->datum id))]
      [(bv _ _) (format "0x~a" (bv->str s))]
      [(? number? n) (format "~a" n)]
      [(expression op child ...)
       (match (length child)
         [1 (format "(~a ~a)" op (compile-scalar (list-ref child 0)))]
         [2 (format "(~a ~a ~a)" op (compile-scalar (list-ref child 0)) (compile-scalar (list-ref child 1)))])]
      
      [_ (error "arm:llvm-codegen: compile-scalar ~a" s)]))
  
  (string->sexp res))

;; Only read half of the input vector for this operation
(define (handle-wide-slice-unary arm-expr name Vn flag)
  (let* ([slice (if flag `halide.ir.shalf `halide.ir.fhalf)]
         [type (to-llvm-type-half Vn)]
         [Vn_half (list slice type `(list ,(input-arg Vn)))])
    (generate name (to-llvm-type arm-expr) `(list (,type ,Vn_half)))))

;; Only read half of each input vectors for this operation
(define (handle-wide-slice-binary2 arm-expr name Vd Vn flag)
  (let* ([slice (if flag `halide.ir.shalf `halide.ir.fhalf)]
         [type (to-llvm-type-half Vn)]
         [Vd_half (list slice type `(list ,(input-arg Vd)))]
         [Vn_half (list slice type `(list ,(input-arg Vn)))])
    (generate name (to-llvm-type arm-expr) `(list (,type ,Vd_half) (,type ,Vn_half)))))

;; Only read half of the input vector Vn for this operation
(define (handle-wide-slice-binary1 arm-expr name Vd Vn flag)
  (let* ([slice (if flag `halide.ir.shalf `halide.ir.fhalf)]
         [type (to-llvm-type-half Vn)]
         [half (list slice type `(list ,(input-arg Vn)))])
    (generate name (to-llvm-type arm-expr) `(list ,(input-arg Vd) (,type ,half)))))

;; Only read half of the input vector Vn for this operation
;; Also broadcast Vm.
;; Used for multiply-add-long vector-scalar variants
(define (handle-wide-slice-binary1-broadcast arm-expr name Vd Vn Vm flag broadcast)
  (let* ([slice (if flag `halide.ir.shalf `halide.ir.fhalf)]
         [type (to-llvm-type-half Vn)]
         [half `(,slice ,type (list ,(input-arg Vn)))]
         [b `(,broadcast ,type (list ,(compile-scalar Vm)))])
    (generate name (to-llvm-type arm-expr) `(list ,(input-arg Vd) (,type ,half) (,type ,b)))))

;; Only read half of the output vector and broadcast Vn
(define (handle-wide-slice-binary-broadcast generator arm-expr name Vd Vn flag broadcast)
  (let* ([slice (if flag `halide.ir.shalf `halide.ir.fhalf)]
         [type (to-llvm-type arm-expr)]
         [b-type (to-llvm-type Vd)]
         [b `(,broadcast ,b-type (list ,(compile-scalar Vn)))]
         [wide-type (to-llvm-type-wide Vd)]
         [call (generator name wide-type `(list ,(input-arg Vd) (,b-type ,b)))])
    `(,slice
      ,type
      (list (,wide-type ,call)))))

;; Only read half of the output vector
(define (handle-wide-slice-binary arm-expr name Vd Vn flag)
  (let* ([slice (if flag `halide.ir.shalf `halide.ir.fhalf)]
         [type (to-llvm-type arm-expr)]
         [wide-type (to-llvm-type-wide Vd)]
         [call (generate-rake name wide-type `(list ,(input-arg Vd) ,(input-arg Vn)))])
    `(,slice
      ,type
      (list (,wide-type ,call)))))

(define (get-dot_product-values dp)
  (destruct dp
    [(arm:Ri8x4 v0 v1 v2 v3)
      (values v0 v1 v2 v3)]

    [(arm:Ru8x4 v0 v1 v2 v3)
      (values v0 v1 v2 v3)]

    [_ (error (format "get-dot_product-values failed on expression: ~a" dp))]))

(define (const-zero type)
  (cpp:cast (int8_t (bv 0 8)) type))

(define (negate-and-dup shift type)
  (arm:dup (sca-sub (const-zero type) (sca-cast shift type))))

(define (negate-and-dupw shift type)
  (arm:dupw (sca-sub (const-zero type) (sca-cast shift type))))
