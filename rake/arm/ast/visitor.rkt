#lang rosette

(require
  rake/arm/ast/types
  (only-in racket/base error)
  rosette/lib/match
)


(provide
 (rename-out
  [visit arm:visit]))


(define (visit expr transform [arg-pos -1])
  (match expr
    [(arm:abs Vn) (transform (arm:abs (visit Vn transform)))]

    [(arm:add Vn Vm) (transform (arm:add (visit Vn transform) (visit Vm transform)))]

    [(arm:addhn Vn Vm) (transform (arm:addhn (visit Vn transform) (visit Vm transform)))]

    [(arm:addp Vn Vm) (transform (arm:addp (visit Vn transform) (visit Vm transform)))]

    [(arm:addv Vn) (transform (arm:addv (visit Vn transform)))]

    [(arm:mla Vd Vn Vm) (transform (arm:mla (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:mls Vd Vn Vm) (transform (arm:mls (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:mul Vn Vm) (transform (arm:mul (visit Vn transform) (visit Vm transform)))]

    [(arm:neg Vn) (transform (arm:neg (visit Vn transform)))]

    [(arm:raddhn Vn Vm) (transform (arm:raddhn (visit Vn transform) (visit Vm transform)))]

    [(arm:rshrn Vn Vm) (transform (arm:rshrn (visit Vn transform) (visit Vm transform)))]

    [(arm:rsubhn Vn Vm) (transform (arm:rsubhn (visit Vn transform) (visit Vm transform)))]

    [(arm:saba Vd Vn Vm) (transform (arm:saba (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:sabal Vd Vn Vm) (transform (arm:sabal (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:sabd Vn Vm) (transform (arm:sabd (visit Vn transform) (visit Vm transform)))]

    [(arm:sadalp Vn Vm) (transform (arm:sadalp (visit Vn transform) (visit Vm transform)))]

    [(arm:saddl Vn Vm) (transform (arm:saddl (visit Vn transform) (visit Vm transform)))]

    [(arm:saddlp Vn) (transform (arm:saddlp (visit Vn transform)))]

    [(arm:saddlv Vn) (transform (arm:saddlv (visit Vn transform)))]

    [(arm:saddw Vn Vm) (transform (arm:saddw (visit Vn transform) (visit Vm transform)))]

    [(arm:sdot.v2i32.v8i8 Vd Vn Vm) (transform (arm:sdot.v2i32.v8i8 (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:sdot.v4i32.v16i8 Vd Vn Vm) (transform (arm:sdot.v4i32.v16i8 (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:shadd Vn Vm) (transform (arm:shadd (visit Vn transform) (visit Vm transform)))]

    [(arm:shl Vn) (transform (arm:shl (visit Vn transform)))]

    [(arm:shll Vn) (transform (arm:shll (visit Vn transform)))]

    [(arm:shrn Vn Vm) (transform (arm:shrn (visit Vn transform) (visit Vm transform)))]

    [(arm:shsub Vn Vm) (transform (arm:shsub (visit Vn transform) (visit Vm transform)))]

    [(arm:smax Vn Vm) (transform (arm:smax (visit Vn transform) (visit Vm transform)))]

    [(arm:smaxp Vn Vm) (transform (arm:smaxp (visit Vn transform) (visit Vm transform)))]

    [(arm:smaxv Vn) (transform (arm:smaxv (visit Vn transform)))]

    [(arm:smin Vn Vm) (transform (arm:smin (visit Vn transform) (visit Vm transform)))]

    [(arm:sminp Vn Vm) (transform (arm:sminp (visit Vn transform) (visit Vm transform)))]

    [(arm:sminv Vn) (transform (arm:sminv (visit Vn transform)))]

    [(arm:smlal Vd Vn Vm) (transform (arm:smlal (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:smlsl Vd Vn Vm) (transform (arm:smlsl (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:smull Vn Vm) (transform (arm:smull (visit Vn transform) (visit Vm transform)))]

    [(arm:sqabs Vn) (transform (arm:sqabs (visit Vn transform)))]

    [(arm:sqadd Vn Vm) (transform (arm:sqadd (visit Vn transform) (visit Vm transform)))]

    [(arm:sqdmulh Vn Vm) (transform (arm:sqdmulh (visit Vn transform) (visit Vm transform)))]

    [(arm:sqdmull Vn Vm) (transform (arm:sqdmull (visit Vn transform) (visit Vm transform)))]

    [(arm:sqneg Vn) (transform (arm:sqneg (visit Vn transform)))]

    [(arm:sqrdmulh Vn Vm) (transform (arm:sqrdmulh (visit Vn transform) (visit Vm transform)))]

    [(arm:sqrshl Vn Vm) (transform (arm:sqrshl (visit Vn transform) (visit Vm transform)))]

    [(arm:sqrshrn Vn Vm) (transform (arm:sqrshrn (visit Vn transform) (visit Vm transform)))]

    [(arm:sqrshrun Vn Vm) (transform (arm:sqrshrun (visit Vn transform) (visit Vm transform)))]

    [(arm:sqshl Vn Vm) (transform (arm:sqshl (visit Vn transform) (visit Vm transform)))]

    [(arm:sqshlu Vn Vm) (transform (arm:sqshlu (visit Vn transform) (visit Vm transform)))]

    [(arm:sqshrn Vn Vm) (transform (arm:sqshrn (visit Vn transform) (visit Vm transform)))]

    [(arm:sqshrun Vn Vm) (transform (arm:sqshrun (visit Vn transform) (visit Vm transform)))]

    [(arm:sqsub Vn Vm) (transform (arm:sqsub (visit Vn transform) (visit Vm transform)))]

    [(arm:sqxtn Vn) (transform (arm:sqxtn (visit Vn transform)))]

    [(arm:sqxtun Vn) (transform (arm:sqxtun (visit Vn transform)))]

    [(arm:srhadd Vn Vm) (transform (arm:srhadd (visit Vn transform) (visit Vm transform)))]

    [(arm:srhsub Vn Vm) (transform (arm:srhsub (visit Vn transform) (visit Vm transform)))]

    [(arm:srshl Vn Vm) (transform (arm:srshl (visit Vn transform) (visit Vm transform)))]

    [(arm:sshl Vn Vm) (transform (arm:sshl (visit Vn transform) (visit Vm transform)))]

    [(arm:sshll Vn Vm) (transform (arm:sshll (visit Vn transform) (visit Vm transform)))]

    [(arm:ssubl Vn Vm) (transform (arm:ssubl (visit Vn transform) (visit Vm transform)))]

    [(arm:ssubw Vn Vm) (transform (arm:ssubw (visit Vn transform) (visit Vm transform)))]

    [(arm:sub Vn Vm) (transform (arm:sub (visit Vn transform) (visit Vm transform)))]

    [(arm:subhn Vn Vm) (transform (arm:subhn (visit Vn transform) (visit Vm transform)))]

    [(arm:suqadd Vn Vm) (transform (arm:suqadd (visit Vn transform) (visit Vm transform)))]

    [(arm:uabd Vn Vm) (transform (arm:uabd (visit Vn transform) (visit Vm transform)))]

    [(arm:uadalp Vn Vm) (transform (arm:uadalp (visit Vn transform) (visit Vm transform)))]

    [(arm:uaddl Vn Vm) (transform (arm:uaddl (visit Vn transform) (visit Vm transform)))]

    [(arm:uaddlp Vn) (transform (arm:uaddlp (visit Vn transform)))]

    [(arm:uaddlv Vn) (transform (arm:uaddlv (visit Vn transform)))]

    [(arm:uaddw Vn Vm) (transform (arm:uaddw (visit Vn transform) (visit Vm transform)))]

    [(arm:udot.v2i32.v8i8 Vd Vn Vm) (transform (arm:udot.v2i32.v8i8 (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:udot.v4i32.v16i8 Vd Vn Vm) (transform (arm:udot.v4i32.v16i8 (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:uhadd Vn Vm) (transform (arm:uhadd (visit Vn transform) (visit Vm transform)))]

    [(arm:uhsub Vn Vm) (transform (arm:uhsub (visit Vn transform) (visit Vm transform)))]

    [(arm:umax Vn Vm) (transform (arm:umax (visit Vn transform) (visit Vm transform)))]

    [(arm:umaxp Vn Vm) (transform (arm:umaxp (visit Vn transform) (visit Vm transform)))]

    [(arm:umaxv Vn) (transform (arm:umaxv (visit Vn transform)))]

    [(arm:umin Vn Vm) (transform (arm:umin (visit Vn transform) (visit Vm transform)))]

    [(arm:uminp Vn Vm) (transform (arm:uminp (visit Vn transform) (visit Vm transform)))]

    [(arm:uminv Vn) (transform (arm:uminv (visit Vn transform)))]

    [(arm:umlal Vd Vn Vm) (transform (arm:umlal (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:umlsl Vd Vn Vm) (transform (arm:umlsl (visit Vd transform) (visit Vn transform) (visit Vm transform)))]

    [(arm:umull Vn Vm) (transform (arm:umull (visit Vn transform) (visit Vm transform)))]

    [(arm:uqadd Vn Vm) (transform (arm:uqadd (visit Vn transform) (visit Vm transform)))]

    [(arm:uqrshl Vn Vm) (transform (arm:uqrshl (visit Vn transform) (visit Vm transform)))]

    [(arm:uqrshrn Vn Vm) (transform (arm:uqrshrn (visit Vn transform) (visit Vm transform)))]

    [(arm:uqshl Vn Vm) (transform (arm:uqshl (visit Vn transform) (visit Vm transform)))]

    [(arm:uqshrn Vn Vm) (transform (arm:uqshrn (visit Vn transform) (visit Vm transform)))]

    [(arm:uqsub Vn Vm) (transform (arm:uqsub (visit Vn transform) (visit Vm transform)))]

    [(arm:uqxtn Vn) (transform (arm:uqxtn (visit Vn transform)))]

    [(arm:urhadd Vn Vm) (transform (arm:urhadd (visit Vn transform) (visit Vm transform)))]

    [(arm:urhsub Vn Vm) (transform (arm:urhsub (visit Vn transform) (visit Vm transform)))]

    [(arm:urshl Vn Vm) (transform (arm:urshl (visit Vn transform) (visit Vm transform)))]

    [(arm:ushl Vn Vm) (transform (arm:ushl (visit Vn transform) (visit Vm transform)))]

    [(arm:ushll Vn Vm) (transform (arm:ushll (visit Vn transform) (visit Vm transform)))]

    [(arm:usqadd Vn Vm) (transform (arm:usqadd (visit Vn transform) (visit Vm transform)))]

    [(arm:usubl Vn Vm) (transform (arm:usubl (visit Vn transform) (visit Vm transform)))]

    [(arm:usubw Vn Vm) (transform (arm:usubw (visit Vn transform) (visit Vm transform)))]

    [(arm:vabdl_i16x4 Vn Vm) (transform (arm:vabdl_i16x4 (visit Vn transform) (visit Vm transform)))]

    [(arm:vabdl_i32x2 Vn Vm) (transform (arm:vabdl_i32x2 (visit Vn transform) (visit Vm transform)))]

    [(arm:vabdl_i8x8 Vn Vm) (transform (arm:vabdl_i8x8 (visit Vn transform) (visit Vm transform)))]

    [(arm:vabdl_u16x4 Vn Vm) (transform (arm:vabdl_u16x4 (visit Vn transform) (visit Vm transform)))]

    [(arm:vabdl_u32x2 Vn Vm) (transform (arm:vabdl_u32x2 (visit Vn transform) (visit Vm transform)))]

    [(arm:vabdl_u8x8 Vn Vm) (transform (arm:vabdl_u8x8 (visit Vn transform) (visit Vm transform)))]

    [(arm:??load id live-data buffer idx-tbl output-type) (transform (arm:??load id live-data (visit buffer transform) idx-tbl output-type) arg-pos)]
    [(arm:??shuffle id lds output-type) (transform (arm:??shuffle id (for/list ([ld lds]) (visit ld transform)) output-type))]
    [(arm:??swizzle id live-data exprs idx-tbl) (transform (arm:??swizzle id live-data (for/list ([expr exprs]) (visit expr transform)) idx-tbl))]

    [_ (transform expr)]))

