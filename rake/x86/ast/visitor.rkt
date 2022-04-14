#lang rosette/safe

(require
  rake/x86/ast/types
  (only-in racket/base error for/list)
  rosette/lib/match
)

(provide
 (rename-out
  [visit x86:visit]
  [visit-shallow x86:visit-shallow]
))

(define (visit expr transform [arg-pos -1])
  (match expr
    [(x86:ld buf loc align output-type) (transform (x86:ld (visit buf transform) loc align output-type))]
    [(x86:??load id live-data buffer idx-tbl output-type) (transform (x86:??load id live-data (visit buffer transform) idx-tbl output-type) arg-pos)]
    [(x86:??shuffle id lds output-type) (transform (x86:??shuffle id (for/list ([ld lds]) (visit ld transform)) output-type))]
    [(x86:??swizzle id live-data exprs idx-tbl output-type) (transform (x86:??swizzle id live-data (for/list ([expr exprs]) (visit expr transform)) idx-tbl output-type))]
    [(x86:reinterpret Vn) (transform (x86:reinterpret (visit Vn transform)))]
    [(x86:concat-tiles exprs) (transform (x86:concat-tiles (for/list ([expr exprs]) (visit expr transform))))]

    [(x86:packssdw a b)
      (transform (x86:packssdw (visit a transform) (visit b transform)))]
    [(x86:packsswb a b)
      (transform (x86:packsswb (visit a transform) (visit b transform)))]
    [(x86:packuswb a b)
      (transform (x86:packuswb (visit a transform) (visit b transform)))]
    [(x86:paddb a b)
      (transform (x86:paddb (visit a transform) (visit b transform)))]
    [(x86:paddd a b)
      (transform (x86:paddd (visit a transform) (visit b transform)))]
    [(x86:paddq a b)
      (transform (x86:paddq (visit a transform) (visit b transform)))]
    [(x86:paddsb a b)
      (transform (x86:paddsb (visit a transform) (visit b transform)))]
    [(x86:paddsw a b)
      (transform (x86:paddsw (visit a transform) (visit b transform)))]
    [(x86:paddusb a b)
      (transform (x86:paddusb (visit a transform) (visit b transform)))]
    [(x86:paddusw a b)
      (transform (x86:paddusw (visit a transform) (visit b transform)))]
    [(x86:paddw a b)
      (transform (x86:paddw (visit a transform) (visit b transform)))]
    [(x86:pand a b)
      (transform (x86:pand (visit a transform) (visit b transform)))]
    [(x86:pandn a)
      (transform (x86:pandn (visit a transform)))]
    [(x86:pavgb a b)
      (transform (x86:pavgb (visit a transform) (visit b transform)))]
    [(x86:pavgw a b)
      (transform (x86:pavgw (visit a transform) (visit b transform)))]
    [(x86:pcmpeqb a b)
      (transform (x86:pcmpeqb (visit a transform) (visit b transform)))]
    [(x86:pcmpeqd a b)
      (transform (x86:pcmpeqd (visit a transform) (visit b transform)))]
    [(x86:pcmpeqw a b)
      (transform (x86:pcmpeqw (visit a transform) (visit b transform)))]
    [(x86:pcmpgtb a b)
      (transform (x86:pcmpgtb (visit a transform) (visit b transform)))]
    [(x86:pcmpgtd a b)
      (transform (x86:pcmpgtd (visit a transform) (visit b transform)))]
    [(x86:pcmpgtw a b)
      (transform (x86:pcmpgtw (visit a transform) (visit b transform)))]
    [(x86:pmaddwd a b)
      (transform (x86:pmaddwd (visit a transform) (visit b transform)))]
    [(x86:pmaxsw a b)
      (transform (x86:pmaxsw (visit a transform) (visit b transform)))]
    [(x86:pmaxub a b)
      (transform (x86:pmaxub (visit a transform) (visit b transform)))]
    [(x86:pminsw a b)
      (transform (x86:pminsw (visit a transform) (visit b transform)))]
    [(x86:pminub a b)
      (transform (x86:pminub (visit a transform) (visit b transform)))]
    [(x86:pmulhuw a b)
      (transform (x86:pmulhuw (visit a transform) (visit b transform)))]
    [(x86:pmulhw a b)
      (transform (x86:pmulhw (visit a transform) (visit b transform)))]
    [(x86:pmullw a b)
      (transform (x86:pmullw (visit a transform) (visit b transform)))]
    [(x86:pmullw-vs a imm16)
      (transform (x86:pmullw-vs (visit a transform) (visit imm16 transform)))]
    [(x86:pmuludq a b)
      (transform (x86:pmuludq (visit a transform) (visit b transform)))]
    [(x86:pmuludq-vs a imm32)
      (transform (x86:pmuludq-vs (visit a transform) (visit imm32 transform)))]
    [(x86:por a b)
      (transform (x86:por (visit a transform) (visit b transform)))]
    [(x86:psadbw a b)
      (transform (x86:psadbw (visit a transform) (visit b transform)))]
    [(x86:pshufd a imm8)
      (transform (x86:pshufd (visit a transform) (visit imm8 transform)))]
    [(x86:pshufhw a imm8)
      (transform (x86:pshufhw (visit a transform) (visit imm8 transform)))]
    [(x86:pshuflw a imm8)
      (transform (x86:pshuflw (visit a transform) (visit imm8 transform)))]
    [(x86:pslld a imm8)
      (transform (x86:pslld (visit a transform) (visit imm8 transform)))]
    [(x86:pslldq a imm8)
      (transform (x86:pslldq (visit a transform) (visit imm8 transform)))]
    [(x86:psllq a imm8)
      (transform (x86:psllq (visit a transform) (visit imm8 transform)))]
    [(x86:psllw a imm8)
      (transform (x86:psllw (visit a transform) (visit imm8 transform)))]
    [(x86:psrad a imm8)
      (transform (x86:psrad (visit a transform) (visit imm8 transform)))]
    [(x86:psraw a imm8)
      (transform (x86:psraw (visit a transform) (visit imm8 transform)))]
    [(x86:psrld a imm8)
      (transform (x86:psrld (visit a transform) (visit imm8 transform)))]
    [(x86:psrldq a imm8)
      (transform (x86:psrldq (visit a transform) (visit imm8 transform)))]
    [(x86:psrlq a imm8)
      (transform (x86:psrlq (visit a transform) (visit imm8 transform)))]
    [(x86:psrlw a imm8)
      (transform (x86:psrlw (visit a transform) (visit imm8 transform)))]
    [(x86:psubb a b)
      (transform (x86:psubb (visit a transform) (visit b transform)))]
    [(x86:psubd a b)
      (transform (x86:psubd (visit a transform) (visit b transform)))]
    [(x86:psubq a b)
      (transform (x86:psubq (visit a transform) (visit b transform)))]
    [(x86:psubsb a b)
      (transform (x86:psubsb (visit a transform) (visit b transform)))]
    [(x86:psubsw a b)
      (transform (x86:psubsw (visit a transform) (visit b transform)))]
    [(x86:psubusb a b)
      (transform (x86:psubusb (visit a transform) (visit b transform)))]
    [(x86:psubusw a b)
      (transform (x86:psubusw (visit a transform) (visit b transform)))]
    [(x86:psubw a b)
      (transform (x86:psubw (visit a transform) (visit b transform)))]
    [(x86:punpckhbw a b)
      (transform (x86:punpckhbw (visit a transform) (visit b transform)))]
    [(x86:punpckhdq a b)
      (transform (x86:punpckhdq (visit a transform) (visit b transform)))]
    [(x86:punpckhqdq a b)
      (transform (x86:punpckhqdq (visit a transform) (visit b transform)))]
    [(x86:punpckhwd a b)
      (transform (x86:punpckhwd (visit a transform) (visit b transform)))]
    [(x86:punpcklbw a b)
      (transform (x86:punpcklbw (visit a transform) (visit b transform)))]
    [(x86:punpckldq a b)
      (transform (x86:punpckldq (visit a transform) (visit b transform)))]
    [(x86:punpcklqdq a b)
      (transform (x86:punpcklqdq (visit a transform) (visit b transform)))]
    [(x86:punpcklwd a b)
      (transform (x86:punpcklwd (visit a transform) (visit b transform)))]
    [(x86:pxor a b)
      (transform (x86:pxor (visit a transform) (visit b transform)))]
    [(x86:resize a)
      (transform (x86:resize (visit a transform)))]
    [(x86:vbroadcasti128 a)
      (transform (x86:vbroadcasti128 (visit a transform)))]
    [(x86:vinserti128 a b imm8)
      (transform (x86:vinserti128 (visit a transform) (visit b transform) (visit imm8 transform)))]
    [(x86:vpabsb a)
      (transform (x86:vpabsb (visit a transform)))]
    [(x86:vpabsd a)
      (transform (x86:vpabsd (visit a transform)))]
    [(x86:vpabsw a)
      (transform (x86:vpabsw (visit a transform)))]
    [(x86:vpackssdw a b)
      (transform (x86:vpackssdw (visit a transform) (visit b transform)))]
    [(x86:vpacksswb a b)
      (transform (x86:vpacksswb (visit a transform) (visit b transform)))]
    [(x86:vpackusdw a b)
      (transform (x86:vpackusdw (visit a transform) (visit b transform)))]
    [(x86:vpackuswb a b)
      (transform (x86:vpackuswb (visit a transform) (visit b transform)))]
    [(x86:vpaddb a b)
      (transform (x86:vpaddb (visit a transform) (visit b transform)))]
    [(x86:vpaddd a b)
      (transform (x86:vpaddd (visit a transform) (visit b transform)))]
    [(x86:vpaddq a b)
      (transform (x86:vpaddq (visit a transform) (visit b transform)))]
    [(x86:vpaddsb a b)
      (transform (x86:vpaddsb (visit a transform) (visit b transform)))]
    [(x86:vpaddsw a b)
      (transform (x86:vpaddsw (visit a transform) (visit b transform)))]
    [(x86:vpaddusb a b)
      (transform (x86:vpaddusb (visit a transform) (visit b transform)))]
    [(x86:vpaddusw a b)
      (transform (x86:vpaddusw (visit a transform) (visit b transform)))]
    [(x86:vpaddw a b)
      (transform (x86:vpaddw (visit a transform) (visit b transform)))]
    [(x86:vpalignr a b imm8)
      (transform (x86:vpalignr (visit a transform) (visit b transform) (visit imm8 transform)))]
    [(x86:vpand a b)
      (transform (x86:vpand (visit a transform) (visit b transform)))]
    [(x86:vpandn a)
      (transform (x86:vpandn (visit a transform)))]
    [(x86:vpavgb a b)
      (transform (x86:vpavgb (visit a transform) (visit b transform)))]
    [(x86:vpavgw a b)
      (transform (x86:vpavgw (visit a transform) (visit b transform)))]
    [(x86:vpblendd a b imm8)
      (transform (x86:vpblendd (visit a transform) (visit b transform) (visit imm8 transform)))]
    [(x86:vpblendd_128 a b imm8)
      (transform (x86:vpblendd_128 (visit a transform) (visit b transform) (visit imm8 transform)))]
    [(x86:vpblendvb a b c)
      (transform (x86:vpblendvb (visit a transform) (visit b transform) (visit c transform)))]
    [(x86:vpblendw a b imm8)
      (transform (x86:vpblendw (visit a transform) (visit b transform) (visit imm8 transform)))]
    [(x86:vpbroadcastb imm8)
      (transform (x86:vpbroadcastb (visit imm8 transform)))]
    [(x86:vpbroadcastb_128 imm8)
      (transform (x86:vpbroadcastb_128 (visit imm8 transform)))]
    [(x86:vpbroadcastd imm32)
      (transform (x86:vpbroadcastd (visit imm32 transform)))]
    [(x86:vpbroadcastd_128 imm32)
      (transform (x86:vpbroadcastd_128 (visit imm32 transform)))]
    [(x86:vpbroadcastq imm64)
      (transform (x86:vpbroadcastq (visit imm64 transform)))]
    [(x86:vpbroadcastq_128 imm64)
      (transform (x86:vpbroadcastq_128 (visit imm64 transform)))]
    [(x86:vpbroadcastw imm16)
      (transform (x86:vpbroadcastw (visit imm16 transform)))]
    [(x86:vpbroadcastw_128 imm16)
      (transform (x86:vpbroadcastw_128 (visit imm16 transform)))]
    [(x86:vpcmpeqb a b)
      (transform (x86:vpcmpeqb (visit a transform) (visit b transform)))]
    [(x86:vpcmpeqd a b)
      (transform (x86:vpcmpeqd (visit a transform) (visit b transform)))]
    [(x86:vpcmpeqq a b)
      (transform (x86:vpcmpeqq (visit a transform) (visit b transform)))]
    [(x86:vpcmpeqw a b)
      (transform (x86:vpcmpeqw (visit a transform) (visit b transform)))]
    [(x86:vpcmpgtb a b)
      (transform (x86:vpcmpgtb (visit a transform) (visit b transform)))]
    [(x86:vpcmpgtd a b)
      (transform (x86:vpcmpgtd (visit a transform) (visit b transform)))]
    [(x86:vpcmpgtq a b)
      (transform (x86:vpcmpgtq (visit a transform) (visit b transform)))]
    [(x86:vpcmpgtw a b)
      (transform (x86:vpcmpgtw (visit a transform) (visit b transform)))]
    [(x86:vperm2f128 a b imm8)
      (transform (x86:vperm2f128 (visit a transform) (visit b transform) (visit imm8 transform)))]
    [(x86:vperm2i128 a b imm8)
      (transform (x86:vperm2i128 (visit a transform) (visit b transform) (visit imm8 transform)))]
    [(x86:vpermd a b)
      (transform (x86:vpermd (visit a transform) (visit b transform)))]
    [(x86:vpermq a imm8)
      (transform (x86:vpermq (visit a transform) (visit imm8 transform)))]
    [(x86:vphaddd a b)
      (transform (x86:vphaddd (visit a transform) (visit b transform)))]
    [(x86:vphaddsw a b)
      (transform (x86:vphaddsw (visit a transform) (visit b transform)))]
    [(x86:vphaddw a b)
      (transform (x86:vphaddw (visit a transform) (visit b transform)))]
    [(x86:vphsubd a b)
      (transform (x86:vphsubd (visit a transform) (visit b transform)))]
    [(x86:vphsubsw a b)
      (transform (x86:vphsubsw (visit a transform) (visit b transform)))]
    [(x86:vphsubw a b)
      (transform (x86:vphsubw (visit a transform) (visit b transform)))]
    [(x86:vpmaddubsw a b)
      (transform (x86:vpmaddubsw (visit a transform) (visit b transform)))]
    [(x86:vpmaddwd a b)
      (transform (x86:vpmaddwd (visit a transform) (visit b transform)))]
    [(x86:vpmaxsb a b)
      (transform (x86:vpmaxsb (visit a transform) (visit b transform)))]
    [(x86:vpmaxsd a b)
      (transform (x86:vpmaxsd (visit a transform) (visit b transform)))]
    [(x86:vpmaxsw a b)
      (transform (x86:vpmaxsw (visit a transform) (visit b transform)))]
    [(x86:vpmaxub a b)
      (transform (x86:vpmaxub (visit a transform) (visit b transform)))]
    [(x86:vpmaxud a b)
      (transform (x86:vpmaxud (visit a transform) (visit b transform)))]
    [(x86:vpmaxuw a b)
      (transform (x86:vpmaxuw (visit a transform) (visit b transform)))]
    [(x86:vpminsb a b)
      (transform (x86:vpminsb (visit a transform) (visit b transform)))]
    [(x86:vpminsd a b)
      (transform (x86:vpminsd (visit a transform) (visit b transform)))]
    [(x86:vpminsw a b)
      (transform (x86:vpminsw (visit a transform) (visit b transform)))]
    [(x86:vpminub a b)
      (transform (x86:vpminub (visit a transform) (visit b transform)))]
    [(x86:vpminud a b)
      (transform (x86:vpminud (visit a transform) (visit b transform)))]
    [(x86:vpminuw a b)
      (transform (x86:vpminuw (visit a transform) (visit b transform)))]
    [(x86:vpmovsxbd a)
      (transform (x86:vpmovsxbd (visit a transform)))]
    [(x86:vpmovsxbq a)
      (transform (x86:vpmovsxbq (visit a transform)))]
    [(x86:vpmovsxbw a)
      (transform (x86:vpmovsxbw (visit a transform)))]
    [(x86:vpmovsxdq a)
      (transform (x86:vpmovsxdq (visit a transform)))]
    [(x86:vpmovsxwd a)
      (transform (x86:vpmovsxwd (visit a transform)))]
    [(x86:vpmovsxwq a)
      (transform (x86:vpmovsxwq (visit a transform)))]
    [(x86:vpmovzxbd a)
      (transform (x86:vpmovzxbd (visit a transform)))]
    [(x86:vpmovzxbq a)
      (transform (x86:vpmovzxbq (visit a transform)))]
    [(x86:vpmovzxbw a)
      (transform (x86:vpmovzxbw (visit a transform)))]
    [(x86:vpmovzxbw_s a)
      (transform (x86:vpmovzxbw_s (visit a transform)))]
    [(x86:vpmovzxdq a)
      (transform (x86:vpmovzxdq (visit a transform)))]
    [(x86:vpmovzxwd a)
      (transform (x86:vpmovzxwd (visit a transform)))]
    [(x86:vpmovzxwq a)
      (transform (x86:vpmovzxwq (visit a transform)))]
    [(x86:vpmuldq a b)
      (transform (x86:vpmuldq (visit a transform) (visit b transform)))]
    [(x86:vpmuldq-vs a imm32)
      (transform (x86:vpmuldq-vs (visit a transform) (visit imm32 transform)))]
    [(x86:vpmulhrsw a b)
      (transform (x86:vpmulhrsw (visit a transform) (visit b transform)))]
    [(x86:vpmulhuw a b)
      (transform (x86:vpmulhuw (visit a transform) (visit b transform)))]
    [(x86:vpmulhw a b)
      (transform (x86:vpmulhw (visit a transform) (visit b transform)))]
    [(x86:vpmulld a b)
      (transform (x86:vpmulld (visit a transform) (visit b transform)))]
    [(x86:vpmulld-vs a imm32)
      (transform (x86:vpmulld-vs (visit a transform) (visit imm32 transform)))]
    [(x86:vpmullw a b)
      (transform (x86:vpmullw (visit a transform) (visit b transform)))]
    [(x86:vpmullw-vs a imm16)
      (transform (x86:vpmullw-vs (visit a transform) (visit imm16 transform)))]
    [(x86:vpmuludq a b)
      (transform (x86:vpmuludq (visit a transform) (visit b transform)))]
    [(x86:vpmuludq-vs a imm32)
      (transform (x86:vpmuludq-vs (visit a transform) (visit imm32 transform)))]
    [(x86:vpor a b)
      (transform (x86:vpor (visit a transform) (visit b transform)))]
    [(x86:vpsadbw a b)
      (transform (x86:vpsadbw (visit a transform) (visit b transform)))]
    [(x86:vpshufb a b)
      (transform (x86:vpshufb (visit a transform) (visit b transform)))]
    [(x86:vpshufd a imm8)
      (transform (x86:vpshufd (visit a transform) (visit imm8 transform)))]
    [(x86:vpshufhw a imm8)
      (transform (x86:vpshufhw (visit a transform) (visit imm8 transform)))]
    [(x86:vpshuflw a imm8)
      (transform (x86:vpshuflw (visit a transform) (visit imm8 transform)))]
    [(x86:vpsignb a b)
      (transform (x86:vpsignb (visit a transform) (visit b transform)))]
    [(x86:vpsignd a b)
      (transform (x86:vpsignd (visit a transform) (visit b transform)))]
    [(x86:vpsignw a b)
      (transform (x86:vpsignw (visit a transform) (visit b transform)))]
    [(x86:vpslld a imm8)
      (transform (x86:vpslld (visit a transform) (visit imm8 transform)))]
    [(x86:vpslldq a imm8)
      (transform (x86:vpslldq (visit a transform) (visit imm8 transform)))]
    [(x86:vpsllq a imm8)
      (transform (x86:vpsllq (visit a transform) (visit imm8 transform)))]
    [(x86:vpsllvd a b)
      (transform (x86:vpsllvd (visit a transform) (visit b transform)))]
    [(x86:vpsllvq a b)
      (transform (x86:vpsllvq (visit a transform) (visit b transform)))]
    [(x86:vpsllw a imm8)
      (transform (x86:vpsllw (visit a transform) (visit imm8 transform)))]
    [(x86:vpsrad a imm8)
      (transform (x86:vpsrad (visit a transform) (visit imm8 transform)))]
    [(x86:vpsravd a b)
      (transform (x86:vpsravd (visit a transform) (visit b transform)))]
    [(x86:vpsraw a imm8)
      (transform (x86:vpsraw (visit a transform) (visit imm8 transform)))]
    [(x86:vpsrld a imm8)
      (transform (x86:vpsrld (visit a transform) (visit imm8 transform)))]
    [(x86:vpsrldq a imm8)
      (transform (x86:vpsrldq (visit a transform) (visit imm8 transform)))]
    [(x86:vpsrlq a imm8)
      (transform (x86:vpsrlq (visit a transform) (visit imm8 transform)))]
    [(x86:vpsrlvd a b)
      (transform (x86:vpsrlvd (visit a transform) (visit b transform)))]
    [(x86:vpsrlvq a b)
      (transform (x86:vpsrlvq (visit a transform) (visit b transform)))]
    [(x86:vpsrlw a imm8)
      (transform (x86:vpsrlw (visit a transform) (visit imm8 transform)))]
    [(x86:vpsubb a b)
      (transform (x86:vpsubb (visit a transform) (visit b transform)))]
    [(x86:vpsubd a b)
      (transform (x86:vpsubd (visit a transform) (visit b transform)))]
    [(x86:vpsubq a b)
      (transform (x86:vpsubq (visit a transform) (visit b transform)))]
    [(x86:vpsubsb a b)
      (transform (x86:vpsubsb (visit a transform) (visit b transform)))]
    [(x86:vpsubsw a b)
      (transform (x86:vpsubsw (visit a transform) (visit b transform)))]
    [(x86:vpsubusb a b)
      (transform (x86:vpsubusb (visit a transform) (visit b transform)))]
    [(x86:vpsubusw a b)
      (transform (x86:vpsubusw (visit a transform) (visit b transform)))]
    [(x86:vpsubw a b)
      (transform (x86:vpsubw (visit a transform) (visit b transform)))]
    [(x86:vpunpckhbw a b)
      (transform (x86:vpunpckhbw (visit a transform) (visit b transform)))]
    [(x86:vpunpckhdq a b)
      (transform (x86:vpunpckhdq (visit a transform) (visit b transform)))]
    [(x86:vpunpckhqdq a b)
      (transform (x86:vpunpckhqdq (visit a transform) (visit b transform)))]
    [(x86:vpunpckhwd a b)
      (transform (x86:vpunpckhwd (visit a transform) (visit b transform)))]
    [(x86:vpunpcklbw a b)
      (transform (x86:vpunpcklbw (visit a transform) (visit b transform)))]
    [(x86:vpunpckldq a b)
      (transform (x86:vpunpckldq (visit a transform) (visit b transform)))]
    [(x86:vpunpcklqdq a b)
      (transform (x86:vpunpcklqdq (visit a transform) (visit b transform)))]
    [(x86:vpunpcklwd a b)
      (transform (x86:vpunpcklwd (visit a transform) (visit b transform)))]
    [(x86:vpxor a b)
      (transform (x86:vpxor (visit a transform) (visit b transform)))]

    [_ (transform expr)]))

