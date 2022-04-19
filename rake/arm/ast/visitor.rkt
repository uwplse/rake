#lang rosette

(require
  rake/arm/ast/types
  (only-in racket/base error)
  rosette/lib/match
)

(provide
 (rename-out
  [visit arm:visit]
  [visit-shallow arm:visit-shallow]))

(define (visit expr transform [arg-pos -1])
  (match expr
    [(arm:ld buf loc align output-type) (transform (arm:ld (visit buf transform) loc align output-type))]

        [(arm:abs Vn) (transform (arm:abs (visit Vn transform)))]

    [(arm:add Vn Vm) (transform (arm:add (visit Vn transform) (visit Vm transform)))]

    [(arm:addhn Vd Vn Vm Vb) (transform (arm:addhn (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:addp Vn Vm) (transform (arm:addp (visit Vn transform) (visit Vm transform)))]

    [(arm:addv Vn) (transform (arm:addv (visit Vn transform)))]

    [(arm:dup Vn) (transform (arm:dup (visit Vn transform)))]

    [(arm:dupn Vn) (transform (arm:dupn (visit Vn transform)))]

    [(arm:dupw Vn) (transform (arm:dupw (visit Vn transform)))]

    [(arm:ext16i1 Vn Vm) (transform (arm:ext16i1 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext16i10 Vn Vm) (transform (arm:ext16i10 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext16i11 Vn Vm) (transform (arm:ext16i11 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext16i12 Vn Vm) (transform (arm:ext16i12 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext16i13 Vn Vm) (transform (arm:ext16i13 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext16i14 Vn Vm) (transform (arm:ext16i14 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext16i15 Vn Vm) (transform (arm:ext16i15 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext16i2 Vn Vm) (transform (arm:ext16i2 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext16i3 Vn Vm) (transform (arm:ext16i3 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext16i4 Vn Vm) (transform (arm:ext16i4 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext16i5 Vn Vm) (transform (arm:ext16i5 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext16i6 Vn Vm) (transform (arm:ext16i6 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext16i7 Vn Vm) (transform (arm:ext16i7 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext16i8 Vn Vm) (transform (arm:ext16i8 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext16i9 Vn Vm) (transform (arm:ext16i9 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext8i1 Vn Vm) (transform (arm:ext8i1 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext8i2 Vn Vm) (transform (arm:ext8i2 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext8i3 Vn Vm) (transform (arm:ext8i3 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext8i4 Vn Vm) (transform (arm:ext8i4 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext8i5 Vn Vm) (transform (arm:ext8i5 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext8i6 Vn Vm) (transform (arm:ext8i6 (visit Vn transform) (visit Vm transform)))]

    [(arm:ext8i7 Vn Vm) (transform (arm:ext8i7 (visit Vn transform) (visit Vm transform)))]

    [(arm:mla-vs Vd Vn Vm) (transform (arm:mla-vs (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:mla-vv Vd Vn Vm) (transform (arm:mla-vv (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:mls-vs Vd Vn Vm) (transform (arm:mls-vs (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:mls-vv Vd Vn Vm) (transform (arm:mls-vv (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:mul-vs Vn Vm) (transform (arm:mul-vs (visit Vn transform) (visit Vm transform)))]

    [(arm:mul-vv Vn Vm) (transform (arm:mul-vv (visit Vn transform) (visit Vm transform)))]

    [(arm:neg Vn) (transform (arm:neg (visit Vn transform)))]

    [(arm:raddhn Vd Vn Vm Vb) (transform (arm:raddhn (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:rshrn Vd Vn Vm Vb) (transform (arm:rshrn (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:rsubhn Vd Vn Vm Vb) (transform (arm:rsubhn (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:saba Vd Vn Vm) (transform (arm:saba (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:sabal Vd Vn Vm Vb) (transform (arm:sabal (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:sabd Vn Vm) (transform (arm:sabd (visit Vn transform) (visit Vm transform)))]

    [(arm:sadalp Vn Vm) (transform (arm:sadalp (visit Vn transform) (visit Vm transform)))]

    [(arm:saddl Vd Vn Vm) (transform (arm:saddl (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:saddlp Vn) (transform (arm:saddlp (visit Vn transform)))]

    [(arm:saddlv Vn) (transform (arm:saddlv (visit Vn transform)))]

    [(arm:saddw Vd Vn Vm) (transform (arm:saddw (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:sdot.v2i32.v8i4 Vd Vn Vm) (transform (arm:sdot.v2i32.v8i4 (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:sdot.v2i32.v8i8 Vd Vn Vm) (transform (arm:sdot.v2i32.v8i8 (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:sdot.v4i32.v16i4 Vd Vn Vm) (transform (arm:sdot.v4i32.v16i4 (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:sdot.v4i32.v16i8 Vd Vn Vm) (transform (arm:sdot.v4i32.v16i8 (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:shadd Vn Vm) (transform (arm:shadd (visit Vn transform) (visit Vm transform)))]

    [(arm:shl Vn) (transform (arm:shl (visit Vn transform)))]

    [(arm:shll Vn Vm) (transform (arm:shll (visit Vn transform) (visit Vm transform)))]

    [(arm:shrn Vd Vn Vm Vb) (transform (arm:shrn (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:shsub Vn Vm) (transform (arm:shsub (visit Vn transform) (visit Vm transform)))]

    [(arm:smax Vn Vm) (transform (arm:smax (visit Vn transform) (visit Vm transform)))]

    [(arm:smaxp Vn Vm) (transform (arm:smaxp (visit Vn transform) (visit Vm transform)))]

    [(arm:smaxv Vn) (transform (arm:smaxv (visit Vn transform)))]

    [(arm:smin Vn Vm) (transform (arm:smin (visit Vn transform) (visit Vm transform)))]

    [(arm:sminp Vn Vm) (transform (arm:sminp (visit Vn transform) (visit Vm transform)))]

    [(arm:sminv Vn) (transform (arm:sminv (visit Vn transform)))]

    [(arm:smlal-vs Vd Vn Vm Vb) (transform (arm:smlal-vs (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:smlal-vv Vd Vn Vm Vb) (transform (arm:smlal-vv (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:smlsl-vs Vd Vn Vm Vb) (transform (arm:smlsl-vs (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:smlsl-vv Vd Vn Vm Vb) (transform (arm:smlsl-vv (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:smull-vs Vd Vn Vm) (transform (arm:smull-vs (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:smull-vv Vd Vn Vm) (transform (arm:smull-vv (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:sqabs Vn) (transform (arm:sqabs (visit Vn transform)))]

    [(arm:sqadd Vn Vm) (transform (arm:sqadd (visit Vn transform) (visit Vm transform)))]

    [(arm:sqdmlal-vs Vd Vn Vm Vb) (transform (arm:sqdmlal-vs (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:sqdmlal-vv Vd Vn Vm Vb) (transform (arm:sqdmlal-vv (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:sqdmlsl-vs Vd Vn Vm Vb) (transform (arm:sqdmlsl-vs (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:sqdmlsl-vv Vd Vn Vm Vb) (transform (arm:sqdmlsl-vv (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:sqdmulh Vn Vm) (transform (arm:sqdmulh (visit Vn transform) (visit Vm transform)))]

    [(arm:sqdmull-vs Vd Vn Vm) (transform (arm:sqdmull-vs (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:sqdmull-vv Vd Vn Vm) (transform (arm:sqdmull-vv (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:sqneg Vn) (transform (arm:sqneg (visit Vn transform)))]

    [(arm:sqrdmulh Vn Vm) (transform (arm:sqrdmulh (visit Vn transform) (visit Vm transform)))]

    [(arm:sqrshl Vn Vm) (transform (arm:sqrshl (visit Vn transform) (visit Vm transform)))]

    [(arm:sqrshrn Vd Vn Vm Vb) (transform (arm:sqrshrn (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:sqrshrun Vd Vn Vm Vb) (transform (arm:sqrshrun (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:sqshl Vn Vm) (transform (arm:sqshl (visit Vn transform) (visit Vm transform)))]

    [(arm:sqshlu Vn Vm) (transform (arm:sqshlu (visit Vn transform) (visit Vm transform)))]

    [(arm:sqshrn Vd Vn Vm Vb) (transform (arm:sqshrn (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:sqshrun Vd Vn Vm Vb) (transform (arm:sqshrun (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:sqsub Vn Vm) (transform (arm:sqsub (visit Vn transform) (visit Vm transform)))]

    [(arm:sqxtn Vn) (transform (arm:sqxtn (visit Vn transform)))]

    [(arm:sqxtun Vn) (transform (arm:sqxtun (visit Vn transform)))]

    [(arm:srhadd Vn Vm) (transform (arm:srhadd (visit Vn transform) (visit Vm transform)))]

    [(arm:srhsub Vn Vm) (transform (arm:srhsub (visit Vn transform) (visit Vm transform)))]

    [(arm:srshl Vn Vm) (transform (arm:srshl (visit Vn transform) (visit Vm transform)))]

    [(arm:sshl Vn Vm) (transform (arm:sshl (visit Vn transform) (visit Vm transform)))]

    [(arm:sshll Vd Vn Vm) (transform (arm:sshll (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:ssubl Vd Vn Vm) (transform (arm:ssubl (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:ssubw Vd Vn Vm) (transform (arm:ssubw (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:sub Vn Vm) (transform (arm:sub (visit Vn transform) (visit Vm transform)))]

    [(arm:subhn Vd Vn Vm Vb) (transform (arm:subhn (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:suqadd Vn Vm) (transform (arm:suqadd (visit Vn transform) (visit Vm transform)))]

    [(arm:sxtl Vn Vm) (transform (arm:sxtl (visit Vn transform) (visit Vm transform)))]

    [(arm:trn1 Vn Vm) (transform (arm:trn1 (visit Vn transform) (visit Vm transform)))]

    [(arm:trn2 Vn Vm) (transform (arm:trn2 (visit Vn transform) (visit Vm transform)))]

    [(arm:uabd Vn Vm) (transform (arm:uabd (visit Vn transform) (visit Vm transform)))]

    [(arm:uadalp Vn Vm) (transform (arm:uadalp (visit Vn transform) (visit Vm transform)))]

    [(arm:uaddl Vd Vn Vm) (transform (arm:uaddl (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:uaddlp Vn) (transform (arm:uaddlp (visit Vn transform)))]

    [(arm:uaddlv Vn) (transform (arm:uaddlv (visit Vn transform)))]

    [(arm:uaddw Vd Vn Vm) (transform (arm:uaddw (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:udot.v2i32.v8i4 Vd Vn Vm) (transform (arm:udot.v2i32.v8i4 (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:udot.v2i32.v8i8 Vd Vn Vm) (transform (arm:udot.v2i32.v8i8 (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:udot.v4i32.v16i4 Vd Vn Vm) (transform (arm:udot.v4i32.v16i4 (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:udot.v4i32.v16i8 Vd Vn Vm) (transform (arm:udot.v4i32.v16i8 (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:uhadd Vn Vm) (transform (arm:uhadd (visit Vn transform) (visit Vm transform)))]

    [(arm:uhsub Vn Vm) (transform (arm:uhsub (visit Vn transform) (visit Vm transform)))]

    [(arm:umax Vn Vm) (transform (arm:umax (visit Vn transform) (visit Vm transform)))]

    [(arm:umaxp Vn Vm) (transform (arm:umaxp (visit Vn transform) (visit Vm transform)))]

    [(arm:umaxv Vn) (transform (arm:umaxv (visit Vn transform)))]

    [(arm:umin Vn Vm) (transform (arm:umin (visit Vn transform) (visit Vm transform)))]

    [(arm:uminp Vn Vm) (transform (arm:uminp (visit Vn transform) (visit Vm transform)))]

    [(arm:uminv Vn) (transform (arm:uminv (visit Vn transform)))]

    [(arm:umlal-vs Vd Vn Vm Vb) (transform (arm:umlal-vs (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:umlal-vv Vd Vn Vm Vb) (transform (arm:umlal-vv (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:umlsl-vs Vd Vn Vm Vb) (transform (arm:umlsl-vs (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:umlsl-vv Vd Vn Vm Vb) (transform (arm:umlsl-vv (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:umull-vs Vd Vn Vm) (transform (arm:umull-vs (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:umull-vv Vd Vn Vm) (transform (arm:umull-vv (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:uqadd Vn Vm) (transform (arm:uqadd (visit Vn transform) (visit Vm transform)))]

    [(arm:uqrshl Vn Vm) (transform (arm:uqrshl (visit Vn transform) (visit Vm transform)))]

    [(arm:uqrshrn Vd Vn Vm Vb) (transform (arm:uqrshrn (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:uqshl Vn Vm) (transform (arm:uqshl (visit Vn transform) (visit Vm transform)))]

    [(arm:uqshrn Vd Vn Vm Vb) (transform (arm:uqshrn (visit Vd transform) (visit Vn transform) (visit Vm transform) (visit Vb transform)))]

    [(arm:uqsub Vn Vm) (transform (arm:uqsub (visit Vn transform) (visit Vm transform)))]

    [(arm:uqxtn Vn) (transform (arm:uqxtn (visit Vn transform)))]

    [(arm:urhadd Vn Vm) (transform (arm:urhadd (visit Vn transform) (visit Vm transform)))]

    [(arm:urhsub Vn Vm) (transform (arm:urhsub (visit Vn transform) (visit Vm transform)))]

    [(arm:urshl Vn Vm) (transform (arm:urshl (visit Vn transform) (visit Vm transform)))]

    [(arm:ushl Vn Vm) (transform (arm:ushl (visit Vn transform) (visit Vm transform)))]

    [(arm:ushll Vd Vn Vm) (transform (arm:ushll (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:usqadd Vn Vm) (transform (arm:usqadd (visit Vn transform) (visit Vm transform)))]

    [(arm:usubl Vd Vn Vm) (transform (arm:usubl (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:usubw Vd Vn Vm) (transform (arm:usubw (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:uxtl Vn Vm) (transform (arm:uxtl (visit Vn transform) (visit Vm transform)))]

    [(arm:uzip1 Vn Vm) (transform (arm:uzip1 (visit Vn transform) (visit Vm transform)))]

    [(arm:uzip2 Vn Vm) (transform (arm:uzip2 (visit Vn transform) (visit Vm transform)))]

    [(arm:vabdl_i16x4 Vn Vm) (transform (arm:vabdl_i16x4 (visit Vn transform) (visit Vm transform)))]

    [(arm:vabdl_i32x2 Vn Vm) (transform (arm:vabdl_i32x2 (visit Vn transform) (visit Vm transform)))]

    [(arm:vabdl_i8x8 Vn Vm) (transform (arm:vabdl_i8x8 (visit Vn transform) (visit Vm transform)))]

    [(arm:vabdl_u16x4 Vn Vm) (transform (arm:vabdl_u16x4 (visit Vn transform) (visit Vm transform)))]

    [(arm:vabdl_u32x2 Vn Vm) (transform (arm:vabdl_u32x2 (visit Vn transform) (visit Vm transform)))]

    [(arm:vabdl_u8x8 Vn Vm) (transform (arm:vabdl_u8x8 (visit Vn transform) (visit Vm transform)))]

    [(arm:xtn Vn Vm) (transform (arm:xtn (visit Vn transform) (visit Vm transform)))]

    [(arm:zip1 Vn Vm) (transform (arm:zip1 (visit Vn transform) (visit Vm transform)))]

    [(arm:zip2 Vn Vm) (transform (arm:zip2 (visit Vn transform) (visit Vm transform)))]

    [(arm:??load id live-data buffer idx-tbl output-type) (transform (arm:??load id live-data (visit buffer transform) idx-tbl output-type) arg-pos)]
    [(arm:??shuffle id lds output-type) (transform (arm:??shuffle id (for/list ([ld lds]) (visit ld transform)) output-type))]
    [(arm:??swizzle id live-data exprs idx-tbl output-type) (transform (arm:??swizzle id live-data (for/list ([expr exprs]) (visit expr transform)) idx-tbl output-type))]
    [(arm:reinterpret Vn) (transform (arm:reinterpret (visit Vn transform)))]

    ;; Concat tiles
    [(arm:concat-tiles exprs) (transform (arm:concat-tiles (for/list ([expr exprs]) (visit expr transform))))]

    [_ (transform expr)]))

(define (visit-shallow expr transform [arg-pos -1])
  (match expr
    [(arm:ld buf loc align output-type) (transform (arm:ld (visit-shallow buf transform) loc align output-type))]

    [(arm:abs Vn) (transform (arm:abs (visit-shallow Vn transform)))]

    [(arm:add Vn Vm) (transform (arm:add (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:addhn Vd Vn Vm Vb) (transform (arm:addhn (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:addp Vn Vm) (transform (arm:addp (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:addv Vn) (transform (arm:addv (visit-shallow Vn transform)))]

    [(arm:dup Vn) (transform (arm:dup (visit-shallow Vn transform)))]

    [(arm:dupn Vn) (transform (arm:dupn (visit-shallow Vn transform)))]

    [(arm:dupw Vn) (transform (arm:dupw (visit-shallow Vn transform)))]

    [(arm:ext16i1 Vn Vm) (transform (arm:ext16i1 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext16i10 Vn Vm) (transform (arm:ext16i10 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext16i11 Vn Vm) (transform (arm:ext16i11 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext16i12 Vn Vm) (transform (arm:ext16i12 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext16i13 Vn Vm) (transform (arm:ext16i13 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext16i14 Vn Vm) (transform (arm:ext16i14 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext16i15 Vn Vm) (transform (arm:ext16i15 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext16i2 Vn Vm) (transform (arm:ext16i2 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext16i3 Vn Vm) (transform (arm:ext16i3 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext16i4 Vn Vm) (transform (arm:ext16i4 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext16i5 Vn Vm) (transform (arm:ext16i5 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext16i6 Vn Vm) (transform (arm:ext16i6 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext16i7 Vn Vm) (transform (arm:ext16i7 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext16i8 Vn Vm) (transform (arm:ext16i8 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext16i9 Vn Vm) (transform (arm:ext16i9 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext8i1 Vn Vm) (transform (arm:ext8i1 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext8i2 Vn Vm) (transform (arm:ext8i2 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext8i3 Vn Vm) (transform (arm:ext8i3 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext8i4 Vn Vm) (transform (arm:ext8i4 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext8i5 Vn Vm) (transform (arm:ext8i5 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext8i6 Vn Vm) (transform (arm:ext8i6 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ext8i7 Vn Vm) (transform (arm:ext8i7 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:mla-vs Vd Vn Vm) (transform (arm:mla-vs (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:mla-vv Vd Vn Vm) (transform (arm:mla-vv (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:mls-vs Vd Vn Vm) (transform (arm:mls-vs (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:mls-vv Vd Vn Vm) (transform (arm:mls-vv (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:mul-vs Vn Vm) (transform (arm:mul-vs (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:mul-vv Vn Vm) (transform (arm:mul-vv (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:neg Vn) (transform (arm:neg (visit-shallow Vn transform)))]

    [(arm:raddhn Vd Vn Vm Vb) (transform (arm:raddhn (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:rshrn Vd Vn Vm Vb) (transform (arm:rshrn (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:rsubhn Vd Vn Vm Vb) (transform (arm:rsubhn (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:saba Vd Vn Vm) (transform (arm:saba (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sabal Vd Vn Vm Vb) (transform (arm:sabal (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:sabd Vn Vm) (transform (arm:sabd (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sadalp Vn Vm) (transform (arm:sadalp (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:saddl Vd Vn Vm) (transform (arm:saddl (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:saddlp Vn) (transform (arm:saddlp (visit-shallow Vn transform)))]

    [(arm:saddlv Vn) (transform (arm:saddlv (visit-shallow Vn transform)))]

    [(arm:saddw Vd Vn Vm) (transform (arm:saddw (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sdot.v2i32.v8i4 Vd Vn Vm) (transform (arm:sdot.v2i32.v8i4 (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sdot.v2i32.v8i8 Vd Vn Vm) (transform (arm:sdot.v2i32.v8i8 (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sdot.v4i32.v16i4 Vd Vn Vm) (transform (arm:sdot.v4i32.v16i4 (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sdot.v4i32.v16i8 Vd Vn Vm) (transform (arm:sdot.v4i32.v16i8 (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:shadd Vn Vm) (transform (arm:shadd (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:shl Vn) (transform (arm:shl (visit-shallow Vn transform)))]

    [(arm:shll Vn Vm) (transform (arm:shll (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:shrn Vd Vn Vm Vb) (transform (arm:shrn (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:shsub Vn Vm) (transform (arm:shsub (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:smax Vn Vm) (transform (arm:smax (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:smaxp Vn Vm) (transform (arm:smaxp (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:smaxv Vn) (transform (arm:smaxv (visit-shallow Vn transform)))]

    [(arm:smin Vn Vm) (transform (arm:smin (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sminp Vn Vm) (transform (arm:sminp (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sminv Vn) (transform (arm:sminv (visit-shallow Vn transform)))]

    [(arm:smlal-vs Vd Vn Vm Vb) (transform (arm:smlal-vs (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:smlal-vv Vd Vn Vm Vb) (transform (arm:smlal-vv (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:smlsl-vs Vd Vn Vm Vb) (transform (arm:smlsl-vs (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:smlsl-vv Vd Vn Vm Vb) (transform (arm:smlsl-vv (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:smull-vs Vd Vn Vm) (transform (arm:smull-vs (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:smull-vv Vd Vn Vm) (transform (arm:smull-vv (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sqabs Vn) (transform (arm:sqabs (visit-shallow Vn transform)))]

    [(arm:sqadd Vn Vm) (transform (arm:sqadd (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sqdmlal-vs Vd Vn Vm Vb) (transform (arm:sqdmlal-vs (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:sqdmlal-vv Vd Vn Vm Vb) (transform (arm:sqdmlal-vv (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:sqdmlsl-vs Vd Vn Vm Vb) (transform (arm:sqdmlsl-vs (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:sqdmlsl-vv Vd Vn Vm Vb) (transform (arm:sqdmlsl-vv (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:sqdmulh Vn Vm) (transform (arm:sqdmulh (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sqdmull-vs Vd Vn Vm) (transform (arm:sqdmull-vs (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sqdmull-vv Vd Vn Vm) (transform (arm:sqdmull-vv (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sqneg Vn) (transform (arm:sqneg (visit-shallow Vn transform)))]

    [(arm:sqrdmulh Vn Vm) (transform (arm:sqrdmulh (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sqrshl Vn Vm) (transform (arm:sqrshl (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sqrshrn Vd Vn Vm Vb) (transform (arm:sqrshrn (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:sqrshrun Vd Vn Vm Vb) (transform (arm:sqrshrun (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:sqshl Vn Vm) (transform (arm:sqshl (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sqshlu Vn Vm) (transform (arm:sqshlu (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sqshrn Vd Vn Vm Vb) (transform (arm:sqshrn (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:sqshrun Vd Vn Vm Vb) (transform (arm:sqshrun (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:sqsub Vn Vm) (transform (arm:sqsub (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sqxtn Vn) (transform (arm:sqxtn (visit-shallow Vn transform)))]

    [(arm:sqxtun Vn) (transform (arm:sqxtun (visit-shallow Vn transform)))]

    [(arm:srhadd Vn Vm) (transform (arm:srhadd (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:srhsub Vn Vm) (transform (arm:srhsub (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:srshl Vn Vm) (transform (arm:srshl (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sshl Vn Vm) (transform (arm:sshl (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sshll Vd Vn Vm) (transform (arm:sshll (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ssubl Vd Vn Vm) (transform (arm:ssubl (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ssubw Vd Vn Vm) (transform (arm:ssubw (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sub Vn Vm) (transform (arm:sub (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:subhn Vd Vn Vm Vb) (transform (arm:subhn (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:suqadd Vn Vm) (transform (arm:suqadd (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:sxtl Vn Vm) (transform (arm:sxtl (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:trn1 Vn Vm) (transform (arm:trn1 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:trn2 Vn Vm) (transform (arm:trn2 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uabd Vn Vm) (transform (arm:uabd (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uadalp Vn Vm) (transform (arm:uadalp (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uaddl Vd Vn Vm) (transform (arm:uaddl (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uaddlp Vn) (transform (arm:uaddlp (visit-shallow Vn transform)))]

    [(arm:uaddlv Vn) (transform (arm:uaddlv (visit-shallow Vn transform)))]

    [(arm:uaddw Vd Vn Vm) (transform (arm:uaddw (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:udot.v2i32.v8i4 Vd Vn Vm) (transform (arm:udot.v2i32.v8i4 (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:udot.v2i32.v8i8 Vd Vn Vm) (transform (arm:udot.v2i32.v8i8 (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:udot.v4i32.v16i4 Vd Vn Vm) (transform (arm:udot.v4i32.v16i4 (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:udot.v4i32.v16i8 Vd Vn Vm) (transform (arm:udot.v4i32.v16i8 (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uhadd Vn Vm) (transform (arm:uhadd (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uhsub Vn Vm) (transform (arm:uhsub (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:umax Vn Vm) (transform (arm:umax (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:umaxp Vn Vm) (transform (arm:umaxp (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:umaxv Vn) (transform (arm:umaxv (visit-shallow Vn transform)))]

    [(arm:umin Vn Vm) (transform (arm:umin (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uminp Vn Vm) (transform (arm:uminp (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uminv Vn) (transform (arm:uminv (visit-shallow Vn transform)))]

    [(arm:umlal-vs Vd Vn Vm Vb) (transform (arm:umlal-vs (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:umlal-vv Vd Vn Vm Vb) (transform (arm:umlal-vv (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:umlsl-vs Vd Vn Vm Vb) (transform (arm:umlsl-vs (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:umlsl-vv Vd Vn Vm Vb) (transform (arm:umlsl-vv (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:umull-vs Vd Vn Vm) (transform (arm:umull-vs (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:umull-vv Vd Vn Vm) (transform (arm:umull-vv (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uqadd Vn Vm) (transform (arm:uqadd (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uqrshl Vn Vm) (transform (arm:uqrshl (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uqrshrn Vd Vn Vm Vb) (transform (arm:uqrshrn (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:uqshl Vn Vm) (transform (arm:uqshl (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uqshrn Vd Vn Vm Vb) (transform (arm:uqshrn (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform) (visit-shallow Vb transform)))]

    [(arm:uqsub Vn Vm) (transform (arm:uqsub (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uqxtn Vn) (transform (arm:uqxtn (visit-shallow Vn transform)))]

    [(arm:urhadd Vn Vm) (transform (arm:urhadd (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:urhsub Vn Vm) (transform (arm:urhsub (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:urshl Vn Vm) (transform (arm:urshl (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ushl Vn Vm) (transform (arm:ushl (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:ushll Vd Vn Vm) (transform (arm:ushll (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:usqadd Vn Vm) (transform (arm:usqadd (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:usubl Vd Vn Vm) (transform (arm:usubl (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:usubw Vd Vn Vm) (transform (arm:usubw (visit-shallow Vd transform) (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uxtl Vn Vm) (transform (arm:uxtl (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uzip1 Vn Vm) (transform (arm:uzip1 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:uzip2 Vn Vm) (transform (arm:uzip2 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:vabdl_i16x4 Vn Vm) (transform (arm:vabdl_i16x4 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:vabdl_i32x2 Vn Vm) (transform (arm:vabdl_i32x2 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:vabdl_i8x8 Vn Vm) (transform (arm:vabdl_i8x8 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:vabdl_u16x4 Vn Vm) (transform (arm:vabdl_u16x4 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:vabdl_u32x2 Vn Vm) (transform (arm:vabdl_u32x2 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:vabdl_u8x8 Vn Vm) (transform (arm:vabdl_u8x8 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:xtn Vn Vm) (transform (arm:xtn (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:zip1 Vn Vm) (transform (arm:zip1 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:zip2 Vn Vm) (transform (arm:zip2 (visit-shallow Vn transform) (visit-shallow Vm transform)))]

    [(arm:??load id live-data buffer idx-tbl output-type) (transform (arm:??load id live-data buffer idx-tbl output-type) arg-pos)]
    [(arm:??shuffle id lds output-type) (transform expr)]
    [(arm:??swizzle id live-data exprs idx-tbl output-type) (transform expr)]
    [(arm:reinterpret Vn) (transform (arm:reinterpret (visit-shallow Vn transform)))]

    ;; Concat tiles
    [(arm:concat-tiles exprs) (transform (arm:concat-tiles (for/list ([expr exprs]) (visit-shallow expr transform))))]

    [_ (transform expr)]))
