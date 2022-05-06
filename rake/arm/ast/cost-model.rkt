#lang rosette/safe

(require
  rosette/lib/match
  rake/arm/ast/types
  rake/arm/ast/visitor
  rake/arm/ast/interpreter)

(provide (prefix-out arm: (all-defined-out)))

; cost model is latencies from: https://dougallj.github.io/applecpu/firestorm-simd.html
(define (instr-cost instr sig)
  (let ([multiplier (if (arm:half-width-sig? sig) 2 1)]
        [base (cond
    [(eq? arm:abs instr) 3]

    [(eq? arm:add instr) 2]

    [(eq? arm:addhn instr) 6] ;; double instruction

    [(eq? arm:addp instr) 2.001]

    [(eq? arm:addv instr) 3]

    [(eq? arm:dup instr) 2]

    [(eq? arm:dupn instr) 2]

    [(eq? arm:dupw instr) 2] ;; TODO: should this be double?

    [(eq? arm:ext16i1 instr) 2]

    [(eq? arm:ext16i10 instr) 2]

    [(eq? arm:ext16i11 instr) 2]

    [(eq? arm:ext16i12 instr) 2]

    [(eq? arm:ext16i13 instr) 2]

    [(eq? arm:ext16i14 instr) 2]

    [(eq? arm:ext16i15 instr) 2]

    [(eq? arm:ext16i2 instr) 2]

    [(eq? arm:ext16i3 instr) 2]

    [(eq? arm:ext16i4 instr) 2]

    [(eq? arm:ext16i5 instr) 2]

    [(eq? arm:ext16i6 instr) 2]

    [(eq? arm:ext16i7 instr) 2]

    [(eq? arm:ext16i8 instr) 2]

    [(eq? arm:ext16i9 instr) 2]

    [(eq? arm:ext8i1 instr) 2]

    [(eq? arm:ext8i2 instr) 2]

    [(eq? arm:ext8i3 instr) 2]

    [(eq? arm:ext8i4 instr) 2]

    [(eq? arm:ext8i5 instr) 2]

    [(eq? arm:ext8i6 instr) 2]

    [(eq? arm:ext8i7 instr) 2]

    [(eq? arm:mla-vs instr) 3]

    [(eq? arm:mla-vv instr) 3]

    [(eq? arm:mls-vs instr) 3]

    [(eq? arm:mls-vv instr) 3]

    [(eq? arm:mul-vs instr) 3]

    [(eq? arm:mul-vv instr) 3]

    [(eq? arm:neg instr) 2]

    [(eq? arm:raddhn instr) 6] ;; is a double instruction

    [(eq? arm:rshrn instr) 3]

    [(eq? arm:rsubhn instr) 6] ;; is a double instruction

    [(eq? arm:saba instr) 3]

    [(eq? arm:sabal instr) 3]

    [(eq? arm:sabd instr) 3]

    [(eq? arm:sadalp instr) 3.001]

    [(eq? arm:saddl instr) 2]

    [(eq? arm:saddlp instr) 2.001]

    [(eq? arm:saddlv instr) 3]

    [(eq? arm:saddw instr) 2]

    [(eq? arm:sdot.v2i32.v8i4 instr) 3]

    [(eq? arm:sdot.v2i32.v8i8 instr) 3]

    [(eq? arm:sdot.v4i32.v16i4 instr) 3]

    [(eq? arm:sdot.v4i32.v16i8 instr) 3]

    [(eq? arm:shadd instr) 2]

    [(eq? arm:shl instr) 2]

    [(eq? arm:shll instr) 2]

    [(eq? arm:shrn instr) 6] ;; is a double instruction

    [(eq? arm:shsub instr) 2]

    [(eq? arm:smax instr) 2]

    [(eq? arm:smaxp instr) 2.001]

    [(eq? arm:smaxv instr) 3]

    [(eq? arm:smin instr) 2]

    [(eq? arm:sminp instr) 2.001]

    [(eq? arm:sminv instr) 3]

    [(eq? arm:smlal-vs instr) 3]

    [(eq? arm:smlal-vv instr) 3]

    [(eq? arm:smlsl-vs instr) 3]

    [(eq? arm:smlsl-vv instr) 3]

    [(eq? arm:smull-vs instr) 3]

    [(eq? arm:smull-vv instr) 3]

    [(eq? arm:sqabs instr) 3]

    [(eq? arm:sqadd instr) 3]

    [(eq? arm:sqdmlal-vs instr) 3]

    [(eq? arm:sqdmlal-vv instr) 3]

    [(eq? arm:sqdmlsl-vs instr) 3]

    [(eq? arm:sqdmlsl-vv instr) 3]

    [(eq? arm:sqdmulh instr) 3]
    [(eq? arm:sqdmulh-vs instr) 3]

    [(eq? arm:sqdmull-vs instr) 3]

    [(eq? arm:sqdmull-vv instr) 3]

    [(eq? arm:sqneg instr) 3]

    [(eq? arm:sqrdmulh instr) 3]
    [(eq? arm:sqrdmulh-vs instr) 3]

    [(eq? arm:sqrshl instr) 3]
    [(eq? arm:sqrshr instr) 3]
    [(eq? arm:sqrshr-vs instr) 3]

    [(eq? arm:sqrshrn instr) 6] ;; is a double instruction

    [(eq? arm:sqrshrun instr) 6] ;; is a double instruction

    [(eq? arm:sqshl instr) 2]

    [(eq? arm:sqshlu instr) 2]

    [(eq? arm:sqshrn instr) 6] ;; is a double instruction

    [(eq? arm:sqshrun instr) 6] ;; is a double instruction

    [(eq? arm:sqsub instr) 3]

    [(eq? arm:sqxtn instr) 6] ;; is a double instruction

    [(eq? arm:sqxtun instr) 6] ;; is a double instruction

    [(eq? arm:srhadd instr) 2]

    [(eq? arm:srshl instr) 3]

    [(eq? arm:sshl instr) 2]

    [(eq? arm:sshll instr) 2]

    [(eq? arm:sshr instr) 2]
    [(eq? arm:sshr-vs instr) 2]

    [(eq? arm:ssubl instr) 2]

    [(eq? arm:ssubw instr) 2]

    [(eq? arm:sub instr) 2]

    [(eq? arm:subhn instr) 6] ;; is a double instruction

    [(eq? arm:suqadd instr) 3]

    [(eq? arm:sxtl instr) 2]

    [(eq? arm:trn1 instr) 2]

    [(eq? arm:trn2 instr) 2]

    [(eq? arm:uabd instr) 3]

    [(eq? arm:uadalp instr) 3.001]

    [(eq? arm:uaddl instr) 2]

    [(eq? arm:uaddlp instr) 2.001]

    [(eq? arm:uaddlv instr) 3]

    [(eq? arm:uaddw instr) 2]

    [(eq? arm:udot.v2i32.v8i4 instr) 3]

    [(eq? arm:udot.v2i32.v8i8 instr) 3]

    [(eq? arm:udot.v4i32.v16i4 instr) 3]

    [(eq? arm:udot.v4i32.v16i8 instr) 3]

    [(eq? arm:uhadd instr) 2]

    [(eq? arm:uhsub instr) 2]

    [(eq? arm:umax instr) 2]

    [(eq? arm:umaxp instr) 2.001]

    [(eq? arm:umaxv instr) 3]

    [(eq? arm:umin instr) 2]

    [(eq? arm:uminp instr) 2.001]

    [(eq? arm:uminv instr) 3]

    [(eq? arm:umlal-vs instr) 3]

    [(eq? arm:umlal-vv instr) 3]

    [(eq? arm:umlsl-vs instr) 3]

    [(eq? arm:umlsl-vv instr) 3]

    [(eq? arm:umull-vs instr) 3]

    [(eq? arm:umull-vv instr) 3]

    [(eq? arm:uqadd instr) 3]

    [(eq? arm:uqrshl instr) 3]

    [(eq? arm:uqrshrn instr) 6] ;; is a double instruction

    [(eq? arm:uqrshr instr) 3]
    [(eq? arm:uqrshr-vs instr) 3]

    [(eq? arm:uqshl instr) 2]

    [(eq? arm:uqshrn instr) 6] ;; is a double instruction

    [(eq? arm:uqsub instr) 3]

    [(eq? arm:uqxtn instr) 6] ;; is a double instruction

    [(eq? arm:urhadd instr) 2]

    [(eq? arm:urshl instr) 3]

    [(eq? arm:ushl instr) 2]

    [(eq? arm:ushll instr) 2]

    [(eq? arm:ushr instr) 2]
    [(eq? arm:ushr-vs instr) 2]

    [(eq? arm:usqadd instr) 3]

    [(eq? arm:usubl instr) 2]

    [(eq? arm:usubw instr) 2]

    [(eq? arm:uxtl instr) 2]

    [(eq? arm:uzip1 instr) 2]

    [(eq? arm:uzip2 instr) 2]

    [(eq? arm:vabdl_i16x4 instr) 3]

    [(eq? arm:vabdl_i32x2 instr) 3]

    [(eq? arm:vabdl_i8x8 instr) 3]

    [(eq? arm:vabdl_u16x4 instr) 3]

    [(eq? arm:vabdl_u32x2 instr) 3]

    [(eq? arm:vabdl_u8x8 instr) 3]

    [(eq? arm:xtn instr) 4] ;; is a double instruction

    [(eq? arm:zip1 instr) 2]

    [(eq? arm:zip2 instr) 2]

    [(eq? arm:bsl instr) 2]
    [(eq? arm:select instr) 2] ;; compiles to bsl
    [(eq? arm:bl instr) 0]

    [(eq? arm:cmeq instr) 2]

    [(eq? arm:cmeqz instr) 2]

    [(eq? arm:cmhi instr) 2]

    [(eq? arm:cmhs instr) 2]

    [(eq? arm:cmlez instr) 2]

    [(eq? arm:cmltz instr) 2]

    [(eq? arm:cmqe instr) 2]

    [(eq? arm:cmqez instr) 2]

    [(eq? arm:cmqt instr) 2]

    [(eq? arm:cmqtz instr) 2]

    [(eq? arm:cmtst instr) 2]

    [(eq? arm:reinterpret instr) 0.001]

    [else 1])])

  (* base multiplier)))