(define (visit-shallow expr transform [arg-pos -1])
  (match expr
    [(x86:ld buf loc align output-type) (transform (x86:ld (visit-shallow buf transform) loc align output-type))]
    [(x86:??load id live-data buffer idx-tbl output-type) (transform (x86:??load id live-data buffer idx-tbl output-type) arg-pos)]
    [(x86:??shuffle id lds output-type) (transform expr)]
    [(x86:??swizzle id live-data exprs idx-tbl output-type) (transform expr)]
    [(x86:reinterpret Vn) (transform (x86:reinterpret (visit-shallow Vn transform)))]
    [(x86:concat-tiles exprs) (transform (x86:concat-tiles (for/list ([expr exprs]) (visit expr transform))))]

    [(x86:packssdw a b)
      (transform (x86:packssdw (visit a transform) (visit b transform)))]
    [(x86:packsswb a b)
      (transform (x86:packsswb (visit a transform) (visit b transform)))]
    [(x86:packuswb a b)
      (transform (x86:packuswb (visit a transform) (visit b transform)))]
    [(x86:paddb a b)
      (transform (x86:paddb (visit a transform) (visit b transform)))]
    [(x86:paddd a b)
      (transform (x86:paddd (visit a transform) (visit b transform)))]
    [(x86:paddq a b)
      (transform (x86:paddq (visit a transform) (visit b transform)))]
    [(x86:paddsb a b)
      (transform (x86:paddsb (visit a transform) (visit b transform)))]
    [(x86:paddsw a b)
      (transform (x86:paddsw (visit a transform) (visit b transform)))]
    [(x86:paddusb a b)
      (transform (x86:paddusb (visit a transform) (visit b transform)))]
    [(x86:paddusw a b)
      (transform (x86:paddusw (visit a transform) (visit b transform)))]
    [(x86:paddw a b)
      (transform (x86:paddw (visit a transform) (visit b transform)))]
    [(x86:pand a b)
      (transform (x86:pand (visit a transform) (visit b transform)))]
    [(x86:pandn a)
      (transform (x86:pandn (visit a transform)))]
    [(x86:pavgb a b)
      (transform (x86:pavgb (visit a transform) (visit b transform)))]
    [(x86:pavgw a b)
      (transform (x86:pavgw (visit a transform) (visit b transform)))]
    [(x86:pcmpeqb a b)
      (transform (x86:pcmpeqb (visit a transform) (visit b transform)))]
    [(x86:pcmpeqd a b)
      (transform (x86:pcmpeqd (visit a transform) (visit b transform)))]
    [(x86:pcmpeqw a b)
      (transform (x86:pcmpeqw (visit a transform) (visit b transform)))]
    [(x86:pcmpgtb a b)
      (transform (x86:pcmpgtb (visit a transform) (visit b transform)))]
    [(x86:pcmpgtd a b)
      (transform (x86:pcmpgtd (visit a transform) (visit b transform)))]
    [(x86:pcmpgtw a b)
      (transform (x86:pcmpgtw (visit a transform) (visit b transform)))]
    [(x86:pmaddwd a b)
      (transform (x86:pmaddwd (visit a transform) (visit b transform)))]
    [(x86:pmaxsw a b)
      (transform (x86:pmaxsw (visit a transform) (visit b transform)))]
    [(x86:pmaxub a b)
      (transform (x86:pmaxub (visit a transform) (visit b transform)))]
    [(x86:pminsw a b)
      (transform (x86:pminsw (visit a transform) (visit b transform)))]
    [(x86:pminub a b)
      (transform (x86:pminub (visit a transform) (visit b transform)))]
    [(x86:pmulhuw a b)
      (transform (x86:pmulhuw (visit a transform) (visit b transform)))]
    [(x86:pmulhw a b)
      (transform (x86:pmulhw (visit a transform) (visit b transform)))]
    [(x86:pmullw a b)
      (transform (x86:pmullw (visit a transform) (visit b transform)))]
    [(x86:pmullw-vs a imm16)
      (transform (x86:pmullw-vs (visit a transform) (visit imm16 transform)))]
    [(x86:pmuludq a b)
      (transform (x86:pmuludq (visit a transform) (visit b transform)))]
    [(x86:pmuludq-vs a imm32)
      (transform (x86:pmuludq-vs (visit a transform) (visit imm32 transform)))]
    [(x86:por a b)
      (transform (x86:por (visit a transform) (visit b transform)))]
    [(x86:psadbw a b)
      (transform (x86:psadbw (visit a transform) (visit b transform)))]
    [(x86:pshufd a imm8)
      (transform (x86:pshufd (visit a transform) (visit imm8 transform)))]
    [(x86:pshufhw a imm8)
      (transform (x86:pshufhw (visit a transform) (visit imm8 transform)))]
    [(x86:pshuflw a imm8)
      (transform (x86:pshuflw (visit a transform) (visit imm8 transform)))]
    [(x86:pslld a imm8)
      (transform (x86:pslld (visit a transform) (visit imm8 transform)))]
    [(x86:pslldq a imm8)
      (transform (x86:pslldq (visit a transform) (visit imm8 transform)))]
    [(x86:psllq a imm8)
      (transform (x86:psllq (visit a transform) (visit imm8 transform)))]
    [(x86:psllw a imm8)
      (transform (x86:psllw (visit a transform) (visit imm8 transform)))]
    [(x86:psrad a imm8)
      (transform (x86:psrad (visit a transform) (visit imm8 transform)))]
    [(x86:psraw a imm8)
      (transform (x86:psraw (visit a transform) (visit imm8 transform)))]
    [(x86:psrld a imm8)
      (transform (x86:psrld (visit a transform) (visit imm8 transform)))]
    [(x86:psrldq a imm8)
      (transform (x86:psrldq (visit a transform) (visit imm8 transform)))]
    [(x86:psrlq a imm8)
      (transform (x86:psrlq (visit a transform) (visit imm8 transform)))]
    [(x86:psrlw a imm8)
      (transform (x86:psrlw (visit a transform) (visit imm8 transform)))]
    [(x86:psubb a b)
      (transform (x86:psubb (visit a transform) (visit b transform)))]
    [(x86:psubd a b)
      (transform (x86:psubd (visit a transform) (visit b transform)))]
    [(x86:psubq a b)
      (transform (x86:psubq (visit a transform) (visit b transform)))]
    [(x86:psubsb a b)
      (transform (x86:psubsb (visit a transform) (visit b transform)))]
    [(x86:psubsw a b)
      (transform (x86:psubsw (visit a transform) (visit b transform)))]
    [(x86:psubusb a b)
      (transform (x86:psubusb (visit a transform) (visit b transform)))]
    [(x86:psubusw a b)
      (transform (x86:psubusw (visit a transform) (visit b transform)))]
    [(x86:psubw a b)
      (transform (x86:psubw (visit a transform) (visit b transform)))]
    [(x86:punpckhbw a b)
      (transform (x86:punpckhbw (visit a transform) (visit b transform)))]
    [(x86:punpckhdq a b)
      (transform (x86:punpckhdq (visit a transform) (visit b transform)))]
    [(x86:punpckhqdq a b)
      (transform (x86:punpckhqdq (visit a transform) (visit b transform)))]
    [(x86:punpckhwd a b)
      (transform (x86:punpckhwd (visit a transform) (visit b transform)))]
    [(x86:punpcklbw a b)
      (transform (x86:punpcklbw (visit a transform) (visit b transform)))]
    [(x86:punpckldq a b)
      (transform (x86:punpckldq (visit a transform) (visit b transform)))]
    [(x86:punpcklqdq a b)
      (transform (x86:punpcklqdq (visit a transform) (visit b transform)))]
    [(x86:punpcklwd a b)
      (transform (x86:punpcklwd (visit a transform) (visit b transform)))]
    [(x86:pxor a b)
      (transform (x86:pxor (visit a transform) (visit b transform)))]
    [(x86:resize a)
      (transform (x86:resize (visit a transform)))]
    [(x86:vbroadcasti128 a)
      (transform (x86:vbroadcasti128 (visit a transform)))]
    [(x86:vinserti128 a b imm8)
      (transform (x86:vinserti128 (visit a transform) (visit b transform) (visit imm8 transform)))]
    [(x86:vpabsb a)
      (transform (x86:vpabsb (visit a transform)))]
    [(x86:vpabsd a)
      (transform (x86:vpabsd (visit a transform)))]
    [(x86:vpabsw a)
      (transform (x86:vpabsw (visit a transform)))]
    [(x86:vpackssdw a b)
      (transform (x86:vpackssdw (visit a transform) (visit b transform)))]
    [(x86:vpacksswb a b)
      (transform (x86:vpacksswb (visit a transform) (visit b transform)))]
    [(x86:vpackusdw a b)
      (transform (x86:vpackusdw (visit a transform) (visit b transform)))]
    [(x86:vpackuswb a b)
      (transform (x86:vpackuswb (visit a transform) (visit b transform)))]
    [(x86:vpaddb a b)
      (transform (x86:vpaddb (visit a transform) (visit b transform)))]
    [(x86:vpaddd a b)
      (transform (x86:vpaddd (visit a transform) (visit b transform)))]
    [(x86:vpaddq a b)
      (transform (x86:vpaddq (visit a transform) (visit b transform)))]
    [(x86:vpaddsb a b)
      (transform (x86:vpaddsb (visit a transform) (visit b transform)))]
    [(x86:vpaddsw a b)
      (transform (x86:vpaddsw (visit a transform) (visit b transform)))]
    [(x86:vpaddusb a b)
      (transform (x86:vpaddusb (visit a transform) (visit b transform)))]
    [(x86:vpaddusw a b)
      (transform (x86:vpaddusw (visit a transform) (visit b transform)))]
    [(x86:vpaddw a b)
      (transform (x86:vpaddw (visit a transform) (visit b transform)))]
    [(x86:vpalignr a b imm8)
      (transform (x86:vpalignr (visit a transform) (visit b transform) (visit imm8 transform)))]
    [(x86:vpand a b)
      (transform (x86:vpand (visit a transform) (visit b transform)))]
    [(x86:vpandn a)
      (transform (x86:vpandn (visit a transform)))]
    [(x86:vpavgb a b)
      (transform (x86:vpavgb (visit a transform) (visit b transform)))]
    [(x86:vpavgw a b)
      (transform (x86:vpavgw (visit a transform) (visit b transform)))]
    [(x86:vpblendd a b imm8)
      (transform (x86:vpblendd (visit a transform) (visit b transform) (visit imm8 transform)))]
    [(x86:vpblendd_128 a b imm8)
      (transform (x86:vpblendd_128 (visit a transform) (visit b transform) (visit imm8 transform)))]
    [(x86:vpblendvb a b c)
      (transform (x86:vpblendvb (visit a transform) (visit b transform) (visit c transform)))]
    [(x86:vpblendw a b imm8)
      (transform (x86:vpblendw (visit a transform) (visit b transform) (visit imm8 transform)))]
    [(x86:vpbroadcastb imm8)
      (transform (x86:vpbroadcastb (visit imm8 transform)))]
    [(x86:vpbroadcastb_128 imm8)
      (transform (x86:vpbroadcastb_128 (visit imm8 transform)))]
    [(x86:vpbroadcastd imm32)
      (transform (x86:vpbroadcastd (visit imm32 transform)))]
    [(x86:vpbroadcastd_128 imm32)
      (transform (x86:vpbroadcastd_128 (visit imm32 transform)))]
    [(x86:vpbroadcastq imm64)
      (transform (x86:vpbroadcastq (visit imm64 transform)))]
    [(x86:vpbroadcastq_128 imm64)
      (transform (x86:vpbroadcastq_128 (visit imm64 transform)))]
    [(x86:vpbroadcastw imm16)
      (transform (x86:vpbroadcastw (visit imm16 transform)))]
    [(x86:vpbroadcastw_128 imm16)
      (transform (x86:vpbroadcastw_128 (visit imm16 transform)))]
    [(x86:vpcmpeqb a b)
      (transform (x86:vpcmpeqb (visit a transform) (visit b transform)))]
    [(x86:vpcmpeqd a b)
      (transform (x86:vpcmpeqd (visit a transform) (visit b transform)))]
    [(x86:vpcmpeqq a b)
      (transform (x86:vpcmpeqq (visit a transform) (visit b transform)))]
    [(x86:vpcmpeqw a b)
      (transform (x86:vpcmpeqw (visit a transform) (visit b transform)))]
    [(x86:vpcmpgtb a b)
      (transform (x86:vpcmpgtb (visit a transform) (visit b transform)))]
    [(x86:vpcmpgtd a b)
      (transform (x86:vpcmpgtd (visit a transform) (visit b transform)))]
    [(x86:vpcmpgtq a b)
      (transform (x86:vpcmpgtq (visit a transform) (visit b transform)))]
    [(x86:vpcmpgtw a b)
      (transform (x86:vpcmpgtw (visit a transform) (visit b transform)))]
    [(x86:vperm2f128 a b imm8)
      (transform (x86:vperm2f128 (visit a transform) (visit b transform) (visit imm8 transform)))]
    [(x86:vperm2i128 a b imm8)
      (transform (x86:vperm2i128 (visit a transform) (visit b transform) (visit imm8 transform)))]
    [(x86:vpermd a b)
      (transform (x86:vpermd (visit a transform) (visit b transform)))]
    [(x86:vpermq a imm8)
      (transform (x86:vpermq (visit a transform) (visit imm8 transform)))]
    [(x86:vphaddd a b)
      (transform (x86:vphaddd (visit a transform) (visit b transform)))]
    [(x86:vphaddsw a b)
      (transform (x86:vphaddsw (visit a transform) (visit b transform)))]
    [(x86:vphaddw a b)
      (transform (x86:vphaddw (visit a transform) (visit b transform)))]
    [(x86:vphsubd a b)
      (transform (x86:vphsubd (visit a transform) (visit b transform)))]
    [(x86:vphsubsw a b)
      (transform (x86:vphsubsw (visit a transform) (visit b transform)))]
    [(x86:vphsubw a b)
      (transform (x86:vphsubw (visit a transform) (visit b transform)))]
    [(x86:vpmaddubsw a b)
      (transform (x86:vpmaddubsw (visit a transform) (visit b transform)))]
    [(x86:vpmaddwd a b)
      (transform (x86:vpmaddwd (visit a transform) (visit b transform)))]
    [(x86:vpmaxsb a b)
      (transform (x86:vpmaxsb (visit a transform) (visit b transform)))]
    [(x86:vpmaxsd a b)
      (transform (x86:vpmaxsd (visit a transform) (visit b transform)))]
    [(x86:vpmaxsw a b)
      (transform (x86:vpmaxsw (visit a transform) (visit b transform)))]
    [(x86:vpmaxub a b)
      (transform (x86:vpmaxub (visit a transform) (visit b transform)))]
    [(x86:vpmaxud a b)
      (transform (x86:vpmaxud (visit a transform) (visit b transform)))]
    [(x86:vpmaxuw a b)
      (transform (x86:vpmaxuw (visit a transform) (visit b transform)))]
    [(x86:vpminsb a b)
      (transform (x86:vpminsb (visit a transform) (visit b transform)))]
    [(x86:vpminsd a b)
      (transform (x86:vpminsd (visit a transform) (visit b transform)))]
    [(x86:vpminsw a b)
      (transform (x86:vpminsw (visit a transform) (visit b transform)))]
    [(x86:vpminub a b)
      (transform (x86:vpminub (visit a transform) (visit b transform)))]
    [(x86:vpminud a b)
      (transform (x86:vpminud (visit a transform) (visit b transform)))]
    [(x86:vpminuw a b)
      (transform (x86:vpminuw (visit a transform) (visit b transform)))]
    [(x86:vpmovsxbd a)
      (transform (x86:vpmovsxbd (visit a transform)))]
    [(x86:vpmovsxbq a)
      (transform (x86:vpmovsxbq (visit a transform)))]
    [(x86:vpmovsxbw a)
      (transform (x86:vpmovsxbw (visit a transform)))]
    [(x86:vpmovsxdq a)
      (transform (x86:vpmovsxdq (visit a transform)))]
    [(x86:vpmovsxwd a)
      (transform (x86:vpmovsxwd (visit a transform)))]
    [(x86:vpmovsxwq a)
      (transform (x86:vpmovsxwq (visit a transform)))]
    [(x86:vpmovzxbd a)
      (transform (x86:vpmovzxbd (visit a transform)))]
    [(x86:vpmovzxbq a)
      (transform (x86:vpmovzxbq (visit a transform)))]
    [(x86:vpmovzxbw a)
      (transform (x86:vpmovzxbw (visit a transform)))]
    [(x86:vpmovzxbw_s a)
      (transform (x86:vpmovzxbw_s (visit a transform)))]
    [(x86:vpmovzxdq a)
      (transform (x86:vpmovzxdq (visit a transform)))]
    [(x86:vpmovzxwd a)
      (transform (x86:vpmovzxwd (visit a transform)))]
    [(x86:vpmovzxwq a)
      (transform (x86:vpmovzxwq (visit a transform)))]
    [(x86:vpmuldq a b)
      (transform (x86:vpmuldq (visit a transform) (visit b transform)))]
    [(x86:vpmuldq-vs a imm32)
      (transform (x86:vpmuldq-vs (visit a transform) (visit imm32 transform)))]
    [(x86:vpmulhrsw a b)
      (transform (x86:vpmulhrsw (visit a transform) (visit b transform)))]
    [(x86:vpmulhuw a b)
      (transform (x86:vpmulhuw (visit a transform) (visit b transform)))]
    [(x86:vpmulhw a b)
      (transform (x86:vpmulhw (visit a transform) (visit b transform)))]
    [(x86:vpmulld a b)
      (transform (x86:vpmulld (visit a transform) (visit b transform)))]
    [(x86:vpmulld-vs a imm32)
      (transform (x86:vpmulld-vs (visit a transform) (visit imm32 transform)))]
    [(x86:vpmullw a b)
      (transform (x86:vpmullw (visit a transform) (visit b transform)))]
    [(x86:vpmullw-vs a imm16)
      (transform (x86:vpmullw-vs (visit a transform) (visit imm16 transform)))]
    [(x86:vpmuludq a b)
      (transform (x86:vpmuludq (visit a transform) (visit b transform)))]
    [(x86:vpmuludq-vs a imm32)
      (transform (x86:vpmuludq-vs (visit a transform) (visit imm32 transform)))]
    [(x86:vpor a b)
      (transform (x86:vpor (visit a transform) (visit b transform)))]
    [(x86:vpsadbw a b)
      (transform (x86:vpsadbw (visit a transform) (visit b transform)))]
    [(x86:vpshufb a b)
      (transform (x86:vpshufb (visit a transform) (visit b transform)))]
    [(x86:vpshufd a imm8)
      (transform (x86:vpshufd (visit a transform) (visit imm8 transform)))]
    [(x86:vpshufhw a imm8)
      (transform (x86:vpshufhw (visit a transform) (visit imm8 transform)))]
    [(x86:vpshuflw a imm8)
      (transform (x86:vpshuflw (visit a transform) (visit imm8 transform)))]
    [(x86:vpsignb a b)
      (transform (x86:vpsignb (visit a transform) (visit b transform)))]
    [(x86:vpsignd a b)
      (transform (x86:vpsignd (visit a transform) (visit b transform)))]
    [(x86:vpsignw a b)
      (transform (x86:vpsignw (visit a transform) (visit b transform)))]
    [(x86:vpslld a imm8)
      (transform (x86:vpslld (visit a transform) (visit imm8 transform)))]
    [(x86:vpslldq a imm8)
      (transform (x86:vpslldq (visit a transform) (visit imm8 transform)))]
    [(x86:vpsllq a imm8)
      (transform (x86:vpsllq (visit a transform) (visit imm8 transform)))]
    [(x86:vpsllvd a b)
      (transform (x86:vpsllvd (visit a transform) (visit b transform)))]
    [(x86:vpsllvq a b)
      (transform (x86:vpsllvq (visit a transform) (visit b transform)))]
    [(x86:vpsllw a imm8)
      (transform (x86:vpsllw (visit a transform) (visit imm8 transform)))]
    [(x86:vpsrad a imm8)
      (transform (x86:vpsrad (visit a transform) (visit imm8 transform)))]
    [(x86:vpsravd a b)
      (transform (x86:vpsravd (visit a transform) (visit b transform)))]
    [(x86:vpsraw a imm8)
      (transform (x86:vpsraw (visit a transform) (visit imm8 transform)))]
    [(x86:vpsrld a imm8)
      (transform (x86:vpsrld (visit a transform) (visit imm8 transform)))]
    [(x86:vpsrldq a imm8)
      (transform (x86:vpsrldq (visit a transform) (visit imm8 transform)))]
    [(x86:vpsrlq a imm8)
      (transform (x86:vpsrlq (visit a transform) (visit imm8 transform)))]
    [(x86:vpsrlvd a b)
      (transform (x86:vpsrlvd (visit a transform) (visit b transform)))]
    [(x86:vpsrlvq a b)
      (transform (x86:vpsrlvq (visit a transform) (visit b transform)))]
    [(x86:vpsrlw a imm8)
      (transform (x86:vpsrlw (visit a transform) (visit imm8 transform)))]
    [(x86:vpsubb a b)
      (transform (x86:vpsubb (visit a transform) (visit b transform)))]
    [(x86:vpsubd a b)
      (transform (x86:vpsubd (visit a transform) (visit b transform)))]
    [(x86:vpsubq a b)
      (transform (x86:vpsubq (visit a transform) (visit b transform)))]
    [(x86:vpsubsb a b)
      (transform (x86:vpsubsb (visit a transform) (visit b transform)))]
    [(x86:vpsubsw a b)
      (transform (x86:vpsubsw (visit a transform) (visit b transform)))]
    [(x86:vpsubusb a b)
      (transform (x86:vpsubusb (visit a transform) (visit b transform)))]
    [(x86:vpsubusw a b)
      (transform (x86:vpsubusw (visit a transform) (visit b transform)))]
    [(x86:vpsubw a b)
      (transform (x86:vpsubw (visit a transform) (visit b transform)))]
    [(x86:vpunpckhbw a b)
      (transform (x86:vpunpckhbw (visit a transform) (visit b transform)))]
    [(x86:vpunpckhdq a b)
      (transform (x86:vpunpckhdq (visit a transform) (visit b transform)))]
    [(x86:vpunpckhqdq a b)
      (transform (x86:vpunpckhqdq (visit a transform) (visit b transform)))]
    [(x86:vpunpckhwd a b)
      (transform (x86:vpunpckhwd (visit a transform) (visit b transform)))]
    [(x86:vpunpcklbw a b)
      (transform (x86:vpunpcklbw (visit a transform) (visit b transform)))]
    [(x86:vpunpckldq a b)
      (transform (x86:vpunpckldq (visit a transform) (visit b transform)))]
    [(x86:vpunpcklqdq a b)
      (transform (x86:vpunpcklqdq (visit a transform) (visit b transform)))]
    [(x86:vpunpcklwd a b)
      (transform (x86:vpunpcklwd (visit a transform) (visit b transform)))]
    [(x86:vpxor a b)
      (transform (x86:vpxor (visit a transform) (visit b transform)))]

    [_ (transform expr)]))
