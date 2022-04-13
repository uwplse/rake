#lang rosette/safe

(require
  (only-in racket/base error)
  rosette/lib/destruct
  rake/x86/ast/types
)

(provide (prefix-out x86: (all-defined-out)))

(define (max-unique-inputs expr)
  (destruct expr

    [(x86:??load _ _ _ _ _) 1]
    [(x86:??shuffle _ _ _) 1]
    [(x86:??swizzle _ _ _ _ _) 1]
    [(x86:reinterpret v) (max-unique-inputs v)]

    [(x86:resize a) (max-unique-inputs a)]
    [(x86:vbroadcasti128 a) (max-unique-inputs a)]
    [(x86:vpabsb a) (max-unique-inputs a)]
    [(x86:vpabsd a) (max-unique-inputs a)]
    [(x86:vpabsw a) (max-unique-inputs a)]
    [(x86:vpackssdw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpacksswb a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpackusdw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpackuswb a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpaddb a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpaddd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpaddq a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpaddsb a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpaddsw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpaddusb a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpaddusw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpaddw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpalignr a b imm8) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpand a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpandn a) (max-unique-inputs a)]
    [(x86:vpavgb a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpavgw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpblendd a b imm8) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpblendd_128 a b imm8) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpblendvb a b c) (+ (max-unique-inputs a) (max-unique-inputs b) (max-unique-inputs c))]
    [(x86:vpblendw a b imm8) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpbroadcastb imm8) 1]
    [(x86:vpbroadcastb_128 imm8) 1]
    [(x86:vpbroadcastd imm32) 1]
    [(x86:vpbroadcastd_128 imm32) 1]
    [(x86:vpbroadcastq imm64) 1]
    [(x86:vpbroadcastq_128 imm64) 1]
    [(x86:vpbroadcastw imm16) 1]
    [(x86:vpbroadcastw_128 imm16) 1]
    [(x86:vpcmpeqb a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpcmpeqd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpcmpeqq a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpcmpeqw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpcmpgtb a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpcmpgtd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpcmpgtq a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpcmpgtw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vperm2f128 a b imm8) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vperm2i128 a b imm8) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpermd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpermq a imm8) (+ (max-unique-inputs a))]
    [(x86:vphaddd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vphaddsw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vphaddw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vphsubd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vphsubsw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vphsubw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmaddubsw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmaddwd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmaxsb a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmaxsd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmaxsw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmaxub a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmaxud a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmaxuw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpminsb a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpminsd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpminsw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpminub a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpminud a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpminuw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmovsxbd a) (max-unique-inputs a)]
    [(x86:vpmovsxbq a) (max-unique-inputs a)]
    [(x86:vpmovsxbw a) (max-unique-inputs a)]
    [(x86:vpmovsxdq a) (max-unique-inputs a)]
    [(x86:vpmovsxwd a) (max-unique-inputs a)]
    [(x86:vpmovsxwq a) (max-unique-inputs a)]
    [(x86:vpmovzxbd a) (max-unique-inputs a)]
    [(x86:vpmovzxbq a) (max-unique-inputs a)]
    [(x86:vpmovzxbw a) (max-unique-inputs a)]
    [(x86:vpmovzxbw_s a) (max-unique-inputs a)]
    [(x86:vpmovzxdq a) (max-unique-inputs a)]
    [(x86:vpmovzxwd a) (max-unique-inputs a)]
    [(x86:vpmovzxwq a) (max-unique-inputs a)]
    [(x86:vpmuldq a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmulhrsw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmulhuw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmulhw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmulld a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmullw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmullw-vs a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpmuludq a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpor a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpsadbw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpshufb a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpshufd a imm8) (max-unique-inputs a)]
    [(x86:vpshufhw a imm8) (max-unique-inputs a)]
    [(x86:vpshuflw a imm8) (max-unique-inputs a)]
    [(x86:vpsignb a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpsignd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpsignw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpslld a imm8) (max-unique-inputs a)]
    [(x86:vpslldq a imm8) (max-unique-inputs a)]
    [(x86:vpsllq a imm8) (max-unique-inputs a)]
    [(x86:vpsllvd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpsllvq a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpsllw a imm8) (max-unique-inputs a)]
    [(x86:vpsrad a imm8) (max-unique-inputs a)]
    [(x86:vpsravd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpsraw a imm8) (max-unique-inputs a)]
    [(x86:vpsrld a imm8) (max-unique-inputs a)]
    [(x86:vpsrldq a imm8) (max-unique-inputs a)]
    [(x86:vpsrlq a imm8) (max-unique-inputs a)]
    [(x86:vpsrlvd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpsrlvq a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpsrlw a imm8) (max-unique-inputs a)]
    [(x86:vpsubb a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpsubd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpsubq a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpsubsb a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpsubsw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpsubusb a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpsubusw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpsubw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpunpckhbw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpunpckhdq a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpunpckhqdq a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpunpckhwd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpunpcklbw a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpunpckldq a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpunpcklqdq a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpunpcklwd a b) (+ (max-unique-inputs a) (max-unique-inputs b))]
    [(x86:vpxor a b) (+ (max-unique-inputs a) (max-unique-inputs b))]

;; Handle scalars.
    [_ (cond
        [(eq? 'uint8 expr) 0]
        [(eq? 'uint8 expr) 0]
        [(eq? 'int8 expr) 0]
        [(eq? 'uint16 expr) 0]
        [(eq? 'int16 expr) 0]
        [(eq? 'uint32 expr) 0]
        [(eq? 'int32 expr) 0]
        [(eq? 'uint64 expr) 0]
        [(eq? 'int64 expr) 0]
        [else (error (format "x86:max-unique-inputs failed to recognize ~a" expr))])]))
