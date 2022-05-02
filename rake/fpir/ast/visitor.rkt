#lang rosette/safe

(require
  rake/fpir/ast/types
  (only-in racket/base error for/list)
  rosette/lib/match
)

(provide
 (rename-out
  [visit fpir:visit]
  [visit-shallow fpir:visit-shallow]
))

(define (visit expr transform [arg-pos -1])
  (match expr
    [(fpir:ld buf loc align output-type) (transform (fpir:ld (visit buf transform) loc align output-type))]
    [(fpir:??load id live-data buffer idx-tbl output-type) (transform (fpir:??load id live-data (visit buffer transform) idx-tbl output-type) arg-pos)]
    [(fpir:??shuffle id lds output-type) (transform (fpir:??shuffle id (for/list ([ld lds]) (visit ld transform)) output-type))]
    [(fpir:??swizzle id live-data exprs idx-tbl output-type) (transform (fpir:??swizzle id live-data (for/list ([expr exprs]) (visit expr transform)) idx-tbl output-type))]
    [(fpir:reinterpret Vn) (transform (fpir:reinterpret (visit Vn transform)))]
    [(fpir:concat-tiles exprs) (transform (fpir:concat-tiles (for/list ([expr exprs]) (visit expr transform))))]
    [(fpir:lo vec) (transform (fpir:lo (visit vec transform)))]
    [(fpir:hi vec) (transform (fpir:hi (visit vec transform)))]

    [(fpir:add a b)
      (transform (fpir:add (visit a transform) (visit b transform)))]
    [(fpir:add_h a b)
      (transform (fpir:add_h (visit a transform) (visit b transform)))]
    [(fpir:add_rh a b)
      (transform (fpir:add_rh (visit a transform) (visit b transform)))]
    [(fpir:add_s a b)
      (transform (fpir:add_s (visit a transform) (visit b transform)))]
    [(fpir:add_w a b)
      (transform (fpir:add_w (visit a transform) (visit b transform)))]
    [(fpir:broadcast128 a_imm8)
      (transform (fpir:broadcast128 (visit a_imm8 transform)))]
    [(fpir:broadcast256 a_imm8)
      (transform (fpir:broadcast256 (visit a_imm8 transform)))]
    [(fpir:bwand a b)
      (transform (fpir:bwand (visit a transform) (visit b transform)))]
    [(fpir:bwnot a b)
      (transform (fpir:bwnot (visit a transform) (visit b transform)))]
    [(fpir:bwor a b)
      (transform (fpir:bwor (visit a transform) (visit b transform)))]
    [(fpir:max a b)
      (transform (fpir:max (visit a transform) (visit b transform)))]
    [(fpir:min a b)
      (transform (fpir:min (visit a transform) (visit b transform)))]
    [(fpir:mul a b)
      (transform (fpir:mul (visit a transform) (visit b transform)))]
    [(fpir:mul-vs a b_imm8)
      (transform (fpir:mul-vs (visit a transform) (visit b_imm8 transform)))]
    [(fpir:mul_shr a b c)
      (transform (fpir:mul_shr (visit a transform) (visit b transform) (visit c transform)))]
    [(fpir:mul_shr_r a b c)
      (transform (fpir:mul_shr_r (visit a transform) (visit b transform) (visit c transform)))]
    [(fpir:mul_w a b)
      (transform (fpir:mul_w (visit a transform) (visit b transform)))]
    [(fpir:mul_w-vs a b_imm8)
      (transform (fpir:mul_w-vs (visit a transform) (visit b_imm8 transform)))]
    [(fpir:narrow a)
      (transform (fpir:narrow (visit a transform)))]
    [(fpir:narrow_s a)
      (transform (fpir:narrow_s (visit a transform)))]
    [(fpir:shl a b)
      (transform (fpir:shl (visit a transform) (visit b transform)))]
    [(fpir:shl_r a b)
      (transform (fpir:shl_r (visit a transform) (visit b transform)))]
    [(fpir:shl_w a b)
      (transform (fpir:shl_w (visit a transform) (visit b transform)))]
    [(fpir:shr a b)
      (transform (fpir:shr (visit a transform) (visit b transform)))]
    [(fpir:shr_r a b)
      (transform (fpir:shr_r (visit a transform) (visit b transform)))]
    [(fpir:shr_w a b)
      (transform (fpir:shr_w (visit a transform) (visit b transform)))]
    [(fpir:sub a b)
      (transform (fpir:sub (visit a transform) (visit b transform)))]
    [(fpir:sub_h a b)
      (transform (fpir:sub_h (visit a transform) (visit b transform)))]
    [(fpir:sub_rh a b)
      (transform (fpir:sub_rh (visit a transform) (visit b transform)))]
    [(fpir:sub_s a b)
      (transform (fpir:sub_s (visit a transform) (visit b transform)))]
    [(fpir:sub_w a b)
      (transform (fpir:sub_w (visit a transform) (visit b transform)))]
    [(fpir:widen a)
      (transform (fpir:widen (visit a transform)))]

    [_ (transform expr)]))

