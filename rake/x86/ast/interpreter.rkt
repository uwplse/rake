#lang rosette/safe

(require
  (only-in rosette/base/core/term @app)
  (only-in racket/base error exit make-hash hash-ref! [eq? rkt-eq?])
  (only-in racket/list range)
  (only-in racket/match ==)
  (only-in rosette/lib/match [match rs-match] [match* rs-match*])
  rosette/lib/destruct
  rosette/lib/angelic
  rake/cpp
  rake/halide
  rake/x86/ast/types
  rake/x86/ast/utils
  rake/internal/counter
)

(provide (rename-out [interpret x86:interpret]))

;; x86 AVX/AVX2 interpreter
(define (interpret p)
  (destruct p

    ;;;;;;;;;;;;;;;;;;;; Scalar Halide Expressions ;;;;;;;;;;;;;;;;;;;;;

    [(var-lookup var val) (interpret val)]

    [(sca-cast sca type) (cpp:cast (interpret sca) type)]

    [(sca-add v1 v2) (halide:do-add (interpret v1) (interpret v2))]
    [(sca-sub v1 v2) (halide:do-sub (interpret v1) (interpret v2))]
    [(sca-mul v1 v2) (halide:do-mul (interpret v1) (interpret v2))]
    [(sca-div v1 v2) (halide:do-div (interpret v1) (interpret v2))]
    [(sca-mod v1 v2) (halide:do-mod (interpret v1) (interpret v2))]
    [(sca-min v1 v2) (halide:do-min (interpret v1) (interpret v2))]
    [(sca-max v1 v2) (halide:do-max (interpret v1) (interpret v2))]

    [(sca-if v1 v2 v3) (halide:do-if (interpret v1) (interpret v2) (interpret v3))]
    [(sca-eq v1 v2) (halide:do-eq (interpret v1) (interpret v2))]
    [(sca-lt v1 v2) (halide:do-lt (interpret v1) (interpret v2))]
    [(sca-le v1 v2) (halide:do-le (interpret v1) (interpret v2))]

    [(sca-abs v1) (halide:do-abs (interpret v1))]
    [(sca-absd v1 v2) (halide:do-absd (interpret v1) (interpret v2))]
    [(sca-shl v1 v2) (halide:do-shl (interpret v1) (interpret v2))]
    [(sca-shr v1 v2) (halide:do-shr (interpret v1) (interpret v2))]
    [(sca-clz v1) (halide:do-clz (interpret v1))]

    [(sca-bwand v1 v2) (halide:do-bwand (interpret v1) (interpret v2))]

    [(load-sca buf idx) (halide:buffer-ref (interpret buf) (interpret idx))]

    ;;;;;;;;;;;;;;

    [(x86:resize a)
      (destruct* ((interpret a))
        [((x86:u8x16 a))
            (x86:u8x32
             (halide:interpret
              (concat_vectors
               a
               (x16 (uint8_t (bv 0 8))))))]
        [((x86:u16x8 a))
            (x86:u16x16
             (halide:interpret
              (concat_vectors
               a
               (x8 (uint16_t (bv 0 16))))))]
        [((x86:u32x4 a))
            (x86:u32x8
             (halide:interpret
              (concat_vectors
               a
               (x4 (uint32_t (bv 0 32))))))]
        [((x86:u64x2 a))
            (x86:u64x4
             (halide:interpret
              (concat_vectors
               a
               (x2 (uint64_t (bv 0 64))))))]
        [((x86:i8x16 a))
            (x86:i8x32
             (halide:interpret
              (concat_vectors
               a
               (x16 (int8_t (bv 0 8))))))]
        [((x86:i16x8 a))
            (x86:i16x16
             (halide:interpret
              (concat_vectors
               a
               (x8 (int16_t (bv 0 16))))))]
        [((x86:i32x4 a))
            (x86:i32x8
             (halide:interpret
              (concat_vectors
               a
               (x4 (int32_t (bv 0 32))))))]
        [((x86:i64x2 a))
            (x86:i64x4
             (halide:interpret
              (concat_vectors
               a
               (x2 (int64_t (bv 0 64))))))]
        [((x86:u8x32 a))
            (x86:u8x16
             (halide:interpret
              (slice_vectors
               a 0 1 16)))]
        [((x86:u16x16 a))
            (x86:u16x8
             (halide:interpret
              (slice_vectors
               a 0 1 8)))]
        [((x86:u32x8 a))
            (x86:u32x4
             (halide:interpret
              (slice_vectors
               a 0 1 4)))]
        [((x86:u64x4 a))
            (x86:u64x2
             (halide:interpret
              (slice_vectors
               a 0 1 2)))]
        [((x86:i8x32 a))
            (x86:i8x16
             (halide:interpret
              (slice_vectors
               a 0 1 16)))]
        [((x86:i16x16 a))
            (x86:i16x8
             (halide:interpret
              (slice_vectors
               a 0 1 8)))]
        [((x86:i32x8 a))
            (x86:i32x4
             (halide:interpret
              (slice_vectors
               a 0 1 4)))]
        [((x86:i64x4 a))
            (x86:i64x2
             (halide:interpret
              (slice_vectors
               a 0 1 2)))]

        [(_) (assert #f "infeasible in interpreting resize")])]

    [(x86:vbroadcasti128 a)
      (destruct* ((interpret a))
        [((x86:i8x16 v))   (concat_vectors v v)]
        [((x86:i16x8 v))   (concat_vectors v v)]
        [((x86:i32x4 v))   (concat_vectors v v)]
        [((x86:i64x2 v))   (concat_vectors v v)]
        [((x86:u8x16 v))   (concat_vectors v v)]
        [((x86:u16x8 v))   (concat_vectors v v)]
        [((x86:u32x4 v))   (concat_vectors v v)]
        [((x86:u64x2 v))   (concat_vectors v v)]


        [(_) (assert #f "infeasible in interpreting vbroadcasti128")])]

    [(x86:vpabsb a)
      (destruct* ((interpret a))
        [((x86:i8x32 a))
            (x86:u8x32
             (halide:interpret
              (vec-abs
               a)))]

        [(_) (assert #f "infeasible in interpreting vpabsb")])]

    [(x86:vpabsd a)
      (destruct* ((interpret a))
        [((x86:i32x8 a))
            (x86:u32x8
             (halide:interpret
              (vec-abs
               a)))]

        [(_) (assert #f "infeasible in interpreting vpabsd")])]

    [(x86:vpabsw a)
      (destruct* ((interpret a))
        [((x86:i16x16 a))
            (x86:u16x16
             (halide:interpret
              (vec-abs
               a)))]

        [(_) (assert #f "infeasible in interpreting vpabsw")])]

    [(x86:vpackssdw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:i16x16
             (halide:interpret
              (int16x16
               (vec-max
                (vec-min
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    a 0 1 4)
                   (slice_vectors
                    b 0 1 4))
                  (concat_vectors
                   (slice_vectors
                    b 0 1 4)
                   (slice_vectors
                    a 1 1 4)))
                 (x16 (int32_t (bv 32767 32))))
                (x16 (int32_t (bv -32768 32)))))))]

        [(_ _) (assert #f "infeasible in interpreting vpackssdw")])]

    [(x86:vpacksswb a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i8x32
             (halide:interpret
              (int8x32
               (vec-max
                (vec-min
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    a 0 1 8)
                   (slice_vectors
                    b 0 1 8))
                  (concat_vectors
                   (slice_vectors
                    b 0 1 8)
                   (slice_vectors
                    a 1 1 8)))
                 (x32 (int16_t (bv 127 16))))
                (x32 (int16_t (bv -128 16)))))))]

        [(_ _) (assert #f "infeasible in interpreting vpacksswb")])]

    [(x86:vpackusdw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:u16x16
             (halide:interpret
              (int16x16
               (vec-max
                (vec-min
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    a 0 1 4)
                   (slice_vectors
                    b 0 1 4))
                  (concat_vectors
                   (slice_vectors
                    b 0 1 4)
                   (slice_vectors
                    a 1 1 4)))
                 (x16 (int32_t (bv 32767 32))))
                (x16 (int32_t (bv -32768 32)))))))]

        [(_ _) (assert #f "infeasible in interpreting vpackusdw")])]

    [(x86:vpackuswb a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:u8x32
             (halide:interpret
              (int8x32
               (vec-max
                (vec-min
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    a 0 1 8)
                   (slice_vectors
                    b 0 1 8))
                  (concat_vectors
                   (slice_vectors
                    b 0 1 8)
                   (slice_vectors
                    a 1 1 8)))
                 (x32 (int16_t (bv 127 16))))
                (x32 (int16_t (bv -128 16)))))))]

        [(_ _) (assert #f "infeasible in interpreting vpackuswb")])]

    [(x86:vpaddb a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i8x32 a) (x86:i8x32 b))
            (x86:i8x32
             (halide:interpret
              (vec-add
               a
               b)))]
        [((x86:u8x32 a) (x86:u8x32 b))
            (x86:u8x32
             (halide:interpret
              (vec-add
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpaddb")])]

    [(x86:vpaddd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:i32x8
             (halide:interpret
              (vec-add
               a
               b)))]
        [((x86:u32x8 a) (x86:u32x8 b))
            (x86:u32x8
             (halide:interpret
              (vec-add
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpaddd")])]

    [(x86:vpaddq a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i64x4 a) (x86:i64x4 b))
            (x86:i64x4
             (halide:interpret
              (vec-add
               a
               b)))]
        [((x86:u64x4 a) (x86:u64x4 b))
            (x86:u64x4
             (halide:interpret
              (vec-add
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpaddq")])]

    [(x86:vpaddsb a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i8x32 a) (x86:i8x32 b))
            (x86:i8x32
             (halide:interpret
              (vec-add
               (vec-max
                (vec-min
                 (vec-sub
                  (x32 (int8_t (bv 127 8)))
                  (vec-max
                   b
                   (x32 (int8_t (bv 0 8)))))
                 a)
                (vec-sub
                 (x32 (int8_t (bv -128 8)))
                 (vec-min
                  b
                  (x32 (int8_t (bv 0 8))))))
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpaddsb")])]

    [(x86:vpaddsw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (vec-add
               (vec-max
                (vec-min
                 (vec-sub
                  (x16 (int16_t (bv 32767 16)))
                  (vec-max
                   b
                   (x16 (int16_t (bv 0 16)))))
                 a)
                (vec-sub
                 (x16 (int16_t (bv -32768 16)))
                 (vec-min
                  b
                  (x16 (int16_t (bv 0 16))))))
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpaddsw")])]

    [(x86:vpaddusb a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u8x32 a) (x86:u8x32 b))
            (x86:u8x32
             (halide:interpret
              (vec-add
               (vec-min
                (vec-sub
                 (x32 (uint8_t (bv 255 8)))
                 b)
                a)
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpaddusb")])]

    [(x86:vpaddusw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u16x16 a) (x86:u16x16 b))
            (x86:u16x16
             (halide:interpret
              (vec-add
               (vec-min
                (vec-sub
                 (x16 (uint16_t (bv 65535 16)))
                 b)
                a)
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpaddusw")])]

    [(x86:vpaddw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (vec-add
               a
               b)))]
        [((x86:u16x16 a) (x86:u16x16 b))
            (x86:u16x16
             (halide:interpret
              (vec-add
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpaddw")])]

    [(x86:vpalignr a b imm8)
      (destruct* ((interpret a) (interpret b) (interpret imm8))
        [((x86:i8x32 a) (x86:i8x32 b) (uint8_t imm8))
                                           (x86:i8x32
                                            (halide:interpret
                                             (vec-if
               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 30 8))))
               (vec-reinterpret
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 0 1 16)
                    'uint8 16) 14 1 2)
                  (x14 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x14 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 1 1 16)
                    'uint8 16) 14 1 2)))
                'int8 32)
                                             (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 29 8))))
                (vec-reinterpret
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 0 1 16)
                     'uint8 16) 13 1 3)
                   (x13 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x13 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 1 1 16)
                     'uint8 16) 13 1 3)))
                 'int8 32)
                                             (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 28 8))))
                 (vec-reinterpret
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 0 1 16)
                      'uint8 16) 12 1 4)
                    (x12 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x12 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 1 1 16)
                      'uint8 16) 12 1 4)))
                  'int8 32)
                                             (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 27 8))))
                  (vec-reinterpret
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 0 1 16)
                       'uint8 16) 11 1 5)
                     (x11 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x11 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 1 1 16)
                       'uint8 16) 11 1 5)))
                   'int8 32)
                                             (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 26 8))))
                   (vec-reinterpret
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 0 1 16)
                        'uint8 16) 10 1 6)
                      (x10 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x10 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 1 1 16)
                        'uint8 16) 10 1 6)))
                    'int8 32)
                                             (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 25 8))))
                    (vec-reinterpret
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 0 1 16)
                         'uint8 16) 9 1 7)
                       (x9 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x9 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 1 1 16)
                         'uint8 16) 9 1 7)))
                     'int8 32)
                                             (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 24 8))))
                     (vec-reinterpret
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 0 1 16)
                          'uint8 16) 8 1 8)
                        (x8 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x8 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 1 1 16)
                          'uint8 16) 8 1 8)))
                      'int8 32)
                                             (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 23 8))))
                      (vec-reinterpret
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 0 1 16)
                           'uint8 16) 7 1 9)
                         (x7 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x7 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 1 1 16)
                           'uint8 16) 7 1 9)))
                       'int8 32)
                                             (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 22 8))))
                       (vec-reinterpret
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 0 1 16)
                            'uint8 16) 6 1 10)
                          (x6 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x6 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 1 1 16)
                            'uint8 16) 6 1 10)))
                        'int8 32)
                                             (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 21 8))))
                        (vec-reinterpret
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 0 1 16)
                             'uint8 16) 5 1 11)
                           (x5 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x5 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 1 1 16)
                             'uint8 16) 5 1 11)))
                         'int8 32)
                                             (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 20 8))))
                         (vec-reinterpret
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 0 1 16)
                              'uint8 16) 4 1 12)
                            (x4 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x4 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 1 1 16)
                              'uint8 16) 4 1 12)))
                          'int8 32)
                                             (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 19 8))))
                          (vec-reinterpret
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 0 1 16)
                               'uint8 16) 3 1 13)
                             (x3 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x3 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 1 1 16)
                               'uint8 16) 3 1 13)))
                           'int8 32)
                                             (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 18 8))))
                           (vec-reinterpret
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 0 1 16)
                                'uint8 16) 2 1 14)
                              (x2 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x2 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 1 1 16)
                                'uint8 16) 2 1 14)))
                            'int8 32)
                                             (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 17 8))))
                            (vec-reinterpret
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 16)
                                 'uint8 16) 1 1 15)
                               (uint8_t (bv 0 8)))
                              (concat_vectors
                               (uint8_t (bv 0 8))
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 16)
                                 'uint8 16) 1 1 15)))
                             'int8 32)
                                             (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 16 8))))
                             (vec-reinterpret
                              (concat_vectors
                               (concat_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 16)
                                 'uint8 16)
                                (x0 (uint8_t (bv 0 8))))
                               (concat_vectors
                                (x0 (uint8_t (bv 0 8)))
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 16)
                                 'uint8 16)))
                              'int8 32)
                                             (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                              (vec-reinterpret
                               (concat_vectors
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 0 1 16)
                                   'uint8 16) 15 1 1)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 16)
                                   'uint8 16) 0 1 15))
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 16)
                                   'uint8 16) 0 1 15)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 1 1 16)
                                   'uint8 16) 15 1 1)))
                               'int8 32)
                                             (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                               (vec-reinterpret
                                (concat_vectors
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 0 1 16)
                                    'uint8 16) 14 1 2)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 16)
                                    'uint8 16) 0 1 14))
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 16)
                                    'uint8 16) 0 1 14)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 1 1 16)
                                    'uint8 16) 14 1 2)))
                                'int8 32)
                                             (vec-if
                                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                                (vec-reinterpret
                                 (concat_vectors
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 0 1 16)
                                     'uint8 16) 13 1 3)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 16)
                                     'uint8 16) 0 1 13))
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 16)
                                     'uint8 16) 0 1 13)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 1 1 16)
                                     'uint8 16) 13 1 3)))
                                 'int8 32)
                                             (vec-if
                                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                                 (vec-reinterpret
                                  (concat_vectors
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 0 1 16)
                                      'uint8 16) 12 1 4)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 16)
                                      'uint8 16) 0 1 12))
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 16)
                                      'uint8 16) 0 1 12)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 1 1 16)
                                      'uint8 16) 12 1 4)))
                                  'int8 32)
                                             (vec-if
                                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                                  (vec-reinterpret
                                   (concat_vectors
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 0 1 16)
                                       'uint8 16) 11 1 5)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 16)
                                       'uint8 16) 0 1 11))
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 16)
                                       'uint8 16) 0 1 11)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 1 1 16)
                                       'uint8 16) 11 1 5)))
                                   'int8 32)
                                             (vec-if
                                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                                   (vec-reinterpret
                                    (concat_vectors
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 0 1 16)
                                        'uint8 16) 10 1 6)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 16)
                                        'uint8 16) 0 1 10))
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 16)
                                        'uint8 16) 0 1 10)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 1 1 16)
                                        'uint8 16) 10 1 6)))
                                    'int8 32)
                                             (vec-if
                                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                                    (vec-reinterpret
                                     (concat_vectors
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 0 1 16)
                                         'uint8 16) 9 1 7)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 16)
                                         'uint8 16) 0 1 9))
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 16)
                                         'uint8 16) 0 1 9)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 1 1 16)
                                         'uint8 16) 9 1 7)))
                                     'int8 32)
                                             (vec-if
                                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                                     (vec-reinterpret
                                      (concat_vectors
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 0 1 16)
                                          'uint8 16) 8 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 16)
                                          'uint8 16) 0 1 8))
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 16)
                                          'uint8 16) 0 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 1 1 16)
                                          'uint8 16) 8 1 8)))
                                      'int8 32)
                                             (vec-if
                                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                                      (vec-reinterpret
                                       (concat_vectors
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 0 1 16)
                                           'uint8 16) 7 1 9)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 16)
                                           'uint8 16) 0 1 7))
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 16)
                                           'uint8 16) 0 1 7)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 1 1 16)
                                           'uint8 16) 7 1 9)))
                                       'int8 32)
                                             (vec-if
                                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                                       (vec-reinterpret
                                        (concat_vectors
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 0 1 16)
                                            'uint8 16) 6 1 10)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 16)
                                            'uint8 16) 0 1 6))
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 16)
                                            'uint8 16) 0 1 6)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 1 1 16)
                                            'uint8 16) 6 1 10)))
                                        'int8 32)
                                             (vec-if
                                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                                        (vec-reinterpret
                                         (concat_vectors
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 0 1 16)
                                             'uint8 16) 5 1 11)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 16)
                                             'uint8 16) 0 1 5))
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 16)
                                             'uint8 16) 0 1 5)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 1 1 16)
                                             'uint8 16) 5 1 11)))
                                         'int8 32)
                                             (vec-if
                                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                                         (vec-reinterpret
                                          (concat_vectors
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 0 1 16)
                                              'uint8 16) 4 1 12)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 16)
                                              'uint8 16) 0 1 4))
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 16)
                                              'uint8 16) 0 1 4)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 1 1 16)
                                              'uint8 16) 4 1 12)))
                                          'int8 32)
                                             (vec-if
                                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                                          (vec-reinterpret
                                           (concat_vectors
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 0 1 16)
                                               'uint8 16) 3 1 13)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 16)
                                               'uint8 16) 0 1 3))
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 16)
                                               'uint8 16) 0 1 3)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 1 1 16)
                                               'uint8 16) 3 1 13)))
                                           'int8 32)
                                             (vec-if
                                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                                           (vec-reinterpret
                                            (concat_vectors
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 0 1 16)
                                                'uint8 16) 2 1 14)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 16)
                                                'uint8 16) 0 1 2))
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 16)
                                                'uint8 16) 0 1 2)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 1 1 16)
                                                'uint8 16) 2 1 14)))
                                            'int8 32)
                                             (vec-if
                                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                                            (vec-reinterpret
                                             (concat_vectors
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 0 1 16)
                                                 'uint8 16) 1 1 15)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 16)
                                                 'uint8 16) 0 1 1))
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 16)
                                                 'uint8 16) 0 1 1)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 1 1 16)
                                                 'uint8 16) 1 1 15)))
                                             'int8 32)
                                             (vec-if
                                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                                             b
                                             (x32 (int8_t (bv 0 8))))))))))))))))))))))))))))))))))))]
        [((x86:u8x32 a) (x86:u8x32 b) (uint8_t imm8))
                                           (x86:u8x32
                                            (halide:interpret
                                             (vec-if
               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 30 8))))
               (vec-reinterpret
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 0 1 16)
                    'uint8 16) 14 1 2)
                  (x14 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x14 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 1 1 16)
                    'uint8 16) 14 1 2)))
                'uint8 32)
                                             (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 29 8))))
                (vec-reinterpret
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 0 1 16)
                     'uint8 16) 13 1 3)
                   (x13 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x13 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 1 1 16)
                     'uint8 16) 13 1 3)))
                 'uint8 32)
                                             (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 28 8))))
                 (vec-reinterpret
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 0 1 16)
                      'uint8 16) 12 1 4)
                    (x12 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x12 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 1 1 16)
                      'uint8 16) 12 1 4)))
                  'uint8 32)
                                             (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 27 8))))
                  (vec-reinterpret
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 0 1 16)
                       'uint8 16) 11 1 5)
                     (x11 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x11 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 1 1 16)
                       'uint8 16) 11 1 5)))
                   'uint8 32)
                                             (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 26 8))))
                   (vec-reinterpret
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 0 1 16)
                        'uint8 16) 10 1 6)
                      (x10 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x10 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 1 1 16)
                        'uint8 16) 10 1 6)))
                    'uint8 32)
                                             (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 25 8))))
                    (vec-reinterpret
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 0 1 16)
                         'uint8 16) 9 1 7)
                       (x9 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x9 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 1 1 16)
                         'uint8 16) 9 1 7)))
                     'uint8 32)
                                             (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 24 8))))
                     (vec-reinterpret
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 0 1 16)
                          'uint8 16) 8 1 8)
                        (x8 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x8 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 1 1 16)
                          'uint8 16) 8 1 8)))
                      'uint8 32)
                                             (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 23 8))))
                      (vec-reinterpret
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 0 1 16)
                           'uint8 16) 7 1 9)
                         (x7 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x7 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 1 1 16)
                           'uint8 16) 7 1 9)))
                       'uint8 32)
                                             (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 22 8))))
                       (vec-reinterpret
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 0 1 16)
                            'uint8 16) 6 1 10)
                          (x6 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x6 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 1 1 16)
                            'uint8 16) 6 1 10)))
                        'uint8 32)
                                             (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 21 8))))
                        (vec-reinterpret
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 0 1 16)
                             'uint8 16) 5 1 11)
                           (x5 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x5 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 1 1 16)
                             'uint8 16) 5 1 11)))
                         'uint8 32)
                                             (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 20 8))))
                         (vec-reinterpret
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 0 1 16)
                              'uint8 16) 4 1 12)
                            (x4 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x4 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 1 1 16)
                              'uint8 16) 4 1 12)))
                          'uint8 32)
                                             (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 19 8))))
                          (vec-reinterpret
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 0 1 16)
                               'uint8 16) 3 1 13)
                             (x3 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x3 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 1 1 16)
                               'uint8 16) 3 1 13)))
                           'uint8 32)
                                             (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 18 8))))
                           (vec-reinterpret
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 0 1 16)
                                'uint8 16) 2 1 14)
                              (x2 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x2 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 1 1 16)
                                'uint8 16) 2 1 14)))
                            'uint8 32)
                                             (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 17 8))))
                            (vec-reinterpret
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 16)
                                 'uint8 16) 1 1 15)
                               (uint8_t (bv 0 8)))
                              (concat_vectors
                               (uint8_t (bv 0 8))
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 16)
                                 'uint8 16) 1 1 15)))
                             'uint8 32)
                                             (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 16 8))))
                             (vec-reinterpret
                              (concat_vectors
                               (concat_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 16)
                                 'uint8 16)
                                (x0 (uint8_t (bv 0 8))))
                               (concat_vectors
                                (x0 (uint8_t (bv 0 8)))
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 16)
                                 'uint8 16)))
                              'uint8 32)
                                             (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                              (vec-reinterpret
                               (concat_vectors
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 0 1 16)
                                   'uint8 16) 15 1 1)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 16)
                                   'uint8 16) 0 1 15))
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 16)
                                   'uint8 16) 0 1 15)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 1 1 16)
                                   'uint8 16) 15 1 1)))
                               'uint8 32)
                                             (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                               (vec-reinterpret
                                (concat_vectors
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 0 1 16)
                                    'uint8 16) 14 1 2)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 16)
                                    'uint8 16) 0 1 14))
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 16)
                                    'uint8 16) 0 1 14)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 1 1 16)
                                    'uint8 16) 14 1 2)))
                                'uint8 32)
                                             (vec-if
                                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                                (vec-reinterpret
                                 (concat_vectors
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 0 1 16)
                                     'uint8 16) 13 1 3)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 16)
                                     'uint8 16) 0 1 13))
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 16)
                                     'uint8 16) 0 1 13)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 1 1 16)
                                     'uint8 16) 13 1 3)))
                                 'uint8 32)
                                             (vec-if
                                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                                 (vec-reinterpret
                                  (concat_vectors
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 0 1 16)
                                      'uint8 16) 12 1 4)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 16)
                                      'uint8 16) 0 1 12))
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 16)
                                      'uint8 16) 0 1 12)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 1 1 16)
                                      'uint8 16) 12 1 4)))
                                  'uint8 32)
                                             (vec-if
                                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                                  (vec-reinterpret
                                   (concat_vectors
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 0 1 16)
                                       'uint8 16) 11 1 5)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 16)
                                       'uint8 16) 0 1 11))
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 16)
                                       'uint8 16) 0 1 11)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 1 1 16)
                                       'uint8 16) 11 1 5)))
                                   'uint8 32)
                                             (vec-if
                                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                                   (vec-reinterpret
                                    (concat_vectors
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 0 1 16)
                                        'uint8 16) 10 1 6)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 16)
                                        'uint8 16) 0 1 10))
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 16)
                                        'uint8 16) 0 1 10)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 1 1 16)
                                        'uint8 16) 10 1 6)))
                                    'uint8 32)
                                             (vec-if
                                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                                    (vec-reinterpret
                                     (concat_vectors
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 0 1 16)
                                         'uint8 16) 9 1 7)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 16)
                                         'uint8 16) 0 1 9))
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 16)
                                         'uint8 16) 0 1 9)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 1 1 16)
                                         'uint8 16) 9 1 7)))
                                     'uint8 32)
                                             (vec-if
                                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                                     (vec-reinterpret
                                      (concat_vectors
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 0 1 16)
                                          'uint8 16) 8 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 16)
                                          'uint8 16) 0 1 8))
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 16)
                                          'uint8 16) 0 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 1 1 16)
                                          'uint8 16) 8 1 8)))
                                      'uint8 32)
                                             (vec-if
                                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                                      (vec-reinterpret
                                       (concat_vectors
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 0 1 16)
                                           'uint8 16) 7 1 9)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 16)
                                           'uint8 16) 0 1 7))
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 16)
                                           'uint8 16) 0 1 7)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 1 1 16)
                                           'uint8 16) 7 1 9)))
                                       'uint8 32)
                                             (vec-if
                                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                                       (vec-reinterpret
                                        (concat_vectors
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 0 1 16)
                                            'uint8 16) 6 1 10)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 16)
                                            'uint8 16) 0 1 6))
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 16)
                                            'uint8 16) 0 1 6)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 1 1 16)
                                            'uint8 16) 6 1 10)))
                                        'uint8 32)
                                             (vec-if
                                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                                        (vec-reinterpret
                                         (concat_vectors
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 0 1 16)
                                             'uint8 16) 5 1 11)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 16)
                                             'uint8 16) 0 1 5))
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 16)
                                             'uint8 16) 0 1 5)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 1 1 16)
                                             'uint8 16) 5 1 11)))
                                         'uint8 32)
                                             (vec-if
                                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                                         (vec-reinterpret
                                          (concat_vectors
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 0 1 16)
                                              'uint8 16) 4 1 12)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 16)
                                              'uint8 16) 0 1 4))
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 16)
                                              'uint8 16) 0 1 4)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 1 1 16)
                                              'uint8 16) 4 1 12)))
                                          'uint8 32)
                                             (vec-if
                                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                                          (vec-reinterpret
                                           (concat_vectors
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 0 1 16)
                                               'uint8 16) 3 1 13)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 16)
                                               'uint8 16) 0 1 3))
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 16)
                                               'uint8 16) 0 1 3)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 1 1 16)
                                               'uint8 16) 3 1 13)))
                                           'uint8 32)
                                             (vec-if
                                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                                           (vec-reinterpret
                                            (concat_vectors
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 0 1 16)
                                                'uint8 16) 2 1 14)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 16)
                                                'uint8 16) 0 1 2))
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 16)
                                                'uint8 16) 0 1 2)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 1 1 16)
                                                'uint8 16) 2 1 14)))
                                            'uint8 32)
                                             (vec-if
                                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                                            (vec-reinterpret
                                             (concat_vectors
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 0 1 16)
                                                 'uint8 16) 1 1 15)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 16)
                                                 'uint8 16) 0 1 1))
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 16)
                                                 'uint8 16) 0 1 1)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 1 1 16)
                                                 'uint8 16) 1 1 15)))
                                             'uint8 32)
                                             (vec-if
                                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                                             b
                                             (x32 (uint8_t (bv 0 8))))))))))))))))))))))))))))))))))))]
        [((x86:i16x16 a) (x86:i16x16 b) (uint8_t imm8))
                                           (x86:i16x16
                                            (halide:interpret
                                             (vec-if
               (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 30 8))))
               (vec-reinterpret
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 0 1 8)
                    'uint8 16) 14 1 2)
                  (x14 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x14 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 1 1 8)
                    'uint8 16) 14 1 2)))
                'int16 16)
                                             (vec-if
                (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 29 8))))
                (vec-reinterpret
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 0 1 8)
                     'uint8 16) 13 1 3)
                   (x13 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x13 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 1 1 8)
                     'uint8 16) 13 1 3)))
                 'int16 16)
                                             (vec-if
                 (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 28 8))))
                 (vec-reinterpret
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 0 1 8)
                      'uint8 16) 12 1 4)
                    (x12 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x12 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 1 1 8)
                      'uint8 16) 12 1 4)))
                  'int16 16)
                                             (vec-if
                  (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 27 8))))
                  (vec-reinterpret
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 0 1 8)
                       'uint8 16) 11 1 5)
                     (x11 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x11 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 1 1 8)
                       'uint8 16) 11 1 5)))
                   'int16 16)
                                             (vec-if
                   (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 26 8))))
                   (vec-reinterpret
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 0 1 8)
                        'uint8 16) 10 1 6)
                      (x10 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x10 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 1 1 8)
                        'uint8 16) 10 1 6)))
                    'int16 16)
                                             (vec-if
                    (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 25 8))))
                    (vec-reinterpret
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 0 1 8)
                         'uint8 16) 9 1 7)
                       (x9 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x9 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 1 1 8)
                         'uint8 16) 9 1 7)))
                     'int16 16)
                                             (vec-if
                     (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 24 8))))
                     (vec-reinterpret
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 0 1 8)
                          'uint8 16) 8 1 8)
                        (x8 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x8 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 1 1 8)
                          'uint8 16) 8 1 8)))
                      'int16 16)
                                             (vec-if
                      (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 23 8))))
                      (vec-reinterpret
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 0 1 8)
                           'uint8 16) 7 1 9)
                         (x7 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x7 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 1 1 8)
                           'uint8 16) 7 1 9)))
                       'int16 16)
                                             (vec-if
                       (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 22 8))))
                       (vec-reinterpret
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 0 1 8)
                            'uint8 16) 6 1 10)
                          (x6 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x6 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 1 1 8)
                            'uint8 16) 6 1 10)))
                        'int16 16)
                                             (vec-if
                        (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 21 8))))
                        (vec-reinterpret
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 0 1 8)
                             'uint8 16) 5 1 11)
                           (x5 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x5 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 1 1 8)
                             'uint8 16) 5 1 11)))
                         'int16 16)
                                             (vec-if
                         (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 20 8))))
                         (vec-reinterpret
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 0 1 8)
                              'uint8 16) 4 1 12)
                            (x4 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x4 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 1 1 8)
                              'uint8 16) 4 1 12)))
                          'int16 16)
                                             (vec-if
                          (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 19 8))))
                          (vec-reinterpret
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 0 1 8)
                               'uint8 16) 3 1 13)
                             (x3 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x3 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 1 1 8)
                               'uint8 16) 3 1 13)))
                           'int16 16)
                                             (vec-if
                           (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 18 8))))
                           (vec-reinterpret
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 0 1 8)
                                'uint8 16) 2 1 14)
                              (x2 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x2 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 1 1 8)
                                'uint8 16) 2 1 14)))
                            'int16 16)
                                             (vec-if
                            (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 17 8))))
                            (vec-reinterpret
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 8)
                                 'uint8 16) 1 1 15)
                               (uint8_t (bv 0 8)))
                              (concat_vectors
                               (uint8_t (bv 0 8))
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 8)
                                 'uint8 16) 1 1 15)))
                             'int16 16)
                                             (vec-if
                             (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 16 8))))
                             (vec-reinterpret
                              (concat_vectors
                               (concat_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 8)
                                 'uint8 16)
                                (x0 (uint8_t (bv 0 8))))
                               (concat_vectors
                                (x0 (uint8_t (bv 0 8)))
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 8)
                                 'uint8 16)))
                              'int16 16)
                                             (vec-if
                              (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                              (vec-reinterpret
                               (concat_vectors
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 0 1 8)
                                   'uint8 16) 15 1 1)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 8)
                                   'uint8 16) 0 1 15))
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 8)
                                   'uint8 16) 0 1 15)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 1 1 8)
                                   'uint8 16) 15 1 1)))
                               'int16 16)
                                             (vec-if
                               (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                               (vec-reinterpret
                                (concat_vectors
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 0 1 8)
                                    'uint8 16) 14 1 2)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 8)
                                    'uint8 16) 0 1 14))
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 8)
                                    'uint8 16) 0 1 14)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 1 1 8)
                                    'uint8 16) 14 1 2)))
                                'int16 16)
                                             (vec-if
                                (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                                (vec-reinterpret
                                 (concat_vectors
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 0 1 8)
                                     'uint8 16) 13 1 3)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 8)
                                     'uint8 16) 0 1 13))
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 8)
                                     'uint8 16) 0 1 13)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 1 1 8)
                                     'uint8 16) 13 1 3)))
                                 'int16 16)
                                             (vec-if
                                 (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                                 (vec-reinterpret
                                  (concat_vectors
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 0 1 8)
                                      'uint8 16) 12 1 4)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 8)
                                      'uint8 16) 0 1 12))
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 8)
                                      'uint8 16) 0 1 12)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 1 1 8)
                                      'uint8 16) 12 1 4)))
                                  'int16 16)
                                             (vec-if
                                  (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                                  (vec-reinterpret
                                   (concat_vectors
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 0 1 8)
                                       'uint8 16) 11 1 5)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 8)
                                       'uint8 16) 0 1 11))
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 8)
                                       'uint8 16) 0 1 11)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 1 1 8)
                                       'uint8 16) 11 1 5)))
                                   'int16 16)
                                             (vec-if
                                   (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                                   (vec-reinterpret
                                    (concat_vectors
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 0 1 8)
                                        'uint8 16) 10 1 6)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 8)
                                        'uint8 16) 0 1 10))
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 8)
                                        'uint8 16) 0 1 10)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 1 1 8)
                                        'uint8 16) 10 1 6)))
                                    'int16 16)
                                             (vec-if
                                    (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                                    (vec-reinterpret
                                     (concat_vectors
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 0 1 8)
                                         'uint8 16) 9 1 7)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 8)
                                         'uint8 16) 0 1 9))
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 8)
                                         'uint8 16) 0 1 9)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 1 1 8)
                                         'uint8 16) 9 1 7)))
                                     'int16 16)
                                             (vec-if
                                     (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                                     (vec-reinterpret
                                      (concat_vectors
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 0 1 8)
                                          'uint8 16) 8 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 8)
                                          'uint8 16) 0 1 8))
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 8)
                                          'uint8 16) 0 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 1 1 8)
                                          'uint8 16) 8 1 8)))
                                      'int16 16)
                                             (vec-if
                                      (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                                      (vec-reinterpret
                                       (concat_vectors
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 0 1 8)
                                           'uint8 16) 7 1 9)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 8)
                                           'uint8 16) 0 1 7))
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 8)
                                           'uint8 16) 0 1 7)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 1 1 8)
                                           'uint8 16) 7 1 9)))
                                       'int16 16)
                                             (vec-if
                                       (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                                       (vec-reinterpret
                                        (concat_vectors
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 0 1 8)
                                            'uint8 16) 6 1 10)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 8)
                                            'uint8 16) 0 1 6))
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 8)
                                            'uint8 16) 0 1 6)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 1 1 8)
                                            'uint8 16) 6 1 10)))
                                        'int16 16)
                                             (vec-if
                                        (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                                        (vec-reinterpret
                                         (concat_vectors
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 0 1 8)
                                             'uint8 16) 5 1 11)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 8)
                                             'uint8 16) 0 1 5))
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 8)
                                             'uint8 16) 0 1 5)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 1 1 8)
                                             'uint8 16) 5 1 11)))
                                         'int16 16)
                                             (vec-if
                                         (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                                         (vec-reinterpret
                                          (concat_vectors
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 0 1 8)
                                              'uint8 16) 4 1 12)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 8)
                                              'uint8 16) 0 1 4))
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 8)
                                              'uint8 16) 0 1 4)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 1 1 8)
                                              'uint8 16) 4 1 12)))
                                          'int16 16)
                                             (vec-if
                                          (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                                          (vec-reinterpret
                                           (concat_vectors
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 0 1 8)
                                               'uint8 16) 3 1 13)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 8)
                                               'uint8 16) 0 1 3))
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 8)
                                               'uint8 16) 0 1 3)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 1 1 8)
                                               'uint8 16) 3 1 13)))
                                           'int16 16)
                                             (vec-if
                                           (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                                           (vec-reinterpret
                                            (concat_vectors
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 0 1 8)
                                                'uint8 16) 2 1 14)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 8)
                                                'uint8 16) 0 1 2))
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 8)
                                                'uint8 16) 0 1 2)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 1 1 8)
                                                'uint8 16) 2 1 14)))
                                            'int16 16)
                                             (vec-if
                                            (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                                            (vec-reinterpret
                                             (concat_vectors
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 0 1 8)
                                                 'uint8 16) 1 1 15)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 8)
                                                 'uint8 16) 0 1 1))
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 8)
                                                 'uint8 16) 0 1 1)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 1 1 8)
                                                 'uint8 16) 1 1 15)))
                                             'int16 16)
                                             (vec-if
                                             (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                                             b
                                             (x16 (int16_t (bv 0 16))))))))))))))))))))))))))))))))))))]
        [((x86:u16x16 a) (x86:u16x16 b) (uint8_t imm8))
                                           (x86:u16x16
                                            (halide:interpret
                                             (vec-if
               (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 30 8))))
               (vec-reinterpret
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 0 1 8)
                    'uint8 16) 14 1 2)
                  (x14 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x14 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 1 1 8)
                    'uint8 16) 14 1 2)))
                'uint16 16)
                                             (vec-if
                (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 29 8))))
                (vec-reinterpret
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 0 1 8)
                     'uint8 16) 13 1 3)
                   (x13 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x13 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 1 1 8)
                     'uint8 16) 13 1 3)))
                 'uint16 16)
                                             (vec-if
                 (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 28 8))))
                 (vec-reinterpret
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 0 1 8)
                      'uint8 16) 12 1 4)
                    (x12 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x12 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 1 1 8)
                      'uint8 16) 12 1 4)))
                  'uint16 16)
                                             (vec-if
                  (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 27 8))))
                  (vec-reinterpret
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 0 1 8)
                       'uint8 16) 11 1 5)
                     (x11 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x11 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 1 1 8)
                       'uint8 16) 11 1 5)))
                   'uint16 16)
                                             (vec-if
                   (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 26 8))))
                   (vec-reinterpret
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 0 1 8)
                        'uint8 16) 10 1 6)
                      (x10 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x10 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 1 1 8)
                        'uint8 16) 10 1 6)))
                    'uint16 16)
                                             (vec-if
                    (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 25 8))))
                    (vec-reinterpret
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 0 1 8)
                         'uint8 16) 9 1 7)
                       (x9 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x9 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 1 1 8)
                         'uint8 16) 9 1 7)))
                     'uint16 16)
                                             (vec-if
                     (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 24 8))))
                     (vec-reinterpret
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 0 1 8)
                          'uint8 16) 8 1 8)
                        (x8 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x8 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 1 1 8)
                          'uint8 16) 8 1 8)))
                      'uint16 16)
                                             (vec-if
                      (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 23 8))))
                      (vec-reinterpret
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 0 1 8)
                           'uint8 16) 7 1 9)
                         (x7 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x7 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 1 1 8)
                           'uint8 16) 7 1 9)))
                       'uint16 16)
                                             (vec-if
                       (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 22 8))))
                       (vec-reinterpret
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 0 1 8)
                            'uint8 16) 6 1 10)
                          (x6 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x6 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 1 1 8)
                            'uint8 16) 6 1 10)))
                        'uint16 16)
                                             (vec-if
                        (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 21 8))))
                        (vec-reinterpret
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 0 1 8)
                             'uint8 16) 5 1 11)
                           (x5 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x5 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 1 1 8)
                             'uint8 16) 5 1 11)))
                         'uint16 16)
                                             (vec-if
                         (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 20 8))))
                         (vec-reinterpret
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 0 1 8)
                              'uint8 16) 4 1 12)
                            (x4 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x4 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 1 1 8)
                              'uint8 16) 4 1 12)))
                          'uint16 16)
                                             (vec-if
                          (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 19 8))))
                          (vec-reinterpret
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 0 1 8)
                               'uint8 16) 3 1 13)
                             (x3 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x3 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 1 1 8)
                               'uint8 16) 3 1 13)))
                           'uint16 16)
                                             (vec-if
                           (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 18 8))))
                           (vec-reinterpret
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 0 1 8)
                                'uint8 16) 2 1 14)
                              (x2 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x2 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 1 1 8)
                                'uint8 16) 2 1 14)))
                            'uint16 16)
                                             (vec-if
                            (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 17 8))))
                            (vec-reinterpret
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 8)
                                 'uint8 16) 1 1 15)
                               (uint8_t (bv 0 8)))
                              (concat_vectors
                               (uint8_t (bv 0 8))
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 8)
                                 'uint8 16) 1 1 15)))
                             'uint16 16)
                                             (vec-if
                             (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 16 8))))
                             (vec-reinterpret
                              (concat_vectors
                               (concat_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 8)
                                 'uint8 16)
                                (x0 (uint8_t (bv 0 8))))
                               (concat_vectors
                                (x0 (uint8_t (bv 0 8)))
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 8)
                                 'uint8 16)))
                              'uint16 16)
                                             (vec-if
                              (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                              (vec-reinterpret
                               (concat_vectors
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 0 1 8)
                                   'uint8 16) 15 1 1)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 8)
                                   'uint8 16) 0 1 15))
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 8)
                                   'uint8 16) 0 1 15)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 1 1 8)
                                   'uint8 16) 15 1 1)))
                               'uint16 16)
                                             (vec-if
                               (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                               (vec-reinterpret
                                (concat_vectors
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 0 1 8)
                                    'uint8 16) 14 1 2)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 8)
                                    'uint8 16) 0 1 14))
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 8)
                                    'uint8 16) 0 1 14)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 1 1 8)
                                    'uint8 16) 14 1 2)))
                                'uint16 16)
                                             (vec-if
                                (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                                (vec-reinterpret
                                 (concat_vectors
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 0 1 8)
                                     'uint8 16) 13 1 3)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 8)
                                     'uint8 16) 0 1 13))
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 8)
                                     'uint8 16) 0 1 13)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 1 1 8)
                                     'uint8 16) 13 1 3)))
                                 'uint16 16)
                                             (vec-if
                                 (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                                 (vec-reinterpret
                                  (concat_vectors
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 0 1 8)
                                      'uint8 16) 12 1 4)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 8)
                                      'uint8 16) 0 1 12))
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 8)
                                      'uint8 16) 0 1 12)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 1 1 8)
                                      'uint8 16) 12 1 4)))
                                  'uint16 16)
                                             (vec-if
                                  (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                                  (vec-reinterpret
                                   (concat_vectors
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 0 1 8)
                                       'uint8 16) 11 1 5)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 8)
                                       'uint8 16) 0 1 11))
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 8)
                                       'uint8 16) 0 1 11)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 1 1 8)
                                       'uint8 16) 11 1 5)))
                                   'uint16 16)
                                             (vec-if
                                   (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                                   (vec-reinterpret
                                    (concat_vectors
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 0 1 8)
                                        'uint8 16) 10 1 6)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 8)
                                        'uint8 16) 0 1 10))
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 8)
                                        'uint8 16) 0 1 10)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 1 1 8)
                                        'uint8 16) 10 1 6)))
                                    'uint16 16)
                                             (vec-if
                                    (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                                    (vec-reinterpret
                                     (concat_vectors
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 0 1 8)
                                         'uint8 16) 9 1 7)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 8)
                                         'uint8 16) 0 1 9))
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 8)
                                         'uint8 16) 0 1 9)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 1 1 8)
                                         'uint8 16) 9 1 7)))
                                     'uint16 16)
                                             (vec-if
                                     (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                                     (vec-reinterpret
                                      (concat_vectors
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 0 1 8)
                                          'uint8 16) 8 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 8)
                                          'uint8 16) 0 1 8))
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 8)
                                          'uint8 16) 0 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 1 1 8)
                                          'uint8 16) 8 1 8)))
                                      'uint16 16)
                                             (vec-if
                                      (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                                      (vec-reinterpret
                                       (concat_vectors
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 0 1 8)
                                           'uint8 16) 7 1 9)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 8)
                                           'uint8 16) 0 1 7))
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 8)
                                           'uint8 16) 0 1 7)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 1 1 8)
                                           'uint8 16) 7 1 9)))
                                       'uint16 16)
                                             (vec-if
                                       (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                                       (vec-reinterpret
                                        (concat_vectors
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 0 1 8)
                                            'uint8 16) 6 1 10)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 8)
                                            'uint8 16) 0 1 6))
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 8)
                                            'uint8 16) 0 1 6)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 1 1 8)
                                            'uint8 16) 6 1 10)))
                                        'uint16 16)
                                             (vec-if
                                        (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                                        (vec-reinterpret
                                         (concat_vectors
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 0 1 8)
                                             'uint8 16) 5 1 11)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 8)
                                             'uint8 16) 0 1 5))
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 8)
                                             'uint8 16) 0 1 5)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 1 1 8)
                                             'uint8 16) 5 1 11)))
                                         'uint16 16)
                                             (vec-if
                                         (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                                         (vec-reinterpret
                                          (concat_vectors
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 0 1 8)
                                              'uint8 16) 4 1 12)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 8)
                                              'uint8 16) 0 1 4))
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 8)
                                              'uint8 16) 0 1 4)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 1 1 8)
                                              'uint8 16) 4 1 12)))
                                          'uint16 16)
                                             (vec-if
                                          (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                                          (vec-reinterpret
                                           (concat_vectors
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 0 1 8)
                                               'uint8 16) 3 1 13)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 8)
                                               'uint8 16) 0 1 3))
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 8)
                                               'uint8 16) 0 1 3)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 1 1 8)
                                               'uint8 16) 3 1 13)))
                                           'uint16 16)
                                             (vec-if
                                           (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                                           (vec-reinterpret
                                            (concat_vectors
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 0 1 8)
                                                'uint8 16) 2 1 14)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 8)
                                                'uint8 16) 0 1 2))
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 8)
                                                'uint8 16) 0 1 2)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 1 1 8)
                                                'uint8 16) 2 1 14)))
                                            'uint16 16)
                                             (vec-if
                                            (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                                            (vec-reinterpret
                                             (concat_vectors
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 0 1 8)
                                                 'uint8 16) 1 1 15)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 8)
                                                 'uint8 16) 0 1 1))
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 8)
                                                 'uint8 16) 0 1 1)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 1 1 8)
                                                 'uint8 16) 1 1 15)))
                                             'uint16 16)
                                             (vec-if
                                             (x16 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                                             b
                                             (x16 (uint16_t (bv 0 16))))))))))))))))))))))))))))))))))))]
        [((x86:i32x8 a) (x86:i32x8 b) (uint8_t imm8))
                                           (x86:i32x8
                                            (halide:interpret
                                             (vec-if
               (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 30 8))))
               (vec-reinterpret
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 0 1 4)
                    'uint8 16) 14 1 2)
                  (x14 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x14 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 1 1 4)
                    'uint8 16) 14 1 2)))
                'int32 8)
                                             (vec-if
                (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 29 8))))
                (vec-reinterpret
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 0 1 4)
                     'uint8 16) 13 1 3)
                   (x13 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x13 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 1 1 4)
                     'uint8 16) 13 1 3)))
                 'int32 8)
                                             (vec-if
                 (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 28 8))))
                 (vec-reinterpret
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 0 1 4)
                      'uint8 16) 12 1 4)
                    (x12 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x12 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 1 1 4)
                      'uint8 16) 12 1 4)))
                  'int32 8)
                                             (vec-if
                  (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 27 8))))
                  (vec-reinterpret
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 0 1 4)
                       'uint8 16) 11 1 5)
                     (x11 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x11 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 1 1 4)
                       'uint8 16) 11 1 5)))
                   'int32 8)
                                             (vec-if
                   (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 26 8))))
                   (vec-reinterpret
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 0 1 4)
                        'uint8 16) 10 1 6)
                      (x10 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x10 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 1 1 4)
                        'uint8 16) 10 1 6)))
                    'int32 8)
                                             (vec-if
                    (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 25 8))))
                    (vec-reinterpret
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 0 1 4)
                         'uint8 16) 9 1 7)
                       (x9 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x9 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 1 1 4)
                         'uint8 16) 9 1 7)))
                     'int32 8)
                                             (vec-if
                     (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 24 8))))
                     (vec-reinterpret
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 0 1 4)
                          'uint8 16) 8 1 8)
                        (x8 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x8 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 1 1 4)
                          'uint8 16) 8 1 8)))
                      'int32 8)
                                             (vec-if
                      (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 23 8))))
                      (vec-reinterpret
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 0 1 4)
                           'uint8 16) 7 1 9)
                         (x7 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x7 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 1 1 4)
                           'uint8 16) 7 1 9)))
                       'int32 8)
                                             (vec-if
                       (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 22 8))))
                       (vec-reinterpret
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 0 1 4)
                            'uint8 16) 6 1 10)
                          (x6 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x6 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 1 1 4)
                            'uint8 16) 6 1 10)))
                        'int32 8)
                                             (vec-if
                        (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 21 8))))
                        (vec-reinterpret
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 0 1 4)
                             'uint8 16) 5 1 11)
                           (x5 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x5 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 1 1 4)
                             'uint8 16) 5 1 11)))
                         'int32 8)
                                             (vec-if
                         (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 20 8))))
                         (vec-reinterpret
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 0 1 4)
                              'uint8 16) 4 1 12)
                            (x4 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x4 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 1 1 4)
                              'uint8 16) 4 1 12)))
                          'int32 8)
                                             (vec-if
                          (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 19 8))))
                          (vec-reinterpret
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 0 1 4)
                               'uint8 16) 3 1 13)
                             (x3 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x3 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 1 1 4)
                               'uint8 16) 3 1 13)))
                           'int32 8)
                                             (vec-if
                           (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 18 8))))
                           (vec-reinterpret
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 0 1 4)
                                'uint8 16) 2 1 14)
                              (x2 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x2 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 1 1 4)
                                'uint8 16) 2 1 14)))
                            'int32 8)
                                             (vec-if
                            (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 17 8))))
                            (vec-reinterpret
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 4)
                                 'uint8 16) 1 1 15)
                               (uint8_t (bv 0 8)))
                              (concat_vectors
                               (uint8_t (bv 0 8))
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 4)
                                 'uint8 16) 1 1 15)))
                             'int32 8)
                                             (vec-if
                             (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 16 8))))
                             (vec-reinterpret
                              (concat_vectors
                               (concat_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 4)
                                 'uint8 16)
                                (x0 (uint8_t (bv 0 8))))
                               (concat_vectors
                                (x0 (uint8_t (bv 0 8)))
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 4)
                                 'uint8 16)))
                              'int32 8)
                                             (vec-if
                              (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                              (vec-reinterpret
                               (concat_vectors
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 0 1 4)
                                   'uint8 16) 15 1 1)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 4)
                                   'uint8 16) 0 1 15))
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 4)
                                   'uint8 16) 0 1 15)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 1 1 4)
                                   'uint8 16) 15 1 1)))
                               'int32 8)
                                             (vec-if
                               (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                               (vec-reinterpret
                                (concat_vectors
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 0 1 4)
                                    'uint8 16) 14 1 2)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 4)
                                    'uint8 16) 0 1 14))
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 4)
                                    'uint8 16) 0 1 14)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 1 1 4)
                                    'uint8 16) 14 1 2)))
                                'int32 8)
                                             (vec-if
                                (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                                (vec-reinterpret
                                 (concat_vectors
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 0 1 4)
                                     'uint8 16) 13 1 3)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 4)
                                     'uint8 16) 0 1 13))
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 4)
                                     'uint8 16) 0 1 13)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 1 1 4)
                                     'uint8 16) 13 1 3)))
                                 'int32 8)
                                             (vec-if
                                 (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                                 (vec-reinterpret
                                  (concat_vectors
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 0 1 4)
                                      'uint8 16) 12 1 4)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 4)
                                      'uint8 16) 0 1 12))
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 4)
                                      'uint8 16) 0 1 12)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 1 1 4)
                                      'uint8 16) 12 1 4)))
                                  'int32 8)
                                             (vec-if
                                  (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                                  (vec-reinterpret
                                   (concat_vectors
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 0 1 4)
                                       'uint8 16) 11 1 5)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 4)
                                       'uint8 16) 0 1 11))
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 4)
                                       'uint8 16) 0 1 11)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 1 1 4)
                                       'uint8 16) 11 1 5)))
                                   'int32 8)
                                             (vec-if
                                   (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                                   (vec-reinterpret
                                    (concat_vectors
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 0 1 4)
                                        'uint8 16) 10 1 6)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 4)
                                        'uint8 16) 0 1 10))
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 4)
                                        'uint8 16) 0 1 10)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 1 1 4)
                                        'uint8 16) 10 1 6)))
                                    'int32 8)
                                             (vec-if
                                    (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                                    (vec-reinterpret
                                     (concat_vectors
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 0 1 4)
                                         'uint8 16) 9 1 7)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 4)
                                         'uint8 16) 0 1 9))
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 4)
                                         'uint8 16) 0 1 9)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 1 1 4)
                                         'uint8 16) 9 1 7)))
                                     'int32 8)
                                             (vec-if
                                     (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                                     (vec-reinterpret
                                      (concat_vectors
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 0 1 4)
                                          'uint8 16) 8 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 4)
                                          'uint8 16) 0 1 8))
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 4)
                                          'uint8 16) 0 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 1 1 4)
                                          'uint8 16) 8 1 8)))
                                      'int32 8)
                                             (vec-if
                                      (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                                      (vec-reinterpret
                                       (concat_vectors
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 0 1 4)
                                           'uint8 16) 7 1 9)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 4)
                                           'uint8 16) 0 1 7))
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 4)
                                           'uint8 16) 0 1 7)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 1 1 4)
                                           'uint8 16) 7 1 9)))
                                       'int32 8)
                                             (vec-if
                                       (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                                       (vec-reinterpret
                                        (concat_vectors
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 0 1 4)
                                            'uint8 16) 6 1 10)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 4)
                                            'uint8 16) 0 1 6))
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 4)
                                            'uint8 16) 0 1 6)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 1 1 4)
                                            'uint8 16) 6 1 10)))
                                        'int32 8)
                                             (vec-if
                                        (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                                        (vec-reinterpret
                                         (concat_vectors
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 0 1 4)
                                             'uint8 16) 5 1 11)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 4)
                                             'uint8 16) 0 1 5))
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 4)
                                             'uint8 16) 0 1 5)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 1 1 4)
                                             'uint8 16) 5 1 11)))
                                         'int32 8)
                                             (vec-if
                                         (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                                         (vec-reinterpret
                                          (concat_vectors
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 0 1 4)
                                              'uint8 16) 4 1 12)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 4)
                                              'uint8 16) 0 1 4))
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 4)
                                              'uint8 16) 0 1 4)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 1 1 4)
                                              'uint8 16) 4 1 12)))
                                          'int32 8)
                                             (vec-if
                                          (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                                          (vec-reinterpret
                                           (concat_vectors
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 0 1 4)
                                               'uint8 16) 3 1 13)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 4)
                                               'uint8 16) 0 1 3))
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 4)
                                               'uint8 16) 0 1 3)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 1 1 4)
                                               'uint8 16) 3 1 13)))
                                           'int32 8)
                                             (vec-if
                                           (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                                           (vec-reinterpret
                                            (concat_vectors
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 0 1 4)
                                                'uint8 16) 2 1 14)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 4)
                                                'uint8 16) 0 1 2))
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 4)
                                                'uint8 16) 0 1 2)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 1 1 4)
                                                'uint8 16) 2 1 14)))
                                            'int32 8)
                                             (vec-if
                                            (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                                            (vec-reinterpret
                                             (concat_vectors
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 0 1 4)
                                                 'uint8 16) 1 1 15)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 4)
                                                 'uint8 16) 0 1 1))
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 4)
                                                 'uint8 16) 0 1 1)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 1 1 4)
                                                 'uint8 16) 1 1 15)))
                                             'int32 8)
                                             (vec-if
                                             (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                                             b
                                             (x8 (int32_t (bv 0 32))))))))))))))))))))))))))))))))))))]
        [((x86:u32x8 a) (x86:u32x8 b) (uint8_t imm8))
                                           (x86:u32x8
                                            (halide:interpret
                                             (vec-if
               (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 30 8))))
               (vec-reinterpret
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 0 1 4)
                    'uint8 16) 14 1 2)
                  (x14 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x14 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 1 1 4)
                    'uint8 16) 14 1 2)))
                'uint32 8)
                                             (vec-if
                (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 29 8))))
                (vec-reinterpret
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 0 1 4)
                     'uint8 16) 13 1 3)
                   (x13 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x13 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 1 1 4)
                     'uint8 16) 13 1 3)))
                 'uint32 8)
                                             (vec-if
                 (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 28 8))))
                 (vec-reinterpret
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 0 1 4)
                      'uint8 16) 12 1 4)
                    (x12 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x12 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 1 1 4)
                      'uint8 16) 12 1 4)))
                  'uint32 8)
                                             (vec-if
                  (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 27 8))))
                  (vec-reinterpret
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 0 1 4)
                       'uint8 16) 11 1 5)
                     (x11 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x11 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 1 1 4)
                       'uint8 16) 11 1 5)))
                   'uint32 8)
                                             (vec-if
                   (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 26 8))))
                   (vec-reinterpret
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 0 1 4)
                        'uint8 16) 10 1 6)
                      (x10 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x10 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 1 1 4)
                        'uint8 16) 10 1 6)))
                    'uint32 8)
                                             (vec-if
                    (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 25 8))))
                    (vec-reinterpret
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 0 1 4)
                         'uint8 16) 9 1 7)
                       (x9 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x9 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 1 1 4)
                         'uint8 16) 9 1 7)))
                     'uint32 8)
                                             (vec-if
                     (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 24 8))))
                     (vec-reinterpret
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 0 1 4)
                          'uint8 16) 8 1 8)
                        (x8 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x8 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 1 1 4)
                          'uint8 16) 8 1 8)))
                      'uint32 8)
                                             (vec-if
                      (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 23 8))))
                      (vec-reinterpret
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 0 1 4)
                           'uint8 16) 7 1 9)
                         (x7 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x7 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 1 1 4)
                           'uint8 16) 7 1 9)))
                       'uint32 8)
                                             (vec-if
                       (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 22 8))))
                       (vec-reinterpret
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 0 1 4)
                            'uint8 16) 6 1 10)
                          (x6 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x6 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 1 1 4)
                            'uint8 16) 6 1 10)))
                        'uint32 8)
                                             (vec-if
                        (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 21 8))))
                        (vec-reinterpret
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 0 1 4)
                             'uint8 16) 5 1 11)
                           (x5 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x5 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 1 1 4)
                             'uint8 16) 5 1 11)))
                         'uint32 8)
                                             (vec-if
                         (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 20 8))))
                         (vec-reinterpret
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 0 1 4)
                              'uint8 16) 4 1 12)
                            (x4 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x4 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 1 1 4)
                              'uint8 16) 4 1 12)))
                          'uint32 8)
                                             (vec-if
                          (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 19 8))))
                          (vec-reinterpret
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 0 1 4)
                               'uint8 16) 3 1 13)
                             (x3 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x3 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 1 1 4)
                               'uint8 16) 3 1 13)))
                           'uint32 8)
                                             (vec-if
                           (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 18 8))))
                           (vec-reinterpret
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 0 1 4)
                                'uint8 16) 2 1 14)
                              (x2 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x2 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 1 1 4)
                                'uint8 16) 2 1 14)))
                            'uint32 8)
                                             (vec-if
                            (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 17 8))))
                            (vec-reinterpret
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 4)
                                 'uint8 16) 1 1 15)
                               (uint8_t (bv 0 8)))
                              (concat_vectors
                               (uint8_t (bv 0 8))
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 4)
                                 'uint8 16) 1 1 15)))
                             'uint32 8)
                                             (vec-if
                             (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 16 8))))
                             (vec-reinterpret
                              (concat_vectors
                               (concat_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 4)
                                 'uint8 16)
                                (x0 (uint8_t (bv 0 8))))
                               (concat_vectors
                                (x0 (uint8_t (bv 0 8)))
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 4)
                                 'uint8 16)))
                              'uint32 8)
                                             (vec-if
                              (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                              (vec-reinterpret
                               (concat_vectors
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 0 1 4)
                                   'uint8 16) 15 1 1)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 4)
                                   'uint8 16) 0 1 15))
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 4)
                                   'uint8 16) 0 1 15)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 1 1 4)
                                   'uint8 16) 15 1 1)))
                               'uint32 8)
                                             (vec-if
                               (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                               (vec-reinterpret
                                (concat_vectors
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 0 1 4)
                                    'uint8 16) 14 1 2)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 4)
                                    'uint8 16) 0 1 14))
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 4)
                                    'uint8 16) 0 1 14)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 1 1 4)
                                    'uint8 16) 14 1 2)))
                                'uint32 8)
                                             (vec-if
                                (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                                (vec-reinterpret
                                 (concat_vectors
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 0 1 4)
                                     'uint8 16) 13 1 3)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 4)
                                     'uint8 16) 0 1 13))
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 4)
                                     'uint8 16) 0 1 13)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 1 1 4)
                                     'uint8 16) 13 1 3)))
                                 'uint32 8)
                                             (vec-if
                                 (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                                 (vec-reinterpret
                                  (concat_vectors
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 0 1 4)
                                      'uint8 16) 12 1 4)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 4)
                                      'uint8 16) 0 1 12))
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 4)
                                      'uint8 16) 0 1 12)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 1 1 4)
                                      'uint8 16) 12 1 4)))
                                  'uint32 8)
                                             (vec-if
                                  (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                                  (vec-reinterpret
                                   (concat_vectors
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 0 1 4)
                                       'uint8 16) 11 1 5)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 4)
                                       'uint8 16) 0 1 11))
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 4)
                                       'uint8 16) 0 1 11)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 1 1 4)
                                       'uint8 16) 11 1 5)))
                                   'uint32 8)
                                             (vec-if
                                   (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                                   (vec-reinterpret
                                    (concat_vectors
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 0 1 4)
                                        'uint8 16) 10 1 6)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 4)
                                        'uint8 16) 0 1 10))
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 4)
                                        'uint8 16) 0 1 10)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 1 1 4)
                                        'uint8 16) 10 1 6)))
                                    'uint32 8)
                                             (vec-if
                                    (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                                    (vec-reinterpret
                                     (concat_vectors
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 0 1 4)
                                         'uint8 16) 9 1 7)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 4)
                                         'uint8 16) 0 1 9))
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 4)
                                         'uint8 16) 0 1 9)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 1 1 4)
                                         'uint8 16) 9 1 7)))
                                     'uint32 8)
                                             (vec-if
                                     (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                                     (vec-reinterpret
                                      (concat_vectors
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 0 1 4)
                                          'uint8 16) 8 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 4)
                                          'uint8 16) 0 1 8))
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 4)
                                          'uint8 16) 0 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 1 1 4)
                                          'uint8 16) 8 1 8)))
                                      'uint32 8)
                                             (vec-if
                                      (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                                      (vec-reinterpret
                                       (concat_vectors
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 0 1 4)
                                           'uint8 16) 7 1 9)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 4)
                                           'uint8 16) 0 1 7))
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 4)
                                           'uint8 16) 0 1 7)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 1 1 4)
                                           'uint8 16) 7 1 9)))
                                       'uint32 8)
                                             (vec-if
                                       (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                                       (vec-reinterpret
                                        (concat_vectors
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 0 1 4)
                                            'uint8 16) 6 1 10)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 4)
                                            'uint8 16) 0 1 6))
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 4)
                                            'uint8 16) 0 1 6)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 1 1 4)
                                            'uint8 16) 6 1 10)))
                                        'uint32 8)
                                             (vec-if
                                        (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                                        (vec-reinterpret
                                         (concat_vectors
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 0 1 4)
                                             'uint8 16) 5 1 11)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 4)
                                             'uint8 16) 0 1 5))
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 4)
                                             'uint8 16) 0 1 5)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 1 1 4)
                                             'uint8 16) 5 1 11)))
                                         'uint32 8)
                                             (vec-if
                                         (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                                         (vec-reinterpret
                                          (concat_vectors
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 0 1 4)
                                              'uint8 16) 4 1 12)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 4)
                                              'uint8 16) 0 1 4))
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 4)
                                              'uint8 16) 0 1 4)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 1 1 4)
                                              'uint8 16) 4 1 12)))
                                          'uint32 8)
                                             (vec-if
                                          (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                                          (vec-reinterpret
                                           (concat_vectors
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 0 1 4)
                                               'uint8 16) 3 1 13)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 4)
                                               'uint8 16) 0 1 3))
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 4)
                                               'uint8 16) 0 1 3)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 1 1 4)
                                               'uint8 16) 3 1 13)))
                                           'uint32 8)
                                             (vec-if
                                           (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                                           (vec-reinterpret
                                            (concat_vectors
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 0 1 4)
                                                'uint8 16) 2 1 14)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 4)
                                                'uint8 16) 0 1 2))
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 4)
                                                'uint8 16) 0 1 2)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 1 1 4)
                                                'uint8 16) 2 1 14)))
                                            'uint32 8)
                                             (vec-if
                                            (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                                            (vec-reinterpret
                                             (concat_vectors
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 0 1 4)
                                                 'uint8 16) 1 1 15)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 4)
                                                 'uint8 16) 0 1 1))
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 4)
                                                 'uint8 16) 0 1 1)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 1 1 4)
                                                 'uint8 16) 1 1 15)))
                                             'uint32 8)
                                             (vec-if
                                             (x8 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                                             b
                                             (x8 (uint32_t (bv 0 32))))))))))))))))))))))))))))))))))))]
        [((x86:i64x4 a) (x86:i64x4 b) (uint8_t imm8))
                                           (x86:i64x4
                                            (halide:interpret
                                             (vec-if
               (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 30 8))))
               (vec-reinterpret
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 0 1 2)
                    'uint8 16) 14 1 2)
                  (x14 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x14 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 1 1 2)
                    'uint8 16) 14 1 2)))
                'int64 4)
                                             (vec-if
                (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 29 8))))
                (vec-reinterpret
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 0 1 2)
                     'uint8 16) 13 1 3)
                   (x13 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x13 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 1 1 2)
                     'uint8 16) 13 1 3)))
                 'int64 4)
                                             (vec-if
                 (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 28 8))))
                 (vec-reinterpret
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 0 1 2)
                      'uint8 16) 12 1 4)
                    (x12 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x12 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 1 1 2)
                      'uint8 16) 12 1 4)))
                  'int64 4)
                                             (vec-if
                  (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 27 8))))
                  (vec-reinterpret
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 0 1 2)
                       'uint8 16) 11 1 5)
                     (x11 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x11 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 1 1 2)
                       'uint8 16) 11 1 5)))
                   'int64 4)
                                             (vec-if
                   (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 26 8))))
                   (vec-reinterpret
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 0 1 2)
                        'uint8 16) 10 1 6)
                      (x10 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x10 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 1 1 2)
                        'uint8 16) 10 1 6)))
                    'int64 4)
                                             (vec-if
                    (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 25 8))))
                    (vec-reinterpret
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 0 1 2)
                         'uint8 16) 9 1 7)
                       (x9 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x9 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 1 1 2)
                         'uint8 16) 9 1 7)))
                     'int64 4)
                                             (vec-if
                     (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 24 8))))
                     (vec-reinterpret
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 0 1 2)
                          'uint8 16) 8 1 8)
                        (x8 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x8 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 1 1 2)
                          'uint8 16) 8 1 8)))
                      'int64 4)
                                             (vec-if
                      (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 23 8))))
                      (vec-reinterpret
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 0 1 2)
                           'uint8 16) 7 1 9)
                         (x7 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x7 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 1 1 2)
                           'uint8 16) 7 1 9)))
                       'int64 4)
                                             (vec-if
                       (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 22 8))))
                       (vec-reinterpret
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 0 1 2)
                            'uint8 16) 6 1 10)
                          (x6 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x6 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 1 1 2)
                            'uint8 16) 6 1 10)))
                        'int64 4)
                                             (vec-if
                        (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 21 8))))
                        (vec-reinterpret
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 0 1 2)
                             'uint8 16) 5 1 11)
                           (x5 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x5 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 1 1 2)
                             'uint8 16) 5 1 11)))
                         'int64 4)
                                             (vec-if
                         (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 20 8))))
                         (vec-reinterpret
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 0 1 2)
                              'uint8 16) 4 1 12)
                            (x4 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x4 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 1 1 2)
                              'uint8 16) 4 1 12)))
                          'int64 4)
                                             (vec-if
                          (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 19 8))))
                          (vec-reinterpret
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 0 1 2)
                               'uint8 16) 3 1 13)
                             (x3 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x3 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 1 1 2)
                               'uint8 16) 3 1 13)))
                           'int64 4)
                                             (vec-if
                           (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 18 8))))
                           (vec-reinterpret
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 0 1 2)
                                'uint8 16) 2 1 14)
                              (x2 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x2 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 1 1 2)
                                'uint8 16) 2 1 14)))
                            'int64 4)
                                             (vec-if
                            (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 17 8))))
                            (vec-reinterpret
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 2)
                                 'uint8 16) 1 1 15)
                               (uint8_t (bv 0 8)))
                              (concat_vectors
                               (uint8_t (bv 0 8))
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 2)
                                 'uint8 16) 1 1 15)))
                             'int64 4)
                                             (vec-if
                             (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 16 8))))
                             (vec-reinterpret
                              (concat_vectors
                               (concat_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 2)
                                 'uint8 16)
                                (x0 (uint8_t (bv 0 8))))
                               (concat_vectors
                                (x0 (uint8_t (bv 0 8)))
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 2)
                                 'uint8 16)))
                              'int64 4)
                                             (vec-if
                              (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                              (vec-reinterpret
                               (concat_vectors
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 0 1 2)
                                   'uint8 16) 15 1 1)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 2)
                                   'uint8 16) 0 1 15))
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 2)
                                   'uint8 16) 0 1 15)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 1 1 2)
                                   'uint8 16) 15 1 1)))
                               'int64 4)
                                             (vec-if
                               (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                               (vec-reinterpret
                                (concat_vectors
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 0 1 2)
                                    'uint8 16) 14 1 2)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 2)
                                    'uint8 16) 0 1 14))
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 2)
                                    'uint8 16) 0 1 14)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 1 1 2)
                                    'uint8 16) 14 1 2)))
                                'int64 4)
                                             (vec-if
                                (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                                (vec-reinterpret
                                 (concat_vectors
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 0 1 2)
                                     'uint8 16) 13 1 3)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 2)
                                     'uint8 16) 0 1 13))
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 2)
                                     'uint8 16) 0 1 13)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 1 1 2)
                                     'uint8 16) 13 1 3)))
                                 'int64 4)
                                             (vec-if
                                 (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                                 (vec-reinterpret
                                  (concat_vectors
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 0 1 2)
                                      'uint8 16) 12 1 4)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 2)
                                      'uint8 16) 0 1 12))
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 2)
                                      'uint8 16) 0 1 12)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 1 1 2)
                                      'uint8 16) 12 1 4)))
                                  'int64 4)
                                             (vec-if
                                  (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                                  (vec-reinterpret
                                   (concat_vectors
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 0 1 2)
                                       'uint8 16) 11 1 5)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 2)
                                       'uint8 16) 0 1 11))
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 2)
                                       'uint8 16) 0 1 11)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 1 1 2)
                                       'uint8 16) 11 1 5)))
                                   'int64 4)
                                             (vec-if
                                   (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                                   (vec-reinterpret
                                    (concat_vectors
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 0 1 2)
                                        'uint8 16) 10 1 6)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 2)
                                        'uint8 16) 0 1 10))
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 2)
                                        'uint8 16) 0 1 10)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 1 1 2)
                                        'uint8 16) 10 1 6)))
                                    'int64 4)
                                             (vec-if
                                    (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                                    (vec-reinterpret
                                     (concat_vectors
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 0 1 2)
                                         'uint8 16) 9 1 7)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 2)
                                         'uint8 16) 0 1 9))
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 2)
                                         'uint8 16) 0 1 9)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 1 1 2)
                                         'uint8 16) 9 1 7)))
                                     'int64 4)
                                             (vec-if
                                     (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                                     (vec-reinterpret
                                      (concat_vectors
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 0 1 2)
                                          'uint8 16) 8 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 2)
                                          'uint8 16) 0 1 8))
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 2)
                                          'uint8 16) 0 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 1 1 2)
                                          'uint8 16) 8 1 8)))
                                      'int64 4)
                                             (vec-if
                                      (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                                      (vec-reinterpret
                                       (concat_vectors
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 0 1 2)
                                           'uint8 16) 7 1 9)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 2)
                                           'uint8 16) 0 1 7))
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 2)
                                           'uint8 16) 0 1 7)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 1 1 2)
                                           'uint8 16) 7 1 9)))
                                       'int64 4)
                                             (vec-if
                                       (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                                       (vec-reinterpret
                                        (concat_vectors
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 0 1 2)
                                            'uint8 16) 6 1 10)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 2)
                                            'uint8 16) 0 1 6))
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 2)
                                            'uint8 16) 0 1 6)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 1 1 2)
                                            'uint8 16) 6 1 10)))
                                        'int64 4)
                                             (vec-if
                                        (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                                        (vec-reinterpret
                                         (concat_vectors
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 0 1 2)
                                             'uint8 16) 5 1 11)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 2)
                                             'uint8 16) 0 1 5))
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 2)
                                             'uint8 16) 0 1 5)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 1 1 2)
                                             'uint8 16) 5 1 11)))
                                         'int64 4)
                                             (vec-if
                                         (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                                         (vec-reinterpret
                                          (concat_vectors
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 0 1 2)
                                              'uint8 16) 4 1 12)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 2)
                                              'uint8 16) 0 1 4))
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 2)
                                              'uint8 16) 0 1 4)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 1 1 2)
                                              'uint8 16) 4 1 12)))
                                          'int64 4)
                                             (vec-if
                                          (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                                          (vec-reinterpret
                                           (concat_vectors
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 0 1 2)
                                               'uint8 16) 3 1 13)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 2)
                                               'uint8 16) 0 1 3))
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 2)
                                               'uint8 16) 0 1 3)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 1 1 2)
                                               'uint8 16) 3 1 13)))
                                           'int64 4)
                                             (vec-if
                                           (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                                           (vec-reinterpret
                                            (concat_vectors
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 0 1 2)
                                                'uint8 16) 2 1 14)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 2)
                                                'uint8 16) 0 1 2))
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 2)
                                                'uint8 16) 0 1 2)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 1 1 2)
                                                'uint8 16) 2 1 14)))
                                            'int64 4)
                                             (vec-if
                                            (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                                            (vec-reinterpret
                                             (concat_vectors
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 0 1 2)
                                                 'uint8 16) 1 1 15)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 2)
                                                 'uint8 16) 0 1 1))
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 2)
                                                 'uint8 16) 0 1 1)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 1 1 2)
                                                 'uint8 16) 1 1 15)))
                                             'int64 4)
                                             (vec-if
                                             (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                                             b
                                             (x4 (int64_t (bv 0 64))))))))))))))))))))))))))))))))))))]
        [((x86:u64x4 a) (x86:u64x4 b) (uint8_t imm8))
                                           (x86:u64x4
                                            (halide:interpret
                                             (vec-if
               (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 30 8))))
               (vec-reinterpret
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 0 1 2)
                    'uint8 16) 14 1 2)
                  (x14 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x14 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (vec-reinterpret
                    (slice_vectors
                     a 1 1 2)
                    'uint8 16) 14 1 2)))
                'uint64 4)
                                             (vec-if
                (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 29 8))))
                (vec-reinterpret
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 0 1 2)
                     'uint8 16) 13 1 3)
                   (x13 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x13 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (vec-reinterpret
                     (slice_vectors
                      a 1 1 2)
                     'uint8 16) 13 1 3)))
                 'uint64 4)
                                             (vec-if
                 (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 28 8))))
                 (vec-reinterpret
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 0 1 2)
                      'uint8 16) 12 1 4)
                    (x12 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x12 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (vec-reinterpret
                      (slice_vectors
                       a 1 1 2)
                      'uint8 16) 12 1 4)))
                  'uint64 4)
                                             (vec-if
                  (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 27 8))))
                  (vec-reinterpret
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 0 1 2)
                       'uint8 16) 11 1 5)
                     (x11 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x11 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (vec-reinterpret
                       (slice_vectors
                        a 1 1 2)
                       'uint8 16) 11 1 5)))
                   'uint64 4)
                                             (vec-if
                   (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 26 8))))
                   (vec-reinterpret
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 0 1 2)
                        'uint8 16) 10 1 6)
                      (x10 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x10 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (vec-reinterpret
                        (slice_vectors
                         a 1 1 2)
                        'uint8 16) 10 1 6)))
                    'uint64 4)
                                             (vec-if
                    (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 25 8))))
                    (vec-reinterpret
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 0 1 2)
                         'uint8 16) 9 1 7)
                       (x9 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x9 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (vec-reinterpret
                         (slice_vectors
                          a 1 1 2)
                         'uint8 16) 9 1 7)))
                     'uint64 4)
                                             (vec-if
                     (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 24 8))))
                     (vec-reinterpret
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 0 1 2)
                          'uint8 16) 8 1 8)
                        (x8 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x8 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (vec-reinterpret
                          (slice_vectors
                           a 1 1 2)
                          'uint8 16) 8 1 8)))
                      'uint64 4)
                                             (vec-if
                      (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 23 8))))
                      (vec-reinterpret
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 0 1 2)
                           'uint8 16) 7 1 9)
                         (x7 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x7 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (vec-reinterpret
                           (slice_vectors
                            a 1 1 2)
                           'uint8 16) 7 1 9)))
                       'uint64 4)
                                             (vec-if
                       (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 22 8))))
                       (vec-reinterpret
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 0 1 2)
                            'uint8 16) 6 1 10)
                          (x6 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x6 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (vec-reinterpret
                            (slice_vectors
                             a 1 1 2)
                            'uint8 16) 6 1 10)))
                        'uint64 4)
                                             (vec-if
                        (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 21 8))))
                        (vec-reinterpret
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 0 1 2)
                             'uint8 16) 5 1 11)
                           (x5 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x5 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (vec-reinterpret
                             (slice_vectors
                              a 1 1 2)
                             'uint8 16) 5 1 11)))
                         'uint64 4)
                                             (vec-if
                         (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 20 8))))
                         (vec-reinterpret
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 0 1 2)
                              'uint8 16) 4 1 12)
                            (x4 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x4 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (vec-reinterpret
                              (slice_vectors
                               a 1 1 2)
                              'uint8 16) 4 1 12)))
                          'uint64 4)
                                             (vec-if
                          (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 19 8))))
                          (vec-reinterpret
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 0 1 2)
                               'uint8 16) 3 1 13)
                             (x3 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x3 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (vec-reinterpret
                               (slice_vectors
                                a 1 1 2)
                               'uint8 16) 3 1 13)))
                           'uint64 4)
                                             (vec-if
                           (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 18 8))))
                           (vec-reinterpret
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 0 1 2)
                                'uint8 16) 2 1 14)
                              (x2 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x2 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (vec-reinterpret
                                (slice_vectors
                                 a 1 1 2)
                                'uint8 16) 2 1 14)))
                            'uint64 4)
                                             (vec-if
                            (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 17 8))))
                            (vec-reinterpret
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 2)
                                 'uint8 16) 1 1 15)
                               (uint8_t (bv 0 8)))
                              (concat_vectors
                               (uint8_t (bv 0 8))
                               (slice_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 2)
                                 'uint8 16) 1 1 15)))
                             'uint64 4)
                                             (vec-if
                             (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 16 8))))
                             (vec-reinterpret
                              (concat_vectors
                               (concat_vectors
                                (vec-reinterpret
                                 (slice_vectors
                                  a 0 1 2)
                                 'uint8 16)
                                (x0 (uint8_t (bv 0 8))))
                               (concat_vectors
                                (x0 (uint8_t (bv 0 8)))
                                (vec-reinterpret
                                 (slice_vectors
                                  a 1 1 2)
                                 'uint8 16)))
                              'uint64 4)
                                             (vec-if
                              (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                              (vec-reinterpret
                               (concat_vectors
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 0 1 2)
                                   'uint8 16) 15 1 1)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 2)
                                   'uint8 16) 0 1 15))
                                (concat_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    a 0 1 2)
                                   'uint8 16) 0 1 15)
                                 (slice_vectors
                                  (vec-reinterpret
                                   (slice_vectors
                                    b 1 1 2)
                                   'uint8 16) 15 1 1)))
                               'uint64 4)
                                             (vec-if
                               (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                               (vec-reinterpret
                                (concat_vectors
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 0 1 2)
                                    'uint8 16) 14 1 2)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 2)
                                    'uint8 16) 0 1 14))
                                 (concat_vectors
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     a 0 1 2)
                                    'uint8 16) 0 1 14)
                                  (slice_vectors
                                   (vec-reinterpret
                                    (slice_vectors
                                     b 1 1 2)
                                    'uint8 16) 14 1 2)))
                                'uint64 4)
                                             (vec-if
                                (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                                (vec-reinterpret
                                 (concat_vectors
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 0 1 2)
                                     'uint8 16) 13 1 3)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 2)
                                     'uint8 16) 0 1 13))
                                  (concat_vectors
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      a 0 1 2)
                                     'uint8 16) 0 1 13)
                                   (slice_vectors
                                    (vec-reinterpret
                                     (slice_vectors
                                      b 1 1 2)
                                     'uint8 16) 13 1 3)))
                                 'uint64 4)
                                             (vec-if
                                 (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                                 (vec-reinterpret
                                  (concat_vectors
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 0 1 2)
                                      'uint8 16) 12 1 4)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 2)
                                      'uint8 16) 0 1 12))
                                   (concat_vectors
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       a 0 1 2)
                                      'uint8 16) 0 1 12)
                                    (slice_vectors
                                     (vec-reinterpret
                                      (slice_vectors
                                       b 1 1 2)
                                      'uint8 16) 12 1 4)))
                                  'uint64 4)
                                             (vec-if
                                  (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                                  (vec-reinterpret
                                   (concat_vectors
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 0 1 2)
                                       'uint8 16) 11 1 5)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 2)
                                       'uint8 16) 0 1 11))
                                    (concat_vectors
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        a 0 1 2)
                                       'uint8 16) 0 1 11)
                                     (slice_vectors
                                      (vec-reinterpret
                                       (slice_vectors
                                        b 1 1 2)
                                       'uint8 16) 11 1 5)))
                                   'uint64 4)
                                             (vec-if
                                   (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                                   (vec-reinterpret
                                    (concat_vectors
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 0 1 2)
                                        'uint8 16) 10 1 6)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 2)
                                        'uint8 16) 0 1 10))
                                     (concat_vectors
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         a 0 1 2)
                                        'uint8 16) 0 1 10)
                                      (slice_vectors
                                       (vec-reinterpret
                                        (slice_vectors
                                         b 1 1 2)
                                        'uint8 16) 10 1 6)))
                                    'uint64 4)
                                             (vec-if
                                    (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                                    (vec-reinterpret
                                     (concat_vectors
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 0 1 2)
                                         'uint8 16) 9 1 7)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 2)
                                         'uint8 16) 0 1 9))
                                      (concat_vectors
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          a 0 1 2)
                                         'uint8 16) 0 1 9)
                                       (slice_vectors
                                        (vec-reinterpret
                                         (slice_vectors
                                          b 1 1 2)
                                         'uint8 16) 9 1 7)))
                                     'uint64 4)
                                             (vec-if
                                     (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                                     (vec-reinterpret
                                      (concat_vectors
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 0 1 2)
                                          'uint8 16) 8 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 2)
                                          'uint8 16) 0 1 8))
                                       (concat_vectors
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           a 0 1 2)
                                          'uint8 16) 0 1 8)
                                        (slice_vectors
                                         (vec-reinterpret
                                          (slice_vectors
                                           b 1 1 2)
                                          'uint8 16) 8 1 8)))
                                      'uint64 4)
                                             (vec-if
                                      (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                                      (vec-reinterpret
                                       (concat_vectors
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 0 1 2)
                                           'uint8 16) 7 1 9)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 2)
                                           'uint8 16) 0 1 7))
                                        (concat_vectors
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            a 0 1 2)
                                           'uint8 16) 0 1 7)
                                         (slice_vectors
                                          (vec-reinterpret
                                           (slice_vectors
                                            b 1 1 2)
                                           'uint8 16) 7 1 9)))
                                       'uint64 4)
                                             (vec-if
                                       (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                                       (vec-reinterpret
                                        (concat_vectors
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 0 1 2)
                                            'uint8 16) 6 1 10)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 2)
                                            'uint8 16) 0 1 6))
                                         (concat_vectors
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             a 0 1 2)
                                            'uint8 16) 0 1 6)
                                          (slice_vectors
                                           (vec-reinterpret
                                            (slice_vectors
                                             b 1 1 2)
                                            'uint8 16) 6 1 10)))
                                        'uint64 4)
                                             (vec-if
                                        (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                                        (vec-reinterpret
                                         (concat_vectors
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 0 1 2)
                                             'uint8 16) 5 1 11)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 2)
                                             'uint8 16) 0 1 5))
                                          (concat_vectors
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              a 0 1 2)
                                             'uint8 16) 0 1 5)
                                           (slice_vectors
                                            (vec-reinterpret
                                             (slice_vectors
                                              b 1 1 2)
                                             'uint8 16) 5 1 11)))
                                         'uint64 4)
                                             (vec-if
                                         (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                                         (vec-reinterpret
                                          (concat_vectors
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 0 1 2)
                                              'uint8 16) 4 1 12)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 2)
                                              'uint8 16) 0 1 4))
                                           (concat_vectors
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               a 0 1 2)
                                              'uint8 16) 0 1 4)
                                            (slice_vectors
                                             (vec-reinterpret
                                              (slice_vectors
                                               b 1 1 2)
                                              'uint8 16) 4 1 12)))
                                          'uint64 4)
                                             (vec-if
                                          (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                                          (vec-reinterpret
                                           (concat_vectors
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 0 1 2)
                                               'uint8 16) 3 1 13)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 2)
                                               'uint8 16) 0 1 3))
                                            (concat_vectors
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                a 0 1 2)
                                               'uint8 16) 0 1 3)
                                             (slice_vectors
                                              (vec-reinterpret
                                               (slice_vectors
                                                b 1 1 2)
                                               'uint8 16) 3 1 13)))
                                           'uint64 4)
                                             (vec-if
                                           (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                                           (vec-reinterpret
                                            (concat_vectors
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 0 1 2)
                                                'uint8 16) 2 1 14)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 2)
                                                'uint8 16) 0 1 2))
                                             (concat_vectors
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 a 0 1 2)
                                                'uint8 16) 0 1 2)
                                              (slice_vectors
                                               (vec-reinterpret
                                                (slice_vectors
                                                 b 1 1 2)
                                                'uint8 16) 2 1 14)))
                                            'uint64 4)
                                             (vec-if
                                            (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                                            (vec-reinterpret
                                             (concat_vectors
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 0 1 2)
                                                 'uint8 16) 1 1 15)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 2)
                                                 'uint8 16) 0 1 1))
                                              (concat_vectors
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  a 0 1 2)
                                                 'uint8 16) 0 1 1)
                                               (slice_vectors
                                                (vec-reinterpret
                                                 (slice_vectors
                                                  b 1 1 2)
                                                 'uint8 16) 1 1 15)))
                                             'uint64 4)
                                             (vec-if
                                             (x4 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                                             b
                                             (x4 (uint64_t (bv 0 64))))))))))))))))))))))))))))))))))))]

        [(_ _ _) (assert #f "infeasible in interpreting vpalignr")])]

    [(x86:vpand a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i8x32 a) (x86:i8x32 b))
            (x86:i8x32
             (halide:interpret
              (vec-bwand
               a
               b)))]
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (vec-bwand
               a
               b)))]
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:i32x8
             (halide:interpret
              (vec-bwand
               a
               b)))]
        [((x86:i64x4 a) (x86:i64x4 b))
            (x86:i64x4
             (halide:interpret
              (vec-bwand
               a
               b)))]
        [((x86:u8x32 a) (x86:u8x32 b))
            (x86:u8x32
             (halide:interpret
              (vec-bwand
               a
               b)))]
        [((x86:u16x16 a) (x86:u16x16 b))
            (x86:u16x16
             (halide:interpret
              (vec-bwand
               a
               b)))]
        [((x86:u32x8 a) (x86:u32x8 b))
            (x86:u32x8
             (halide:interpret
              (vec-bwand
               a
               b)))]
        [((x86:u64x4 a) (x86:u64x4 b))
            (x86:u64x4
             (halide:interpret
              (vec-bwand
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpand")])]

    [(x86:vpandn a)
      (destruct* ((interpret a))
        [((x86:i8x32 a))
            (x86:i8x32
             (halide:interpret
              (vec-bwnot
               a)))]
        [((x86:i16x16 a))
            (x86:i16x16
             (halide:interpret
              (vec-bwnot
               a)))]
        [((x86:i32x8 a))
            (x86:i32x8
             (halide:interpret
              (vec-bwnot
               a)))]
        [((x86:i64x4 a))
            (x86:i64x4
             (halide:interpret
              (vec-bwnot
               a)))]
        [((x86:u8x32 a))
            (x86:u8x32
             (halide:interpret
              (vec-bwnot
               a)))]
        [((x86:u16x16 a))
            (x86:u16x16
             (halide:interpret
              (vec-bwnot
               a)))]
        [((x86:u32x8 a))
            (x86:u32x8
             (halide:interpret
              (vec-bwnot
               a)))]
        [((x86:u64x4 a))
            (x86:u64x4
             (halide:interpret
              (vec-bwnot
               a)))]

        [(_) (assert #f "infeasible in interpreting vpandn")])]

    [(x86:vpavgb a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u8x32 a) (x86:u8x32 b))
            (x86:u8x32
             (halide:interpret
              (vec-add
               (vec-add
                (vec-shr
                 a
                 (x32 (uint8_t (bv 1 8))))
                (vec-shr
                 b
                 (x32 (uint8_t (bv 1 8)))))
               (vec-shr
                (vec-add
                 (vec-add
                  (vec-bwand
                   a
                   (x32 (uint8_t (bv 1 8))))
                  (vec-bwand
                   b
                   (x32 (uint8_t (bv 1 8)))))
                 (x32 (uint8_t (bv 1 8))))
                (x32 (uint8_t (bv 1 8)))))))]

        [(_ _) (assert #f "infeasible in interpreting vpavgb")])]

    [(x86:vpavgw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u16x16 a) (x86:u16x16 b))
            (x86:u16x16
             (halide:interpret
              (vec-add
               (vec-add
                (vec-shr
                 a
                 (x16 (uint16_t (bv 1 16))))
                (vec-shr
                 b
                 (x16 (uint16_t (bv 1 16)))))
               (vec-shr
                (vec-add
                 (vec-add
                  (vec-bwand
                   a
                   (x16 (uint16_t (bv 1 16))))
                  (vec-bwand
                   b
                   (x16 (uint16_t (bv 1 16)))))
                 (x16 (uint16_t (bv 1 16))))
                (x16 (uint16_t (bv 1 16)))))))]

        [(_ _) (assert #f "infeasible in interpreting vpavgw")])]

    [(x86:vpblendd a b imm8)
      (destruct* ((interpret a) (interpret b) (interpret imm8))
        [((x86:i32x8 a) (x86:i32x8 b) (uint8_t imm8))
             (x86:i32x8
              (halide:interpret
               (vec-if
               (vec-reinterpret
                (uint8_t
                 imm8)
                'uint1 8)
               b
               a)))]
        [((x86:u32x8 a) (x86:u32x8 b) (uint8_t imm8))
             (x86:u32x8
              (halide:interpret
               (vec-if
               (vec-reinterpret
                (uint8_t
                 imm8)
                'uint1 8)
               b
               a)))]

        [(_ _ _) (assert #f "infeasible in interpreting vpblendd")])]

    [(x86:vpblendd_128 a b imm8)
      (destruct* ((interpret a) (interpret b) (interpret imm8))
        [((x86:i32x4 a) (x86:i32x4 b) (uint8_t imm8))
             (x86:i32x4
              (halide:interpret
               (vec-if
               (slice_vectors
                (vec-reinterpret
                 (uint8_t
                  imm8)
                 'uint1 8) 0 1 4)
               b
               a)))]
        [((x86:u32x4 a) (x86:u32x4 b) (uint8_t imm8))
             (x86:u32x4
              (halide:interpret
               (vec-if
               (slice_vectors
                (vec-reinterpret
                 (uint8_t
                  imm8)
                 'uint1 8) 0 1 4)
               b
               a)))]

        [(_ _ _) (assert #f "infeasible in interpreting vpblendd_128")])]

    [(x86:vpblendvb a b c)
      (destruct* ((interpret a) (interpret b) (interpret c))
        [((x86:i8x32 a) (x86:i8x32 b) (x86:u8x32 c))
             (x86:i8x32
              (halide:interpret
               (vec-if
               (vec-eq
                (vec-bwand
                 c
                 (x32 (uint8_t (bv 128 8))))
                (x32 (uint8_t (bv 128 8))))
               b
               a)))]
        [((x86:u8x32 a) (x86:u8x32 b) (x86:u8x32 c))
             (x86:u8x32
              (halide:interpret
               (vec-if
               (vec-eq
                (vec-bwand
                 c
                 (x32 (uint8_t (bv 128 8))))
                (x32 (uint8_t (bv 128 8))))
               b
               a)))]

        [(_ _ _) (assert #f "infeasible in interpreting vpblendvb")])]

    [(x86:vpblendw a b imm8)
      (destruct* ((interpret a) (interpret b) (interpret imm8))
        [((x86:i16x16 a) (x86:i16x16 b) (uint8_t imm8))
             (x86:i16x16
              (halide:interpret
               (vec-if
               (concat_vectors
                (vec-reinterpret
                 (uint8_t
                  imm8)
                 'uint1 8)
                (vec-reinterpret
                 (uint8_t
                  imm8)
                 'uint1 8))
               b
               a)))]
        [((x86:u16x16 a) (x86:u16x16 b) (uint8_t imm8))
             (x86:u16x16
              (halide:interpret
               (vec-if
               (concat_vectors
                (vec-reinterpret
                 (uint8_t
                  imm8)
                 'uint1 8)
                (vec-reinterpret
                 (uint8_t
                  imm8)
                 'uint1 8))
               b
               a)))]

        [(_ _ _) (assert #f "infeasible in interpreting vpblendw")])]

    [(x86:vpbroadcastb imm8)
      (destruct* ((interpret imm8))
        [((int8_t v))   (x86:i8x32 (lambda (i) (int8_t v)))]
        [((uint8_t v))   (x86:u8x32 (lambda (i) (uint8_t v)))]

        [(_) (assert #f "infeasible in interpreting vpbroadcastb")])]

    [(x86:vpbroadcastb_128 imm8)
      (destruct* ((interpret imm8))
        [((int8_t v))   (x86:i8x16 (lambda (i) (int8_t v)))]
        [((uint8_t v))   (x86:u8x16 (lambda (i) (uint8_t v)))]

        [(_) (assert #f "infeasible in interpreting vpbroadcastb_128")])]

    [(x86:vpbroadcastd imm32)
      (destruct* ((interpret imm32))
        [((int32_t v))   (x86:i32x8 (lambda (i) (int32_t v)))]
        [((uint32_t v))   (x86:u32x8 (lambda (i) (uint32_t v)))]

        [(_) (assert #f "infeasible in interpreting vpbroadcastd")])]

    [(x86:vpbroadcastd_128 imm32)
      (destruct* ((interpret imm32))
        [((int32_t v))   (x86:i32x4 (lambda (i) (int32_t v)))]
        [((uint32_t v))   (x86:u32x4 (lambda (i) (uint32_t v)))]

        [(_) (assert #f "infeasible in interpreting vpbroadcastd_128")])]

    [(x86:vpbroadcastq imm64)
      (destruct* ((interpret imm64))
        [((int64_t v))   (x86:i64x4 (lambda (i) (int64_t v)))]
        [((uint64_t v))   (x86:u64x4 (lambda (i) (uint64_t v)))]

        [(_) (assert #f "infeasible in interpreting vpbroadcastq")])]

    [(x86:vpbroadcastq_128 imm64)
      (destruct* ((interpret imm64))
        [((int64_t v))   (x86:i64x2 (lambda (i) (int64_t v)))]
        [((uint64_t v))   (x86:u64x2 (lambda (i) (uint64_t v)))]

        [(_) (assert #f "infeasible in interpreting vpbroadcastq_128")])]

    [(x86:vpbroadcastw imm16)
      (destruct* ((interpret imm16))
        [((int16_t v))   (x86:i16x16 (lambda (i) (int16_t v)))]
        [((uint16_t v))   (x86:u16x16 (lambda (i) (uint16_t v)))]

        [(_) (assert #f "infeasible in interpreting vpbroadcastw")])]

    [(x86:vpbroadcastw_128 imm16)
      (destruct* ((interpret imm16))
        [((int16_t v))   (x86:i16x8 (lambda (i) (int16_t v)))]
        [((uint16_t v))   (x86:u16x8 (lambda (i) (uint16_t v)))]

        [(_) (assert #f "infeasible in interpreting vpbroadcastw_128")])]

    [(x86:vpcmpeqb a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i8x32 a) (x86:i8x32 b))
             (x86:i8x32
              (halide:interpret
               (vec-if
               (vec-eq
                a
                b)
               (x32 (int8_t (bv -1 8)))
               (x32 (int8_t (bv 0 8))))))]
        [((x86:u8x32 a) (x86:u8x32 b))
             (x86:u8x32
              (halide:interpret
               (vec-if
               (vec-eq
                a
                b)
               (x32 (uint8_t (bv 255 8)))
               (x32 (uint8_t (bv 0 8))))))]

        [(_ _) (assert #f "infeasible in interpreting vpcmpeqb")])]

    [(x86:vpcmpeqd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:i32x8 b))
             (x86:i32x8
              (halide:interpret
               (vec-if
               (vec-eq
                a
                b)
               (x8 (int32_t (bv -1 32)))
               (x8 (int32_t (bv 0 32))))))]
        [((x86:u32x8 a) (x86:u32x8 b))
             (x86:u32x8
              (halide:interpret
               (vec-if
               (vec-eq
                a
                b)
               (x8 (uint32_t (bv 4294967295 32)))
               (x8 (uint32_t (bv 0 32))))))]

        [(_ _) (assert #f "infeasible in interpreting vpcmpeqd")])]

    [(x86:vpcmpeqq a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i64x4 a) (x86:i64x4 b))
             (x86:i64x4
              (halide:interpret
               (vec-if
               (vec-eq
                a
                b)
               (x4 (int64_t (bv -1 64)))
               (x4 (int64_t (bv 0 64))))))]
        [((x86:u64x4 a) (x86:u64x4 b))
             (x86:u64x4
              (halide:interpret
               (vec-if
               (vec-eq
                a
                b)
               (x4 (uint64_t (bv 18446744073709551615 64)))
               (x4 (uint64_t (bv 0 64))))))]

        [(_ _) (assert #f "infeasible in interpreting vpcmpeqq")])]

    [(x86:vpcmpeqw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
             (x86:i16x16
              (halide:interpret
               (vec-if
               (vec-eq
                a
                b)
               (x16 (int16_t (bv -1 16)))
               (x16 (int16_t (bv 0 16))))))]
        [((x86:u16x16 a) (x86:u16x16 b))
             (x86:u16x16
              (halide:interpret
               (vec-if
               (vec-eq
                a
                b)
               (x16 (uint16_t (bv 65535 16)))
               (x16 (uint16_t (bv 0 16))))))]

        [(_ _) (assert #f "infeasible in interpreting vpcmpeqw")])]

    [(x86:vpcmpgtb a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i8x32 a) (x86:i8x32 b))
             (x86:i8x32
              (halide:interpret
               (vec-if
               (vec-gt
                a
                b)
               (x32 (int8_t (bv -1 8)))
               (x32 (int8_t (bv 0 8))))))]

        [(_ _) (assert #f "infeasible in interpreting vpcmpgtb")])]

    [(x86:vpcmpgtd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:i32x8 b))
             (x86:i32x8
              (halide:interpret
               (vec-if
               (vec-gt
                a
                b)
               (x8 (int32_t (bv -1 32)))
               (x8 (int32_t (bv 0 32))))))]

        [(_ _) (assert #f "infeasible in interpreting vpcmpgtd")])]

    [(x86:vpcmpgtq a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i64x4 a) (x86:i64x4 b))
             (x86:i64x4
              (halide:interpret
               (vec-if
               (vec-gt
                a
                b)
               (x4 (int64_t (bv -1 64)))
               (x4 (int64_t (bv 0 64))))))]

        [(_ _) (assert #f "infeasible in interpreting vpcmpgtq")])]

    [(x86:vpcmpgtw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
             (x86:i16x16
              (halide:interpret
               (vec-if
               (vec-gt
                a
                b)
               (x16 (int16_t (bv -1 16)))
               (x16 (int16_t (bv 0 16))))))]

        [(_ _) (assert #f "infeasible in interpreting vpcmpgtw")])]

    [(x86:vperm2f128 a b imm8)
      (destruct* ((interpret a) (interpret b) (interpret imm8))
        [((x86:i8x32 a) (x86:i8x32 b) (uint8_t imm8))
                    (x86:i8x32
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x16 (int8_t (bv 0 8)))
                   (vec-if
                 (x16 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 16)
                   (vec-if
                  (x16 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 16)
                   (vec-if
                   (x16 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 16)
                   (slice_vectors
                    b 1 1 16)))))
                       (vec-if
                    (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x16 (int8_t (bv 0 8)))
                       (vec-if
                     (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 16)
                       (vec-if
                      (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 16)
                       (vec-if
                       (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 16)
                       (slice_vectors
                        b 1 1 16))))))))]
        [((x86:i16x16 a) (x86:i16x16 b) (uint8_t imm8))
                    (x86:i16x16
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x8 (int16_t (bv 0 16)))
                   (vec-if
                 (x8 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 8)
                   (vec-if
                  (x8 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 8)
                   (vec-if
                   (x8 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 8)
                   (slice_vectors
                    b 1 1 8)))))
                       (vec-if
                    (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x8 (int16_t (bv 0 16)))
                       (vec-if
                     (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 8)
                       (vec-if
                      (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 8)
                       (vec-if
                       (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 8)
                       (slice_vectors
                        b 1 1 8))))))))]
        [((x86:i32x8 a) (x86:i32x8 b) (uint8_t imm8))
                    (x86:i32x8
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x4 (int32_t (bv 0 32)))
                   (vec-if
                 (x4 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 4)
                   (vec-if
                  (x4 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 4)
                   (vec-if
                   (x4 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 4)
                   (slice_vectors
                    b 1 1 4)))))
                       (vec-if
                    (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x4 (int32_t (bv 0 32)))
                       (vec-if
                     (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 4)
                       (vec-if
                      (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 4)
                       (vec-if
                       (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 4)
                       (slice_vectors
                        b 1 1 4))))))))]
        [((x86:i64x4 a) (x86:i64x4 b) (uint8_t imm8))
                    (x86:i64x4
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x2 (int64_t (bv 0 64)))
                   (vec-if
                 (x2 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 2)
                   (vec-if
                  (x2 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 2)
                   (vec-if
                   (x2 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 2)
                   (slice_vectors
                    b 1 1 2)))))
                       (vec-if
                    (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x2 (int64_t (bv 0 64)))
                       (vec-if
                     (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 2)
                       (vec-if
                      (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 2)
                       (vec-if
                       (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 2)
                       (slice_vectors
                        b 1 1 2))))))))]
        [((x86:u8x32 a) (x86:u8x32 b) (uint8_t imm8))
                    (x86:u8x32
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x16 (uint8_t (bv 0 8)))
                   (vec-if
                 (x16 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 16)
                   (vec-if
                  (x16 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 16)
                   (vec-if
                   (x16 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 16)
                   (slice_vectors
                    b 1 1 16)))))
                       (vec-if
                    (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x16 (uint8_t (bv 0 8)))
                       (vec-if
                     (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 16)
                       (vec-if
                      (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 16)
                       (vec-if
                       (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 16)
                       (slice_vectors
                        b 1 1 16))))))))]
        [((x86:u16x16 a) (x86:u16x16 b) (uint8_t imm8))
                    (x86:u16x16
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x8 (uint16_t (bv 0 16)))
                   (vec-if
                 (x8 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 8)
                   (vec-if
                  (x8 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 8)
                   (vec-if
                   (x8 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 8)
                   (slice_vectors
                    b 1 1 8)))))
                       (vec-if
                    (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x8 (uint16_t (bv 0 16)))
                       (vec-if
                     (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 8)
                       (vec-if
                      (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 8)
                       (vec-if
                       (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 8)
                       (slice_vectors
                        b 1 1 8))))))))]
        [((x86:u32x8 a) (x86:u32x8 b) (uint8_t imm8))
                    (x86:u32x8
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x4 (uint32_t (bv 0 32)))
                   (vec-if
                 (x4 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 4)
                   (vec-if
                  (x4 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 4)
                   (vec-if
                   (x4 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 4)
                   (slice_vectors
                    b 1 1 4)))))
                       (vec-if
                    (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x4 (uint32_t (bv 0 32)))
                       (vec-if
                     (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 4)
                       (vec-if
                      (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 4)
                       (vec-if
                       (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 4)
                       (slice_vectors
                        b 1 1 4))))))))]
        [((x86:u64x4 a) (x86:u64x4 b) (uint8_t imm8))
                    (x86:u64x4
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x2 (uint64_t (bv 0 64)))
                   (vec-if
                 (x2 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 2)
                   (vec-if
                  (x2 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 2)
                   (vec-if
                   (x2 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 2)
                   (slice_vectors
                    b 1 1 2)))))
                       (vec-if
                    (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x2 (uint64_t (bv 0 64)))
                       (vec-if
                     (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 2)
                       (vec-if
                      (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 2)
                       (vec-if
                       (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 2)
                       (slice_vectors
                        b 1 1 2))))))))]

        [(_ _ _) (assert #f "infeasible in interpreting vperm2f128")])]

    [(x86:vperm2i128 a b imm8)
      (destruct* ((interpret a) (interpret b) (interpret imm8))
        [((x86:i8x32 a) (x86:i8x32 b) (uint8_t imm8))
                    (x86:i8x32
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x16 (int8_t (bv 0 8)))
                   (vec-if
                 (x16 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 16)
                   (vec-if
                  (x16 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 16)
                   (vec-if
                   (x16 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 16)
                   (slice_vectors
                    b 1 1 16)))))
                       (vec-if
                    (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x16 (int8_t (bv 0 8)))
                       (vec-if
                     (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 16)
                       (vec-if
                      (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 16)
                       (vec-if
                       (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 16)
                       (slice_vectors
                        b 1 1 16))))))))]
        [((x86:i16x16 a) (x86:i16x16 b) (uint8_t imm8))
                    (x86:i16x16
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x8 (int16_t (bv 0 16)))
                   (vec-if
                 (x8 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 8)
                   (vec-if
                  (x8 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 8)
                   (vec-if
                   (x8 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 8)
                   (slice_vectors
                    b 1 1 8)))))
                       (vec-if
                    (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x8 (int16_t (bv 0 16)))
                       (vec-if
                     (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 8)
                       (vec-if
                      (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 8)
                       (vec-if
                       (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 8)
                       (slice_vectors
                        b 1 1 8))))))))]
        [((x86:i32x8 a) (x86:i32x8 b) (uint8_t imm8))
                    (x86:i32x8
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x4 (int32_t (bv 0 32)))
                   (vec-if
                 (x4 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 4)
                   (vec-if
                  (x4 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 4)
                   (vec-if
                   (x4 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 4)
                   (slice_vectors
                    b 1 1 4)))))
                       (vec-if
                    (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x4 (int32_t (bv 0 32)))
                       (vec-if
                     (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 4)
                       (vec-if
                      (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 4)
                       (vec-if
                       (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 4)
                       (slice_vectors
                        b 1 1 4))))))))]
        [((x86:i64x4 a) (x86:i64x4 b) (uint8_t imm8))
                    (x86:i64x4
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x2 (int64_t (bv 0 64)))
                   (vec-if
                 (x2 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 2)
                   (vec-if
                  (x2 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 2)
                   (vec-if
                   (x2 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 2)
                   (slice_vectors
                    b 1 1 2)))))
                       (vec-if
                    (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x2 (int64_t (bv 0 64)))
                       (vec-if
                     (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 2)
                       (vec-if
                      (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 2)
                       (vec-if
                       (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 2)
                       (slice_vectors
                        b 1 1 2))))))))]
        [((x86:u8x32 a) (x86:u8x32 b) (uint8_t imm8))
                    (x86:u8x32
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x16 (uint8_t (bv 0 8)))
                   (vec-if
                 (x16 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 16)
                   (vec-if
                  (x16 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 16)
                   (vec-if
                   (x16 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 16)
                   (slice_vectors
                    b 1 1 16)))))
                       (vec-if
                    (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x16 (uint8_t (bv 0 8)))
                       (vec-if
                     (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 16)
                       (vec-if
                      (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 16)
                       (vec-if
                       (x16 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 16)
                       (slice_vectors
                        b 1 1 16))))))))]
        [((x86:u16x16 a) (x86:u16x16 b) (uint8_t imm8))
                    (x86:u16x16
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x8 (uint16_t (bv 0 16)))
                   (vec-if
                 (x8 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 8)
                   (vec-if
                  (x8 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 8)
                   (vec-if
                   (x8 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 8)
                   (slice_vectors
                    b 1 1 8)))))
                       (vec-if
                    (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x8 (uint16_t (bv 0 16)))
                       (vec-if
                     (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 8)
                       (vec-if
                      (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 8)
                       (vec-if
                       (x8 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 8)
                       (slice_vectors
                        b 1 1 8))))))))]
        [((x86:u32x8 a) (x86:u32x8 b) (uint8_t imm8))
                    (x86:u32x8
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x4 (uint32_t (bv 0 32)))
                   (vec-if
                 (x4 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 4)
                   (vec-if
                  (x4 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 4)
                   (vec-if
                   (x4 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 4)
                   (slice_vectors
                    b 1 1 4)))))
                       (vec-if
                    (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x4 (uint32_t (bv 0 32)))
                       (vec-if
                     (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 4)
                       (vec-if
                      (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 4)
                       (vec-if
                       (x4 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 4)
                       (slice_vectors
                        b 1 1 4))))))))]
        [((x86:u64x4 a) (x86:u64x4 b) (uint8_t imm8))
                    (x86:u64x4
                     (halide:interpret
                      (concat_vectors
                   (vec-if
                (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 15 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                (x2 (uint64_t (bv 0 64)))
                   (vec-if
                 (x2 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                 (slice_vectors
                  a 0 1 2)
                   (vec-if
                  (x2 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                  (slice_vectors
                   a 1 1 2)
                   (vec-if
                   (x2 (sca-eq
 (sca-bwand
  (sca-bwand
   (uint8_t
    imm8)
   (uint8_t (bv 15 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                   (slice_vectors
                    b 0 1 2)
                   (slice_vectors
                    b 1 1 2)))))
                       (vec-if
                    (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-shr
    (sca-bwand
     (uint8_t
      imm8)
     (uint8_t (bv 240 8)))
    (uint8_t (bv 4 8)))
   (uint8_t (bv 3 8)))
  (uint8_t (bv 1 8)))
 (uint8_t (bv 1 8))))
                    (x2 (uint64_t (bv 0 64)))
                       (vec-if
                     (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 0 8))))
                     (slice_vectors
                      a 0 1 2)
                       (vec-if
                      (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 1 8))))
                      (slice_vectors
                       a 1 1 2)
                       (vec-if
                       (x2 (sca-eq
 (sca-bwand
  (sca-shr
   (sca-bwand
    (uint8_t
     imm8)
    (uint8_t (bv 240 8)))
   (uint8_t (bv 4 8)))
  (uint8_t (bv 3 8)))
 (uint8_t (bv 2 8))))
                       (slice_vectors
                        b 0 1 2)
                       (slice_vectors
                        b 1 1 2))))))))]

        [(_ _ _) (assert #f "infeasible in interpreting vperm2i128")])]

    [(x86:vpermd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:u32x8 b))
            (x86:i32x8
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (concat_vectors
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 0 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 0 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 0 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 0 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 0 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 0 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 0 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1))))))))
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 1 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 1 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 1 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 1 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 1 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 1 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 1 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1)))))))))
                (concat_vectors
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 1 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 1 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 1 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 1 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 1 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 1 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 1 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1))))))))
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 2 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 2 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 2 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 2 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 2 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 2 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 2 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1))))))))))
               (concat_vectors
                (concat_vectors
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 1 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 1 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 1 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 1 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 1 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 1 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 1 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1))))))))
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 2 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 2 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 2 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 2 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 2 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 2 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 2 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1)))))))))
                (concat_vectors
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 2 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 2 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 2 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 2 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 2 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 2 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 2 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1))))))))
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 3 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 3 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 3 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 3 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 3 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 3 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 3 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1)))))))))))))]
        [((x86:u32x8 a) (x86:u32x8 b))
            (x86:u32x8
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (concat_vectors
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 0 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 0 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 0 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 0 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 0 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 0 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 0 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1))))))))
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 1 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 1 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 1 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 1 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 1 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 1 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 1 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1)))))))))
                (concat_vectors
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 1 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 1 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 1 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 1 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 1 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 1 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 1 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1))))))))
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 2 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 2 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 2 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 2 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 2 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 2 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 2 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1))))))))))
               (concat_vectors
                (concat_vectors
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 1 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 1 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 1 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 1 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 1 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 1 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 1 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1))))))))
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 2 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 2 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 2 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 2 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 2 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 2 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 2 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1)))))))))
                (concat_vectors
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 2 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 2 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 2 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 2 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 2 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 2 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 2 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1))))))))
                 (sca-if
                  (sca-eq
                   (sca-bwand
                    (vec-reinterpret
                     (slice_vectors
                      b 3 1 1)
                     'uint32 1)
                    (uint32_t (bv 7 32)))
                   (uint32_t (bv 7 32)))
                  (slice_vectors
                   a 7 1 1)
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (vec-reinterpret
                      (slice_vectors
                       b 3 1 1)
                      'uint32 1)
                     (uint32_t (bv 7 32)))
                    (uint32_t (bv 6 32)))
                   (slice_vectors
                    a 6 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (vec-reinterpret
                       (slice_vectors
                        b 3 1 1)
                       'uint32 1)
                      (uint32_t (bv 7 32)))
                     (uint32_t (bv 5 32)))
                    (slice_vectors
                     a 5 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (vec-reinterpret
                        (slice_vectors
                         b 3 1 1)
                        'uint32 1)
                       (uint32_t (bv 7 32)))
                      (uint32_t (bv 4 32)))
                     (slice_vectors
                      a 4 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (vec-reinterpret
                         (slice_vectors
                          b 3 1 1)
                         'uint32 1)
                        (uint32_t (bv 7 32)))
                       (uint32_t (bv 3 32)))
                      (slice_vectors
                       a 3 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (vec-reinterpret
                          (slice_vectors
                           b 3 1 1)
                          'uint32 1)
                         (uint32_t (bv 7 32)))
                        (uint32_t (bv 2 32)))
                       (slice_vectors
                        a 2 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (vec-reinterpret
                           (slice_vectors
                            b 3 1 1)
                           'uint32 1)
                          (uint32_t (bv 7 32)))
                         (uint32_t (bv 1 32)))
                        (slice_vectors
                         a 1 1 1)
                        (slice_vectors
                         a 0 1 1)))))))))))))]

        [(_ _) (assert #f "infeasible in interpreting vpermd")])]

    [(x86:vpermq a imm8)
      (destruct* ((interpret a) (interpret imm8))
        [((x86:i64x4 a) (uint8_t imm8))
            (x86:i64x4
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (sca-if
                 (sca-eq
                  (sca-shr
                   (sca-bwand
                    (uint8_t
                     imm8)
                    (uint8_t (bv 12 8)))
                   (uint8_t (bv 0 8)))
                  (uint8_t (bv 0 8)))
                 (slice_vectors
                  a 0 1 1)
                 (sca-if
                  (sca-eq
                   (sca-shr
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 12 8)))
                    (uint8_t (bv 0 8)))
                   (uint8_t (bv 1 8)))
                  (slice_vectors
                   a 1 1 1)
                  (sca-if
                   (sca-eq
                    (sca-shr
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 12 8)))
                     (uint8_t (bv 0 8)))
                    (uint8_t (bv 2 8)))
                   (slice_vectors
                    a 2 1 1)
                   (slice_vectors
                    a 3 1 1))))
                (sca-if
                 (sca-eq
                  (sca-shr
                   (sca-bwand
                    (uint8_t
                     imm8)
                    (uint8_t (bv 12 8)))
                   (uint8_t (bv 2 8)))
                  (uint8_t (bv 0 8)))
                 (slice_vectors
                  a 0 1 1)
                 (sca-if
                  (sca-eq
                   (sca-shr
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 12 8)))
                    (uint8_t (bv 2 8)))
                   (uint8_t (bv 1 8)))
                  (slice_vectors
                   a 1 1 1)
                  (sca-if
                   (sca-eq
                    (sca-shr
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 12 8)))
                     (uint8_t (bv 2 8)))
                    (uint8_t (bv 2 8)))
                   (slice_vectors
                    a 2 1 1)
                   (slice_vectors
                    a 3 1 1)))))
               (concat_vectors
                (sca-if
                 (sca-eq
                  (sca-shr
                   (sca-bwand
                    (uint8_t
                     imm8)
                    (uint8_t (bv 12 8)))
                   (uint8_t (bv 2 8)))
                  (uint8_t (bv 0 8)))
                 (slice_vectors
                  a 0 1 1)
                 (sca-if
                  (sca-eq
                   (sca-shr
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 12 8)))
                    (uint8_t (bv 2 8)))
                   (uint8_t (bv 1 8)))
                  (slice_vectors
                   a 1 1 1)
                  (sca-if
                   (sca-eq
                    (sca-shr
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 12 8)))
                     (uint8_t (bv 2 8)))
                    (uint8_t (bv 2 8)))
                   (slice_vectors
                    a 2 1 1)
                   (slice_vectors
                    a 3 1 1))))
                (sca-if
                 (sca-eq
                  (sca-shr
                   (sca-bwand
                    (uint8_t
                     imm8)
                    (uint8_t (bv 12 8)))
                   (uint8_t (bv 4 8)))
                  (uint8_t (bv 0 8)))
                 (slice_vectors
                  a 0 1 1)
                 (sca-if
                  (sca-eq
                   (sca-shr
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 12 8)))
                    (uint8_t (bv 4 8)))
                   (uint8_t (bv 1 8)))
                  (slice_vectors
                   a 1 1 1)
                  (sca-if
                   (sca-eq
                    (sca-shr
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 12 8)))
                     (uint8_t (bv 4 8)))
                    (uint8_t (bv 2 8)))
                   (slice_vectors
                    a 2 1 1)
                   (slice_vectors
                    a 3 1 1))))))))]
        [((x86:u64x4 a) (uint8_t imm8))
            (x86:u64x4
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (sca-if
                 (sca-eq
                  (sca-shr
                   (sca-bwand
                    (uint8_t
                     imm8)
                    (uint8_t (bv 12 8)))
                   (uint8_t (bv 0 8)))
                  (uint8_t (bv 0 8)))
                 (slice_vectors
                  a 0 1 1)
                 (sca-if
                  (sca-eq
                   (sca-shr
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 12 8)))
                    (uint8_t (bv 0 8)))
                   (uint8_t (bv 1 8)))
                  (slice_vectors
                   a 1 1 1)
                  (sca-if
                   (sca-eq
                    (sca-shr
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 12 8)))
                     (uint8_t (bv 0 8)))
                    (uint8_t (bv 2 8)))
                   (slice_vectors
                    a 2 1 1)
                   (slice_vectors
                    a 3 1 1))))
                (sca-if
                 (sca-eq
                  (sca-shr
                   (sca-bwand
                    (uint8_t
                     imm8)
                    (uint8_t (bv 12 8)))
                   (uint8_t (bv 2 8)))
                  (uint8_t (bv 0 8)))
                 (slice_vectors
                  a 0 1 1)
                 (sca-if
                  (sca-eq
                   (sca-shr
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 12 8)))
                    (uint8_t (bv 2 8)))
                   (uint8_t (bv 1 8)))
                  (slice_vectors
                   a 1 1 1)
                  (sca-if
                   (sca-eq
                    (sca-shr
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 12 8)))
                     (uint8_t (bv 2 8)))
                    (uint8_t (bv 2 8)))
                   (slice_vectors
                    a 2 1 1)
                   (slice_vectors
                    a 3 1 1)))))
               (concat_vectors
                (sca-if
                 (sca-eq
                  (sca-shr
                   (sca-bwand
                    (uint8_t
                     imm8)
                    (uint8_t (bv 12 8)))
                   (uint8_t (bv 2 8)))
                  (uint8_t (bv 0 8)))
                 (slice_vectors
                  a 0 1 1)
                 (sca-if
                  (sca-eq
                   (sca-shr
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 12 8)))
                    (uint8_t (bv 2 8)))
                   (uint8_t (bv 1 8)))
                  (slice_vectors
                   a 1 1 1)
                  (sca-if
                   (sca-eq
                    (sca-shr
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 12 8)))
                     (uint8_t (bv 2 8)))
                    (uint8_t (bv 2 8)))
                   (slice_vectors
                    a 2 1 1)
                   (slice_vectors
                    a 3 1 1))))
                (sca-if
                 (sca-eq
                  (sca-shr
                   (sca-bwand
                    (uint8_t
                     imm8)
                    (uint8_t (bv 12 8)))
                   (uint8_t (bv 4 8)))
                  (uint8_t (bv 0 8)))
                 (slice_vectors
                  a 0 1 1)
                 (sca-if
                  (sca-eq
                   (sca-shr
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 12 8)))
                    (uint8_t (bv 4 8)))
                   (uint8_t (bv 1 8)))
                  (slice_vectors
                   a 1 1 1)
                  (sca-if
                   (sca-eq
                    (sca-shr
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 12 8)))
                     (uint8_t (bv 4 8)))
                    (uint8_t (bv 2 8)))
                   (slice_vectors
                    a 2 1 1)
                   (slice_vectors
                    a 3 1 1))))))))]

        [(_ _) (assert #f "infeasible in interpreting vpermq")])]

    [(x86:vphaddd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:i32x8
             (halide:interpret
              (vector_reduce 'add 2
               (concat_vectors
                (concat_vectors
                 (slice_vectors
                  a 0 1 4)
                 (slice_vectors
                  b 0 1 4))
                (concat_vectors
                 (slice_vectors
                  b 0 1 4)
                 (slice_vectors
                  a 1 1 4))))))]

        [(_ _) (assert #f "infeasible in interpreting vphaddd")])]

    [(x86:vphaddsw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (vector_reduce 'sadd 2
               (concat_vectors
                (concat_vectors
                 (slice_vectors
                  a 0 1 8)
                 (slice_vectors
                  b 0 1 8))
                (concat_vectors
                 (slice_vectors
                  b 0 1 8)
                 (slice_vectors
                  a 1 1 8))))))]

        [(_ _) (assert #f "infeasible in interpreting vphaddsw")])]

    [(x86:vphaddw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (vector_reduce 'add 2
               (concat_vectors
                (concat_vectors
                 (slice_vectors
                  a 0 1 8)
                 (slice_vectors
                  b 0 1 8))
                (concat_vectors
                 (slice_vectors
                  b 0 1 8)
                 (slice_vectors
                  a 1 1 8))))))]

        [(_ _) (assert #f "infeasible in interpreting vphaddw")])]

    [(x86:vphsubd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:i32x8
             (halide:interpret
              (vec-sub
               (slice_vectors
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   a 0 1 4)
                  (slice_vectors
                   b 0 1 4))
                 (concat_vectors
                  (slice_vectors
                   b 0 1 4)
                  (slice_vectors
                   a 1 1 4))) 0 2 8)
               (slice_vectors
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   a 0 1 4)
                  (slice_vectors
                   b 0 1 4))
                 (concat_vectors
                  (slice_vectors
                   b 0 1 4)
                  (slice_vectors
                   a 1 1 4))) 1 2 8))))]

        [(_ _) (assert #f "infeasible in interpreting vphsubd")])]

    [(x86:vphsubsw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (vec-sub
               (vec-max
                (vec-min
                 (slice_vectors
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     a 0 1 8)
                    (slice_vectors
                     b 0 1 8))
                   (concat_vectors
                    (slice_vectors
                     b 0 1 8)
                    (slice_vectors
                     a 1 1 8))) 0 2 16)
                 (vec-add
                  (vec-min
                   (slice_vectors
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       a 0 1 8)
                      (slice_vectors
                       b 0 1 8))
                     (concat_vectors
                      (slice_vectors
                       b 0 1 8)
                      (slice_vectors
                       a 1 1 8))) 1 2 16)
                   (x16 (int16_t (bv 0 16))))
                  (x16 (int16_t (bv 32767 16)))))
                (vec-add
                 (vec-max
                  (slice_vectors
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      a 0 1 8)
                     (slice_vectors
                      b 0 1 8))
                    (concat_vectors
                     (slice_vectors
                      b 0 1 8)
                     (slice_vectors
                      a 1 1 8))) 1 2 16)
                  (x16 (int16_t (bv 0 16))))
                 (x16 (int16_t (bv -32768 16)))))
               (slice_vectors
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   a 0 1 8)
                  (slice_vectors
                   b 0 1 8))
                 (concat_vectors
                  (slice_vectors
                   b 0 1 8)
                  (slice_vectors
                   a 1 1 8))) 1 2 16))))]

        [(_ _) (assert #f "infeasible in interpreting vphsubsw")])]

    [(x86:vphsubw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (vec-sub
               (slice_vectors
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   a 0 1 8)
                  (slice_vectors
                   b 0 1 8))
                 (concat_vectors
                  (slice_vectors
                   b 0 1 8)
                  (slice_vectors
                   a 1 1 8))) 0 2 16)
               (slice_vectors
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   a 0 1 8)
                  (slice_vectors
                   b 0 1 8))
                 (concat_vectors
                  (slice_vectors
                   b 0 1 8)
                  (slice_vectors
                   a 1 1 8))) 1 2 16))))]

        [(_ _) (assert #f "infeasible in interpreting vphsubw")])]

    [(x86:vpmaddubsw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u8x32 a) (x86:i8x32 b))
            (x86:i16x16
             (halide:interpret
              (vector_reduce 'sadd 2
               (vec-mul
                (int16x32
                 (uint16x32
                  a))
                (int16x32
                 b)))))]

        [(_ _) (assert #f "infeasible in interpreting vpmaddubsw")])]

    [(x86:vpmaddwd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i32x8
             (halide:interpret
              (vector_reduce 'add 2
               (vec-mul
                (int32x16
                 a)
                (int32x16
                 b)))))]

        [(_ _) (assert #f "infeasible in interpreting vpmaddwd")])]

    [(x86:vpmaxsb a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i8x32 a) (x86:i8x32 b))
            (x86:i8x32
             (halide:interpret
              (vec-max
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpmaxsb")])]

    [(x86:vpmaxsd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:i32x8
             (halide:interpret
              (vec-max
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpmaxsd")])]

    [(x86:vpmaxsw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (vec-max
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpmaxsw")])]

    [(x86:vpmaxub a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u8x32 a) (x86:u8x32 b))
            (x86:u8x32
             (halide:interpret
              (vec-max
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpmaxub")])]

    [(x86:vpmaxud a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u32x8 a) (x86:u32x8 b))
            (x86:u32x8
             (halide:interpret
              (vec-max
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpmaxud")])]

    [(x86:vpmaxuw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u16x16 a) (x86:u16x16 b))
            (x86:u16x16
             (halide:interpret
              (vec-max
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpmaxuw")])]

    [(x86:vpminsb a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i8x32 a) (x86:i8x32 b))
            (x86:i8x32
             (halide:interpret
              (vec-min
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpminsb")])]

    [(x86:vpminsd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:i32x8
             (halide:interpret
              (vec-min
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpminsd")])]

    [(x86:vpminsw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (vec-min
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpminsw")])]

    [(x86:vpminub a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u8x32 a) (x86:u8x32 b))
            (x86:u8x32
             (halide:interpret
              (vec-min
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpminub")])]

    [(x86:vpminud a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u32x8 a) (x86:u32x8 b))
            (x86:u32x8
             (halide:interpret
              (vec-min
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpminud")])]

    [(x86:vpminuw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u16x16 a) (x86:u16x16 b))
            (x86:u16x16
             (halide:interpret
              (vec-min
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpminuw")])]

    [(x86:vpmovsxbd a)
      (destruct* ((interpret a))
        [((x86:i8x16 a))
            (x86:i32x8
             (halide:interpret
              (int32x8
               (slice_vectors
                a 0 1 8))))]

        [(_) (assert #f "infeasible in interpreting vpmovsxbd")])]

    [(x86:vpmovsxbq a)
      (destruct* ((interpret a))
        [((x86:i8x16 a))
            (x86:i64x4
             (halide:interpret
              (int64x4
               (slice_vectors
                a 0 1 4))))]

        [(_) (assert #f "infeasible in interpreting vpmovsxbq")])]

    [(x86:vpmovsxbw a)
      (destruct* ((interpret a))
        [((x86:i8x16 a))
            (x86:i16x16
             (halide:interpret
              (int16x16
               a)))]

        [(_) (assert #f "infeasible in interpreting vpmovsxbw")])]

    [(x86:vpmovsxdq a)
      (destruct* ((interpret a))
        [((x86:i32x4 a))
            (x86:i64x4
             (halide:interpret
              (int64x4
               a)))]

        [(_) (assert #f "infeasible in interpreting vpmovsxdq")])]

    [(x86:vpmovsxwd a)
      (destruct* ((interpret a))
        [((x86:i16x8 a))
            (x86:i32x8
             (halide:interpret
              (int32x8
               a)))]

        [(_) (assert #f "infeasible in interpreting vpmovsxwd")])]

    [(x86:vpmovsxwq a)
      (destruct* ((interpret a))
        [((x86:i16x8 a))
            (x86:i64x4
             (halide:interpret
              (int64x4
               (slice_vectors
                a 0 1 4))))]

        [(_) (assert #f "infeasible in interpreting vpmovsxwq")])]

    [(x86:vpmovzxbd a)
      (destruct* ((interpret a))
        [((x86:u8x16 a))
            (x86:u32x8
             (halide:interpret
              (uint32x8
               (slice_vectors
                a 0 1 8))))]

        [(_) (assert #f "infeasible in interpreting vpmovzxbd")])]

    [(x86:vpmovzxbq a)
      (destruct* ((interpret a))
        [((x86:u8x16 a))
            (x86:u64x4
             (halide:interpret
              (uint64x4
               (slice_vectors
                a 0 1 4))))]

        [(_) (assert #f "infeasible in interpreting vpmovzxbq")])]

    [(x86:vpmovzxbw a)
      (destruct* ((interpret a))
        [((x86:u8x16 a))
            (x86:u16x16
             (halide:interpret
              (uint16x16
               a)))]

        [(_) (assert #f "infeasible in interpreting vpmovzxbw")])]

    [(x86:vpmovzxdq a)
      (destruct* ((interpret a))
        [((x86:u32x4 a))
            (x86:u64x4
             (halide:interpret
              (uint64x4
               a)))]

        [(_) (assert #f "infeasible in interpreting vpmovzxdq")])]

    [(x86:vpmovzxwd a)
      (destruct* ((interpret a))
        [((x86:u16x8 a))
            (x86:u32x8
             (halide:interpret
              (uint32x8
               a)))]

        [(_) (assert #f "infeasible in interpreting vpmovzxwd")])]

    [(x86:vpmovzxwq a)
      (destruct* ((interpret a))
        [((x86:u16x8 a))
            (x86:u64x4
             (halide:interpret
              (uint64x4
               (slice_vectors
                a 0 1 4))))]

        [(_) (assert #f "infeasible in interpreting vpmovzxwq")])]

    [(x86:vpmuldq a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:i64x4
             (halide:interpret
              (vec-mul
               (int64x4
                (slice_vectors
                 a 0 2 4))
               (int64x4
                (slice_vectors
                 b 0 2 4)))))]

        [(_ _) (assert #f "infeasible in interpreting vpmuldq")])]

    [(x86:vpmulhrsw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (int16x16
               (vec-add
                (vec-bwand
                 (x16 (int32_t (bv 1 32)))
                 (vec-div
                  (vec-mul
                   (int32x16
                    a)
                   (int32x16
                    b))
                  (x16 (int32_t (bv 16384 32)))))
                (vec-div
                 (vec-mul
                  (int32x16
                   a)
                  (int32x16
                   b))
                 (x16 (int32_t (bv 32768 32))))))))]

        [(_ _) (assert #f "infeasible in interpreting vpmulhrsw")])]

    [(x86:vpmulhuw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u16x16 a) (x86:u16x16 b))
            (x86:u16x16
             (halide:interpret
              (uint16x16
               (vec-shr
                (vec-mul
                 (uint32x16
                  a)
                 (uint32x16
                  b))
                (x16 (uint32_t (bv 16 32)))))))]

        [(_ _) (assert #f "infeasible in interpreting vpmulhuw")])]

    [(x86:vpmulhw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (int16x16
               (vec-shr
                (vec-mul
                 (int32x16
                  a)
                 (int32x16
                  b))
                (x16 (uint32_t (bv 16 32)))))))]

        [(_ _) (assert #f "infeasible in interpreting vpmulhw")])]

    [(x86:vpmulld a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:i32x8
             (halide:interpret
              (vec-reinterpret
               (uint32x8
                (vec-bwand
                 (x8 (uint64_t (bv 4294967295 64)))
                 (vec-reinterpret
                  (vec-mul
                   (int64x8
                    a)
                   (int64x8
                    b))
                  'uint64 8)))
               'int32 8)))]

        [(_ _) (assert #f "infeasible in interpreting vpmulld")])]

    [(x86:vpmullw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (vec-reinterpret
               (uint16x16
                (vec-bwand
                 (x16 (uint32_t (bv 65535 32)))
                 (vec-reinterpret
                  (vec-mul
                   (int32x16
                    a)
                   (int32x16
                    b))
                  'uint32 16)))
               'int16 16)))]

        [(_ _) (assert #f "infeasible in interpreting vpmullw")])]

    [(x86:vpmuludq a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u32x8 a) (x86:u32x8 b))
            (x86:u64x4
             (halide:interpret
              (vec-mul
               (uint64x4
                (slice_vectors
                 a 0 2 4))
               (uint64x4
                (slice_vectors
                 b 0 2 4)))))]

        [(_ _) (assert #f "infeasible in interpreting vpmuludq")])]

    [(x86:vpor a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i8x32 a) (x86:i8x32 b))
            (x86:i8x32
             (halide:interpret
              (vec-bwor
               a
               b)))]
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (vec-bwor
               a
               b)))]
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:i32x8
             (halide:interpret
              (vec-bwor
               a
               b)))]
        [((x86:i64x4 a) (x86:i64x4 b))
            (x86:i64x4
             (halide:interpret
              (vec-bwor
               a
               b)))]
        [((x86:u8x32 a) (x86:u8x32 b))
            (x86:u8x32
             (halide:interpret
              (vec-bwor
               a
               b)))]
        [((x86:u16x16 a) (x86:u16x16 b))
            (x86:u16x16
             (halide:interpret
              (vec-bwor
               a
               b)))]
        [((x86:u32x8 a) (x86:u32x8 b))
            (x86:u32x8
             (halide:interpret
              (vec-bwor
               a
               b)))]
        [((x86:u64x4 a) (x86:u64x4 b))
            (x86:u64x4
             (halide:interpret
              (vec-bwor
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpor")])]

    [(x86:vpsadbw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u8x32 a) (x86:u8x32 b))
            (x86:u64x4
             (halide:interpret
              (uint64x4
               (vector_reduce 'add 8
                (uint16x32
                 (vec-absd
                  a
                  b))))))]

        [(_ _) (assert #f "infeasible in interpreting vpsadbw")])]

    [(x86:vpshufb a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i8x32 a) (x86:u8x32 b))
            (x86:i8x32
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (concat_vectors
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 0 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 0 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 0 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 0 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 0 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 0 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 0 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 0 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 1 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 1 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 1 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 1 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 1 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 1 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 1 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 1 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 1 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 1 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 1 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 1 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))))
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 1 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 1 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 1 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 1 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 1 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 1 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))))
                (concat_vectors
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 1 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 1 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 1 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 1 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 1 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 1 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))))
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 4 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 4 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 4 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 4 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 4 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 4 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))))))
               (concat_vectors
                (concat_vectors
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 1 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 1 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 1 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 1 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 1 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 1 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))))
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 4 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 4 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 4 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 4 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 4 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 4 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))))
                (concat_vectors
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 4 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 4 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 4 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 4 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 4 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 4 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))))
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 4 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 4 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 4 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 4 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 4 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 4 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 4 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 4 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 4 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 4 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 4 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 4 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 5 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (int8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 5 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 5 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 5 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 5 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 5 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 5 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 5 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))))))))]
        [((x86:u8x32 a) (x86:u8x32 b))
            (x86:u8x32
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (concat_vectors
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 0 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 0 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 0 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 0 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 0 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 0 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 0 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 0 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 1 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 1 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 1 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 1 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 1 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 1 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 1 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 1 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 1 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 1 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 1 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 1 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))))
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 1 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 1 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 1 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 1 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 1 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 1 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))))
                (concat_vectors
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 1 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 1 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 1 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 1 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 1 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 1 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))))
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 4 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 4 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 4 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 4 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 4 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 4 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))))))
               (concat_vectors
                (concat_vectors
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 1 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 1 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 1 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 1 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 1 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 1 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 1 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))))
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 4 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 4 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 4 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 4 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 4 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 4 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))))
                (concat_vectors
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 2 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 2 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 2 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 2 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 2 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 2 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 2 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 4 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 4 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 4 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 4 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 4 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 4 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))))
                 (concat_vectors
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 3 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 3 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 3 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 3 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 3 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 3 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 3 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 4 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 4 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 4 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 4 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 4 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 4 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))
                  (concat_vectors
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 4 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 4 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 4 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 4 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 4 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 4 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 4 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1)))))))))
                   (sca-if
                    (sca-eq
                     (sca-shr
                      (sca-bwand
                       (uint8_t (bv 128 8))
                       (slice_vectors
                        b 5 1 1))
                      (uint8_t (bv 7 8)))
                     (uint8_t (bv 1 8)))
                    (uint8_t (bv 0 8))
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t (bv 15 8))
                       (slice_vectors
                        b 5 1 1))
                      (uint8_t (bv 7 8)))
                     (slice_vectors
                      a 7 1 1)
                     (sca-if
                      (sca-eq
                       (sca-bwand
                        (uint8_t (bv 15 8))
                        (slice_vectors
                         b 5 1 1))
                       (uint8_t (bv 6 8)))
                      (slice_vectors
                       a 6 1 1)
                      (sca-if
                       (sca-eq
                        (sca-bwand
                         (uint8_t (bv 15 8))
                         (slice_vectors
                          b 5 1 1))
                        (uint8_t (bv 5 8)))
                       (slice_vectors
                        a 5 1 1)
                       (sca-if
                        (sca-eq
                         (sca-bwand
                          (uint8_t (bv 15 8))
                          (slice_vectors
                           b 5 1 1))
                         (uint8_t (bv 4 8)))
                        (slice_vectors
                         a 4 1 1)
                        (sca-if
                         (sca-eq
                          (sca-bwand
                           (uint8_t (bv 15 8))
                           (slice_vectors
                            b 5 1 1))
                          (uint8_t (bv 3 8)))
                         (slice_vectors
                          a 3 1 1)
                         (sca-if
                          (sca-eq
                           (sca-bwand
                            (uint8_t (bv 15 8))
                            (slice_vectors
                             b 5 1 1))
                           (uint8_t (bv 2 8)))
                          (slice_vectors
                           a 2 1 1)
                          (sca-if
                           (sca-eq
                            (sca-bwand
                             (uint8_t (bv 15 8))
                             (slice_vectors
                              b 5 1 1))
                            (uint8_t (bv 1 8)))
                           (slice_vectors
                            a 1 1 1)
                           (slice_vectors
                            a 0 1 1))))))))))))))))]

        [(_ _) (assert #f "infeasible in interpreting vpshufb")])]

    [(x86:vpshufd a imm8)
      (destruct* ((interpret a) (interpret imm8))
        [((x86:i32x8 a) (uint8_t imm8))
            (x86:i32x8
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (concat_vectors
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 0 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 1 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 1 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1)))
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 2 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1))))
                (concat_vectors
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 2 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1)))
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 4 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 5 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 5 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1)))))
               (concat_vectors
                (concat_vectors
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 2 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1)))
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 4 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 5 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 5 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1))))
                (concat_vectors
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 4 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 5 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 5 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1)))
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 6 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 7 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 7 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1))))))))]
        [((x86:u32x8 a) (uint8_t imm8))
            (x86:u32x8
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (concat_vectors
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 0 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 1 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 1 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1)))
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 2 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1))))
                (concat_vectors
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 2 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1)))
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 4 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 5 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 5 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1)))))
               (concat_vectors
                (concat_vectors
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 2 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1)))
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 4 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 5 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 5 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1))))
                (concat_vectors
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 4 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 5 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 5 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1)))
                 (sca-if
                  (slice_vectors
                   (vec-reinterpret
                    (uint8_t
                     imm8)
                    'uint1 8) 6 1 1)
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 7 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 3 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 1 1 1))
                  (sca-if
                   (slice_vectors
                    (vec-reinterpret
                     (uint8_t
                      imm8)
                     'uint1 8) 7 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 2 1 1)
                   (slice_vectors
                    (slice_vectors
                     a 0 1 4) 0 1 1))))))))]

        [(_ _) (assert #f "infeasible in interpreting vpshufd")])]

    [(x86:vpshufhw a imm8)
      (destruct* ((interpret a) (interpret imm8))
        [((x86:i16x16 a) (uint8_t imm8))
            (x86:i16x16
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (slice_vectors
                 (slice_vectors
                  a 0 1 8) 0 1 4)
                (concat_vectors
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t
                        imm8)
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1)))))
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 4 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 4 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 4 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1)))))))
               (concat_vectors
                (concat_vectors
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t
                        imm8)
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1)))))
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 4 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 4 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 4 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1))))))
                (slice_vectors
                 (slice_vectors
                  a 1 1 8) 0 1 4)))))]
        [((x86:u16x16 a) (uint8_t imm8))
            (x86:u16x16
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (slice_vectors
                 (slice_vectors
                  a 0 1 8) 0 1 4)
                (concat_vectors
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t
                        imm8)
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1)))))
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 4 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 4 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 4 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1)))))))
               (concat_vectors
                (concat_vectors
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t
                        imm8)
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1)))))
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 4 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 4 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 4 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 1 1 4) 3 1 1))))))
                (slice_vectors
                 (slice_vectors
                  a 1 1 8) 0 1 4)))))]

        [(_ _) (assert #f "infeasible in interpreting vpshufhw")])]

    [(x86:vpshuflw a imm8)
      (destruct* ((interpret a) (interpret imm8))
        [((x86:i16x16 a) (uint8_t imm8))
            (x86:i16x16
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (concat_vectors
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 0 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 0 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t
                        imm8)
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 0 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 0 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 3 1 1)))))
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 0 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 0 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 4 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 0 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 4 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 0 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 4 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 3 1 1))))))
                (slice_vectors
                 (slice_vectors
                  a 0 1 8) 1 1 4))
               (concat_vectors
                (slice_vectors
                 (slice_vectors
                  a 0 1 8) 1 1 4)
                (concat_vectors
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 1 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 1 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t
                        imm8)
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 1 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 1 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 3 1 1)))))
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 1 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 1 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 4 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 1 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 4 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 1 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 4 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 3 1 1))))))))))]
        [((x86:u16x16 a) (uint8_t imm8))
            (x86:u16x16
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (concat_vectors
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 0 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 0 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t
                        imm8)
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 0 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 0 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 3 1 1)))))
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 0 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 0 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 4 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 0 1 8) 0 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 4 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 0 1 8) 0 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 4 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 0 1 8) 0 1 4) 3 1 1))))))
                (slice_vectors
                 (slice_vectors
                  a 0 1 8) 1 1 4))
               (concat_vectors
                (slice_vectors
                 (slice_vectors
                  a 0 1 8) 1 1 4)
                (concat_vectors
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (uint8_t
                      imm8)
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 1 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (uint8_t
                       imm8)
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 1 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (uint8_t
                        imm8)
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 1 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 1 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 3 1 1)))))
                 (concat_vectors
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 2 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 1 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 2 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 1 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 2 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 3 1 1))))
                  (sca-if
                   (sca-eq
                    (sca-bwand
                     (sca-shr
                      (uint8_t
                       imm8)
                      (uint8_t (bv 4 8)))
                     (uint8_t (bv 3 8)))
                    (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (slice_vectors
                      a 1 1 8) 1 1 4) 0 1 1)
                   (sca-if
                    (sca-eq
                     (sca-bwand
                      (sca-shr
                       (uint8_t
                        imm8)
                       (uint8_t (bv 4 8)))
                      (uint8_t (bv 3 8)))
                     (uint8_t (bv 1 8)))
                    (slice_vectors
                     (slice_vectors
                      (slice_vectors
                       a 1 1 8) 1 1 4) 1 1 1)
                    (sca-if
                     (sca-eq
                      (sca-bwand
                       (sca-shr
                        (uint8_t
                         imm8)
                        (uint8_t (bv 4 8)))
                       (uint8_t (bv 3 8)))
                      (uint8_t (bv 2 8)))
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 2 1 1)
                     (slice_vectors
                      (slice_vectors
                       (slice_vectors
                        a 1 1 8) 1 1 4) 3 1 1))))))))))]

        [(_ _) (assert #f "infeasible in interpreting vpshuflw")])]

    [(x86:vpsignb a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i8x32 a) (x86:i8x32 b))
              (x86:i8x32
               (halide:interpret
                (vec-if
               (vec-lt
                b
                (x32 (int8_t (bv 0 8))))
               (vec-sub
                (x32 (int8_t (bv 0 8)))
                a)
                (vec-if
                (vec-eq
                 b
                 (x32 (int8_t (bv 0 8))))
                (x32 (int8_t (bv 0 8)))
                a))))]

        [(_ _) (assert #f "infeasible in interpreting vpsignb")])]

    [(x86:vpsignd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:i32x8 b))
              (x86:i32x8
               (halide:interpret
                (vec-if
               (vec-lt
                b
                (x8 (int32_t (bv 0 32))))
               (vec-sub
                (x8 (int32_t (bv 0 32)))
                a)
                (vec-if
                (vec-eq
                 b
                 (x8 (int32_t (bv 0 32))))
                (x8 (int32_t (bv 0 32)))
                a))))]

        [(_ _) (assert #f "infeasible in interpreting vpsignd")])]

    [(x86:vpsignw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
              (x86:i16x16
               (halide:interpret
                (vec-if
               (vec-lt
                b
                (x16 (int16_t (bv 0 16))))
               (vec-sub
                (x16 (int16_t (bv 0 16)))
                a)
                (vec-if
                (vec-eq
                 b
                 (x16 (int16_t (bv 0 16))))
                (x16 (int16_t (bv 0 16)))
                a))))]

        [(_ _) (assert #f "infeasible in interpreting vpsignw")])]

    [(x86:vpslld a imm8)
      (destruct* ((interpret a) (interpret imm8))
        [((x86:i32x8 a) (uint8_t imm8))
            (x86:i32x8
             (halide:interpret
              (vec-shl
               a
               (uint8_t
                imm8))))]
        [((x86:u32x8 a) (uint8_t imm8))
            (x86:u32x8
             (halide:interpret
              (vec-shl
               a
               (uint8_t
                imm8))))]

        [(_ _) (assert #f "infeasible in interpreting vpslld")])]

    [(x86:vpslldq a imm8)
      (destruct* ((interpret a) (interpret imm8))
        [((x86:i8x32 a) (uint8_t imm8))
                            (x86:i8x32
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1))
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1)
                  (x15 (uint8_t (bv 0 8)))))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2))
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2)
                   (x14 (uint8_t (bv 0 8)))))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3))
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3)
                    (x13 (uint8_t (bv 0 8)))))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4))
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4)
                     (x12 (uint8_t (bv 0 8)))))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5))
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5)
                      (x11 (uint8_t (bv 0 8)))))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6))
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6)
                       (x10 (uint8_t (bv 0 8)))))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7))
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7)
                        (x9 (uint8_t (bv 0 8)))))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8))
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8)
                         (x8 (uint8_t (bv 0 8)))))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9))
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9)
                          (x7 (uint8_t (bv 0 8)))))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10))
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10)
                           (x6 (uint8_t (bv 0 8)))))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11))
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11)
                            (x5 (uint8_t (bv 0 8)))))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12))
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12)
                             (x4 (uint8_t (bv 0 8)))))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13))
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13)
                              (x3 (uint8_t (bv 0 8)))))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14))
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14)
                               (x2 (uint8_t (bv 0 8)))))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15))
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15)
                                (uint8_t (bv 0 8))))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'int8 32)))]
        [((x86:u8x32 a) (uint8_t imm8))
                            (x86:u8x32
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1))
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1)
                  (x15 (uint8_t (bv 0 8)))))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2))
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2)
                   (x14 (uint8_t (bv 0 8)))))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3))
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3)
                    (x13 (uint8_t (bv 0 8)))))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4))
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4)
                     (x12 (uint8_t (bv 0 8)))))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5))
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5)
                      (x11 (uint8_t (bv 0 8)))))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6))
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6)
                       (x10 (uint8_t (bv 0 8)))))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7))
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7)
                        (x9 (uint8_t (bv 0 8)))))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8))
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8)
                         (x8 (uint8_t (bv 0 8)))))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9))
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9)
                          (x7 (uint8_t (bv 0 8)))))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10))
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10)
                           (x6 (uint8_t (bv 0 8)))))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11))
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11)
                            (x5 (uint8_t (bv 0 8)))))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12))
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12)
                             (x4 (uint8_t (bv 0 8)))))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13))
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13)
                              (x3 (uint8_t (bv 0 8)))))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14))
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14)
                               (x2 (uint8_t (bv 0 8)))))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15))
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15)
                                (uint8_t (bv 0 8))))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'uint8 32)))]
        [((x86:i16x16 a) (uint8_t imm8))
                            (x86:i16x16
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1))
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1)
                  (x15 (uint8_t (bv 0 8)))))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2))
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2)
                   (x14 (uint8_t (bv 0 8)))))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3))
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3)
                    (x13 (uint8_t (bv 0 8)))))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4))
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4)
                     (x12 (uint8_t (bv 0 8)))))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5))
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5)
                      (x11 (uint8_t (bv 0 8)))))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6))
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6)
                       (x10 (uint8_t (bv 0 8)))))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7))
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7)
                        (x9 (uint8_t (bv 0 8)))))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8))
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8)
                         (x8 (uint8_t (bv 0 8)))))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9))
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9)
                          (x7 (uint8_t (bv 0 8)))))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10))
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10)
                           (x6 (uint8_t (bv 0 8)))))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11))
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11)
                            (x5 (uint8_t (bv 0 8)))))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12))
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12)
                             (x4 (uint8_t (bv 0 8)))))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13))
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13)
                              (x3 (uint8_t (bv 0 8)))))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14))
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14)
                               (x2 (uint8_t (bv 0 8)))))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15))
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15)
                                (uint8_t (bv 0 8))))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'int16 16)))]
        [((x86:u16x16 a) (uint8_t imm8))
                            (x86:u16x16
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1))
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1)
                  (x15 (uint8_t (bv 0 8)))))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2))
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2)
                   (x14 (uint8_t (bv 0 8)))))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3))
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3)
                    (x13 (uint8_t (bv 0 8)))))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4))
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4)
                     (x12 (uint8_t (bv 0 8)))))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5))
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5)
                      (x11 (uint8_t (bv 0 8)))))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6))
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6)
                       (x10 (uint8_t (bv 0 8)))))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7))
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7)
                        (x9 (uint8_t (bv 0 8)))))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8))
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8)
                         (x8 (uint8_t (bv 0 8)))))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9))
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9)
                          (x7 (uint8_t (bv 0 8)))))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10))
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10)
                           (x6 (uint8_t (bv 0 8)))))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11))
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11)
                            (x5 (uint8_t (bv 0 8)))))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12))
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12)
                             (x4 (uint8_t (bv 0 8)))))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13))
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13)
                              (x3 (uint8_t (bv 0 8)))))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14))
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14)
                               (x2 (uint8_t (bv 0 8)))))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15))
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15)
                                (uint8_t (bv 0 8))))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'uint16 16)))]
        [((x86:i32x8 a) (uint8_t imm8))
                            (x86:i32x8
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1))
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1)
                  (x15 (uint8_t (bv 0 8)))))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2))
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2)
                   (x14 (uint8_t (bv 0 8)))))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3))
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3)
                    (x13 (uint8_t (bv 0 8)))))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4))
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4)
                     (x12 (uint8_t (bv 0 8)))))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5))
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5)
                      (x11 (uint8_t (bv 0 8)))))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6))
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6)
                       (x10 (uint8_t (bv 0 8)))))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7))
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7)
                        (x9 (uint8_t (bv 0 8)))))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8))
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8)
                         (x8 (uint8_t (bv 0 8)))))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9))
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9)
                          (x7 (uint8_t (bv 0 8)))))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10))
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10)
                           (x6 (uint8_t (bv 0 8)))))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11))
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11)
                            (x5 (uint8_t (bv 0 8)))))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12))
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12)
                             (x4 (uint8_t (bv 0 8)))))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13))
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13)
                              (x3 (uint8_t (bv 0 8)))))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14))
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14)
                               (x2 (uint8_t (bv 0 8)))))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15))
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15)
                                (uint8_t (bv 0 8))))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'int32 8)))]
        [((x86:u32x8 a) (uint8_t imm8))
                            (x86:u32x8
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1))
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1)
                  (x15 (uint8_t (bv 0 8)))))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2))
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2)
                   (x14 (uint8_t (bv 0 8)))))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3))
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3)
                    (x13 (uint8_t (bv 0 8)))))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4))
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4)
                     (x12 (uint8_t (bv 0 8)))))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5))
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5)
                      (x11 (uint8_t (bv 0 8)))))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6))
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6)
                       (x10 (uint8_t (bv 0 8)))))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7))
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7)
                        (x9 (uint8_t (bv 0 8)))))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8))
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8)
                         (x8 (uint8_t (bv 0 8)))))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9))
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9)
                          (x7 (uint8_t (bv 0 8)))))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10))
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10)
                           (x6 (uint8_t (bv 0 8)))))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11))
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11)
                            (x5 (uint8_t (bv 0 8)))))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12))
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12)
                             (x4 (uint8_t (bv 0 8)))))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13))
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13)
                              (x3 (uint8_t (bv 0 8)))))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14))
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14)
                               (x2 (uint8_t (bv 0 8)))))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15))
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15)
                                (uint8_t (bv 0 8))))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'uint32 8)))]
        [((x86:i64x4 a) (uint8_t imm8))
                            (x86:i64x4
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1))
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1)
                  (x15 (uint8_t (bv 0 8)))))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2))
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2)
                   (x14 (uint8_t (bv 0 8)))))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3))
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3)
                    (x13 (uint8_t (bv 0 8)))))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4))
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4)
                     (x12 (uint8_t (bv 0 8)))))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5))
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5)
                      (x11 (uint8_t (bv 0 8)))))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6))
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6)
                       (x10 (uint8_t (bv 0 8)))))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7))
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7)
                        (x9 (uint8_t (bv 0 8)))))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8))
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8)
                         (x8 (uint8_t (bv 0 8)))))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9))
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9)
                          (x7 (uint8_t (bv 0 8)))))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10))
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10)
                           (x6 (uint8_t (bv 0 8)))))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11))
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11)
                            (x5 (uint8_t (bv 0 8)))))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12))
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12)
                             (x4 (uint8_t (bv 0 8)))))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13))
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13)
                              (x3 (uint8_t (bv 0 8)))))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14))
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14)
                               (x2 (uint8_t (bv 0 8)))))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15))
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15)
                                (uint8_t (bv 0 8))))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'int64 4)))]
        [((x86:u64x4 a) (uint8_t imm8))
                            (x86:u64x4
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1))
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 0 1 1)
                  (x15 (uint8_t (bv 0 8)))))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2))
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 0 1 2)
                   (x14 (uint8_t (bv 0 8)))))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3))
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 0 1 3)
                    (x13 (uint8_t (bv 0 8)))))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4))
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 0 1 4)
                     (x12 (uint8_t (bv 0 8)))))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5))
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 0 1 5)
                      (x11 (uint8_t (bv 0 8)))))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6))
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 0 1 6)
                       (x10 (uint8_t (bv 0 8)))))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7))
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 0 1 7)
                        (x9 (uint8_t (bv 0 8)))))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8))
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 0 1 8)
                         (x8 (uint8_t (bv 0 8)))))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9))
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 0 1 9)
                          (x7 (uint8_t (bv 0 8)))))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10))
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 0 1 10)
                           (x6 (uint8_t (bv 0 8)))))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11))
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 0 1 11)
                            (x5 (uint8_t (bv 0 8)))))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12))
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 0 1 12)
                             (x4 (uint8_t (bv 0 8)))))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13))
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 0 1 13)
                              (x3 (uint8_t (bv 0 8)))))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14))
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 0 1 14)
                               (x2 (uint8_t (bv 0 8)))))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15))
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 0 1 15)
                                (uint8_t (bv 0 8))))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'uint64 4)))]

        [(_ _) (assert #f "infeasible in interpreting vpslldq")])]

    [(x86:vpsllq a imm8)
      (destruct* ((interpret a) (interpret imm8))
        [((x86:i64x4 a) (uint8_t imm8))
            (x86:i64x4
             (halide:interpret
              (vec-shl
               a
               (uint8_t
                imm8))))]
        [((x86:u64x4 a) (uint8_t imm8))
            (x86:u64x4
             (halide:interpret
              (vec-shl
               a
               (uint8_t
                imm8))))]

        [(_ _) (assert #f "infeasible in interpreting vpsllq")])]

    [(x86:vpsllvd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x4 a) (x86:i32x4 b))
            (x86:i32x4
             (halide:interpret
              (vec-shl
               a
               b)))]
        [((x86:u32x4 a) (x86:u32x4 b))
            (x86:u32x4
             (halide:interpret
              (vec-shl
               a
               b)))]
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:i32x8
             (halide:interpret
              (vec-shl
               a
               b)))]
        [((x86:u32x8 a) (x86:u32x8 b))
            (x86:u32x8
             (halide:interpret
              (vec-shl
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpsllvd")])]

    [(x86:vpsllvq a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i64x2 a) (x86:i64x2 b))
            (x86:i64x2
             (halide:interpret
              (vec-shl
               a
               b)))]
        [((x86:u64x2 a) (x86:u64x2 b))
            (x86:u64x2
             (halide:interpret
              (vec-shl
               a
               b)))]
        [((x86:i64x4 a) (x86:i64x4 b))
            (x86:i64x4
             (halide:interpret
              (vec-shl
               a
               b)))]
        [((x86:u64x4 a) (x86:u64x4 b))
            (x86:u64x4
             (halide:interpret
              (vec-shl
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpsllvq")])]

    [(x86:vpsllw a imm8)
      (destruct* ((interpret a) (interpret imm8))
        [((x86:i16x16 a) (uint8_t imm8))
            (x86:i16x16
             (halide:interpret
              (vec-shl
               a
               (uint8_t
                imm8))))]
        [((x86:u16x16 a) (uint8_t imm8))
            (x86:u16x16
             (halide:interpret
              (vec-shl
               a
               (uint8_t
                imm8))))]

        [(_ _) (assert #f "infeasible in interpreting vpsllw")])]

    [(x86:vpsrad a imm8)
      (destruct* ((interpret a) (interpret imm8))
        [((x86:i32x8 a) (uint8_t imm8))
            (x86:i32x8
             (halide:interpret
              (vec-shr
               a
               (uint8_t
                imm8))))]

        [(_ _) (assert #f "infeasible in interpreting vpsrad")])]

    [(x86:vpsravd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x4 a) (x86:u32x4 b))
            (x86:i32x4
             (halide:interpret
              (vec-shr
               a
               b)))]
        [((x86:i32x8 a) (x86:u32x8 b))
            (x86:i32x8
             (halide:interpret
              (vec-shr
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpsravd")])]

    [(x86:vpsraw a imm8)
      (destruct* ((interpret a) (interpret imm8))
        [((x86:i16x16 a) (uint8_t imm8))
            (x86:i16x16
             (halide:interpret
              (vec-shr
               a
               (uint8_t
                imm8))))]

        [(_ _) (assert #f "infeasible in interpreting vpsraw")])]

    [(x86:vpsrld a imm8)
      (destruct* ((interpret a) (interpret imm8))
        [((x86:u32x8 a) (uint8_t imm8))
            (x86:u32x8
             (halide:interpret
              (vec-shr
               a
               (uint8_t
                imm8))))]

        [(_ _) (assert #f "infeasible in interpreting vpsrld")])]

    [(x86:vpsrldq a imm8)
      (destruct* ((interpret a) (interpret imm8))
        [((x86:i8x32 a) (uint8_t imm8))
                            (x86:i8x32
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 15 1 1)
                  (x15 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 1 1 16) 15 1 1)))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 14 1 2)
                   (x14 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 1 1 16) 14 1 2)))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 13 1 3)
                    (x13 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 1 1 16) 13 1 3)))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 12 1 4)
                     (x12 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 1 1 16) 12 1 4)))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 11 1 5)
                      (x11 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 1 1 16) 11 1 5)))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 10 1 6)
                       (x10 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 1 1 16) 10 1 6)))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 9 1 7)
                        (x9 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 1 1 16) 9 1 7)))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 8 1 8)
                         (x8 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 1 1 16) 8 1 8)))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 7 1 9)
                          (x7 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 1 1 16) 7 1 9)))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 6 1 10)
                           (x6 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 1 1 16) 6 1 10)))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 5 1 11)
                            (x5 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 1 1 16) 5 1 11)))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 4 1 12)
                             (x4 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 1 1 16) 4 1 12)))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 3 1 13)
                              (x3 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 1 1 16) 3 1 13)))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 2 1 14)
                               (x2 (uint8_t (bv 0 8))))
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 1 1 16) 2 1 14)))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 1 1 15)
                                (uint8_t (bv 0 8)))
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 1 1 16) 1 1 15)))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'int8 32)))]
        [((x86:u8x32 a) (uint8_t imm8))
                            (x86:u8x32
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 15 1 1)
                  (x15 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 1 1 16) 15 1 1)))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 14 1 2)
                   (x14 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 1 1 16) 14 1 2)))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 13 1 3)
                    (x13 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 1 1 16) 13 1 3)))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 12 1 4)
                     (x12 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 1 1 16) 12 1 4)))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 11 1 5)
                      (x11 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 1 1 16) 11 1 5)))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 10 1 6)
                       (x10 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 1 1 16) 10 1 6)))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 9 1 7)
                        (x9 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 1 1 16) 9 1 7)))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 8 1 8)
                         (x8 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 1 1 16) 8 1 8)))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 7 1 9)
                          (x7 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 1 1 16) 7 1 9)))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 6 1 10)
                           (x6 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 1 1 16) 6 1 10)))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 5 1 11)
                            (x5 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 1 1 16) 5 1 11)))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 4 1 12)
                             (x4 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 1 1 16) 4 1 12)))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 3 1 13)
                              (x3 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 1 1 16) 3 1 13)))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 2 1 14)
                               (x2 (uint8_t (bv 0 8))))
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 1 1 16) 2 1 14)))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 1 1 15)
                                (uint8_t (bv 0 8)))
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 1 1 16) 1 1 15)))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'uint8 32)))]
        [((x86:i16x16 a) (uint8_t imm8))
                            (x86:i16x16
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 15 1 1)
                  (x15 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 1 1 16) 15 1 1)))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 14 1 2)
                   (x14 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 1 1 16) 14 1 2)))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 13 1 3)
                    (x13 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 1 1 16) 13 1 3)))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 12 1 4)
                     (x12 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 1 1 16) 12 1 4)))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 11 1 5)
                      (x11 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 1 1 16) 11 1 5)))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 10 1 6)
                       (x10 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 1 1 16) 10 1 6)))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 9 1 7)
                        (x9 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 1 1 16) 9 1 7)))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 8 1 8)
                         (x8 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 1 1 16) 8 1 8)))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 7 1 9)
                          (x7 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 1 1 16) 7 1 9)))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 6 1 10)
                           (x6 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 1 1 16) 6 1 10)))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 5 1 11)
                            (x5 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 1 1 16) 5 1 11)))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 4 1 12)
                             (x4 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 1 1 16) 4 1 12)))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 3 1 13)
                              (x3 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 1 1 16) 3 1 13)))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 2 1 14)
                               (x2 (uint8_t (bv 0 8))))
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 1 1 16) 2 1 14)))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 1 1 15)
                                (uint8_t (bv 0 8)))
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 1 1 16) 1 1 15)))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'int16 16)))]
        [((x86:u16x16 a) (uint8_t imm8))
                            (x86:u16x16
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 15 1 1)
                  (x15 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 1 1 16) 15 1 1)))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 14 1 2)
                   (x14 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 1 1 16) 14 1 2)))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 13 1 3)
                    (x13 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 1 1 16) 13 1 3)))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 12 1 4)
                     (x12 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 1 1 16) 12 1 4)))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 11 1 5)
                      (x11 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 1 1 16) 11 1 5)))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 10 1 6)
                       (x10 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 1 1 16) 10 1 6)))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 9 1 7)
                        (x9 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 1 1 16) 9 1 7)))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 8 1 8)
                         (x8 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 1 1 16) 8 1 8)))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 7 1 9)
                          (x7 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 1 1 16) 7 1 9)))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 6 1 10)
                           (x6 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 1 1 16) 6 1 10)))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 5 1 11)
                            (x5 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 1 1 16) 5 1 11)))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 4 1 12)
                             (x4 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 1 1 16) 4 1 12)))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 3 1 13)
                              (x3 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 1 1 16) 3 1 13)))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 2 1 14)
                               (x2 (uint8_t (bv 0 8))))
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 1 1 16) 2 1 14)))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 1 1 15)
                                (uint8_t (bv 0 8)))
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 1 1 16) 1 1 15)))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'uint16 16)))]
        [((x86:i32x8 a) (uint8_t imm8))
                            (x86:i32x8
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 15 1 1)
                  (x15 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 1 1 16) 15 1 1)))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 14 1 2)
                   (x14 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 1 1 16) 14 1 2)))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 13 1 3)
                    (x13 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 1 1 16) 13 1 3)))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 12 1 4)
                     (x12 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 1 1 16) 12 1 4)))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 11 1 5)
                      (x11 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 1 1 16) 11 1 5)))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 10 1 6)
                       (x10 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 1 1 16) 10 1 6)))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 9 1 7)
                        (x9 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 1 1 16) 9 1 7)))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 8 1 8)
                         (x8 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 1 1 16) 8 1 8)))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 7 1 9)
                          (x7 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 1 1 16) 7 1 9)))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 6 1 10)
                           (x6 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 1 1 16) 6 1 10)))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 5 1 11)
                            (x5 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 1 1 16) 5 1 11)))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 4 1 12)
                             (x4 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 1 1 16) 4 1 12)))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 3 1 13)
                              (x3 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 1 1 16) 3 1 13)))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 2 1 14)
                               (x2 (uint8_t (bv 0 8))))
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 1 1 16) 2 1 14)))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 1 1 15)
                                (uint8_t (bv 0 8)))
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 1 1 16) 1 1 15)))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'int32 8)))]
        [((x86:u32x8 a) (uint8_t imm8))
                            (x86:u32x8
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 15 1 1)
                  (x15 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 1 1 16) 15 1 1)))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 14 1 2)
                   (x14 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 1 1 16) 14 1 2)))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 13 1 3)
                    (x13 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 1 1 16) 13 1 3)))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 12 1 4)
                     (x12 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 1 1 16) 12 1 4)))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 11 1 5)
                      (x11 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 1 1 16) 11 1 5)))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 10 1 6)
                       (x10 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 1 1 16) 10 1 6)))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 9 1 7)
                        (x9 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 1 1 16) 9 1 7)))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 8 1 8)
                         (x8 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 1 1 16) 8 1 8)))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 7 1 9)
                          (x7 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 1 1 16) 7 1 9)))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 6 1 10)
                           (x6 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 1 1 16) 6 1 10)))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 5 1 11)
                            (x5 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 1 1 16) 5 1 11)))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 4 1 12)
                             (x4 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 1 1 16) 4 1 12)))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 3 1 13)
                              (x3 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 1 1 16) 3 1 13)))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 2 1 14)
                               (x2 (uint8_t (bv 0 8))))
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 1 1 16) 2 1 14)))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 1 1 15)
                                (uint8_t (bv 0 8)))
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 1 1 16) 1 1 15)))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'uint32 8)))]
        [((x86:i64x4 a) (uint8_t imm8))
                            (x86:i64x4
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 15 1 1)
                  (x15 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 1 1 16) 15 1 1)))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 14 1 2)
                   (x14 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 1 1 16) 14 1 2)))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 13 1 3)
                    (x13 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 1 1 16) 13 1 3)))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 12 1 4)
                     (x12 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 1 1 16) 12 1 4)))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 11 1 5)
                      (x11 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 1 1 16) 11 1 5)))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 10 1 6)
                       (x10 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 1 1 16) 10 1 6)))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 9 1 7)
                        (x9 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 1 1 16) 9 1 7)))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 8 1 8)
                         (x8 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 1 1 16) 8 1 8)))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 7 1 9)
                          (x7 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 1 1 16) 7 1 9)))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 6 1 10)
                           (x6 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 1 1 16) 6 1 10)))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 5 1 11)
                            (x5 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 1 1 16) 5 1 11)))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 4 1 12)
                             (x4 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 1 1 16) 4 1 12)))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 3 1 13)
                              (x3 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 1 1 16) 3 1 13)))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 2 1 14)
                               (x2 (uint8_t (bv 0 8))))
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 1 1 16) 2 1 14)))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 1 1 15)
                                (uint8_t (bv 0 8)))
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 1 1 16) 1 1 15)))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'int64 4)))]
        [((x86:u64x4 a) (uint8_t imm8))
                            (x86:u64x4
                             (halide:interpret
              (vec-reinterpret
                               (vec-if
                (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 15 8))))
                (concat_vectors
                 (concat_vectors
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 0 1 16) 15 1 1)
                  (x15 (uint8_t (bv 0 8))))
                 (concat_vectors
                  (x15 (uint8_t (bv 0 8)))
                  (slice_vectors
                   (slice_vectors
                    (vec-reinterpret
                     a
                     'uint8 32) 1 1 16) 15 1 1)))
                               (vec-if
                 (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 14 8))))
                 (concat_vectors
                  (concat_vectors
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 0 1 16) 14 1 2)
                   (x14 (uint8_t (bv 0 8))))
                  (concat_vectors
                   (x14 (uint8_t (bv 0 8)))
                   (slice_vectors
                    (slice_vectors
                     (vec-reinterpret
                      a
                      'uint8 32) 1 1 16) 14 1 2)))
                               (vec-if
                  (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 13 8))))
                  (concat_vectors
                   (concat_vectors
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 0 1 16) 13 1 3)
                    (x13 (uint8_t (bv 0 8))))
                   (concat_vectors
                    (x13 (uint8_t (bv 0 8)))
                    (slice_vectors
                     (slice_vectors
                      (vec-reinterpret
                       a
                       'uint8 32) 1 1 16) 13 1 3)))
                               (vec-if
                   (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 12 8))))
                   (concat_vectors
                    (concat_vectors
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 0 1 16) 12 1 4)
                     (x12 (uint8_t (bv 0 8))))
                    (concat_vectors
                     (x12 (uint8_t (bv 0 8)))
                     (slice_vectors
                      (slice_vectors
                       (vec-reinterpret
                        a
                        'uint8 32) 1 1 16) 12 1 4)))
                               (vec-if
                    (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 11 8))))
                    (concat_vectors
                     (concat_vectors
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 0 1 16) 11 1 5)
                      (x11 (uint8_t (bv 0 8))))
                     (concat_vectors
                      (x11 (uint8_t (bv 0 8)))
                      (slice_vectors
                       (slice_vectors
                        (vec-reinterpret
                         a
                         'uint8 32) 1 1 16) 11 1 5)))
                               (vec-if
                     (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 10 8))))
                     (concat_vectors
                      (concat_vectors
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 0 1 16) 10 1 6)
                       (x10 (uint8_t (bv 0 8))))
                      (concat_vectors
                       (x10 (uint8_t (bv 0 8)))
                       (slice_vectors
                        (slice_vectors
                         (vec-reinterpret
                          a
                          'uint8 32) 1 1 16) 10 1 6)))
                               (vec-if
                      (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 9 8))))
                      (concat_vectors
                       (concat_vectors
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 0 1 16) 9 1 7)
                        (x9 (uint8_t (bv 0 8))))
                       (concat_vectors
                        (x9 (uint8_t (bv 0 8)))
                        (slice_vectors
                         (slice_vectors
                          (vec-reinterpret
                           a
                           'uint8 32) 1 1 16) 9 1 7)))
                               (vec-if
                       (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 8 8))))
                       (concat_vectors
                        (concat_vectors
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 0 1 16) 8 1 8)
                         (x8 (uint8_t (bv 0 8))))
                        (concat_vectors
                         (x8 (uint8_t (bv 0 8)))
                         (slice_vectors
                          (slice_vectors
                           (vec-reinterpret
                            a
                            'uint8 32) 1 1 16) 8 1 8)))
                               (vec-if
                        (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 7 8))))
                        (concat_vectors
                         (concat_vectors
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 0 1 16) 7 1 9)
                          (x7 (uint8_t (bv 0 8))))
                         (concat_vectors
                          (x7 (uint8_t (bv 0 8)))
                          (slice_vectors
                           (slice_vectors
                            (vec-reinterpret
                             a
                             'uint8 32) 1 1 16) 7 1 9)))
                               (vec-if
                         (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 6 8))))
                         (concat_vectors
                          (concat_vectors
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 0 1 16) 6 1 10)
                           (x6 (uint8_t (bv 0 8))))
                          (concat_vectors
                           (x6 (uint8_t (bv 0 8)))
                           (slice_vectors
                            (slice_vectors
                             (vec-reinterpret
                              a
                              'uint8 32) 1 1 16) 6 1 10)))
                               (vec-if
                          (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 5 8))))
                          (concat_vectors
                           (concat_vectors
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 0 1 16) 5 1 11)
                            (x5 (uint8_t (bv 0 8))))
                           (concat_vectors
                            (x5 (uint8_t (bv 0 8)))
                            (slice_vectors
                             (slice_vectors
                              (vec-reinterpret
                               a
                               'uint8 32) 1 1 16) 5 1 11)))
                               (vec-if
                           (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 4 8))))
                           (concat_vectors
                            (concat_vectors
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 0 1 16) 4 1 12)
                             (x4 (uint8_t (bv 0 8))))
                            (concat_vectors
                             (x4 (uint8_t (bv 0 8)))
                             (slice_vectors
                              (slice_vectors
                               (vec-reinterpret
                                a
                                'uint8 32) 1 1 16) 4 1 12)))
                               (vec-if
                            (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 3 8))))
                            (concat_vectors
                             (concat_vectors
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 0 1 16) 3 1 13)
                              (x3 (uint8_t (bv 0 8))))
                             (concat_vectors
                              (x3 (uint8_t (bv 0 8)))
                              (slice_vectors
                               (slice_vectors
                                (vec-reinterpret
                                 a
                                 'uint8 32) 1 1 16) 3 1 13)))
                               (vec-if
                             (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 2 8))))
                             (concat_vectors
                              (concat_vectors
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 0 1 16) 2 1 14)
                               (x2 (uint8_t (bv 0 8))))
                              (concat_vectors
                               (x2 (uint8_t (bv 0 8)))
                               (slice_vectors
                                (slice_vectors
                                 (vec-reinterpret
                                  a
                                  'uint8 32) 1 1 16) 2 1 14)))
                               (vec-if
                              (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 1 8))))
                              (concat_vectors
                               (concat_vectors
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 0 1 16) 1 1 15)
                                (uint8_t (bv 0 8)))
                               (concat_vectors
                                (uint8_t (bv 0 8))
                                (slice_vectors
                                 (slice_vectors
                                  (vec-reinterpret
                                   a
                                   'uint8 32) 1 1 16) 1 1 15)))
                               (vec-if
                               (x32 (sca-eq
 (uint8_t
  imm8)
 (uint8_t (bv 0 8))))
                               (vec-reinterpret
                                a
                                'uint8 32)
                               (x32 (uint8_t (bv 0 8)))))))))))))))))))
                               'uint64 4)))]

        [(_ _) (assert #f "infeasible in interpreting vpsrldq")])]

    [(x86:vpsrlq a imm8)
      (destruct* ((interpret a) (interpret imm8))
        [((x86:u64x4 a) (uint8_t imm8))
            (x86:u64x4
             (halide:interpret
              (vec-shr
               a
               (uint8_t
                imm8))))]

        [(_ _) (assert #f "infeasible in interpreting vpsrlq")])]

    [(x86:vpsrlvd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u32x4 a) (x86:u32x4 b))
            (x86:u32x4
             (halide:interpret
              (vec-shr
               a
               b)))]
        [((x86:u32x8 a) (x86:u32x8 b))
            (x86:u32x8
             (halide:interpret
              (vec-shr
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpsrlvd")])]

    [(x86:vpsrlvq a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u64x2 a) (x86:u64x2 b))
            (x86:u64x2
             (halide:interpret
              (vec-shr
               a
               b)))]
        [((x86:u64x4 a) (x86:u64x4 b))
            (x86:u64x4
             (halide:interpret
              (vec-shr
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpsrlvq")])]

    [(x86:vpsrlw a imm8)
      (destruct* ((interpret a) (interpret imm8))
        [((x86:u16x16 a) (uint8_t imm8))
            (x86:u16x16
             (halide:interpret
              (vec-shr
               a
               (uint8_t
                imm8))))]

        [(_ _) (assert #f "infeasible in interpreting vpsrlw")])]

    [(x86:vpsubb a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i8x32 a) (x86:i8x32 b))
            (x86:i8x32
             (halide:interpret
              (vec-sub
               a
               b)))]
        [((x86:u8x32 a) (x86:u8x32 b))
            (x86:u8x32
             (halide:interpret
              (vec-sub
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpsubb")])]

    [(x86:vpsubd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:i32x8
             (halide:interpret
              (vec-sub
               a
               b)))]
        [((x86:u32x8 a) (x86:u32x8 b))
            (x86:u32x8
             (halide:interpret
              (vec-sub
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpsubd")])]

    [(x86:vpsubq a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i64x4 a) (x86:i64x4 b))
            (x86:i64x4
             (halide:interpret
              (vec-sub
               a
               b)))]
        [((x86:u64x4 a) (x86:u64x4 b))
            (x86:u64x4
             (halide:interpret
              (vec-sub
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpsubq")])]

    [(x86:vpsubsb a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i8x32 a) (x86:i8x32 b))
            (x86:i8x32
             (halide:interpret
              (vec-sub
               (vec-max
                (vec-min
                 (vec-add
                  (vec-min
                   b
                   (x32 (int8_t (bv 0 8))))
                  (x32 (int8_t (bv 127 8))))
                 a)
                (vec-add
                 (vec-max
                  b
                  (x32 (int8_t (bv 0 8))))
                 (x32 (int8_t (bv -128 8)))))
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpsubsb")])]

    [(x86:vpsubsw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (vec-sub
               (vec-max
                (vec-min
                 (vec-add
                  (vec-min
                   b
                   (x16 (int16_t (bv 0 16))))
                  (x16 (int16_t (bv 32767 16))))
                 a)
                (vec-add
                 (vec-max
                  b
                  (x16 (int16_t (bv 0 16))))
                 (x16 (int16_t (bv -32768 16)))))
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpsubsw")])]

    [(x86:vpsubusb a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u8x32 a) (x86:u8x32 b))
            (x86:u8x32
             (halide:interpret
              (vec-sub
               (vec-max
                a
                b)
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpsubusb")])]

    [(x86:vpsubusw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:u16x16 a) (x86:u16x16 b))
            (x86:u16x16
             (halide:interpret
              (vec-sub
               (vec-max
                a
                b)
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpsubusw")])]

    [(x86:vpsubw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (vec-sub
               a
               b)))]
        [((x86:u16x16 a) (x86:u16x16 b))
            (x86:u16x16
             (halide:interpret
              (vec-sub
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpsubw")])]

    [(x86:vpunpckhbw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i8x32 a) (x86:i8x32 b))
            (x86:i8x32
             (halide:interpret
              (concat_vectors
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 0 1 16) 1 1 8)
                (slice_vectors
                 (slice_vectors
                  b 0 1 16) 1 1 8))
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 1 1 16) 1 1 8)
                (slice_vectors
                 (slice_vectors
                  b 1 1 16) 1 1 8)))))]
        [((x86:u8x32 a) (x86:u8x32 b))
            (x86:u8x32
             (halide:interpret
              (concat_vectors
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 0 1 16) 1 1 8)
                (slice_vectors
                 (slice_vectors
                  b 0 1 16) 1 1 8))
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 1 1 16) 1 1 8)
                (slice_vectors
                 (slice_vectors
                  b 1 1 16) 1 1 8)))))]

        [(_ _) (assert #f "infeasible in interpreting vpunpckhbw")])]

    [(x86:vpunpckhdq a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:i32x8
             (halide:interpret
              (concat_vectors
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 0 1 4) 1 1 2)
                (slice_vectors
                 (slice_vectors
                  b 0 1 4) 1 1 2))
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 1 1 4) 1 1 2)
                (slice_vectors
                 (slice_vectors
                  b 1 1 4) 1 1 2)))))]
        [((x86:u32x8 a) (x86:u32x8 b))
            (x86:u32x8
             (halide:interpret
              (concat_vectors
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 0 1 4) 1 1 2)
                (slice_vectors
                 (slice_vectors
                  b 0 1 4) 1 1 2))
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 1 1 4) 1 1 2)
                (slice_vectors
                 (slice_vectors
                  b 1 1 4) 1 1 2)))))]

        [(_ _) (assert #f "infeasible in interpreting vpunpckhdq")])]

    [(x86:vpunpckhqdq a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i64x4 a) (x86:i64x4 b))
            (x86:i64x4
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (slice_vectors
                 (slice_vectors
                  a 0 1 2) 1 1 1)
                (slice_vectors
                 (slice_vectors
                  b 0 1 2) 1 1 1))
               (concat_vectors
                (slice_vectors
                 (slice_vectors
                  a 1 1 2) 1 1 1)
                (slice_vectors
                 (slice_vectors
                  b 1 1 2) 1 1 1)))))]
        [((x86:u64x4 a) (x86:u64x4 b))
            (x86:u64x4
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (slice_vectors
                 (slice_vectors
                  a 0 1 2) 1 1 1)
                (slice_vectors
                 (slice_vectors
                  b 0 1 2) 1 1 1))
               (concat_vectors
                (slice_vectors
                 (slice_vectors
                  a 1 1 2) 1 1 1)
                (slice_vectors
                 (slice_vectors
                  b 1 1 2) 1 1 1)))))]

        [(_ _) (assert #f "infeasible in interpreting vpunpckhqdq")])]

    [(x86:vpunpckhwd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (concat_vectors
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 0 1 8) 1 1 4)
                (slice_vectors
                 (slice_vectors
                  b 0 1 8) 1 1 4))
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 1 1 8) 1 1 4)
                (slice_vectors
                 (slice_vectors
                  b 1 1 8) 1 1 4)))))]
        [((x86:u16x16 a) (x86:u16x16 b))
            (x86:u16x16
             (halide:interpret
              (concat_vectors
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 0 1 8) 1 1 4)
                (slice_vectors
                 (slice_vectors
                  b 0 1 8) 1 1 4))
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 1 1 8) 1 1 4)
                (slice_vectors
                 (slice_vectors
                  b 1 1 8) 1 1 4)))))]

        [(_ _) (assert #f "infeasible in interpreting vpunpckhwd")])]

    [(x86:vpunpcklbw a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i8x32 a) (x86:i8x32 b))
            (x86:i8x32
             (halide:interpret
              (concat_vectors
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 0 1 16) 0 1 8)
                (slice_vectors
                 (slice_vectors
                  b 0 1 16) 0 1 8))
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 1 1 16) 0 1 8)
                (slice_vectors
                 (slice_vectors
                  b 1 1 16) 0 1 8)))))]
        [((x86:u8x32 a) (x86:u8x32 b))
            (x86:u8x32
             (halide:interpret
              (concat_vectors
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 0 1 16) 0 1 8)
                (slice_vectors
                 (slice_vectors
                  b 0 1 16) 0 1 8))
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 1 1 16) 0 1 8)
                (slice_vectors
                 (slice_vectors
                  b 1 1 16) 0 1 8)))))]

        [(_ _) (assert #f "infeasible in interpreting vpunpcklbw")])]

    [(x86:vpunpckldq a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:i32x8
             (halide:interpret
              (concat_vectors
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 0 1 4) 0 1 2)
                (slice_vectors
                 (slice_vectors
                  b 0 1 4) 0 1 2))
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 1 1 4) 0 1 2)
                (slice_vectors
                 (slice_vectors
                  b 1 1 4) 0 1 2)))))]
        [((x86:u32x8 a) (x86:u32x8 b))
            (x86:u32x8
             (halide:interpret
              (concat_vectors
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 0 1 4) 0 1 2)
                (slice_vectors
                 (slice_vectors
                  b 0 1 4) 0 1 2))
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 1 1 4) 0 1 2)
                (slice_vectors
                 (slice_vectors
                  b 1 1 4) 0 1 2)))))]

        [(_ _) (assert #f "infeasible in interpreting vpunpckldq")])]

    [(x86:vpunpcklqdq a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i64x4 a) (x86:i64x4 b))
            (x86:i64x4
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (slice_vectors
                 (slice_vectors
                  a 0 1 2) 0 1 1)
                (slice_vectors
                 (slice_vectors
                  b 0 1 2) 0 1 1))
               (concat_vectors
                (slice_vectors
                 (slice_vectors
                  a 1 1 2) 0 1 1)
                (slice_vectors
                 (slice_vectors
                  b 1 1 2) 0 1 1)))))]
        [((x86:u64x4 a) (x86:u64x4 b))
            (x86:u64x4
             (halide:interpret
              (concat_vectors
               (concat_vectors
                (slice_vectors
                 (slice_vectors
                  a 0 1 2) 0 1 1)
                (slice_vectors
                 (slice_vectors
                  b 0 1 2) 0 1 1))
               (concat_vectors
                (slice_vectors
                 (slice_vectors
                  a 1 1 2) 0 1 1)
                (slice_vectors
                 (slice_vectors
                  b 1 1 2) 0 1 1)))))]

        [(_ _) (assert #f "infeasible in interpreting vpunpcklqdq")])]

    [(x86:vpunpcklwd a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (concat_vectors
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 0 1 8) 0 1 4)
                (slice_vectors
                 (slice_vectors
                  b 0 1 8) 0 1 4))
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 1 1 8) 0 1 4)
                (slice_vectors
                 (slice_vectors
                  b 1 1 8) 0 1 4)))))]
        [((x86:u16x16 a) (x86:u16x16 b))
            (x86:u16x16
             (halide:interpret
              (concat_vectors
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 0 1 8) 0 1 4)
                (slice_vectors
                 (slice_vectors
                  b 0 1 8) 0 1 4))
               (interleave
                (slice_vectors
                 (slice_vectors
                  a 1 1 8) 0 1 4)
                (slice_vectors
                 (slice_vectors
                  b 1 1 8) 0 1 4)))))]

        [(_ _) (assert #f "infeasible in interpreting vpunpcklwd")])]

    [(x86:vpxor a b)
      (destruct* ((interpret a) (interpret b))
        [((x86:i8x32 a) (x86:i8x32 b))
            (x86:i8x32
             (halide:interpret
              (vec-bwxor
               a
               b)))]
        [((x86:i16x16 a) (x86:i16x16 b))
            (x86:i16x16
             (halide:interpret
              (vec-bwxor
               a
               b)))]
        [((x86:i32x8 a) (x86:i32x8 b))
            (x86:i32x8
             (halide:interpret
              (vec-bwxor
               a
               b)))]
        [((x86:i64x4 a) (x86:i64x4 b))
            (x86:i64x4
             (halide:interpret
              (vec-bwxor
               a
               b)))]
        [((x86:u8x32 a) (x86:u8x32 b))
            (x86:u8x32
             (halide:interpret
              (vec-bwxor
               a
               b)))]
        [((x86:u16x16 a) (x86:u16x16 b))
            (x86:u16x16
             (halide:interpret
              (vec-bwxor
               a
               b)))]
        [((x86:u32x8 a) (x86:u32x8 b))
            (x86:u32x8
             (halide:interpret
              (vec-bwxor
               a
               b)))]
        [((x86:u64x4 a) (x86:u64x4 b))
            (x86:u64x4
             (halide:interpret
              (vec-bwxor
               a
               b)))]

        [(_ _) (assert #f "infeasible in interpreting vpxor")])]

    ;; TODO: these do not currently get auto-generated.
    [(x86:??shuffle id loads output-type)
      (let ([vecType (x86:get-type-struct output-type)]
            [interpreted-loads (map interpret loads)])
        (define (shuffle-body i)
          (apply choose* (filter (lambda (r) (not (void? r)) (map (curryr x86:get-element i) interpreted-loads)))))
        (vecType shuffle-body))]

    [(x86:??load id live-data buffer idx-tbl output-type)
      (let ([data (buffer-data buffer)]
            [vecType (x86:get-type-struct output-type)])
        ; TODO: understand what the heck this is doing...
        (define (is-of-buffer? read)
          (rs-match (cpp:eval read)
            [(expression (== @app) xs ...) (equal? (list-ref xs 0) data)]
            [_ #f]))

        (define (filter-reads reads)
          (filter is-of-buffer? reads))

        (define filtered-reads (map filter-reads live-data))

        (define read-history (make-hash))

        (define (load-body i)
          (let ([data (list-ref filtered-reads curr-cn)])
            (if (empty? data)
              (void)
              (hash-ref! read-history i (apply choose* data)))))

      (vecType load-body))]

    [(x86:??swizzle id live-data exprs idx-tbl output-type)
      (let ([vecType (x86:get-type-struct output-type)])
        ;; TODO: it is probably much more complicated than this...
        (vecType
          (lambda (i) (list-ref (list-ref live-data curr-cn) (list-ref idx-tbl i)))))]
    
    [(x86:??sub-expr exprs c) (interpret (list-ref exprs c))]

    [_ (error "x86:interpreter does not recognize instruction: " p)]
))
