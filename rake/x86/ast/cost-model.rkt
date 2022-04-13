#lang rosette/safe

(require
  (only-in racket/base error)
  rosette/lib/match
  rake/x86/ast/types
  rake/arm/ast/visitor
  rosette/lib/destruct
)

(provide (prefix-out x86: (all-defined-out)))

;; Auto-generated cost model of Skylake latencies.
(define (instr-cost instr)
  (cond
    [(eq? instr x86:reinterpret) 0]
    [(eq? instr x86:resize) 0]
    [(eq? instr x86:vbroadcasti128) 7]
    [(eq? instr x86:vpabsb) 1]
    [(eq? instr x86:vpabsd) 1]
    [(eq? instr x86:vpabsw) 1]
    [(eq? instr x86:vpackssdw) 1]
    [(eq? instr x86:vpacksswb) 1]
    [(eq? instr x86:vpackusdw) 1]
    [(eq? instr x86:vpackuswb) 1]
    [(eq? instr x86:vpaddb) 1]
    [(eq? instr x86:vpaddd) 1]
    [(eq? instr x86:vpaddq) 1]
    [(eq? instr x86:vpaddsb) 1]
    [(eq? instr x86:vpaddsw) 1]
    [(eq? instr x86:vpaddusb) 1]
    [(eq? instr x86:vpaddusw) 1]
    [(eq? instr x86:vpaddw) 1]
    [(eq? instr x86:vpalignr) 1]
    [(eq? instr x86:vpand) 1]
    [(eq? instr x86:vpandn) 1]
    [(eq? instr x86:vpavgb) 1]
    [(eq? instr x86:vpavgw) 1]
    [(eq? instr x86:vpblendd) 1]
    [(eq? instr x86:vpblendd_128) 1]
    [(eq? instr x86:vpblendvb) 2]
    [(eq? instr x86:vpblendw) 1]
    [(eq? instr x86:vpbroadcastb) 3]
    [(eq? instr x86:vpbroadcastb_128) 3]
    [(eq? instr x86:vpbroadcastd) 3]
    [(eq? instr x86:vpbroadcastd_128) 1]
    [(eq? instr x86:vpbroadcastq) 3]
    [(eq? instr x86:vpbroadcastq_128) 1]
    [(eq? instr x86:vpbroadcastw) 3]
    [(eq? instr x86:vpbroadcastw_128) 3]
    [(eq? instr x86:vpcmpeqb) 1]
    [(eq? instr x86:vpcmpeqd) 1]
    [(eq? instr x86:vpcmpeqq) 1]
    [(eq? instr x86:vpcmpeqw) 1]
    [(eq? instr x86:vpcmpgtb) 1]
    [(eq? instr x86:vpcmpgtd) 1]
    [(eq? instr x86:vpcmpgtq) 3]
    [(eq? instr x86:vpcmpgtw) 1]
    [(eq? instr x86:vperm2f128) 3]
    [(eq? instr x86:vperm2i128) 3]
    [(eq? instr x86:vpermd) 3]
    [(eq? instr x86:vpermq) 3]
    [(eq? instr x86:vphaddd) 3]
    [(eq? instr x86:vphaddsw) 3]
    [(eq? instr x86:vphaddw) 3]
    [(eq? instr x86:vphsubd) 3]
    [(eq? instr x86:vphsubsw) 3]
    [(eq? instr x86:vphsubw) 3]
    [(eq? instr x86:vpmaddubsw) 5]
    [(eq? instr x86:vpmaddwd) 5]
    [(eq? instr x86:vpmaxsb) 1]
    [(eq? instr x86:vpmaxsd) 1]
    [(eq? instr x86:vpmaxsw) 1]
    [(eq? instr x86:vpmaxub) 1]
    [(eq? instr x86:vpmaxud) 1]
    [(eq? instr x86:vpmaxuw) 1]
    [(eq? instr x86:vpminsb) 1]
    [(eq? instr x86:vpminsd) 1]
    [(eq? instr x86:vpminsw) 1]
    [(eq? instr x86:vpminub) 1]
    [(eq? instr x86:vpminud) 1]
    [(eq? instr x86:vpminuw) 1]
    [(eq? instr x86:vpmovsxbd) 3]
    [(eq? instr x86:vpmovsxbq) 3]
    [(eq? instr x86:vpmovsxbw) 3]
    [(eq? instr x86:vpmovsxdq) 3]
    [(eq? instr x86:vpmovsxwd) 3]
    [(eq? instr x86:vpmovsxwq) 3]
    [(eq? instr x86:vpmovzxbd) 3]
    [(eq? instr x86:vpmovzxbq) 3]
    [(eq? instr x86:vpmovzxbw) 3]
    [(eq? instr x86:vpmovzxbw_s) 3]
    [(eq? instr x86:vpmovzxdq) 3]
    [(eq? instr x86:vpmovzxwd) 3]
    [(eq? instr x86:vpmovzxwq) 3]
    [(eq? instr x86:vpmuldq) 5]
    [(eq? instr x86:vpmulhrsw) 5]
    [(eq? instr x86:vpmulhuw) 5]
    [(eq? instr x86:vpmulhw) 5]
    [(eq? instr x86:vpmulld) 10]
    [(eq? instr x86:vpmullw) 5]
    [(eq? instr x86:vpmullw-vs) 8]
    [(eq? instr x86:vpmuludq) 5]
    [(eq? instr x86:vpor) 1]
    [(eq? instr x86:vpsadbw) 3]
    [(eq? instr x86:vpshufb) 1]
    [(eq? instr x86:vpshufd) 1]
    [(eq? instr x86:vpshufhw) 1]
    [(eq? instr x86:vpshuflw) 1]
    [(eq? instr x86:vpsignb) 1]
    [(eq? instr x86:vpsignd) 1]
    [(eq? instr x86:vpsignw) 1]
    [(eq? instr x86:vpslld) 1]
    [(eq? instr x86:vpslldq) 1]
    [(eq? instr x86:vpsllq) 1]
    [(eq? instr x86:vpsllvd) 1]
    [(eq? instr x86:vpsllvq) 1]
    [(eq? instr x86:vpsllw) 1]
    [(eq? instr x86:vpsrad) 1]
    [(eq? instr x86:vpsravd) 1]
    [(eq? instr x86:vpsraw) 1]
    [(eq? instr x86:vpsrld) 1]
    [(eq? instr x86:vpsrldq) 1]
    [(eq? instr x86:vpsrlq) 1]
    [(eq? instr x86:vpsrlvd) 1]
    [(eq? instr x86:vpsrlvq) 1]
    [(eq? instr x86:vpsrlw) 1]
    [(eq? instr x86:vpsubb) 1]
    [(eq? instr x86:vpsubd) 1]
    [(eq? instr x86:vpsubq) 1]
    [(eq? instr x86:vpsubsb) 1]
    [(eq? instr x86:vpsubsw) 1]
    [(eq? instr x86:vpsubusb) 1]
    [(eq? instr x86:vpsubusw) 1]
    [(eq? instr x86:vpsubw) 1]
    [(eq? instr x86:vpunpckhbw) 1]
    [(eq? instr x86:vpunpckhdq) 1]
    [(eq? instr x86:vpunpckhqdq) 1]
    [(eq? instr x86:vpunpckhwd) 1]
    [(eq? instr x86:vpunpcklbw) 1]
    [(eq? instr x86:vpunpckldq) 1]
    [(eq? instr x86:vpunpcklqdq) 1]
    [(eq? instr x86:vpunpcklwd) 1]
    [(eq? instr x86:vpxor) 1]
    [else (error "Unknown instruction (x86:instr-cost):" instr)]))