(define (visit-shallow expr transform [arg-pos -1])
  (match expr
    [(fpir:ld buf loc align output-type) (transform (fpir:ld (visit-shallow buf transform) loc align output-type))]
    [(fpir:??load id live-data buffer idx-tbl output-type) (transform (fpir:??load id live-data buffer idx-tbl output-type) arg-pos)]
    [(fpir:??shuffle id lds output-type) (transform expr)]
    [(fpir:??swizzle id live-data exprs idx-tbl output-type) (transform expr)]
    [(fpir:reinterpret Vn) (transform (fpir:reinterpret (visit-shallow Vn transform)))]
    [(fpir:concat-tiles exprs) (transform (fpir:concat-tiles (for/list ([expr exprs]) (visit-shallow expr transform))))]
    [(fpir:lo vec) (transform (fpir:lo (visit-shallow vec transform)))]
    [(fpir:hi vec) (transform (fpir:hi (visit-shallow vec transform)))]

    [(fpir:add a b)
      (transform (fpir:add (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:add_h a b)
      (transform (fpir:add_h (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:add_rh a b)
      (transform (fpir:add_rh (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:add_s a b)
      (transform (fpir:add_s (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:add_w a b)
      (transform (fpir:add_w (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:broadcast128 a_imm8)
      (transform (fpir:broadcast128 (visit-shallow a_imm8 transform)))]
    [(fpir:broadcast256 a_imm8)
      (transform (fpir:broadcast256 (visit-shallow a_imm8 transform)))]
    [(fpir:bwand a b)
      (transform (fpir:bwand (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:bwnot a b)
      (transform (fpir:bwnot (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:bwor a b)
      (transform (fpir:bwor (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:max a b)
      (transform (fpir:max (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:min a b)
      (transform (fpir:min (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:mul a b)
      (transform (fpir:mul (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:mul-vs a b_imm8)
      (transform (fpir:mul-vs (visit-shallow a transform) (visit-shallow b_imm8 transform)))]
    [(fpir:mul_shr a b c)
      (transform (fpir:mul_shr (visit-shallow a transform) (visit-shallow b transform) (visit-shallow c transform)))]
    [(fpir:mul_shr_r a b c)
      (transform (fpir:mul_shr_r (visit-shallow a transform) (visit-shallow b transform) (visit-shallow c transform)))]
    [(fpir:mul_w a b)
      (transform (fpir:mul_w (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:mul_w-vs a b_imm8)
      (transform (fpir:mul_w-vs (visit-shallow a transform) (visit-shallow b_imm8 transform)))]
    [(fpir:narrow a)
      (transform (fpir:narrow (visit-shallow a transform)))]
    [(fpir:narrow_s a)
      (transform (fpir:narrow_s (visit-shallow a transform)))]
    [(fpir:shl a b)
      (transform (fpir:shl (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:shl_r a b)
      (transform (fpir:shl_r (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:shl_w a b)
      (transform (fpir:shl_w (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:shr a b)
      (transform (fpir:shr (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:shr_r a b)
      (transform (fpir:shr_r (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:shr_w a b)
      (transform (fpir:shr_w (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:sub a b)
      (transform (fpir:sub (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:sub_h a b)
      (transform (fpir:sub_h (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:sub_rh a b)
      (transform (fpir:sub_rh (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:sub_s a b)
      (transform (fpir:sub_s (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:sub_w a b)
      (transform (fpir:sub_w (visit-shallow a transform) (visit-shallow b transform)))]
    [(fpir:widen a)
      (transform (fpir:widen (visit-shallow a transform)))]

    [_ (transform expr)]))

